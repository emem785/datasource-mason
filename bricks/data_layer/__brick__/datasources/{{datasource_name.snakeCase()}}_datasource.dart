 
{{#isApi}}
class {{datasource_name.pascalCase()}}Endpoints {

}
{{/isApi}}

@Injectable(as: I{{datasource_name.pascalCase()}}DataSource)
class {{datasource_name.pascalCase()}}DataSource extends I{{datasource_name.pascalCase()}}DataSource {
  {{#isApi}}
  final Dio dio;
  {{datasource_name.pascalCase()}}DataSource(this.dio);
  {{/isApi}}


  {{#isLocal}}
  final SharedPreferences _sharedPreferences;
  final ObjectBox _objectBox;

  WithdrawalLocalDatasource(this._sharedPreferences, this._objectBox);
  {{/isLocal}}

  {{#functions}}


  {{#isApi}}
  @override
  {{^isEither}}
  Future<{{return_type.pascalCase()}}> {{function_name.camelCase()}}(
  {{/isEither}}
  {{#isEither}}
  Future<Either<Failure,{{return_type.pascalCase()}}>> {{function_name.camelCase()}}(
  {{/isEither}}
    {{#parameters}}
    {{type}} {{name.camelCase()}},
    {{/parameters}}
  ) {
    try {

    } on DioError catch (e) {
      return left(Failure(e.message));
    } catch (e) {
      return left(Failure(e.toString()));
    }

  }

  {{/isApi}}


  {{#isLocal}}
  @override
  {{return_type.pascalCase()}} {{function_name.camelCase()}}(
    {{#parameters}}
    {{type}} {{name.camelCase()}},
    {{/parameters}}
  ) {
  }

  {{/isLocal}}

  {{/functions}}

}

