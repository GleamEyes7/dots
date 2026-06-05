-- return {
--   {
--     "nvim-neo-tree/neo-tree.nvim",
--     opts = {
--       window = {
--         width = 23,
--       },
--     },
--   },
-- }
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 23,
      },
      -- Note: sort_function belongs in the root of opts, not inside filesystem
      sort_function = function (a, b)
        -- 1. Defensive Check: Ensure we actually have node names to parse
        if not a or not b or not a.name or not b.name then
          return (a and a.type or "") < (b and b.type or "")
        end

        -- 2. Sort directories above files (matches standard eza behavior)
        if a.type ~= b.type then
          return a.type < b.type
        end

        -- 3. Natural Sort: Pad numbers to align string comparison
        -- Converts "l2" -> "l00002" and "l11" -> "l00011"
        local a_name = a.name:gsub("(%d+)", function(num) return string.format("%05d", tonumber(num)) end)
        local b_name = b.name:gsub("(%d+)", function(num) return string.format("%05d", tonumber(num)) end)

        return a_name < b_name
      end
    },
  },
}
