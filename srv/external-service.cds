using { northwind as external } from './external/northwind';
// using my.northwind as db from '../db/schema';


service ExternalService {
  entity Products as projection on external.Products;
  entity Orders as projection on external.Orders;
  // entity OrderItems as projection on external.OrderItems;
}