# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (designer has_many designs, fashion_show has_many designs)
- [x] Include at least one belongs_to relationship (design belongs_to designer, design belongs_to fashion_show)
- [x] Include at least one has_many through relationship (designer has_many fashion_shows through designs)
- [x] The "through" part of the has_many through includes at least one user submittable attribute (design.name, design.style, design.fashion)
- [x] Include reasonable validations for simple model objects (Designer class_name User, Design, FashionShow)
- [x] Include a class level ActiveRecord scope method (FashionShow.select_by_location, e.g. /fashion_shows?utf8=✓&location=Stockholm&commit=Select+location)
- [x] Include a nested form writing to an associated model using a custom attribute writer (/fashion_show/new, Design)
- [x] Include signup (Devise)
- [x] Include login (Devise)
- [x] Include logout (Devise)
- [x] Include third party signup/login (Devise/OmniAuth, Facebook)
- [x] Include nested resource show or index (/designers/2/designs/4, /fashion_shows/1/designs/9)
- [x] Include nested resource "new" form (/fashion_shows/1/designs/new, /designers/1/designs/new)
- [x] Include form display of validation errors (/fashion_shows/1/designs/new, /designers/1/designs/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
