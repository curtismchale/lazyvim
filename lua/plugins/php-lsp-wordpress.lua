return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              files = { maxSize = 5000000 },

              environment = {
                includePaths = {
                  -- project-local WordPress stubs (your devenv/direnv-managed clone)
                  ".stubs/wordpress-stubs",
                },
              },

              -- Keep this conservative: only include known PHP base stubs.
              -- WordPress symbols come from includePaths above.
              stubs = {
                "php",
                "standard",
                "wordpress",
              },
            },
          },
        },
      },
    },
  },
}
