require("modules.programs")

hl.on(
  "workspace.active",
  function(ws)
    if ws.name == "2" and ws.is_empty then
      hl.exec_cmd(Browser)
    end
  end
)
