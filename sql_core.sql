﻿-- tìm sản phẩm trong 1 trang

create proc SANPHAM_FND
	@P_CURRPAGE INT =1 --TRANG HIỆN TẠI
	,@P_PAGESIZE INT =3 --SỐ LƯỢNG BẢN GHI/TRANG
	,@P_SP_ID VARCHAR(10) ='' --MÃ SẢN PHẨM
	,@P_SP_TEN NVARCHAR(50) ='' --TÊN SẢN PHẨM
	,@P_SP_DONGIA DECIMAL(18,0)=0 --ĐƠN GIÁ
	,@P_SP_SOLUONG INT=0 --SO LUONG
	,@P_DM_ID VARCHAR(20) =''--MÃ DOANH MỤC
	,@P_NCC_ID	NCHAR(10) =''--MÃ NHÀ CUNG CẤP
AS BEGIN
	SELECT * FROM (
		SELECT 
		ROW_NUMBER() OVER (ORDER BY SP_ID DESC) AS ROW_NUM
		,ISNULL(SP.SP_ID,'') SP_ID
		,ISNULL(SP.SP_TenSanPham,'') SP_TenSanPham
		,ISNULL(SP.SP_DONGIA,0) SP_DONGIA
		,ISNULL(SP.SP_SOLUONG,0) SP_SOLUONG
		,ISNULL(DM.DM_ID,'')  DM_ID
		,ISNULL(DM.DM_TENDANHMUC,'') DM_TENDANHMUC
		,ISNULL(NCC.NCC_ID,'') NCC_ID
		,ISNULL(NCC.NCC_TenNhaCungCap,'') NCC_TENNHACUNGCAP
		FROM SanPham SP
		LEFT JOIN DanhMuc DM ON SP.DM_ID=DM.DM_ID
		LEFT JOIN NHACUNGCAP NCC ON SP.NCC_ID=NCC.NCC_ID
		WHERE 
		((@P_SP_ID='') OR (SP.SP_ID LIKE '%'+@P_SP_ID+'%'))
		AND ((@P_SP_TEN='') OR (SP.SP_TenSanPham LIKE N'%'+@P_SP_TEN+'%'))
		AND ((@P_SP_DONGIA=0) OR (SP.SP_DonGia>=@P_SP_DONGIA))
		AND ((@P_SP_SOLUONG=0) OR (SP.SP_SoLuong>=@P_SP_SOLUONG))
		AND ((@P_DM_ID='') OR (DM.DM_ID LIKE '%'+@P_DM_ID+'%'))
		AND ((@P_NCC_ID='')OR (NCC.NCC_ID LIKE '%'+@P_NCC_ID+'%'))
	) A_SP
	WHERE ((((@P_CURRPAGE - 1) * @P_PAGESIZE + 1) <=A_SP.ROW_NUM) AND (A_SP.ROW_NUM <= @P_CURRPAGE * @P_PAGESIZE))
END
EXEC SANPHAM_FND 1,5,''

----//////////////////////////////////////////////
---
--- insert , update, delete sản phẩm
----==============================================

ALTER PROC SANPHAM_IUD
	@P_MOD VARCHAR(1)='' -- YÊU CẦU 
	,@P_SP_ID NCHAR(10) ='' -- MÃ SẢN PHẨM
	,@P_SP_TENSANPHAM NVARCHAR(50) ='' --TÊN SẢN PHẨM
	,@P_SP_DONGIA DECIMAL(18,0) =0 -- ĐƠN GIÁ SẢN PHẨM
	,@P_SP_SOLUONG INT =0    --SỐ LƯỢNG SẢN PHẨM
	,@P_DM_ID VARCHAR (20) ='' -- MÃ DANH MỤC
	,@P_NCC_ID NCHAR(10) =''	-- MÃ NHÀ CUNG CẤP
	
