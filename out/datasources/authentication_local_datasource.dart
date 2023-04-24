 


@Injectable(as: IAuthenticationLocalDataSource)
class AuthenticationLocalDataSource extends IAuthenticationLocalDataSource {
  


  
  final SharedPreferences _sharedPreferences;
  final ObjectBox _objectBox;

  WithdrawalLocalDatasource(this._sharedPreferences, this._objectBox);
  

  


  


  
  @override
  UserResponse getUserDetails(
    
  ) {
  }

  

  

}

