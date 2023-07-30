local ls_conf = require("custom.lsp.java").setup()

require("jdtls").start_or_attach(ls_conf)
