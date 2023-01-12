local dashboard = require("dashboard")
dashboard.custom_header = {
	"                                                                                              ",
	" ██████╗ ███╗   ██╗██╗   ██╗███████╗███████╗ ██████╗ ███╗   ██╗   ███╗   ██╗███████╗████████╗",
	"██╔════╝ ████╗  ██║██║   ██║██╔════╝██╔════╝██╔═══██╗████╗  ██║   ████╗  ██║██╔════╝╚══██╔══╝",
	"██║  ███╗██╔██╗ ██║██║   ██║███████╗███████╗██║   ██║██╔██╗ ██║   ██╔██╗ ██║█████╗     ██║   ",
	"██║   ██║██║╚██╗██║██║   ██║╚════██║╚════██║██║   ██║██║╚██╗██║   ██║╚██╗██║██╔══╝     ██║   ",
	"╚██████╔╝██║ ╚████║╚██████╔╝███████║███████║╚██████╔╝██║ ╚████║██╗██║ ╚████║███████╗   ██║   ",
	" ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ",
	"                                                                                              ",
	"                                                                                              ",
}

dashboard.custom_center = {
	{
		icon = "  ",
		desc = "Find  File                              ",
		action = "Telescope find_files find_command=rg,--hidden,--files",
		shortcut = "<leader> f f",
	},
	{
		icon = "  ",
		desc = "File Browser                            ",
		action = "Telescope file_browser",
		shortcut = "<leader> f b",
	},
	{
		icon = "  ",
		desc = "Find  word                              ",
		action = "Telescope live_grep",
		shortcut = "<leader> f w",
	},
	{
		icon = "  ",
		desc = "Open Personal dotfiles                  ",
		action = "Telescope dotfiles path=/.config/nvim/",
		shortcut = "<leader> f d",
	},
}
