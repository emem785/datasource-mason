 

class AuthenticationApiEndpoints {

}


@Injectable(as: IAuthenticationApiDataSource)
class AuthenticationApiDataSource extends IAuthenticationApiDataSource {
  
  final Dio dio;
  AuthenticationApiDataSource(this.dio);
  


  

  


  
  @override
  
  
  Future<Either<Failure,UserResponse>> getUserDetails(
  
    
  ) {
    try {

    } on DioError catch (e) {
      return left(Failure(e.message));
    } catch (e) {
      return left(Failure(e.toString()));
    }

  }

  


  

  


  
  @override
  
  
  Future<Either<Failure,LoginResponse>> login(
  
    
    String username,
    
    String password,
    
  ) {
    try {

    } on DioError catch (e) {
      return left(Failure(e.message));
    } catch (e) {
      return left(Failure(e.toString()));
    }

  }

  


  

  

}

