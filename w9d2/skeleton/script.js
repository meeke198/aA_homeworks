document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants
  document.querySelectorAll("#restaurants > li").forEach(element => {
    element.toggleAttribute(name, true);
  });

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  const sfPlaces = document.getElementById('sf-places');
  placesForm.addEventListener('submit', event => {
  event.preventDefault();
  const placesNameInput = document.getElementByClassName('favorite-input');
  const placesName = placesNameInput.value;
  placesNameInput.value = '';
  const ul = document.getElementById('sf-places');
  const li = document.createElement('li');
  li.textContent = placesName;
  ul.appendChild(li);

  // --- your code here!



  // adding new photos

    const cutePhotos = document.getElementByClassName('dog-photos');
    placesForm.addEventListener('submit', event => {
      event.preventDefault();
      const photosURLInput = document.getElementByClassName('photo-url-input');
      const photoURL = photosURLInput.value;
   
      const ul = document.getElementByClassName('photo-url-input');
      const li = document.createElement('li');
      li.textContent = <img src="photoURL"/>;
      ul.appendChild(li);
  // --- your code here!



});
