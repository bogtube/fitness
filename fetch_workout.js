fetch("get_workout.php")
  .then((response) => response.json())
  .then((data) => {
    let list = document.getElementById("dynamicList");
    data.forEach((item) => {
      let listItem = document.createElement("li");
      listItem.textContent = `${item.Split} - ${item.Date}`; // muss noch angepasst werden @Linus
      list.appendChild(listItem);
    });
  })
  .catch((error) => console.error("Error:", error));
