
-- Main Test
RegisterCommand('client:test', function()
  exports['t-notify']:Alert({
    style  =  'success',
    message  =  '✔ Bottom right test no duration',
    position = 'bottom-right'
  })
  exports['t-notify']:Alert({
    style  =  'error',
    message  =  '✔ Bottom left test no duration',
    position = 'bottom-left'
  })
  exports['t-notify']:Image({
    style = 'info',
    duration = 11500,
    title = 'Notification with an Image',
    image = 'https://tasoagc.dev/u/61Gg0W.png',
    sound = true
  })
  exports['t-notify']:Alert({
  style  =  'success',
  duration = 10000,
  message  =  '✔️ This is a success alert'
  })
  exports['t-notify']:Custom({
    style  =  'warning',
    duration  =  10500,
    title  =  'Markdown Formatting Example',
    message  =  '``Code`` \n **Bolded Text** \n *Italics Yo* \n # Header 1\n ## Header 2\n',
    sound  =  true
  })
  exports['t-notify']:Custom({
    style  =  'message',
    duration  =  11000,
    title  =  'Colors Example',
    message  =  '^1Red^1 \n^2Green^2 \n^3Yellow^3 \n^4Blue^4\n^5Cyan^5\n^6Purple^6 \n^7White^7 \n^8Orange^8 \n^9Grey^9\n',
    sound  =  true
  })
  exports['t-notify']:Custom({
    style  =  'example',
    custom = true,
    position = 'top-left',
    duration  =  11000,
    title  =  'Custom Style Example',
    message  =  'Test',
    sound  =  true
  })
end)

-- Persist 1 test start
RegisterCommand('client:persist:start', function()
  exports['t-notify']:Persist({
    id = 'uniquePersistId',
    step = 'start',
    options = {
        style = 'info',
        title = 'Notification with an Image',
        image = 'https://tasoagc.dev/u/61Gg0W.png',
        sound = true
    }
  })
end)

-- Persist 2 test start
RegisterCommand('client:persist:start2', function()
  exports['t-notify']:Persist({
    id = 'uniquePersistId2',
    step = 'start',
    options = {
      style = 'info',
      title = 'Notification with an Image',
      image = 'https://tasoagc.dev/u/61Gg0W.png',
      sound = true,
      position = 'top-left'
    }
  })
end)

-- Persist 1 Test end
RegisterCommand('client:persist:end', function()
  exports['t-notify']:Persist({
    id = 'uniquePersistId',
    step = 'end'
  })
end)

-- Persist 2 Test end
RegisterCommand('client:persist:end2', function()
  exports['t-notify']:Persist({
    id = 'uniquePersistId2',
    step = 'end'
  })
end)

-- Test arg validation
RegisterCommand('client:validation', function()
  exports['t-notify']:Custom({
    style = nil,
    title = 'Notification with an Image',
    image = 'https://tasoagc.dev/u/61Gg0W.png',
    sound = true,
    position = 'top-left'
  })
  exports['t-notify']:Custom({
    style = 'info',
    title = 'Notification with an Image',
    image = 'https://tasoagc.dev/u/61Gg0W.png',
    sound = 'true',
    position = 'top-left'
  })
  exports['t-notify']:Custom({
    style = 'info',
    title = 'Notification with an Image',
    image = 'https://tasoagc.dev/u/61Gg0W.png',
    position = true,
  })
  exports['t-notify']:Custom({
    style = 'info',
    title = 'Notification with an Image',
    image = 'https://tasoagc.dev/u/61Gg0W.png',
    duration = 'nice-duration'
  })
  exports['t-notify']:Custom({
    style = 'info',
    title = 'Notification with an Image',
    image = 'https://tasoagc.dev/u/61Gg0W.png',
    duration = 'nice-duration'
  })
end)