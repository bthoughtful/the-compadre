$(document).on('turbolinks:load', function() {
  // only load simplemde on admin/articles#new and admin/articles#edit
  if ( $('.c-articles.a-new, .c-articles.a-edit').length > 0 ) {
    simplemde = new SimpleMDE({ element: document.querySelector('#simpleMde') })
  }
});
