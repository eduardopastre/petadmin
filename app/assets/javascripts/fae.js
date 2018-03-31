// This file is compiled into fae/application.js
// use this as another manifest file if you have a lot of javascript to add
// or just add your javascript directly to this file

// Uncomment the following line if you want to use Trumbowyg HTML Editor
// //= require fae/vendor/trumbowyg
//= require jquery.datetimepicker.full.min

$(document).ready(function() {

  $('.datetime input').datetimepicker({
    format: 'd/m/Y H:i',
    minTime: '08:00',
    maxTime: '18:00',
    step: 15
  });

  $.datetimepicker.setLocale('pt-BR');

  //$('.value_real').css('display', 'none');
  //$('.value_percentage').css('display', 'none');

  // $('.discount_type input[type=radio]').change(function(e) {
  //   if ($(this).val() == 1) {
  //     //$('.value_percentage').css('display', 'none');
  //     $('.value_percentage input').val("0");
  //     $('.value_percentage input').prop('disabled', true);
      
  //     $('.value_real input').prop('disabled', false);
  //     $('.value_real input').val("");
  //     $('.value_real').css('display', 'block');
  //   } else {
  //     //$('.value_real').css('display', 'none');
  //     $('.value_real input').val("0");
  //     $('.value_real input').prop('disabled', true);

  //     $('.value_percentage input').prop('disabled', false);
  //     $('.value_percentage input').val("");
  //     $('.value_percentage').css('display', 'block');
  //   }
  // });
});
