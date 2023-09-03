import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';
import 'package:smartradio/models/Countrymodel.dart';
import 'package:smartradio/services/selectcity_item_service.dart';
class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: ColorConstant.lightGrey,
     body:  FutureBuilder(
       future: Ccountry().countryname(),
       builder:(context,snapshot){
         if(snapshot.connectionState==ConnectionState.waiting){
           return const Center(
             child: CircularProgressIndicator(),
           );
         }
         else if(snapshot.connectionState==ConnectionState.done) {
           List<Countrymodel1> countryl=snapshot.data as List<Countrymodel1>;
           String countryid="";
           return StatefulBuilder(
             builder: (context,setState)
             {
               return ListView.builder(
                   itemCount: countryl.length,
                   itemBuilder:(context,index){
                     return GestureDetector(
                       child: Container(
                         height: 55,
                         margin: const EdgeInsets.only(bottom: 10),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Column(
                                 children:[
                             Container(
                               height: 33,
                                 constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width*0.2),
                                 child: Center(child: Text(countryl[index].name.toString(),style: TextStyle(fontSize: 20,color: Colors.white),))),
                             Container(
                               height: 17,
                                 constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width*0.2),
                                 child: Center(child: Text(countryl[index].continent.toString(),style: TextStyle(fontSize: 13,color: Colors.white)))),
                         ]),
                             Padding(padding:EdgeInsets.only(left:size.width*0.07)),
                             Container(
                               padding:EdgeInsets.only(right:size.width*0.01),
                               constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width*0.1),
                               child: Center(child: Radio(
                                 fillColor: MaterialStateProperty.resolveWith((states){
                                   if(states.contains(MaterialState.selected)){
                                     return Colors.cyan;
                                   }
                                   return Colors.white;
                                 }),
                                 activeColor: Colors.cyan,
                                 value:countryl[index].id!.toString(),
                                 groupValue:countryid,
                                 onChanged: (value){
                                   setState((){
                                     countryid=countryl[index].id!.toString();
                                   });
                                 },
                               )),
                             ),
                           ],
                         ),
                       ),
                     );
                   });
             });
         }
           return Container();
         },
     ),
    );
  }
}