import 'package:tik_tok/domain/datasources/video_post_datasource.dart';
import 'package:tik_tok/domain/entities/video_post.dart';
import 'package:tik_tok/infrastructure/models/local_video_model.dart';
import 'package:tik_tok/shared/data/local_video_post.dart';

class LocalVideosDataSource implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
