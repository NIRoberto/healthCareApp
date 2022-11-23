/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package medicine;

/**
 *
 * @author CSE
 */
public class MedModel {

    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
     */
    int id;
    String name;
    String quantity;
    String dates;
    String category;
    String manufacturer;
    String rate;

    public MedModel() {
    }

    public MedModel(
            String name,
            String quantity,
            String dates,
            String rate,
            String category,
            String m,
            int id
    ) {
        this.name=name;
        this.category=category;
        this.dates=dates;
        this.manufacturer=m;
        this.rate=rate;
        this.quantity=quantity;
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantityl(String quantity) {
        this.quantity = quantity;
    }

    public String getDate() {
        return dates;
    }

    public void setDate(String dates) {
        this.dates = dates;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String c) {
        this.category = c;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String m) {
        this.manufacturer = m;
    }

}
