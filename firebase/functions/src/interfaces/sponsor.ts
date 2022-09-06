enum SponsorLevel {
  platinum = 0,
  gold = 1,
  silver = 2,
  bronze = 3,
}

export interface SponsorLogo {
  dark: string | null;
  normal: string;
}

export interface Sponsor {
  id: string;
  level: SponsorLevel;
  name: string;
  link: string;
  logo: SponsorLogo;
}
