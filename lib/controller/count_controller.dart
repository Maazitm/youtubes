import 'package:get/get.dart';

class CountController extends GetxController {
  // Basic Rx types
  RxInt number = 0.obs;
  RxDouble price = 99.99.obs;
  RxString name = "Furqan".obs;
  RxBool isActive = true.obs;

  // Collections
  RxList<String> fruits = <String>[].obs;
  RxMap<String, dynamic> user = <String, dynamic>{ "name" :  "maaz" , "contact"  :8055537380}.obs;
  RxSet<int> ids = <int>{}.obs;

  // Nullable Rx types (optional)
  RxnString email = RxnString();
  RxnInt age = RxnInt();

  // Example increment
  void count() {
    number++;
    print("number: $number");
  }

  // Example update for other types
  void updateValues() {
    price.value += 10.5;
    name.value = "Furqan";
    isActive.toggle(); // toggles between true/false

    fruits.addAll(["Apple", "Banana"]);
    user["email"] = "Furqan@example.com";
    ids.add(42);

    email.value = "test@example.com";
    age.value = 25;

}
}
