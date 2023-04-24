abstract class IAuthenticationApiDataSource {
  

  
  
  
  Future<Either<Failure,UserResponse>> getUserDetails(
  
  
  
    
  );

  

  
  
  
  Future<Either<Failure,LoginResponse>> login(
  
  
  
    
    String username,
    
    String password,
    
  );

  

}
