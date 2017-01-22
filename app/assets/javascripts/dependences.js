jQuery(function() {
  var states;
  $('#dependence_zone_id').parent().hide();
  states = $('#dependence_zone_id').html();
  console.log(states);
  return $('#dependence_city_id').change(function() {
    var country, escaped_country, options;
    country = $('#dependence_city_id :selected').text();
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(states).filter("optgroup[label=" + escaped_country + "]").html();
    console.log(options);
    if (options) {
      $('#dependence_zone_id').html(options);
      return $('#dependence_zone_id').parent().show();
    } else {
      $('#dependence_zone_id').empty();
      return $('#dependence_zone_id').parent().hide();
    }
  });
});