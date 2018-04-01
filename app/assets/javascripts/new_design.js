$(function() {
  $('form').submit(function(event) {
    event.preventDefault();
    var values = $(this).serialize();
    $.ajax({
      method: "POST",
      url: '/designs',
      data: values,
      dataType: "JSON"
    }).done(function(data){
      let design = new Design(data.name, data.style, data.fashion);
      design.appendDesign();
      $(".submit").prop('disabled', false);
      $("form").trigger("reset");
    }).fail(function(xhr, status, error) {
      console.log(error);
    })
  })
})

function Design(name, style, fashion) {
  this.name = name;
  this.style = style;
  this.fashion = fashion;
}

Design.prototype.appendDesign = function() {
  $("#designName").text(this.name);
  $("#designStyle").text(`Style: ${this.style}`);
  $("#designFashion").text(`Fashion: ${this.fashion}`);
}
