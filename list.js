fetch("fetch_data.php")
  .then((response) => response.json())
  .then((data) => {
    let list = document.getElementById("dynamicList");
    data.forEach((item) => {
      let listItem = document.createElement("li");
      listItem.textContent = `${item.name} - ${item.date}`; // Display name and date
      list.appendChild(listItem);
    });
  })
  .catch((error) => console.error("Error:", error));
