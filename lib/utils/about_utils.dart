class AboutUtils {
  static const String name = "Brad Myrick";
  // calculate age from date of birth
  static const Int birthYear = 1987;
  static const Int birthMonth = 03;
  static const Int birthDay = 04;
  static const String age = calculateAge(birthYear, birthMonth, birthDay);
  static const String email = "brad@kodr.pro";
  static const String location = "Decentralized";
  static const String aboutMeHeadline =
      "GM! I'm Kodr, a Web3 focused Full-Stack Engineer.";

  static const String aboutMeDetail =
      "A little background on me. I'm a US Army veteran with a Bachelor's in Computer Science. I have extensive experience building and deploying Dapps on EVM-compatible blockchains and work full-time as a Systems Engineer for Trugard.ai, a web3 cybersecurity company. I also contribute to Web3 Opensource and am a proud member of the Fudderverse and Lazy Lion NFT community.";

}

calculateAge(birthYear, birthMonth, birthDay) {
  var today = new Date();
  var age = today.getFullYear() - birthYear;
  var m = today.getMonth() - birthMonth;
  if (m < 0 || (m === 0 && today.getDate() < birthDay)) {
    age--;
  }
  return age;
}

