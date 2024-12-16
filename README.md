# Ruby: Freezing Objects Doesn't Prevent Instance Variable Modification

This repository demonstrates a subtle but important aspect of Ruby's `freeze` method.  While `freeze` prevents further modifications to an object's state, it *does not* prevent modification of its instance variables. This can lead to unexpected behavior and bugs if you assume that freezing guarantees complete immutability.

The `bug.rb` file shows a simple example where freezing an object does not prevent the modification of its instance variables using `instance_variable_set`. The `bugSolution.rb` file provides a possible solution explaining how to achieve true immutability.