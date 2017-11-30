function showTab() {
  console.log('hi');
  const tabs = document.querySelectorAll("#dashboard-tabs li > a");
  tabs.forEach((element) => {
    element.addEventListener('click', (event) => {
      event.preventDefault();
      event.target.tab('show');
      console.log("hello");
    });
  });
}
export { showTab };
