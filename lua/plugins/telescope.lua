return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = {
            "%.png$",
            "%.jpg$",
            "%.gif$",
            "%.mp3$",
            "%.flac$",
            "%.ogg$",
            "%.mp4$",
            "%.avi$",
            "%.webm$",
            "%.mkv$",
            "%.pdf$",
            "%.zip$",
            "%.tar.gz$",
            "%.rar$",
            "%.log$",
            "%.vagrant$",
            "%.docker$",
            "node_modules/",
            "_build/",
            "deps/",
            "target/",
            "%.git/",
          },
        },
      })
    end,
  },
}
