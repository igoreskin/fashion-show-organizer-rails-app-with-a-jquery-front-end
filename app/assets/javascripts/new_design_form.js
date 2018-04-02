// $(function() {
//   $('form').submit(function(event) {
//     event.preventDefault();
//     let values = $(this).serialize();
//     $.ajax({
//       method: "POST",
//       url: '/designs',
//       data: values,
//       dataType: "JSON"
//     }).done(function(data){
//       console.log(data)
//       let design = new Design(data.name, data.style, data.fashion);
//       design.appendDesign();
//       $(".submit").prop('disabled', false);
//       $("form").trigger("reset");
//     }).fail(function(xhr, status, error) {
//       console.log(error);
//       $(".submit").prop('disabled', false);
//     })
//   })
// })
//
// function Design(name, style, fashion) {
//   this.name = name;
//   this.style = style;
//   this.fashion = fashion;
// }
//
// Design.prototype.appendDesign = function() {
//   $("#designName").text(`Name: ${this.name}`);
//   $("#designStyle").text(`Style: ${this.style}`);
//   $("#designFashion").text(`Fashion: ${this.fashion}`);
// }
