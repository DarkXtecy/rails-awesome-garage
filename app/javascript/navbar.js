document.addEventListener("DOMContentLoaded", () => {
  const menuToggle = document.getElementById("menu-toggle");
  const menuLinks = document.getElementById("menu-links");

  menuToggle.addEventListener("click", () => {
    menuLinks.classList.toggle("show");
  });
});
