local status, notify = pcall(require, "notify")
if not status then
	return
end

vim.notify = notify
notify.setup({
	background_colour = "Normal",
	fps = 30,
	icons = {
		DEBUG = "",
		ERROR = "",
		INFO = "",
		TRACE = "✎",
		WARN = "",
	},
	level = 2, -- DEBUG ERROR INFO TRACE WARN
	minimum_width = 50,
	render = "default",
	stages = "fade_in_slide_out",
	timeout = 3000,
	top_down = true,
})
