import 'dart:io';

void main() {
//  Set to store guest names
  Set<String> guestNames = {};

//  loop for enter guest name
  while (true) {
    print(
        'Enter guest name (or enter log out when you finish from add all guest names)');
    String guestName = stdin.readLineSync()!;

    if (guestName == 'log out') {
      break;
    }
// Check if the guest exists
    if (isExist(guestName, guestNames)) {
      print('The name "$guestName" already exists.');
    } else {
      addGuest(guestName, guestNames);
      print('The name "$guestName" has been added.');
    }
  }

// Display the final guest list
  print('Final Guest List:');
  guestNames.forEach(print);
}

// Function to check if  guest is exist
bool isExist(String guestName, Set<String> guestNames) {
  return guestNames.contains(guestName);
}

// Function to add  guest
void addGuest(String guestName, Set<String> guestNames) {
  guestNames.add(guestName);
}
