json.array! @notifications do |notification|
  json.id notification.id
  json.actor notification.actor.screenname
  json.action notification.action
  json.notifiable do
    json.type "a comment"
  end
  json.url post_path(notification.notifiable.post, anchor: dom_id(notification.notifiable))
end