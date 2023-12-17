//Balance the Parentheses

void main() {
  String test = "]";
  print(isItBalance(test));
}

bool isItBalance(String str) {
  Stack stack = Stack();

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];

    if (currentChar == '(' || currentChar == '{' || currentChar == '[') {
      stack.push(currentChar);
    } else if (currentChar == ')' || currentChar == '}' || currentChar == ']') {
      if (stack.isEmpty() || !isItMatch(stack.pop(), currentChar)) {
        return false;
      }
    }
  }
  return stack.isEmpty();
}

bool isItMatch(String open, String close) {
  return (open == '(' && close == ')') ||
      (open == '[' && close == ']') ||
      (open == '{' && close == '}');
}

class Stack {
  List<String> Items = [];

  void push(String item) {
    Items.add(item);
  }

  String pop() {
    if (Items.isEmpty) {
      throw StateError('You can\'t remove from an empty stack:(');
    } else {
      return Items.removeLast();
    }
  }

  bool isEmpty() {
    return Items.isEmpty;
  }
}
