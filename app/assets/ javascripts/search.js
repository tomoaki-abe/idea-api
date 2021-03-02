$(function() {

  let search_list = $(".contents-wrapper__form__set");

  function appendTweet(category) {
      let html = `<div class="name">
                    <p>${category.name}</p>
                 
                  </div>`
    search_list.append(html);
  }
  
  function appendErrMsgToHTML(msg) {
    let html = `<div class='name'>${ msg }</div>`
    search_list.append(html);
  }

  $(".search-input").on("keyup", function() {
    let input = $(".search-input").val();
    $.ajax({
      type: 'GET',
      url: '/fronts/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(categories) {
      search_list.empty();
      if (categories.length !== 0) {
        categories.forEach(function(category){
          appendTweet(category);
        });
      }
      else {
        appendErrMsgToHTML("一致するツイートがありません");
      }
    })
    .fail(function() {
      alert('error');
    });
  });
});