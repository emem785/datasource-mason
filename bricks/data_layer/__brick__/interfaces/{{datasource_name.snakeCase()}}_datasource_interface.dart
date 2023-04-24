abstract class I{{datasource_name.pascalCase()}}DataSource {
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
  );

  {{/functions}}

}
