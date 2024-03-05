/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author hovut
 */
public class Cart {
  private ArrayList<Item> items;

    public Cart() {
        items=new ArrayList<>();
    }

    public Cart(ArrayList<Item> items) {
        this.items = items;
    }

    public ArrayList<Item> getItems() {
        return items;
    }

    public void setItems(ArrayList<Item> items) {
        this.items = items;
    }
    
  private Item getItemById(int id){
      for(Item i:items){
          if(i.getBook().getId()==id) return i;
          
      }
      return null;
  }
  public int getQuantityById(int id){
      return getItemById(id).getQuantity();
  }
  public void add(Item i){
      if(getItemById(i.getBook().getId())!=null){
          Item t=getItemById(i.getBook().getId());
          t.setQuantity(t.getQuantity()+i.getQuantity());
      }else{
          items.add(i);
      }
  }
  public void remove(int id){
      if(getItemById(id)!=null){
          items.remove(getItemById(id));
      }
  }
  public double getTotal(){
      double m=0;
      for(Item i:items)
          m+=i.getQuantity()*i.getPrice();
      return m;
  }
  private Book getBookById(int id,ArrayList<Book>list){
      for(Book b:list){
          if(b.getId()==id)
              return b;
      }
      return null;
  }
  public void updateItem(int productId, int quantity) {
    for (Item item : items) {
        if (item.getBook().getId() == productId) {
            if (quantity > 0) {
                item.setQuantity(quantity);
            } else {
                items.remove(item);
            }
            break;
        }
    }
}
}
