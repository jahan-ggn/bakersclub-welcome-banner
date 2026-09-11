import { apiInitializer } from "discourse/lib/api";
import WelcomeBanner from "../components/welcome-banner";

export default apiInitializer((api) => {
  api.renderInOutlet("below-site-header", WelcomeBanner);
});
