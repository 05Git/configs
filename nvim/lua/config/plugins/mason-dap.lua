return {
  {
    "mason-org/mason.nvim",
    opts = {},
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      -- virtual text for the debugger
      {
        "theHamsta/nvim-dap-virtual-text",
        opts = {},
      },
      "jay-babu/mason-nvim-dap.nvim",
    },
    keys = {
      {
        "<leader>dB",
        function()
          require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
        end,
        desc = "Breakpoint Condition",
      },
      {
        "<leader>db",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Toggle Breakpoint",
      },
      {
        "<leader>dc",
        function()
          require("dap").continue()
        end,
        desc = "Run/Continue",
      },
      {
        "<leader>da",
        function()
          require("dap").continue({ before = get_args })
        end,
        desc = "Run with Args",
      },
      {
        "<leader>dC",
        function()
          require("dap").run_to_cursor()
        end,
        desc = "Run to Cursor",
      },
      {
        "<leader>dg",
        function()
          require("dap").goto_()
        end,
        desc = "Go to Line (No Execute)",
      },
      {
        "<leader>di",
        function()
          require("dap").step_into()
        end,
        desc = "Step Into",
      },
      {
        "<leader>dj",
        function()
          require("dap").down()
        end,
        desc = "Down",
      },
      {
        "<leader>dk",
        function()
          require("dap").up()
        end,
        desc = "Up",
      },
      {
        "<leader>dl",
        function()
          require("dap").run_last()
        end,
        desc = "Run Last",
      },
      {
        "<leader>dL",
        function()
          require("dap.ext.vscode").load_launchjs()
        end,
        desc = "Load launch.json",
      },
      {
        "<leader>do",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out",
      },
      {
        "<leader>dO",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
      },
      {
        "<leader>dP",
        function()
          require("dap").pause()
        end,
        desc = "Pause",
      },
      {
        "<leader>dr",
        function()
          require("dap").repl.toggle()
        end,
        desc = "Toggle REPL",
      },
      {
        "<leader>ds",
        function()
          require("dap").session()
        end,
        desc = "Session",
      },
      {
        "<leader>dt",
        function()
          require("dap").terminate()
        end,
        desc = "Terminate",
      },
      {
        "<leader>dw",
        function()
          require("dap.ui.widgets").hover()
        end,
        desc = "Widgets",
      },
    },
    config = function()
      require("mason").setup()
      require("mason-nvim-dap").setup({
        handlers = {}, -- triggers default_setup for all installed adapters
      })
      local vscode = require("dap.ext.vscode")
      local json = require("plenary.json")
      vscode.json_decode = function(str)
        return vim.json.decode(json.json_strip_comments(str))
      end
      -- load launch.json configurations (requires nvim-dap's vscode module)
      vscode.load_launchjs(nil, {
        -- map launch.json "type" values to dap adapter names
        node2 = { "javascript", "typescript" },
        python = { "python" },
        codelldb = { "c", "cpp", "rust" },
      })

      -- gutter signs
      local sign = vim.fn.sign_define
      sign("DapBreakpoint", {
        text = "B",
        texthl = "DapBreakpointColor",
        linehl = "",
        numhl = "",
      })
      sign("DapBreakpointCondition", {
        text = "C",
        texthl = "DapBreakpointConditionColor",
        linehl = "",
        numhl = "",
      })
      sign("DapLogPoint", {
        text = "L",
        texthl = "DapLogPointColor",
        linehl = "",
        numhl = "",
      })
      sign("DapStopped", {
        text = ">",
        texthl = "DapStoppedColor",
        linehl = "DapStoppedLine",
        numhl = "",
      })
      sign("DapBreakpointRejected", {
        text = "X",
        texthl = "DapBreakpointRejectedColor",
        linehl = "",
        numhl = "",
      })
    end,
  },
}
