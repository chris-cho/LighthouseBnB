$(() => {

  const $main = $('#main-content');

  window.views_manager = {};

  window.views_manager.show = function(item, data = '') {
    $newPropertyForm.detach();
    $propertyListings.detach();
    $searchPropertyForm.detach();
    $logInForm.detach();
    $signUpForm.detach();
    $newReservationForm.detach();
    $updateReservationForm.detach();
    $propertyReviews.detach();
    $newReviewForm.detach();
    
    let dataTag = "";

    switch (item) {
      case 'listings':
        $propertyListings.appendTo($main);
        console.log("listings")
        break;
      case 'newProperty':
        $newPropertyForm.appendTo($main);
        console.log("newProperty")
        break;
      case 'searchProperty':
        $searchPropertyForm.appendTo($main);
        console.log("searchProperty")
        break;
      case 'logIn':
        $logInForm.appendTo($main);
        break;
      case 'signUp':
        $signUpForm.appendTo($main);
        break;
      case 'newReservation':
        dataTag = `<h4>${data}</h4>`;
        $newReservationForm.appendTo($main);
        $(dataTag).appendTo("#datatag");
        break;
      case 'updateReservation':
        // since we're getting more information here, we can include this in an extended data tag:
        dataTag = `
          <span id="datatag-reservation-id">${data.id}</span>
          <span id="datatag-start-date">${data.start_date}</span>
          <span id="datatag-end-date">${data.end_date}</span>
          <span id="datatag-property-id">${data.property_id}</span>
        `;
        // if there's an error message we want to display that as well:
        const errorMessage = data.error_message ? `<h4>${data.error_message}</h4>` : ``;
        $updateReservationForm.appendTo($main);
        $(dataTag).appendTo("#datatag");
        $(errorMessage).appendTo('#error-message');
        break;
      case 'showReviews':
        getReviewsByProperty(data)
        .then(reviews => propertyReviews.addReviews(reviews))
        $propertyReviews.appendTo($main);
        console.log("showReview")
        break;
      case 'newReview':
        dataTag = `<h4>${data}</h4>`;
        $newReviewForm.appendTo($main);
        $(dataTag).appendTo("#datatag");
        break;
      case 'error': {
        const $error = $(`<p>${arguments[1]}</p>`);
        $error.appendTo('body');
        setTimeout(() => {
          $error.remove();
          views_manager.show('listings');
        }, 2000);
        
        break;
      }
    }
  }
  
});