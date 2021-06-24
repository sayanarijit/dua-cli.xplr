local function setup(args)

  local xplr = xplr

  if args == nil then
    args = {}
  end

  if args.mode == nil then
    args.mode = "action"
  end

  if args.key == nil then
    args.key = "D"
  end

  xplr.config.modes.builtin[args.mode].key_bindings.on_key[args.key] = {
    help = "disk usage",
    messages = {
      {
        BashExec = [===[
        SELECTED=$(dua i)
        if [ "$SELECTED" ]; then
          while read -r line; do
            echo SelectPath: '"'${PWD:?}/${line:?}'"' >> "${XPLR_PIPE_MSG_IN:?}"
          done <<< "$SELECTED"
        fi
        ]===]
      },
      "PopMode",
      "ClearScreen",
    },
  }
end

return { setup = setup }
