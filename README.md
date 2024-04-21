# Tito Event Badge Print

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

| File or Folder | Purpose                              |
| -------------- | ------------------------------------ |
| `app/`         | content for UI frontends goes here   |
| `db/`          | your domain models and data go here  |
| `srv/`         | your service models and code go here |
| `package.json` | project metadata and configuration   |
| `readme.md`    | this getting started guide           |

## Sequence Diagram

```mermaid
sequenceDiagram
%% participants
participant Admin as Admin
participant QRCode as Participant QR Code
participant TitoCheckinApp as Tito check-in App
participant Tito as Tito Backend
participant CAP as CAP Application
participant ADS as SAP Forms Service by Adobe
participant Print as SAP Print Service
participant PrintManager as SAP Cloud Print Manager
participant Printer as Printer
%% arrows
loop Setup
Admin->>CAP: Setup Event
end
TitoCheckinApp->>QRCode: Scan QR Code
TitoCheckinApp->>TitoCheckinApp: Confirm Check-in
TitoCheckinApp->>Tito: Send Check-in Confirmation
Tito->>CAP: Call Webhook
CAP->>CAP: Read Configuration for Event
CAP->>CAP: Convert Webhook JSON to XML
CAP->>ADS: Request Badge Template
ADS->>CAP: Badge Template
CAP->>ADS: Request Badge PDF with XML and Template
ADS->>CAP: Return Badge PDF
CAP->>Print: Send Badge PDF
Print->>PrintManager: Send Badge PDF
PrintManager->>Printer: Print Badge PDF
```

## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.
