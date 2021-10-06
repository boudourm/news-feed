import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NewsFeed(),
  ));
}

class NewsFeed extends StatelessWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){print("home clicked");},
                  icon: Icon(Icons.home)),
              IconButton(onPressed: (){print("person_add_alt clicked");},
                  icon: Icon(Icons.person_add_alt)),
              IconButton(onPressed: (){print("video_call clicked");},
                  icon: Icon(Icons.video_call)),
              IconButton(onPressed: (){print("verified_user clicked");},
                  icon: Icon(Icons.verified_user)),
            ],
          )
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: Container(
              height: 300,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/user1.png'),
                    ),
                    onTap: (){print("the listTile is clicked");},
                    title: Text("User 1"),
                    subtitle: Text("march 31 2021"),
                    trailing: Icon(Icons.more_horiz),
                  ),
                  Text("Deadlines help you to keep moving and deliver"
                      "content faster and it will increase your efficiency as well."),
                  SizedBox(height: 16,),
                  Expanded(
                    child: Image.asset(
                      "images/respecter-deadline-freelance-700x525.jpg"
                    ),
                  )
                ],
              )

            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("hey I'm clicked");
        },
        child: Icon(Icons.account_box_outlined),
        backgroundColor: Colors.amber,
      ),
    );
  }
}

