-- import web-dev icons plugin safely
local setup, webdevicons = pcall(require, "nvim-web-devicons")
if not setup then
  return
end

webdevicons.setup({
  default = true,
  color_icons = true,
  strict = true,
  variant= "light|dark",
})



