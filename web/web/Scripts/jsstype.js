

(function () {
    $('#carouselABC').carousel({ interval: 3600 });
}());

(function () {
    $('#carouselABC1').carousel({ interval: 3600 });
}());

(function () {
    $('#myCarouselWrapper').carousel({ interval: 3600 });
}());

(function () {
    $('#Link').carousel({ interval: 3600 });
}());

(function () {
    $('.carousel-showmanymoveone .item').each(function () {
        var itemToClone = $(this);

        for (var i = 1; i < 4; i++) {
            itemToClone = itemToClone.next();

            // wrap around if at end of item collection
            if (!itemToClone.length) {
                itemToClone = $(this).siblings(':first');
            }

            // grab item, clone, add marker class, add to collection
            itemToClone.children(':first-child').clone()
                .addClass("cloneditem-" + (i))
                .appendTo($(this));
        }
    });
}());

(function () {
    $('.carousel-showmanymoveone1 .item').each(function () {
        var itemToClone = $(this);

        for (var i = 1; i < 3; i++) {
            itemToClone = itemToClone.next();

            // wrap around if at end of item collection
            if (!itemToClone.length) {
                itemToClone = $(this).siblings(':first');
            }

            // grab item, clone, add marker class, add to collection
            itemToClone.children(':first-child').clone()
                .addClass("cloneditem-" + (i))
                .appendTo($(this));
        }
    });
}());

(function () {
    $('.carousel-Body_Link .item').each(function () {
        var itemToClone = $(this);

        for (var i = 1; i < 5; i++) {
            itemToClone = itemToClone.next();

            // wrap around if at end of item collection
            if (!itemToClone.length) {
                itemToClone = $(this).siblings(':first');
            }

            // grab item, clone, add marker class, add to collection
            itemToClone.children(':first-child').clone()
                .addClass("cloneditem-" + (i))
                .appendTo($(this));
        }
    });
}());


