**Walmart Paperless Stores**
Use the steps below to set up the Looker environment and build the real-time dashboard.
These steps assume you have admin access to a Looker environment. If this is not the case, please
see the "Getting Access to Looker" section at the bottom of this page.

1) Create the database connection
- Create a Looker database connection named "paperless_stores_bq" and point it to the BigQuery
[PROJECT.DATASET] where the receipts transaction table lives.

2) Create the Looker project
- Create a new Looker project and name it "walmart_paperless_store". Create the project with a
blank Git repo.

3) Connect to the Git repository
- Once the project is created, connect the project to the Git repository with the Paperless Store
LookML code. If correctly done, the LookML files from the Git repository should appear in the
"File Browser" section of the Looker IDE.

4) Turn on automatic refreshing for the dashboard
- The dashboard is set to refresh every 24 hours. To modify this to make it a real-time dashboard,
modify the paperless_store_dash.dashboard in the Looker IDE and change line 8 to read:
"refresh: 4 seconds" or whatever frequency you desire.
NOTE: Only modify files using the Looker IDE. Never modify LookML files directly in the Git repo
or outside of Looker.
