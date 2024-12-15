require("yatline"):setup()

require("starship"):setup()
require("full-border"):setup({
	type = ui.Border.ROUNDED,
})

require("session"):setup({
	sync_yanked = true,
})

require("git"):setup()
