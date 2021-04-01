-- Server Main Test
RegisterCommand('server:test', function()
  TriggerClientEvent('t-notify:client:Custom', -1, {
    style  =  'success',
    duration  =  10500,
    title  =  'Markdown Formatting Example',
    message  =  '``Code``\n **Bolded Text** \n *Italics Yo* \n # Header 1\n ## Header 2\n',
    sound  =  true
  })
  TriggerClientEvent('t-notify:client:Alert', -1, {
    style  =  'error',
    duration = 10000,
    message  =  '✔️ This is a success alert'
  })
  TriggerClientEvent('t-notify:client:Image', -1, {
    style = 'warning',
    duration = 11500,
    title = 'Notification with an Image',
    image = 'https://tasoagc.dev/u/61Gg0W.png',
    sound = true
  })
  TriggerClientEvent('t-notify:client:Custom', -1, {
    style  =  'message',
    duration  =  11000,
    title  =  'Colors Example',
    message  = '^1Red^1 \n ^2Green^2 \n ^3Yellow^3 \n^4Blue^4\n^5Cyan^5\n^6Purple^6 \n^7White^7 \n^8Orange^8 \n^9Grey^9\n',
    sound  =  true
  })
  TriggerClientEvent('t-notify:client:Custom', -1, {
    style  =  'example',
    position = 'top-left',
    custom = true,
    duration  =  10500,
    title  =  'Markdown Formatting Example',
    message  =  '``Code``\n **Bolded Text** \n *Italics Yo* \n # Header 1\n ## Header 2\n',
    sound  =  true
  })
end)


RegisterCommand('server:persist:start', function()
  TriggerClientEvent('t-notify:client:Persist', -1, {
    id = 'uniquePersistId',
    step = 'start',
    options = {
        style = 'info',
        title = 'Notification with an Image',
        message = 'Test',
        sound = true
    }
  })
end)

RegisterCommand('server:persist:start2', function()
  TriggerClientEvent('t-notify:client:Persist', -1, {
    id = 'uniquePersistId2',
    step = 'start',
    options = {
      style = 'info',
      title = 'Notification with an Image',
      message = 'Test',
      sound = true,
      position = 'top-left'
    }
  })
end)

RegisterCommand('server:persist:end2', function()
  TriggerClientEvent('t-notify:client:Persist', -1, {
    id = 'uniquePersistId2',
    step = 'end'
  })
end)

RegisterCommand('server:persist:end', function()
  TriggerClientEvent('t-notify:client:Persist', -1, {
    id = 'uniquePersistId',
    step = 'end'
  })
end)