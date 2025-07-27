<?php                                                 //{Brief Info}
//Declearing Variables...              //================================================== 
$sessionId = $_Post["sessionId"];      //"$response" : additional variable for dialoges on the USSD 
$serviceCode = $_Post["serviceCode"];  //"CON" : first connection
$phoneNumber = $_Post["phoneNumber"];  //"\n" : Break to next line
$text = $_Post["text"];                //END used for terminal response at end og requests


if ($text == "") //After dialing the service code  
//And the user have not entered anything the options bellow will be prompted.
{                                                                                     
 $response = "CON Welcome to Med-Service, Choose your option:\n";                                  
 $response .= "1. Emergency \n";                                             
 $response .= "2. Login \n";
 $response .= "3. Sign up";                                             
} 
 else 
  if ($text == "1")
   {
    //Business logic for first level response
     $response = "END Help is being sent!!!";
   } 
//============Login activities============================   
 else
  if ($text == "2") 
   //Business logic second level response
  {
   $response = "CON choose option \n";
   $response .= "1. Appoitments \n";
   $response .= "2. Last Visit \n";
   $response .= "3. Treatment Collection";
  } else
  if ($text == "2*1")
  {
  $response = "CON Choose option: \n";  
  $response .= "1. Book appointment \n";
  $response .= "2. View booked appointment";
  } else if ($text == "2*1*1")
          {
            $response = "CON Choose date you want to book for: \n";
            $response .= "1. WED this week (DR. Ndlovu) \n";
            $response .= "2. SAT this week (DR. Mkhize) \n";
            $response .= "3. 24 August 2022 (DR. William)";
          }
    else if ($text == "2*1*2")
          {      
            $BookedAppointment = "14 September 2022";
            $response = "END Your appoitment is on: ".$BookedAppointment;
          }else
  if ($text == "2*2")
   {
     $LastVisit = "22 June 2022";
     $response = "END Your last visit was on: ".$LastVisit; 
   } else
  if ($text == "2*3") 
   {
     $Collection = "17 September 2022";
     $response = "END Your treatment collection is on: ".$Collection;
   }         
          
 //============Signing Up===============================  
 else 
  if ($text == "3") 
  
  {
   $response = "CON Choose your City in Easter Cape: \n";
   $response .= "1. Mthatha \n";
   $response .= "2. Gqeberha \n";
   $response .= "3. Cradock \n";
   $response .= "4. Flagstaff \n";
   $response .= "5. Dimbaza";
  } 
 else
  if ($text == "3*1")
  {  //Mthatha Clinics
   $response = "CON Choose your nearest clinic: \n";
   $response .= "1. Mthatha Gateway Clinic \n";
   $response .= "2. Bumbane Clinic \n"; 
   $response .= "3. Buntingville Clinic \n";
   $response .= "4. Qunu Clinic \n";
   $response .= "5. Empilweni Health Services \n";
   $response .= "6. Mqhekezweni Clinic \n";
   $response .= "7. Ndibela Clinic";
  } else
  if ($text == "3*2")
  { //Gqeberha Clinics
   $response = "CON Choose your nearest clinic: \n"; 
   $response .= "1. Dept of Correctional Services - St Albans \n";
   $response .= "2. Malabar Clinic \n";
   $response .= "3. Masakhane Clinic - Gqeberha \n";
   $response .= "4. Tshangana Clinic \n";
   $response .= "5. Gelvandale Clinic \n";
   $response .= "6. Nelson Mandela Metropolitan Municipality - Health Dept";
  } else
  if ($text == "3*3")
  {  //Cradock Clinics
    $response = "CON Choose your nearest clinic: \n"; 
   $response .= "1. Baroda Clinic \n";
   $response .= "2. Cradock Municipality - High Street Clinic \n";
   $response .= "3. Keiskammahoek Mobile \n";
   $response .= "4. Michausdal Clinic";
   } 
  else
  if ($text == "3*4")
 {  //Flagstaff Clinics
  $response = "CON Choose your nearest clinic: \n";
   $response .= "1. Park Center Clinic \n";
   $response .= "2. Cell Perfect Endermologie Clinic \n";
   $response .= "3. Khayamnandi Clinic \n";
   $response .= "4. Prime Cure Medi-Center";
  }
 else
  if ($text == "3*5") 
 {  //Dimbaza Clinics
  $response = "CON Choose your nearest clinic: \n";
  $response .= "1. Dimbaza Community Healthcare Centre \n"; 
  $response .= "2. Amahleke Clinic";
 }
//=========================================================

  //echo the response to the API. The response depends on the "if" statement that is fulfilled in each instance.
header('Content-type; text/plain');
echo $response;
 
?>