Pending:

1. Google sign in and authentication
2. Payment Info
   1. Add dropdown for rent/expense (Done - radio)
   2. Add image upload option - v2
   3. Add rupee icon - v2
3. Prop Details
   1. Add Payment Button - v2
   2. Make table editable - v2
   3. Link to individual flat reporting - v2
4. Tenant Details
   1. Full screen - just a data table… (done) did with ListTiles inside a column
   2. Images - id proofs - v2
5. NavBar bottom -
   1. Home redirect
   2. Reports redirect
   3. Settings Redirect
6. Notifications - 1
   1. When date crosses and full amount not paid
   2. Reminder on 1st of Month to collect rent
7. Drawer -
   1. Profile page - v2
   2. Notifications settings - 1
   3. Settings page - only theme for now - v2
   4. Logout…

Hook up to backend

1. Design Mongo collections for this data
   1. Landlord Profile
      1. Settings separate - for each profiles
      2. Notification settings
   2. Property
      1. Tenant will only track current tenant or array - with vacated date included.
   3. Tenant
   4. Payments - has to include prop id and tenant id(if rent type) if expense then
2. Find how to communicate to firestore and update the database one page at a time

V2. CRUD property, tenant, txns etc. & better reporting
Version 3.0 - we give app to users
They make payments via app
Their view vs our view (roles)
