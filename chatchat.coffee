root = global ? window

Meteor.startup -> 
  # this is Meteor's document.ready
  # and runs after the server has finished its initial loading

  if Meteor.is_server
    setupServer()
  else
    setupClient()

setupServer = -> 
  console.log("I'm on the server");

setupClient = -> 
  console.log("I'm on the client");
   
setupDataModel = ->
  root.Users = new Meteor.Collection("users")
  root.Messages = new Meteor.Collection("messages")

setupBindings = ->
  root.Template.hello.greeting = ->
    if Session.get("username")
      "Welcome to chatchat, " + Session.get("username")
    else
      "Welcome to chatchat. Please enter your name"

  root.Template.hello.events = "click input#clickme": ->
    username = $("#username").val()
    Session.set("username", username)
    root.Users.insert {name: username }

  root.Template.messages.events = "click input#message_send": ->
    root.Messages.insert {name: Session.get("username"), message: $("#message").val(), time: new Date()}
    $("#message").val("")

  root.Template.hello.username = ->
    Session.get("username") or "Your name"
      
  root.Template.users.chatting_users = ->
    root.Users.find {}

  root.Template.messages.messages = ->
    root.Messages.find {}, {sort: {"time": -1}}   # 1 is accending 

setupDataModel()
if Meteor.is_client
  setupBindings()
