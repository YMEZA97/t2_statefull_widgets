
String? validateNum(String value) {
   String patttern = r'(^[0-9]*$)';
   // ignore: unused_local_variable
   RegExp regExp = RegExp(patttern);
   if (value.isEmpty) {
     return "Ingrese un dato";
   } 
   return null;
 }