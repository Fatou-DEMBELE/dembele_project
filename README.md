## Getting Start1.PROJECT TİTLE.
##1.PROJECT TİTLE.
Library Tracker





























##2.PROBLEM STATEMENT:
How can we display and manage a list of books in a simple mobil application?



































3##.OBJECTİVE OF THE PROJECT:
The project aims to design a flutter mobile application that allows users to
-Add and remove books,
-Track borrowed and available books,
-View a list of books and their status.























##4.EXPECTED OUTCOME:
A working flutter application that demonstrates book management with an interactive user interface, ready to run an Android device or simulator





























##5.METHODOLOGY:
Approch to problem solving:
start the application
the main screen automatically displays the list of books 
the app continuously shows the current books
the app run until the user closes it
MAİN COMPONENTS:
İnput:None(the app runs automatically,the user does not enter any data) 
Processing:The app reads the pre-defined list of books and prepares them for display
Outpu:The list of books is displayed on the main screen with details such as title,author,and status
DATA STRUCTURE AND MANİPULATİONA
The book object contains:
-Title
-Author
-Status
The data is loaded once when the app starts
No user interaction changrs the data;it is only displayed























##7.EXANPLE CONTROL FLOW(Library Tracker):
-start the app
-load the predefined list of books
-display the main screen
-show all books with their details 
-keep displaying the list
-exist when the user closes the application
PSEUDOCODE
start
load book list 
display list on screen
wait until user close the application
end


























##8.TECHNİCAL İMPLEMENTATİON
PROGRAMMİNG LANGAGE:Dart(Flutter)
CODE:
class book{
  string title;
  string author,
  book({required this.title, required this.author});
  }
  List<book> books=[
  book(title: "Flutter basics",author:"Author A")
  book(title: "dart programming",author:"Author B"),
  ]
  ##8.EXPLANATİON:
  The app is build using flutter and dart
  it runs on an android emulator or device
  the app displays a static list
  no user interaction is required
  the interface demonstrates basic UI design and data display



