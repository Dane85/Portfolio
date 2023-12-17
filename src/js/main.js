// Import all of Bootstrap's JS
import * as bootstrap from "bootstrap";
import * as aos from "aos";
import * as lottie from "lottie-web";

if (module.hot) {
  module.hot.dispose(function (data) {
    // module is about to be replaced.
    // You can save data that should be accessible to the new asset in `data`
    data.updated = Date.now();
  });

  module.hot.accept(function (getParents) {
    // module or one of its dependencies was just updated.
    // data stored in `dispose` is available in `module.hot.data`
    let { updated } = module.hot.data;
  });
}
