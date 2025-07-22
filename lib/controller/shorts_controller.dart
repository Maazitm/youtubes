import 'package:get/get.dart';

class ShortsController  extends GetxController{



  var mytext = "Subscribe".obs;
 // RxString subscribe ="Subscribe".obs;
 var cahnnel_name ="Doremon Official shorts".obs;
 var discription = "Cartoon | 1.2M subscribers \n 1.5 M views | 1 day age".obs;





 void changeValue(){

 //  mytext.value  = "Subscribed✨";

   if(mytext.value ==  "Subscribed✨"){
     mytext.value =  "Subscribe";
   }
   else{

     mytext.value  = "Subscribed✨";
   }
 }
}


// flutter pub add get