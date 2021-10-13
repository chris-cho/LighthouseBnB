INSERT INTO users (name, email, password)
VALUES
  ('Chris', 'hyunsangc@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Ash', 'yangsangcho@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Brandon', 'dudwo486486@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (title, description, country, street, city, province, post_code, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, thumbnail_photo_url, cover_photo_url, owner_id)
VALUES
  ('Finch Bungalow', 'description', 'Canada', '59 Bishop Ave', 'Toronto', 'ON', 'M2M1Z4', 100, 4, 2, 6, 'thumb', 'cover', 1),
  ('Leslie house', 'description', 'Canada', '30 Yetta Shepway', 'Toronto', 'ON', 'M2J1X9', 150, 1, 2, 5, 'thumb', 'cover', 3),
  ('Eglinton Apartment', 'description', 'Canada', '66 Broadway Ave', 'Toronto', 'ON', 'M4P1T6', 50, 0, 2, 2, 'thumb', 'cover', 2);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES
  ('2021-01-13', '2021-01-16', 1, 1),
  ('2021-11-10', '2021-11-11', 2, 2),
  ('2021-08-14', '2022-08-21', 3, 3),
  ('2021-11-10', '2021-11-11', 2, 2);

INSERT INTO property_reviews (message, rating, guest_id, property_id, reservation_id)
VALUES
  ('message', 1, 1, 1, 1),
  ('message', 3, 2, 2, 4),
  ('message', 4, 3, 3, 3);