AS
BEGIN
	-- TẠO RA BẢNG LỖI
	CREATE TABLE #ERRORTABLE (ERRID INT,ERRNAME NVARCHAR(MAX))

	-- INSERT 
	IF (@P_MOD='A')		
	BEGIN
		-- ĐÃ TỒN TẠI MÃ SẢN PHẨM

		IF EXISTS (SELECT SP_ID FROM SANPHAM WHERE SP_ID=@P_SP_ID)
		BEGIN
			INSERT INTO #ERRORTABLE VALUES (11,N'ĐÃ TỒN TẠI MÃ SẢN PHẨM NÀY!')
			GOTO EXITPROC
		END
		-- KHÔNG CÓ MÃ DANH MỤC TRÙNG

		IF (@P_DM_ID IS NULL)
		BEGIN
			INSERT INTO #ERRORTABLE VALUES (2,N'MÃ DANH MỤC NULL')
			GOTO EXITPROC
		END

		IF NOT EXISTS (SELECT DM_ID FROM DANHMUC WHERE DM_ID=@P_DM_ID)
			BEGIN
				INSERT INTO #ERRORTABLE VALUES (22,N'KHÔNG CÓ MÃ DANH MỤC NÀY')
				GOTO EXITPROC
			END 

		-- KHÔNG CÓ MÃ NHÀ CUNG CẤP
		IF (@P_NCC_ID IS NULL)
		BEGIN
			INSERT INTO #ERRORTABLE VALUES (3,N'MÃ NHÀ CUNG CẤP NULL')
				GOTO EXITPROC
		END

		IF NOT EXISTS (SELECT NCC_ID FROM NHACUNGCAP WHERE NCC_ID=@P_NCC_ID)
			BEGIN
				INSERT INTO #ERRORTABLE VALUES (33,N'KHÔNG CÓ MÃ NHÀ CUNG CẤP NÀY')
				GOTO EXITPROC
			END
		---
		INSERT INTO SANPHAM(
			SP_ID
			,SP_TENSANPHAM 
			,SP_DONGIA
			,SP_SOLUONG
			,DM_ID
			,NCC_ID
		)
		SELECT @P_SP_ID, @P_SP_TENSANPHAM, @P_SP_DONGIA, @P_SP_SOLUONG, @P_DM_ID, @P_NCC_ID
	END

	-- UPDATE 

	IF @P_MOD='U'
	BEGIN

		-- KHÔNG CÓ MÃ SẢN PHẨM

		IF NOT EXISTS (SELECT SP_ID FROM SANPHAM WHERE SP_ID=@P_SP_ID)
		BEGIN
			INSERT INTO #ERRORTABLE VALUES (1,N'KHÔNG CÓ MÃ SẢN PHẨM NÀY')
			GOTO EXITPROC 
		END 

		-- KHÔNG CÓ MÃ DANH MỤC TRÙNG

		IF NOT EXISTS (SELECT DM_ID FROM DANHMUC WHERE DM_ID=@P_DM_ID)
			BEGIN
				INSERT INTO #ERRORTABLE VALUES (2,N'KHÔNG CÓ MÃ DANH MỤC NÀY')
				GOTO EXITPROC
			END 
		-- KHÔNG CÓ MÃ NHÀ CUNG CẤP
		IF NOT EXISTS (SELECT NCC_ID FROM NHACUNGCAP WHERE NCC_ID=@P_NCC_ID)
			BEGIN
				INSERT INTO #ERRORTABLE VALUES (3,N'KHÔNG CÓ MÃ NHÀ CUNG CẤP NÀY')
				GOTO EXITPROC
			END
		-- MÃ DANH MỤC SỬA LÀ NULL THÌ GIỮ NGUYÊN MÃ DANH MỤC CỦA SẢN PHẨM ĐÓ
		IF(@P_DM_ID IS NULL)
		BEGIN
			SELECT @P_DM_ID= DM_ID FROM SANPHAM WHERE SP_ID=@P_SP_ID
		END
		-- MÃ NHÀ CUNG CẤP LÀ NULL THÌ GIỮ NGUYÊN MÃ NHÀ CUNG CẤP CỦA SẢN PHẨM ĐÓ
		IF(@P_NCC_ID IS NULL)
		BEGIN
			SELECT @P_NCC_ID =NCC_ID FROM SANPHAM WHERE NCC_ID=@P_NCC_ID
		END
		-- UPDATE
		UPDATE SANPHAM SET 
							SP_TENSANPHAM =@P_SP_TENSANPHAM
							,SP_DONGIA =@P_SP_DONGIA
							,SP_SOLUONG =@P_SP_SOLUONG
							,DM_ID=@P_DM_ID
							,NCC_ID=@P_NCC_ID
						WHERE SP_ID =@P_SP_ID
	END

	-- DELETE

	IF( @P_MOD ='D')
	BEGIN
		-- KHÔNG CÓ MÃ SẢN PHẨM

		IF NOT EXISTS (SELECT SP_ID FROM SANPHAM WHERE SP_ID=@P_SP_ID)
		BEGIN
			INSERT INTO #ERRORTABLE VALUES (1,N'KHÔNG CÓ MÃ SẢN PHẨM NÀY')
			GOTO EXITPROC 
		END 

		--
		DELETE SANPHAM WHERE SP_ID=@P_SP_ID
	END

	EXITPROC:
	SELECT ISNULL(ERRID,0) ERRID,ISNULL(ERRNAME,'') ERRNAME FROM #ERRORTABLE
