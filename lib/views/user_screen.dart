
import 'package:flutter/material.dart';
import 'package:bt_login_user/image_url.dart';
import 'package:bt_login_user/views/register_screen.dart';
import 'package:bt_login_user/views/itemModel.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {


  ImageUrl imageUrl = ImageUrl();
  TextEditingController? mathController;
  TextEditingController? litController;
  TextEditingController? englishController;
  final List<ItemModel> _items = [
    ItemModel(0, 'assets/images/user1.png', 'George Bluth', 'george.bluth@reqres.in'),
    ItemModel(1, 'assets/images/user2.png', 'Janet Weaver', 'janet.weaver@reqres.in'),
    ItemModel(2, 'assets/images/user3.png', 'Emma Wong', 'emma.wong@reqres.in'),
    ItemModel(3, 'assets/images/user4.png', 'Eve Holt', 'eve.holt@reqres.in'),
    ItemModel(4, 'assets/images/user5.png', 'Charles Morris', 'charles.morris@reqres.in'),
    ItemModel(5, 'assets/images/user6.png', 'Tracy Ramos', 'tracy.ramos@reqres.in'),
    ItemModel(6, 'assets/images/user7.png', 'George Bluth', 'george.bluth@reqres.in'),
    ItemModel(7, 'assets/images/user8.png', 'George Bluth', 'george.bluth@reqres.in'),
    ItemModel(8, 'assets/images/user9.png', 'George Bluth', 'george.bluth@reqres.in'),

    ];

 /* List<String> items =[
    'George Bluth',
    'Janet Weaver',
    'Emma Wong',
    'Eve Holt',
    'Charles Morris',
    'Tracy Ramos',
    'George Bluth',
    'George Bluth',
    'George Bluth',
  ];*/

  @override
  void initState() {
    super.initState();
    mathController = TextEditingController();
    litController = TextEditingController();
    englishController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    mathController!.dispose();
    litController!.dispose();
    englishController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            color: Colors.white,
            child: Column(
                children: [
                  const SizedBox(height: 35,),
                  Row(
                    children: [
                      const SizedBox(width: 15,),
                      Align(
                          alignment: Alignment.topLeft,

                          child: IconButton(onPressed: () {
                            Navigator.of(context).pop();
                          }, icon: const Icon(Icons.arrow_back))),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 33, right: 293, bottom: 16),
                    child: const Text("Users",
                      style: TextStyle(color: Color(0xff29b412),
                          fontSize: 32, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,),),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 35, right: 93, bottom: 10),
                    child: const Text(
                      "Here is the users list existing in the mock system.",
                      style: TextStyle(color: Color(0xff000000),
                          fontSize: 16, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.left,),),
                  Expanded(child: buildList()),
                ]),
          ),

        )

    );
  }
  Widget buildList()=>ListView.builder(
    padding: const EdgeInsets.only(left: 25, bottom: 0, right: 0, top: 15),
    itemCount:_items.length,
    itemBuilder:(context,index){
      final item =_items[index];
      return ListTile(
        leading: CircleAvatar(
          radius: 25  ,

          backgroundImage: AssetImage(item.url),
        ),
        title: Text(item.title),
        subtitle:  Text(item.description),
      );
    } ,
  );
}



