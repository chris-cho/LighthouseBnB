INSERT INTO users (name, email, password)
VALUES
  ('Chris', 'hyunsangc@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Ash', 'yangsangcho@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Brandon', 'dudwo486486@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO addresses (country, street, city, province, post_code)
VALUES
  ('Canada', '59 Bishop Ave', 'Toronto', 'ON', 'M2M1Z4'),
  ('Canada', '30 Yetta Shepway', 'Toronto', 'ON', 'M2J1X9'),
  ('Canada', '66 Broadway Ave', 'Toronto', 'ON', 'M4P1T6');

INSERT INTO properties (title, description, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, thumbnail_photo, cover_photo, address_id, user_id)
VALUES
  ('Finch Bungalow', 'description', 100, 4, 2, 6, 'thumb', 'cover', 1, 1),
  ('Leslie house', 'description', 150, 1, 2, 5, 'thumb', 'cover', 2, 3),
  ('Eglinton Apartment', 'description', 50, 0, 2, 2, 'thumb', 'cover', 3, 2);

INSERT INTO reservations (start_date, end_date, property_id, user_id)
VALUES
  ('2022-01-13', '2022-01-16', 1, 1),
  ('2021-11-10', '2021-11-11', 2, 2),
  ('2021-12-31', '2022-01-11', 3, 3);

INSERT INTO property_reviews (message, rating, user_id, property_id)
VALUES
  ('message', 1, 1, 1),
  ('message', 3, 1, 2),
  ('message', 4, 2, 3);