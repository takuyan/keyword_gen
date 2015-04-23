window.KeywordGen =
  initialize: ->
    $form = $('form')
    $form.on 'submit', (e) ->
      e.preventDefault()
      query = $(e.currentTarget).find('input').val()
      url = "http://google.co.jp/complete/search?output=toolbar&q=#{escape(query)}"

      $.get(url).then (e) ->
        console.log e

$ -> window.KeywordGen.initialize()
