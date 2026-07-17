import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.imgPath, required this.titel, required this.desc});
  final String imgPath;
  final String titel;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
          
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    imgPath,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
          
            Text(titel,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
          
            ),),
            SizedBox(height: 10,),
                      Text(desc,style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey
                      
                                ),),
            ],
          ),
        ),
      ),
    );
  }
}
