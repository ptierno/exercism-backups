colors = {
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white"
}

return {
  colors = function()
    return colors
  end,
  
  color_code = function(color)
    local function getIndexOf(elem, list)
      for index, value in ipairs(list) do
        if value == elem then
          return index
        end
      end
      return nil
    end
    return getIndexOf(color, colors) - 1
  end
}
