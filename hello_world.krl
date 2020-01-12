ruleset hello_world {
  meta {
    name "Hello World"
    description <<
A first ruleset for the Quickstart
>>
    author "Michael Black"
    logging on
    shares hello
  }
   
  global {
    hello = function(obj) {
      msg = "Hello " + obj;
      msg
    }
  }
   
  rule hello_world {
    select when echo hello
    send_directive("say", {"something": "Hello World"})
  }
   
}
