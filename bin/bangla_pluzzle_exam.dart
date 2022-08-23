import 'dart:io';

void bubbleSort(var L) {
  var n = L.length;
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n - i - 1; j++) {
      if (L[j] > L[j + 1]) {
        var temp = L[j];
        L[j] = L[j + 1];
        L[j + 1] = temp;
      }
    }
  }
}

int getThirdLargest(var a, int total) {
  int temp;
  for (int i = 0; i < total; i++) {
    for (int j = i + 1; j < total; j++) {
      if (a[i] > a[j]) {
        temp = a[i];
        a[i] = a[j];
        a[j] = temp;
      }
    }
  }
  return a[total - 3];
}

void main() {

  // Reading inputArray by separating spaces
  String? inputArray = stdin.readLineSync();

  //removing spaces
  var afterRemovingSpace = inputArray?.split(' ');

  // convert it into a integer list
  final List<int> newList = afterRemovingSpace!.map((e) => int.parse(e)).toList();

  bubbleSort(newList);

  print(getThirdLargest(newList, newList.length-1));

}
