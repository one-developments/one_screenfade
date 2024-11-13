var defualtLogo = "";
var spinnerSize = 100;
var defualtLoadingTxt = "Load...";
var defualtColor1 = "#000";
var defualtColor2 = "#fff";
var ShadowLogo = false;
var spinner = true;
var spinnerPostion = "bottom-left";
var logoAnimation = "rotate-animation";
var defualtStyleSpinner = "load1";
var primaryColor = "#ffff";

$(document).ready(function () {
  $.post("http://one_screenfade/ready", JSON.stringify({}));

  $(window).on("message", function (event) {
    var data = event.originalEvent.data;
    switch (data.action) {
      case "Send_Config":
        // console.log(data.configs);
        let config = data.configs;
        defualtLogo = config.logoSettings.logo;
        defualtLoadingTxt = config.loadingScreen.spinnerSettings.defaultText;
        defualtColor1 = config.background.color1;
        defualtColor2 = config.background.color2;
        ShadowLogo = config.logoSettings.shadow;
        spinner = config.loadingScreen.spinnerIsOn;
        logoAnimation = config.logoSettings.animation_logo;
        spinnerPostion = config.loadingScreen.spinnerSettings.position;
        defualtStyleSpinner = config.loadingScreen.spinnerSettings.style;
        primaryColor = config.loadingScreen.spinnerSettings.color;
        spinnerSize = Number(config.loadingScreen.spinnerSettings.size) / 100;

        break;
      case "show":
        $("body").focus();
        var duration = data.duration;
        var StyleConfig = data.style;
        if (StyleConfig) {
          doNewStyle(StyleConfig);
        } else {
          setPrimaryColor(primaryColor);
          shadowLogo(defualtLogo);
          SpinnerShow(defualtLoadingTxt, spinner);
          backgroundColor(defualtColor1, defualtColor2);
          insertLogo(defualtLogo, logoAnimation);
        }
        $("#LOADING").fadeIn(duration);
        break;
      case "hide":
        var duration = data.duration;
        $("#LOADING").fadeOut(duration);
        setTimeout(() => {
          $(".bluringlogo").attr("src", defualtLogo);
          $(".org").attr("src", defualtLogo);
        }, duration);

        break;
      default:
        break;
    }
  });
});

function setPrimaryColor(color) {
  document.documentElement.style.setProperty("--primarycolor", color);
}

function insertLogo(logo, anim) {
  var anim = anim || logoAnimation;
  $(".org").attr("src", logo);
  $(".org").addClass(anim);

  if (
    anim === "fill-up-animation" ||
    anim === "fill-bottom-animation" ||
    anim === "fill-left-animation" ||
    anim === "fill-right-animation"
  ) {
    $(".org").css("opacity", "0.1");
    $(".org").css("filter", "grayscale(100%)");
    $(".mask").addClass(anim);
    $(".mask").css({
      "background-image": `url(${logo})`,
      "background-repeat": "no-repeat",
      "background-position": "center",
      "background-size": "contain",
    });
  }
}

function doNewStyle(style) {
  shadowLogo(style.logo || defualtLogo);

  SpinnerShow(style.loadingText || defualtLoadingTxt, style.spinner || spinner);
  setPrimaryColor(style.colorSpinner || primaryColor);
  backgroundColor(style.color1 || defualtColor1, style.color2 || defualtColor2);
  insertLogo(style.logo || defualtLogo, style.animation_logo || logoAnimation);
}

function SpinnerShow(text, show) {
  if (show) {
    $(".loaderbox").show();
    $(".loaderbox").css("transform", `scale(${spinnerSize})`);
    $(".spinner").addClass(defualtStyleSpinner);
    $(".loading-text").text(text);
    $(".loaderbox").addClass(spinnerPostion);
  } else {
    $(".loaderbox").hide();
  }
}

function backgroundColor(color1, color2) {
  $(".content").css(
    "background",
    `radial-gradient(59.29% 71.83% at 50% 100%, ${color1} 0%, ${color2} 100%)`
  );
}

function shadowLogo(logo) {
  if (ShadowLogo) {
    $(".bluringlogo").show();
    $(".bluringlogo").attr("src", logo);
    $(".bluringlogo").addClass("fade-animation");
    // $(".bluringlogo").addClass("rotate-animation");
  } else {
    $(".bluringlogo").hide();
  }
}
