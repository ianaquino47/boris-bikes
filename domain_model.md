#### Write down all the nouns in the User Stories
As a **person**,
So that I can use a **bike**,
I'd like a **docking station** to release a **bike**.

As a **person**,
So that I can use a good **bike**,
I'd like to see if a **bike** is working.

As a **maintainer of the system**,
So that I can manage **broken bikes** and not disappoint users,
I'd like **vans** to take **broken bikes** from **docking stations** and deliver them to **garages** to be fixed.

As a **maintainer of the system**,
So that I can manage **broken bikes** and not disappoint users,
I'd like **vans** to collect **working bikes** from **garages** and distribute them to **docking stations**.
#### Write down all the verbs in the User Stories
As a person,
So that I can **use** a bike,
I'd like a docking station to **release** a bike.

As a person,
So that I can **use** a good bike,
I'd like to **see if a bike is working**.

As a maintainer of the system,
So that I can **manage** broken bikes and not disappoint users,
I'd like vans to **take** broken bikes from docking stations and **deliver** them to garages to be fixed.

As a maintainer of the system,
So that I can **manage** broken bikes and not disappoint users,
I'd like vans to **collect** working bikes from garages and **distribute** them to docking stations.
#### Organise the nouns and verbs into Objects and Messages within the table
Objects  | Messages
------------- | -------------
Person  |
Bike  | working state (true/false)
Docking Station  | release_bike

#### Draw a diagram that shows how your Objects will use Messages to communicate with one another

Bike <--- working? ---> true/false

Docking Station <--- release a bike ---> bike

Docking Station <--- take_broken_bikes ---> van ---> deliver --> garage

garages ---> collect working bikes --> van --> distribute ---> Docking Station
