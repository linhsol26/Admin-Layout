import 'package:admin_layout/models/Product.dart';
import 'package:admin_layout/models/Customer.dart';

class Bill {
  final int id;
  final Product product;
  final Customer customer;

  Bill({this.id, this.product, this.customer});
}

List<Bill> bills = [
  Bill(
    id: 1,
    product: Product(
      id: 1,
      name: "TV Samsung",
      price: 30000000,
    ),
    customer: Customer(
      id: 1,
      name: "Customer 1",
      phone: "0987748383",
      address: "110 Nguyen Van Qua, Phuong 10, Phu Nhuan",
      location: "Ho Chi Minh",
    ),
  ),
  Bill(
    id: 1,
    product: Product(
      id: 1,
      name: "TV Samsung",
      price: 30000000,
    ),
    customer: Customer(
      id: 1,
      name: "Customer 1",
      phone: "0987748383",
      address: "110 Nguyen Van Qua, Phuong 10, Phu Nhuan",
      location: "Ho Chi Minh",
    ),
  ),
  Bill(
    id: 1,
    product: Product(
      id: 1,
      name: "TV Samsung",
      price: 30000000,
    ),
    customer: Customer(
      id: 1,
      name: "Customer 1",
      phone: "0987748383",
      address: "110 Nguyen Van Qua, Phuong 10, Phu Nhuan",
      location: "Ho Chi Minh",
    ),
  ),
  Bill(
    id: 1,
    product: Product(
      id: 1,
      name: "TV Samsung",
      price: 30000000,
    ),
    customer: Customer(
      id: 1,
      name: "Customer 1",
      phone: "0987748383",
      address: "110 Nguyen Van Qua, Phuong 10, Phu Nhuan",
      location: "Ho Chi Minh",
    ),
  ),
];
