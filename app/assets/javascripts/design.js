$(function() {
  $(".js-next").on("click", function() {
    const nextId = parseInt($(".js-next").attr("data-id")) + 1;
    $.get(`/designs/${nextId}.json`, function(data) {
      $(".designName").text(data.name);
      $(".designStyle").text(`Style: ${data.style}`);
      $(".designFashion").text(`Fashion: ${data.fashion}`);
      $(".designDesigner").text(`Designer: ${data.designer.name}`);
      $(".js-next").attr("data-id", data.id);
      window.history.pushState({}, null, "/designs/" + nextId);
    });
    $(".display-comments").empty();
    $("#hidden").hide();
    $(".js-display-comments").show();
  });
});


$(function() {
  $(".js-display-comments").on("click", function() {
    $(this).hide();
    $("#hidden").show();
    const url = window.location.pathname;
    const id = url.substring(url.lastIndexOf('/') + 1);
    // var id = $(this).data("id");
    const designerId = $(this).data("designer");
    $.get(`/designs/${id}/comments.json`, function(data) {
      let comments = "";
      data.forEach(function(comment) {
        comments += `<li>${comment.content}</li>`
      });
      comments += `<br><a href="/designs/${id}/comments/new">Enter your comment</a><br>`
      comments += `<a href="/designers/${designerId}">View designer's profile</a>`
      const commentsDisplay = `<ul>${comments}</ul>`;
      $(".display-comments").html(commentsDisplay)
    });
  });
});


$(function() {
  $(".js-hide").on("click", function() {
    $(this).hide();
    $(".js-display-comments").show();
    $(".display-comments").empty();
  });
});
