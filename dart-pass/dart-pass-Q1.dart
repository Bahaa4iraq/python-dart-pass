void main() {
  List listA = [
    "Muklah",
    "Diyar",
    "Noorhan",
    "Ali",
    "Abdulbasit",
    "Dena",
    "Saba",
    "Fadi",
    "Karrar",
    "Ahmed"
  ];
  List listB = [
    "Diyar",
    "Noorhan",
    "Muklah",
    "Saba",
    "Mustafa",
    "Ahmed",
    "Fadi",
    "Dena",
    "Hassan",
    "Ali",
  ];
  List<String> list_common_names = [];
  List<String> list_Contain_m = [];

  listA.forEach((element) {
    listB.forEach((val) {
      if (val == element) {
        list_common_names.add(val);
      }
    });
  });
  list_common_names.forEach((element) {
    if (element.contains("m")) {
      list_Contain_m.add(element);
    }
  });

  print(list_common_names);
  print(list_Contain_m);
}
