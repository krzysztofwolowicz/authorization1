$(document).on('turbolinks:load', function(){
    $( ".sortable" ).sortable({
      update: function(event, ui){
        console.log(ui.item.index()) //zwracanie obiektu po przeniesieniu
        $(ui.item.context).find('[name*="order"]').val(ui.item.index()) //ten co przeciągnie ma order
      }
    });
    $( ".sortable" ).disableSelection();
  } );


  $( function() {
      $( ".sortable" ).sortable();
      $( ".sortable" ).disableSelection();
    } );

$(document).on('turbolinks:load', function(){

    $(".link1").click(function(){

      // alert($(this).attr('key-name'))
        $(".link-1").slideToggle("slow");
    });
});

$(document).on('turbolinks:load', function(){

    $(".link2").click(function(){
        $(".link-2").slideToggle("slow");
    });
});

$(document).on('turbolinks:load', function(){
    $(".link3").click(function(){
        $(".link-3").slideToggle("slow");
    });
});

$(document).on('turbolinks:load', function(){
    $(".link4").click(function(){
        $(".link-4").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link5").click(function(){
        $(".link-5").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link6").click(function(){
        $(".link-6").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link7").click(function(){
        $(".link-7").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link8").click(function(){
        $(".link-8").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link9").click(function(){
        $(".link-9").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link10").click(function(){
        $(".link-10").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link11").click(function(){
        $(".link-11").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link12").click(function(){
        $(".link-12").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link13").click(function(){
        $(".link-13").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link14").click(function(){
        $(".link-14").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link15").click(function(){
        $(".link-15").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link16").click(function(){
        $(".link-16").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link17").click(function(){
        $(".link-17").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link18").click(function(){
        $(".link-18").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link19").click(function(){
        $(".link-19").slideToggle("slow");
    });
});
$(document).on('turbolinks:load', function(){
    $(".link20").click(function(){
        $(".link-20").slideToggle("slow");
    });
});

$(document).on('turbolinks:load', function(){
    $(".link21").click(function(){
        $(".link-21").slideToggle("slow");
    });
});
