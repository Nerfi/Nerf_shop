import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Easy","Fast", "Fun"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
