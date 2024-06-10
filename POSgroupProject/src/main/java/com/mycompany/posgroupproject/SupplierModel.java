/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author user
 */
public class SupplierModel {
    private int id;
    private String name;
    private String address;
    private String phone;
    private String remarks;

    public SupplierModel(int id, String name, String address, String phone, String remarks) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.remarks = remarks;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public String getRemarks() {
        return remarks;
    }
}

