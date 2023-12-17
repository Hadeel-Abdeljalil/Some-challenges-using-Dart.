//function to reverse list using stack
void main() {
  List<int> test = [1, 2, 3, 4, 5];
  print(reverseList(test));
}

List<int> reverseList(List Rlist) {
  Stack stack = Stack();
  List<int> reversed_list = [];
  for (int element in Rlist) {
    stack.push(element);
  }
  for (int i = 0; i < Rlist.length; i++) {
    reversed_list.add(stack.pop()); 
  }
  return reversed_list;
}

class Stack {
  List<int> Items = [];

  void push(int item) {
    Items.add(item);
  }

  int pop() {
    if (Items.isEmpty) {
      throw StateError('You can\'t remove from an empty stack:(');
    } else {
      return Items.removeLast();
    }
  }
}
