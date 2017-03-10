ruleset echoserver {

  rule hello_world {
    select when echo hello 
    send_directive("say") with
      something = "Hello World"
  }

  rule echo {
    select when echo message input re#(.*)# setting(m);
    send_directive("say") with
      something = m
  }

}