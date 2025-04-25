module human_relations::human_relations;
use std::string;
use std::string::String;
use sui::transfer::transfer;
use sui::tx_context::{sender};


public struct Certificate has key{
    id:UID,
    name:String,
    cp:address,
    image_url:String,

} 

fun init(ctx:&mut TxContext){

   
}



public entry fun mint(name:String,addr:address,url:String,ctx:&mut TxContext){
     let cert=Certificate{
        id:object::new(ctx),
        name:name,
        cp:addr,
        image_url:url
    };

    transfer(cert,sender(ctx));


}