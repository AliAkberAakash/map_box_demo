import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get/get.dart';
import '../core/network/api_base_helper.dart';
import '../core/network/dio_factory.dart';
import '../core/network/network_info.dart';
import '../data/datasources/local_datasource/local_datasource.dart';
import '../data/datasources/local_datasource/local_datasource_impl.dart';
import '../data/datasources/remote_datasource/remote_datasource.dart';
import '../data/datasources/remote_datasource/remote_datasource_impl.dart';
import '../data/datasources/remote_datasource/rest_service.dart';
import '../data/repositories/repository.dart';
import '../data/repositories/repository_impl.dart';


void setup() {

  Get.put<DioFactory>(DioFactory());
  Get.put(DataConnectionChecker());
  Get.put<ApiBaseHelper>(ApiBaseHelper(dioFactory: Get.find()));
  Get.put<RestService>(RestService(helper: Get.find()));
  Get.put<RemoteDataSource>(RemoteDataSourceImpl(service: Get.find()));
  Get.put<LocalDataSource>(LocalDataSourceImpl());
  Get.put<NetworkInfo>(NetworkInfoImpl(Get.find()));
  Get.put<Repository>(RepositoryImpl(
    remoteDataSource: Get.find(),
    localDataSource: Get.find(),
    networkInfo: Get.find(),
  ));
}