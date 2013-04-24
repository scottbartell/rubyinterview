ready = ->
  quiz = $('section#quiz')
  quiz.on 'click', 'button#showAnswer', (event) ->
    $(this).fadeOut 'fast', ->
      $(this).siblings('.answer').fadeIn()
  $("#nextQuestion").bind "ajax:success", (evt, data, status, xhr) ->
    quiz.fadeOut 'fast', ->
      quiz.find('button#showAnswer').show()
      quiz.find('.answer').hide().html(data.question.answer_html)
      quiz.find('.question').html(data.question.content_html)
      quiz.fadeIn 'fast'

$(document).ready(ready)
$(document).on('page:load', ready)