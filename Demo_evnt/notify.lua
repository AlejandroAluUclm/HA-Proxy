-- Define la función para escribir en el log
function notify_request(txn)
  local method = txn.sf:method()
  local client_ip = txn.f:src()
  local timestamp = os.date("%Y-%m-%d %H:%M:%S") -- Formatea la fecha y hora actual

  local message = string.format("[%s] Se recibió una petición HTTP de tipo %s desde la IP %s\n", timestamp, method, client_ip)
  local log_file = "/var/log/haproxy_request.log"
  
  -- Abrir el archivo de log en modo de agregar
  local file = io.open(log_file, "a")
  if file then
    file:write(message)
    file:close()
  else
    core.Alert("No se pudo abrir el archivo de log")
  end
end

-- Registrar la acción de notificación
core.register_action("notify_request", {"http-req"}, notify_request, 0)

