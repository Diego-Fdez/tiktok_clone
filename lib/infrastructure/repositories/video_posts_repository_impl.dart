import 'package:tik_tok/domain/datasources/video_post_datasource.dart';
import 'package:tik_tok/domain/entities/video_post.dart';
import 'package:tik_tok/domain/repositories/video_post_repositories.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videosDataSource;

  VideoPostsRepositoryImpl({required this.videosDataSource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }
}
