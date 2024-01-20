import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:session8/widgets/custom_button.dart';

class ButtonDemoScreen extends StatelessWidget {
  const ButtonDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
            ),
            onPressed: handleClick,
            child: const Text('Submit your data'),
          ),
          TextButton(onPressed: () {}, child: const Text('Login')),
          OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.favorite),
            label: const Text('Favorite'),
          ),
          Icon(
            Icons.shopping_cart,
            size: 50,
            color: Colors.green,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 50,
              )),

         //ElevatedButton(onPressed: (){}, child: const Text('')),

         CustomButton(title: 'Login',
         onClick: (){
           Fluttertoast.showToast(msg: 'Login clicked');
         },
         ),
          Gap(20),
          CustomButton(title: 'Register',
          onClick: (){
            Fluttertoast.showToast(msg: 'Register clicked');

          },
          ),
        ],
      ),
    );
  }

  handleClick() {
    Fluttertoast.showToast(
      msg: 'Form will be submitted',
      backgroundColor: Colors.red,
      fontSize: 30,
      textColor: Colors.white,
    );
  }
}
