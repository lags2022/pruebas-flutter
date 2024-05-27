import 'package:toktik/domain/datasource/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async{
    
  }
}
