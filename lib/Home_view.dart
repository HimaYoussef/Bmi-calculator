import 'package:flutter/material.dart';
import 'package:flutter_application_1/Style.dart';
import 'package:flutter_application_1/User.dart';
import 'package:flutter_application_1/appcolors.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  List<UserModel> users = [
    UserModel(
        image: 'assets/flutter image.png',
        name: 'MO salah',
        lastMessage: 'Hello !!',
        time: '10:20 AM'),
    UserModel(
        image: 'assets/Logo.png',
        name: 'Mohamed Youssef',
        lastMessage: 'Welcome',
        time: '11:02 AM'),
    UserModel(
        image: 'assets/flutter image.png',
        name: 'Ahmed Farouk',
        lastMessage: 'Nice to SEE YOU',
        time: '9:00 AM'),
    UserModel(
        image: 'assets/Logo.png',
        name: 'Ibrahim youssef',
        lastMessage: 'ME',
        time: '19:05 PM'),
    UserModel(
        image: 'assets/flutter image.png',
        name: 'Azza Youssef',
        lastMessage: 'Hi !!',
        time: '22:09 PM'),
    UserModel(
        image: 'assets/Logo.png',
        name: 'Moaz Farag',
        lastMessage: 'How are you ',
        time: '17:59 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Chat App',
          style: getTitleStyle(color: AppColors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: AppColors.white,
              )),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Favourite Contacts',
                  style: getTitleStyle(color: AppColors.white, fontSize: 18),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            const CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/flutter image.png'),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              users[index].name.split(' ')[0],
                              style: getTitleStyle(
                                  color: AppColors.white, fontSize: 14),
                            )
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 5,
                          ),
                      itemCount: users.length),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/Logo.png'),
                      ),
                      title: Text(
                        users[index].name,
                        style: getTitleStyle(
                            color: AppColors.primaryColor, fontSize: 18),
                      ),
                      subtitle: Text(
                        users[index].lastMessage,
                      ),
                      trailing: Text(users[index].time),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: users.length),
            ),
          ),
        ],
      ),
    );
  }
}
