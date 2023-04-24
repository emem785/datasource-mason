@injectable
class AuthenticationRepository {
  final IAuthenticationApiDataSource authenticationApiDataSource;

  AuthenticationRepository(this.authenticationApiDataSource);


  
  
  
  
  Future<Either<Failure,UserResponse>> getUserDetails(
  
  
  
    
  ){
    return authenticationApiDataSource.getUserDetails(
    
    );
  }
  
  
  
  
  Future<Either<Failure,LoginResponse>> login(
  
  
  
    
    String username,
    
    String password,
    
  ){
    return authenticationApiDataSource.login(
    
    String username,
    
    String password,
    
    );
  }
  

}
