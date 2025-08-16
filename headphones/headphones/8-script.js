document.addEventListener("DOMContentLoaded", () => {
  const button = document.getElementById("hamburger");
  const menu = document.getElementById("nav-menu");
  if (!button || !menu) return;

  const toggle = () => {
    const open = menu.classList.toggle("open");
    button.setAttribute("aria-expanded", String(open));
  };

  button.addEventListener("click", toggle);
  button.addEventListener("keydown", (e) => {
    if (e.key === "Enter" || e.key === " ") { e.preventDefault(); toggle(); }
  });
});
