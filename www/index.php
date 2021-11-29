<?php

require_once "../lib/dbconnect.php";


echo "This line from php...";

$sql = "select * from cards";

$st = $mysqli->prepare($sql);

$st->execute();
$res = $st->get_result();

$r = $res->fetch_assoc();

print "card_name: $r[cname], card_shape: $r[cshape]";

?>