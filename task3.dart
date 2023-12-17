//reverse linkedList
void main() {
  LinkedList linkedList = LinkedList();
  linkedList.add(1);
  linkedList.add(2);
  linkedList.add(3);
  linkedList.add(4);
  linkedList.add(5);

  print("Original List:");
  linkedList.printList();
  
  print("\nList in Reverse Order:");
  linkedList.printReverse();
}

class Node {
  int? data;
  Node? next;

  Node(this.data);
}

Node? head;

class LinkedList {
  void add(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = newNode;
    }
  }

  void printList() {
    Node? current = head;
    List list = [];
    while (current != null) {
      list.add(current.data);
      current = current.next;
    }
    print(list);
  }

  void printReverse() {
    List reverseList = [];
    printReverseHelper(head, reverseList);
    print(reverseList);
  }

  void printReverseHelper(Node? node, List reverseList) {
    if (node == null) {
      return;
    }
    printReverseHelper(node.next, reverseList);

    reverseList.add(node.data);
  }
}
