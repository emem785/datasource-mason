@injectable
class {{repository_name.pascalCase()}}Repository {
  final I{{datasource_name.pascalCase()}}DataSource {{datasource_name.camelCase()}}DataSource;

  {{repository_name.pascalCase()}}Repository(this.{{datasource_name.camelCase()}}DataSource);


  {{#functions}}
  {{#isApi}}
  {{^isEither}}
  Future<{{return_type.pascalCase()}}> {{function_name.camelCase()}}(
  {{/isEither}}
  {{#isEither}}
  Future<Either<Failure,{{return_type.pascalCase()}}>> {{function_name.camelCase()}}(
  {{/isEither}}
  {{/isApi}}
  {{^isApi}}
  {{return_type.pascalCase()}} {{function_name.camelCase()}}(
  {{/isApi}}
    {{#parameters}}
    {{type}} {{name.camelCase()}},
    {{/parameters}}
  ){
    return {{datasource_name.camelCase()}}DataSource.{{function_name.camelCase()}}(
    {{#parameters}}
    {{name.camelCase()}},
    {{/parameters}}
    );
  }
  {{/functions}}

}
