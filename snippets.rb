count = 0
while
  ActionCable.server.broadcast(
    'counter',
    "<turbo-stream action='update' target='counter'><template>#{count}</template></turbos-stream>",
  )
  count += 1
  sleep(0.5)
end
