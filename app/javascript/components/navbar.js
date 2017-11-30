function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight) {
      navbar.classList.remove('navbar-wagon-transparent');
    } else {
      navbar.classList.add('navbar-wagon-transparent');
    }
  });
}
export { initUpdateNavbarOnScroll };
