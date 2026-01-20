return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    lazygit = {
      configure = true,
    },
    dashboard = {
      enabled = true,
      sections = {
        { icon = ' ', title = 'Keymaps', section = 'keys', indent = 2, padding = 1 },
        { icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
        { icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 1 },
        { section = 'startup' },
        {
          pane = 2,
          icon = ' ',
          desc = 'Browse Repo',
          padding = 1,
          key = 'b',
          action = function()
            Snacks.gitbrowse()
          end,
        },
        function()
          local in_git = Snacks.git.get_root() ~= nil
          local cmds = {
            {
              title = 'Notifications',
              cmd = 'gh notify -s -a -n5',
              action = function()
                vim.ui.open 'https://github.com/notifications'
              end,
              key = 'n',
              icon = ' ',
              height = 5,
              enabled = true,
            },
            {
              title = 'Open Issues',
              cmd = 'gh issue list -L 3',
              key = 'i',
              action = function()
                vim.fn.jobstart('gh issue list --web', { detach = true })
              end,
              icon = ' ',
              height = 7,
            },
            {
              icon = ' ',
              title = 'Open PRs',
              cmd = 'gh pr list -L 3',
              key = 'P',
              action = function()
                vim.fn.jobstart('gh pr list --web', { detach = true })
              end,
              height = 7,
            },
            {
              icon = ' ',
              title = 'Git Status',
              cmd = 'git --no-pager diff --stat -B -M -C',
              height = 10,
            },
          }
          return vim.tbl_map(function(cmd)
            return vim.tbl_extend('force', {
              pane = 2,
              section = 'terminal',
              enabled = in_git,
              padding = 1,
              ttl = 5 * 60,
              indent = 3,
            }, cmd)
          end, cmds)
        end,
      },
    },
    quickfile = { enabled = true },
    image = { enabled = true },
    scroll = {
      enabled = true,
      animate = {
        duration = { step = 10, total = 200 },
        easing = 'linear',
      },
      animate_repeat = {
        delay = 100,
        duration = { step = 5, total = 50 },
        easing = 'linear',
      },
    },
    zen = {
      toggles = {
        dim = true,
      },
      on_open = function()
        vim.wo.wrap = true
        vim.wo.linebreak = true
      end,
      on_close = function()
        vim.wo.wrap = false
        vim.wo.linebreak = false
      end,
    },
  },
  keys = {
    -- find
    {
      '<leader>fr',
      function()
        Snacks.picker.recent()
      end,
      desc = 'Recent',
    },
    -- git
    {
      '<leader>gb',
      function()
        Snacks.picker.git_branches()
      end,
      desc = 'Git Branches',
    },
    {
      '<leader>gl',
      function()
        Snacks.picker.git_log()
      end,
      desc = 'Git Log',
    },
    {
      '<leader>gL',
      function()
        Snacks.picker.git_log_line()
      end,
      desc = 'Git Log Line',
    },
    {
      '<leader>gs',
      function()
        Snacks.picker.git_status()
      end,
      desc = 'Git Status',
    },
    {
      '<leader>gS',
      function()
        Snacks.picker.git_stash()
      end,
      desc = 'Git Stash',
    },
    {
      '<leader>gd',
      function()
        Snacks.picker.git_diff()
      end,
      desc = 'Git Diff (Hunks)',
    },
    {
      '<leader>gf',
      function()
        Snacks.picker.git_log_file()
      end,
      desc = 'Git Log File',
    },
    -- LazyGit
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
    -- gh
    {
      '<leader>gi',
      function()
        Snacks.picker.gh_issue()
      end,
      desc = 'GitHub Issues (open)',
    },
    {
      '<leader>gI',
      function()
        Snacks.picker.gh_issue { state = 'all' }
      end,
      desc = 'GitHub Issues (all)',
    },
    {
      '<leader>gp',
      function()
        Snacks.picker.gh_pr()
      end,
      desc = 'GitHub Pull Requests (open)',
    },
    {
      '<leader>gP',
      function()
        Snacks.picker.gh_pr { state = 'all' }
      end,
      desc = 'GitHub Pull Requests (all)',
    },
    -- gitbrowse
    {
      '<leader>gB',
      function()
        Snacks.gitbrowse()
      end,
      desc = 'Git Browse',
      mode = { 'n', 'v' },
    },
    -- zen mode
    {
      '<leader>zm',
      function()
        Snacks.zen()
      end,
      desc = '[Z]en [M]mode',
      mode = { 'n', 'v' },
    },
    -- buffer delete
    {
      '<leader>bd',
      function()
        Snacks.bufdelete()
      end,
      desc = '[b]uffer [d]elete',
      mode = { 'n', 'v' },
    },
    {
      '<leader>bda',
      function()
        Snacks.bufdelete.all()
      end,
      desc = '[b]uffer [d]elete [a]ll',
      mode = { 'n', 'v' },
    },
    {
      '<leader>bdo',
      function()
        Snacks.bufdelete.other()
      end,
      desc = '[b]uffer [d]elete [o]ther',
      mode = { 'n', 'v' },
    },
  },
}
