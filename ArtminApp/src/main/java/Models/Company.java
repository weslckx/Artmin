/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Rei
 */
//Atributen
public class Company {
    private long id;
    private User user;
    private String name;
    private String manager;
    private String street;
    private String nrBus;
    private String postCode;
    private String city;
    private String country;
    private String phone;
    private String vat;
    private String email;
    private String logoFilePath;
    private String bankAccount;
    private boolean vatLegalLine;
    private String invoicePreFix;
    private long firstInvoiceNumber;
    private String termsAndConditionsUrl;
    private boolean ack;
 

//Properties

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getNrBus() {
        return nrBus;
    }

    public void setNrBus(String nrBus) {
        this.nrBus = nrBus;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getVat() {
        return vat;
    }

    public void setVat(String vat) {
        this.vat = vat;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogoFilePath() {
        return logoFilePath;
    }

    public void setLogoFilePath(String logoFilePath) {
        this.logoFilePath = logoFilePath;
    }

    public String getBankAccount() {
        return bankAccount;
    }

    public void setBankAccount(String bankAccount) {
        this.bankAccount = bankAccount;
    }

    public boolean isVatLegalLine() {
        return vatLegalLine;
    }

    public void setVatLegalLine(boolean vatLegalLine) {
        this.vatLegalLine = vatLegalLine;
    }

    public String getInvoicePreFix() {
        return invoicePreFix;
    }

    public void setInvoicePreFix(String invoicePreFix) {
        this.invoicePreFix = invoicePreFix;
    }

    public long getFirstInvoiceNumber() {
        return firstInvoiceNumber;
    }

    public void setFirstInvoiceNumber(long firstInvoiceNumber) {
        this.firstInvoiceNumber = firstInvoiceNumber;
    }

    public String getTermsAndConditionsUrl() {
        return termsAndConditionsUrl;
    }

    public void setTermsAndConditionsUrl(String termsAndConditionsUrl) {
        this.termsAndConditionsUrl = termsAndConditionsUrl;
    }

    public boolean isAck() {
        return ack;
    }

    public void setAck(boolean ack) {
        this.ack = ack;
    }

    

//    Constructors
    
    public Company() {
    }

    public Company(long id, User user, String name, String manager, String street, String nrBus, String postCode, String city, String country, String phone, String vat, String email, String logoFilePath, String bankAccount, boolean vatLegalLine, String invoicePreFix, long firstInvoiceNumber, String termsAndConditionsUrl, boolean ack) {
        this.id = id;
        this.user = user;
        this.name = name;
        this.manager = manager;
        this.street = street;
        this.nrBus = nrBus;
        this.postCode = postCode;
        this.city = city;
        this.country = country;
        this.phone = phone;
        this.vat = vat;
        this.email = email;
        this.logoFilePath = logoFilePath;
        this.bankAccount = bankAccount;
        this.vatLegalLine = vatLegalLine;
        this.invoicePreFix = invoicePreFix;
        this.firstInvoiceNumber = firstInvoiceNumber;
        this.termsAndConditionsUrl = termsAndConditionsUrl;
        this.ack = ack;
    }

    
}
