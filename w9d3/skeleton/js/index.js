console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
    url: 'http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b',
    type: 'GET',
    success: function (weatherData) {
        console.log('Here are the fetched json data of the New York weather');
        console.log(weatherData);
    },
    error(){
        console.error("sign up for your own API key and stick that key in place of bcb83c4b54aee8418983c2aff3073b3b");
    }
}); 

// Add another console log here, outside your AJAX request
console.log("outside your AJAX request @@")

