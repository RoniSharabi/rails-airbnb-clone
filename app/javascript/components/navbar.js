function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-home');
  if (navbar) {
    window.addEventListener('scroll', () => {
      console.log("window.scrollY = " + window.scrollY);
      console.log("window.innerHeight = " + window.innerHeight);
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.remove('navbar-wagon-transparent');
      } else {
        navbar.classList.add('navbar-wagon-transparent');
      }
    });
  }
}
export { initUpdateNavbarOnScroll };
