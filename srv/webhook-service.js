const cds = require("@sap/cds/lib");
const LOG = cds.log("webhook-service");

module.exports = class WebhookService extends cds.ApplicationService {
  init() {
    this.on("checkin.created", async (req) => {
      LOG.info("Received checkin.created event", req.data);
    });
    return super.init();
  }
};
