import java.util.*;
class Product {
    int productId;
    String productName;
    String category;

    Product(int id, String name, String cat) {
        this.productId = id;
        this.productName = name;
        this.category = cat;
    }

    public String toString() {
        return productName + " (ID: " + productId + ", " + category + ")";
    }
}

public class ecommerce{


    static Product linearSearch(Product[] cars, String name) {
        for (Product car : cars) {
            if (car.productName.equals(name)) return car;
        }
        return null;
    }

    static Product binarySearch(Product[] cars, String name) {
        int left = 0, right = cars.length - 1;
        while (left <= right) {
            int mid = (left + right) / 2;
            int cmp = cars[mid].productName.compareTo(name);
            if (cmp == 0) return cars[mid];
            else if (cmp < 0) left = mid + 1;
            else right = mid - 1;
        }
        return null;
    }

    public static void main(String[] args) {
        Product[] cars = {
            new Product(101, "BMW", "Luxury"),
            new Product(102, "Honda", "Sedan"),
            new Product(103, "Toyota", "SUV"),
            new Product(104, "Audi", "Luxury"),
            new Product(105, "Ford", "Truck")
        };

        System.out.println("Linear Search: " + linearSearch(cars, "Honda"));

        Arrays.sort(cars, Comparator.comparing(p -> p.productName));
        System.out.println("Binary Search: " + binarySearch(cars, "Honda"));
    }
}

