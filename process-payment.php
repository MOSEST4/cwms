<?php
header('Content-Type: application/json');

// Receive JSON input
$data = json_decode(file_get_contents("php://input"), true);

$phone = $data['phone'];
$amount = $data['amount'];

// EasyPay credentials
$client_id = 'ae4024817055f6cc';
$client_secret ='6cee39f7e1dda50c';
// Reference ID
$reference = rand(100000, 999999);

$payload = [
    'username' => $client_id,
    'password' => $client_secret,
    'action'   => 'mmdeposit',
    'amount'   => $amount,
    'phone'    => $phone,
    'currency' => 'UGX',
    'reference'=> $reference,
    'reason'   => 'Car Wash Booking'
];

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, "https://www.easypay.co.ug/api/");
curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($payload));
curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json']);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);

$response = curl_exec($ch);
curl_close($ch);

echo $response;
?>
