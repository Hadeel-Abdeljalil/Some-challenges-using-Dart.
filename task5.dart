//Find the Middle Node  of linkedList

void main(){
  LinkedList linkedList = LinkedList();
  linkedList.add(1);
  linkedList.add(2);
  linkedList.add(3);
  linkedList.add(4);
  linkedList.add(5);

  print("Original List:");
  linkedList.printList();

  print("reversed list:" );
  linkedList.reverseList();

}

class Node{
  int data;
  Node? next;
  Node(this.data,[this.next]);
}

class LinkedList{
  Node? head;
  void add(int data){
    Node? newNode=Node(data);
    if(head == null){
      head=newNode;
    }else{
      Node current=head!;
      while(current.next !=null){
        current=current.next!;
      }
      current.next=newNode;
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

  void reverseList(){
    Node? temp;
    Node? prev;
    while(head != null){
          temp=head?.next;
          head?.next=prev;
          prev=head;
          head=temp;
      }
      head=prev;
      printList();
  }

 

}
