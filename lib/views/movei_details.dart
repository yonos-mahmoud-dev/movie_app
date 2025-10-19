import 'package:flutter/material.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
class MoveiDetails extends StatefulWidget {
  const MoveiDetails({super.key, required this.movie});
  final MovieModel movie;
  @override
  _MoveiDetailsState createState() => _MoveiDetailsState();
}

class _MoveiDetailsState extends State<MoveiDetails> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.networkUrl(
            viewType: VideoViewType.platformView,
            Uri.parse(
              'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
            ),
            videoPlayerOptions: VideoPlayerOptions(),
          )
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1C1C1C),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 300,
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
