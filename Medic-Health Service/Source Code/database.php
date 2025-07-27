<?php

#Database manipulation...
function Insert_ClientInfo($client_Num, $client_Name, 
                           $client_Surname, $client_Province, 
                           $client_City, $client_Clinic, 
                           $client_Password 
                          ){
    return "Signed up Successfully! \n";
}

#Login function...
function Login($validate_password){
    if ( $validate_password !=  get_Password()){
        return "Password incorrect. \n";   
    }


    return "Welcome back ".get_Name() . "\n";
}




#Get Function...
function get_Name(){
    $name = "";
    return $name; 
}

function get_Surname(){
    $surname = "";
    return $surname;
}

function get_Province(){
    $province = "";
    return $province;
}

function get_City(){
    $city = "";
    return $city;
}

function get_Clinic(){
    $clinic = "";
    return $clinic;
}

function get_Password(){
    $password = "";
    return $password;
}

function get_SignInDate(){
    $signInDate = "";
    return $signInDate;
}
?>