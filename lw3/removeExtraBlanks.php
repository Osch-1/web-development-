<?php
header("Content-Type: text/plain");

if (isset($_GET["text"])) {
   $_GET["text"] = trim($_GET["text"]);
   $_GET["text"] = preg_replace("/\s+/",  " ", $_GET["text"]);
   echo $_GET["text"];
}