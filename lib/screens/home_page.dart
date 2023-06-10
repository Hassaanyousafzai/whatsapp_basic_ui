import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
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
            const SizedBox(
              width: 10,
            ),
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
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Joey.jfif'),
                  ),
                  title: Text('Joey Tribbiani'),
                  subtitle: Text("Hey How you doin'?"),
                  trailing: Text('6:00 PM'),
                );
              },
            ),
            // Status
            ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green,
                        width: 3,
                      ),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Joey1.jfif'),
                    ),
                  ),
                  title: const Text('Joey Tribbiani'),
                  subtitle: const Text('Few Minutes Ago'),
                );
              },
            ),
            // Calls
            ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Joey2.jfif'),
                  ),
                  title: const Text('Joey Tribbiani'),
                  subtitle: const Text("You missed a call"),
                  trailing: (index % 2 == 0)
                      ? const Icon(Icons.phone)
                      : const Icon(Icons.video_call),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
