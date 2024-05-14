function fetchCenterInfo() {
    var center_name = document.getElementById("center_name").value;
    
    // AJAX call to fetch center code and address based on center name
    // Replace 'fetch_center_info.php' with the actual PHP script name
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "connect.php", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var response = JSON.parse(xhr.responseText);
            document.getElementById("center_code").value = response.center_code;
            document.getElementById("center_address").value = response.center_address;
        }
    };
    xhr.send("center_name=" + center_name);
}
