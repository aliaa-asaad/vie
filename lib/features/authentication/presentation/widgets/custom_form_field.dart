import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  //final String title;
  final double width;
  final double height;
  /* final TextEditingController? controller; */
  final TextInputType? type;
 /*  final String? Function(String?)? validate; */
  final String? hintText;
   final bool? obSecure;
  /*final IconData? prefix;*/
  final IconData? suffix;
  final void Function()? suffixButtonPressed; 
  final bool isPassword;
  final Color textColor;
  final String? initValue;
 /*  final void Function(String?)? onChange;
  final bool? isAuth; */

  const CustomFormField({
    super.key,
    //required this.title,
    required this.width,
    required this.height,
   /*  this.controller, */
    this.type,
   /*  required this.validate, */
    this.hintText,
    this.isPassword = false,
     this.suffixButtonPressed,
    this.obSecure,
    /*this.prefix,*/
    this.suffix, 
    // this.borderColor = Colors.white,
    this.textColor = Colors.black,
    //this.cursorColor = Colors.blue,
    this.initValue,
    /* this.onChange,
    this.isAuth = true, */
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /*  isAuth == true  ?  DefaultText(text: tittle, fontWeight: FontWeight.bold) : const Column(),
         isAuth == true  ? SizedBox(height: 10.h) : const Column(),
         */
        SizedBox(
          width: width,
          height: height,
          child: TextFormField(
            initialValue: initValue,
           // onChanged: onChange,
            style: TextStyle(color: textColor, fontSize: 16),
            //cursorColor: cursorColor,
            keyboardType: type,
            /* controller: controller,
            
            validator: validate, */
            obscureText: obSecure ?? false,
            decoration: InputDecoration(
                filled: true,
                hintText: hintText,
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.red),
                ),
                contentPadding: const EdgeInsets.only(left: 10, right: 10),
                suffixIcon: isPassword == true
                    ? InkWell(
                        onTap: suffixButtonPressed,
                        child: Icon(
                          suffix,
                          size: 20,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      )
                    : null,
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
                )),
          ),
        ),
      ],
    );
  }
}
