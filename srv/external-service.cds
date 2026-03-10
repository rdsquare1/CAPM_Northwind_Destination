using { northwind as external } from './external/northwind';

service ExternalService {
  entity Products as projection on external.Products;
}