// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:helloworld/destini/story_brain.dart';

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Story Page"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  //TODO: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                  storyBrain.getStory(),
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Visibility(
                visible: storyBrain.buttonShouldBeVisible(),
                child: ElevatedButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                    setState(() {
                      storyBrain.nextStory(1);
                    });
                  },
                  child: Text(
                    //TODO: Step 13 - Use the storyBrain to get the text for choice 1.
                    storyBrain.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 2,
              //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
              //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(20.0),
                  fixedSize: const Size(300, 70),
                  textStyle: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                  elevation: 15,
                  shadowColor: Colors.amberAccent,
                  side: const BorderSide(
                    color: Colors.black45,
                    width: 2,
                  ),
                  alignment: Alignment.center,
                ),
                onPressed: () {
                  //Choice 2 made by user.
                  //TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                  setState(() {
                    storyBrain.nextStory(2);
                  });
                },
                child: Text(
                  //TODO: Step 14 - Use the storyBrain to get the text for choice 2.
                  storyBrain.getChoice2(),
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
