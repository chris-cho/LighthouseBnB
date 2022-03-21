$(() => {

  const $propertyListings = $(`
  <section class="property-listings" id="property-listings">
      <p>Loading...</p>
    </section>
  `);
  window.$propertyListings = $propertyListings;

  window.propertyListings = {};

  function addListing(listing) {
    $propertyListings.append(listing);
  }
  function clearListings() {
    $propertyListings.empty();
  }
  window.propertyListings.clearListings = clearListings;

  function addProperties(properties, isReservation = false) {
    // if it's a reservation, we don't want to clear the listings a second time in the addProperties function call
    if (!isReservation) {
      clearListings();
    }
    // check for user login
    getMyDetails()
    .then()
    for (const propertyId in properties) {
      const property = properties[propertyId];
      const listing = propertyListing.createListing(property, isReservation);
      addListing(listing);
    }
      $('main').on('click', '.update-button',function() {
        const idData = $(this).attr('id').substring(16);
        getIndividualReservation(idData).then(data => {
          views_manager.show("updateReservation", data);       
        });
      })
      $('main').on('click', '.delete-button',function() {
        const idData = $(this).attr('id').substring(16);
        deleteReservation(idData)
        .then(() => console.log('Success!'))
        .catch(err => console.error(err));
        views_manager.show('propertyListings')        
      })
      $('main').on('click', '.add-review-button',function() {
        const idData = $(this).attr('id').substring(11);
        views_manager.show('newReview', idData);
      })
      $('main').on('click', '.reserve-button',function() {
        clearListings();
        console.log("Clicked reserve");
        const idData = $(this).attr('id').substring(17);
        views_manager.show('newReservation', idData);
      })
      $('main').on('click', '.review_details',function() {
        clearListings();
        console.log("Clicked reviews");
        const idData = $(this).attr('id').substring(15);
        views_manager.show('showReviews', idData);
      })
  }

  window.propertyListings.addProperties = addProperties;

});