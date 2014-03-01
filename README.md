Simple RBrainfuck
=================

Samples
-------

The most simple code that is:

```ruby
load "srbrainfuck.rb"                                  # Loads the main class file
i = SimpleBrainfuck::Interpreter.new("helloworld.bf")  # Load helloworld.bf
i.start                                                # Start the program
```

You can load another file here:

```ruby
load "srbrainfuck.rb"                                  # Loads the main class file
i = SimpleBrainfuck::Interpreter.new                   # Construct an Interpreter without code
i.load("helloworld.bf")                                # Load helloworld.bf
i.start                                                # Start the program
i.load("calculator.bf")                                # Load another file
i.start
```

FAQs
----

### Why can't I use `,`? ###

Currently the `,` command only supports reading one-line with only one character. You should press enter after each character.

### Are there any other methods in the `Interpreter` class? ###

No. There's only `start` and `load` method.

### Are there a ruby gem? ###

I'm trying to make one...
