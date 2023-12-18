//Removing All Occurrences

void main() {
  LinkedList linkedList = LinkedList();
  linkedList.add(1);
  linkedList.add(2);
  linkedList.add(3);
  linkedList.add(1);
  linkedList.add(5);
  linkedList.add(1);
  linkedList.add(2);
  linkedList.add(3);
  linkedList.add(4);
  linkedList.add(1);

  print("Original List:");
  linkedList.printList();

  print("list: after Removing All Occurrences  ");
  linkedList.removingOcc(1);
  linkedList.printList();
}

class Node {
  int data;
  Node? next;
  Node(this.data, [this.next]);
}

class LinkedList {
  Node? head;
  void add(int data) {
    Node? newNode = Node(data);
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

  void removingOcc(int key) {
    Node? curr = head;
    Node? pre = null;

    while (curr != null) {
      if (curr.data == key) {
        if (pre != null) {
          pre.next = curr.next;
        } else {
          head = curr.next;
        }
      } else {
        pre = curr;
      }
      curr = curr.next;
    }
  }
}