END

----

EXEC SANPHAM_IUD 'U','014','ĐEN ĐẸP',450,2,'003'

EXEC SANPHAM_IUD 'D','001'

---/////////////////////////////////////

---=====================================================
---	IINSERT, UPDATE, DELETE DANH MỤC 
---
---=====================================================

CREATE PROC DANHMUC_IUD
	@P_MOD VARCHAR(1) ='' -- MÃ NHIỆM VỤ
	,@P_DM_ID  VARCHAR(20) ='' --MÃ DANH MỤC
	,@P_DM_DANHMUCCHA_ID VARCHAR (20) ='' -- MÃ DANH MỤC CHA
	,@P_DM_TENDANHMUC NVARCHAR (50) ='' --TÊN DANH MỤC
	,@P_DM_SOLUONG INT=0 -- SỐ LƯỢNG DANH MỤC
AS 
BEGIN
	CREATE TABLE #ERRORTABLE_DM(ERRID INT, ERRNAME NVARCHAR(MAX))

	--INSERT DANH MỤC 

	IF @P_MOD='A'
	BEGIN
		-- KIỂM TRA MÃ DANH KHÔNG ĐƯỢC NULL HOẶC ĐÃ TỒN TẠI
		IF @P_DM_ID IS NULL
		BEGIN
			INSERT INTO #ERRORTABLE_DM VALUES (1,N'MÃ DANH MỤC ĐANG NULL')
			GOTO EXITP
		END
		IF NOT EXISTS (SELECT DM_ID FROM DANHMUC )
		BEGIN
			INSERT INTO #ERRORTABLE_DM VALUES (11,N'ĐÃ TỒN TẠI MÃ DANH MỤC NÀY')
			GOTO EXITP
		END
		----

		-- INSERT 
		INSERT INTO DanhMuc(
			DM_ID
			,DM_DanhMucCha_ID
			,DM_TenDanhMuc
			,DM_SoLuong
			)
		 VALUES (@P_DM_ID, @P_DM_DANHMUCCHA_ID, @P_DM_TENDANHMUC, @P_DM_SOLUONG)

	END

	---- UPDATE DANH MỤC 

	IF(@P_MOD='U')
	BEGIN
		--- KIỂM TRA SỰ TỒN TẠI CỦA MÃ DANH MỤC
		IF NOT EXISTS (SELECT DM_ID FROM DANHMUC WHERE DM_ID=@P_DM_ID)
		BEGIN
			INSERT INTO #ERRORTABLE_DM VALUES (2,N'KHÔNG TỒN TẠI MÃ DANH MỤC')
			GOTO EXITP 
		END

		UPDATE DANHMUC SET DM_DanhMucCha_ID=@P_DM_DANHMUCCHA_ID
							,DM_TenDanhMuc=@P_DM_DANHMUCCHA_ID
							,DM_SoLuong=@P_DM_SOLUONG
						WHERE DM_ID=@P_DM_ID
	END

	---- DELETE DANH MỤC

	IF(@P_MOD='D')
	BEGIN
		--- KIỂM TRA SỰ TỒN TẠI CỦA MÃ DANH MỤC
		IF NOT EXISTS (SELECT DM_ID FROM DANHMUC WHERE DM_ID=@P_DM_ID)
		BEGIN
			INSERT INTO #ERRORTABLE_DM VALUES (2,N'KHÔNG TỒN TẠI MÃ DANH MỤC')
			GOTO EXITP 
		END
		---- XÓA CÁC SẢN PHẨM THUỘC DANH MỤC CẦN XÓA VÌ DANH MỤC LÀ KHÓA NGOẠI CỦA SẢN PHẨM
		DECLARE @D_SP_ID NCHAR(10) =''
		SELECT @D_SP_ID=SP_ID FROM SANPHAM WHERE DM_ID=@P_DM_ID
		DELETE SANPHAM WHERE SP_ID=@D_SP_ID

		--- DELETE DANH MỤC
		DELETE DANHMUC WHERE DM_ID=@P_DM_ID

	END

	EXITP:
	SELECT ISNULL(ERRID,0) ERRID,ISNULL(ERRNAME,'') ERRNAME FROM #ERRORTABLE_DM	
END