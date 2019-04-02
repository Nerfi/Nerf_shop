import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Easy", "Fun", "Fast"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
