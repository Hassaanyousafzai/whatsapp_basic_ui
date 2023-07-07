import 'package:flutter/material.dart';
import 'package:whatsapp_basic_ui/components/call_list_tile.dart';
import 'package:whatsapp_basic_ui/components/chat_list_tile.dart';
import 'package:whatsapp_basic_ui/components/comps.dart';
import 'package:whatsapp_basic_ui/components/status_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userData data = userData();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => const [
                PopupMenuItem(
                  child: Text('New Group'),
                ),
                PopupMenuItem(
                  child: Text('New Contact'),
                ),
                PopupMenuItem(
                  child: Text('Logout'),
                ),
              ],
            ),
            const SizedBox(width: 10),
          ],
          centerTitle: false,
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Chats
            ListView.builder(
              itemCount: data.chatData.length * 10,
              itemBuilder: (context, index) {
                final dataIndex = index % data.chatData.length;
                return ChatListTileWidget(
                  img: data.images[index % data.images.length],
                  name: data.chatData[dataIndex][0],
                  text: data.chatData[dataIndex][1],
                  time: data.chatData[dataIndex][2],
                );
              },
            ),
            // Status
            ListView.builder(
              itemCount: data.chatData.length * 10,
              itemBuilder: (context, index) {
                final dataIndex = index % data.images.length;
                return StatusListTileWidget(
                    img: data.images[index % data.images.length],
                    name: data.chatData[dataIndex][0],
                    time: data.chatData[dataIndex][2]);
              },
            ),
            // Calls
            ListView.builder(
              itemCount: data.chatData.length * 10,
              itemBuilder: (context, index) {
                final dataIndex = index % data.images.length;
                return CallListTileWidget(
                    img: data.images[index % data.images.length],
                    name: data.chatData[dataIndex][0],
                    text: data.chatData[dataIndex][1],
                    num: index);
              },
            )
          ],
        ),
      ),
    );
  }
}
