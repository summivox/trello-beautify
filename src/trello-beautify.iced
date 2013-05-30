dup = (arr) -> [].slice.call arr

st = document.createElement 'style'
st.innerHTML = MARKDOWN_CSS
document.head.appendChild st

setInterval (->
  for el in dup document.querySelectorAll '.markeddown'
    do (c = el.classList) ->
      # c.remove 'markeddown'
      c.add 'mymd'
), 500
