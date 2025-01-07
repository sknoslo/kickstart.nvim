if vim.g.neovide then
  vim.o.guifont = 'FantasqueSansM_Nerd_Font_Mono:h16'

  vim.g.neovide_floating_corner_radius = 1.0

  vim.g.neovide_scale_factor = 1.0

  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end

  vim.keymap.set('n', '<C-S-k>', function()
    change_scale_factor(1.25)
  end)

  vim.keymap.set('n', '<C-S-j>', function()
    change_scale_factor(1 / 1.25)
  end)

  vim.g.neovide_cursor_vfx_mode = 'railgun'
end
