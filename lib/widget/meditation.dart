import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MymediPage extends StatefulWidget {
  MymediPage({Key? key}) : super(key: key);

  @override
  _MymediPageState createState() => _MymediPageState();
}

class _MymediPageState extends State<MymediPage> {
  late List<YoutubePlayerController> _ytControllers;

  final List<String> videoIds = [
    'mRK6Ox1YG8E',
    '9GTPxTSA7Gk',
    'e94WQyH8-VY',
    'RG3p1MYgwwM',
    'KAv9BwX4AwQ',
    '89LMuiybpyQ',
    '2kNS96A6M1U',
    'PK9TZRuWknc',
    'BFTuozS2KN4',
  ];

  @override
  void initState() {
    super.initState();
    _ytControllers = videoIds
        .map((videoId) => YoutubePlayerController(
              initialVideoId: videoId,
              flags: YoutubePlayerFlags(
                autoPlay: false, 
                mute: false,
              ),
            ))
        .toList();
  }

  @override
  void dispose() {
    for (var controller in _ytControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // Set the desired height here
        child: AppBar(
          title: Text('Meditation Module'),
        ),
      ),
      body: ListView.builder(
        itemCount: _ytControllers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                YoutubePlayer(
                  controller: _ytControllers[index],
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.red,
                  onReady: () {
                    print('Player ${index + 1} is ready.');
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
