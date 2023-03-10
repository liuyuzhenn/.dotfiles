local status, as = pcall(require, 'auto-session')
if not status then
	return
end

local opts = {
	auto_session_enabled = true,
	log_level = 'error',
	auto_session_enable_last_session = false,
	auto_session_create_enabled = false,
	auto_session_root_dir = vim.fn.stdpath('data') .. "/sessions/",
	auto_save_enabled = nil,
	auto_restore_enabled = nil,
	auto_session_suppress_dirs = nil,
	auto_session_use_git_branch = nil,
	-- the configs below are lua only
	bypass_session_save_file_types = nil
}

as.setup(opts)
