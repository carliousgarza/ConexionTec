window.manageSocialImpactForm = function() {
  socialImpactProjectDetail = document.getElementById('social-impact-project-detail');
  socialImpactForm = document.getElementById('social-impact-form');
  socialImpactValue = socialImpactProjectDetail.value;
  if(socialImpactValue == "true") {
    socialImpactForm.style.display = "block";
  } else {
    socialImpactForm.style.display = "none";
  }
}
