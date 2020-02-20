//  Given two singly linked lists that intersect at some point, find the intersecting node.
//  The lists are non-cyclical.
//
//  For example, given A = 3 -> 7 -> 8 -> 10 and B = 99 -> 1 -> 8 -> 10, return
//  the node with value 8.
//
//  In this example, assume nodes with the same value are the exact same
//  node objects.


class Node {
  int val;
  Node next;

  Node(this.val);

  void addNode([int valForNext,]) {
    print("Adding node $valForNext ");
    Node emptyNode = this.next;
    while(emptyNode.next != null) emptyNode = emptyNode.next;
    emptyNode = Node(valForNext);
  }

  void removeNode() => this.next = null;

  Node nextNode(Node currentNode) {return currentNode.next;}
}

bool checkIfSameNode(Node a,Node b){
  print(a.val);
  print(b.val);
  return a.val == b.val;
}

void test1(){
  Node a = Node(3);
  Node b = Node(99);
  Node c = Node(7);
  Node d = Node(8);
  Node e = Node(10);
  Node f = Node(1);
  Node g = Node(8);
  a.next = e;
//  c.next = d;
  b.next = f;
  f.next = g;
  d.next = e;
  g.next = e;
//  printTree(a);
print(findInterSect(a, b));
}

void printTree(Node current){
  while(current != null){
    print(current.val);
    current = current.next;
  }
}

int findInterSect(Node a, Node b){
  Node temp = b;
  while(a != null){
    b = temp;
    while(b != null){
//      print("${a.val}-a ${b.val}=b ");
      if(a.val == b.val){
        return a.val;
      }
      b = b.next;
    }
    a = a.next;
  }
  return null;
}
void main(){
  test1();
}
