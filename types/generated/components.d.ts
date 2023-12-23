import type { Schema, Attribute } from '@strapi/strapi';

export interface ContactContactItem extends Schema.Component {
  collectionName: 'components_contact_contact_items';
  info: {
    displayName: 'contactItem';
  };
  attributes: {
    label: Attribute.String;
    content: Attribute.String;
  };
}

export interface ContactContact extends Schema.Component {
  collectionName: 'components_contact_contacts';
  info: {
    displayName: 'contact';
    description: '';
  };
  attributes: {
    heading: Attribute.String;
    content: Attribute.Text;
    items: Attribute.Component<'contact.contact-item', true>;
    image: Attribute.Media;
  };
}

export interface FaqFaqItems extends Schema.Component {
  collectionName: 'components_faq_faq_items';
  info: {
    displayName: 'faqItems';
  };
  attributes: {
    heading: Attribute.String;
    content: Attribute.Text;
  };
}

export interface FaqFaq extends Schema.Component {
  collectionName: 'components_faq_faqs';
  info: {
    displayName: 'faq';
  };
  attributes: {
    heading: Attribute.String;
    content: Attribute.Text;
    items: Attribute.Component<'faq.faq-items', true>;
  };
}

export interface HomeAboutTabs extends Schema.Component {
  collectionName: 'components_home_about_tabs';
  info: {
    displayName: 'aboutTabs';
    description: '';
  };
  attributes: {
    title: Attribute.String;
    content: Attribute.RichText;
  };
}

export interface HomeAbout extends Schema.Component {
  collectionName: 'components_home_abouts';
  info: {
    displayName: 'about';
  };
  attributes: {
    subhead: Attribute.String;
    heading: Attribute.String;
    content: Attribute.Text;
    tabs: Attribute.Component<'home.about-tabs', true>;
    image: Attribute.Media;
    tabsTitle: Attribute.String;
  };
}

export interface HomeBenefitItems extends Schema.Component {
  collectionName: 'components_home_benefit_items';
  info: {
    displayName: 'benefitItems';
  };
  attributes: {
    heading: Attribute.String;
    content: Attribute.Text;
  };
}

export interface HomeBenefits extends Schema.Component {
  collectionName: 'components_home_benefits';
  info: {
    displayName: 'benefits';
  };
  attributes: {
    subhead: Attribute.String;
    heading: Attribute.String;
    content: Attribute.Text;
    items: Attribute.Component<'home.benefit-items', true>;
  };
}

export interface HomeComplianceItems extends Schema.Component {
  collectionName: 'components_home_compliance_items';
  info: {
    displayName: 'complianceItems';
    description: '';
  };
  attributes: {
    items: Attribute.Component<'home.services-item', true>;
    title: Attribute.String;
  };
}

export interface HomeCompliance extends Schema.Component {
  collectionName: 'components_home_compliances';
  info: {
    displayName: 'compliance';
  };
  attributes: {
    subhead: Attribute.String;
    heading: Attribute.String;
    content: Attribute.Text;
    compliances: Attribute.Component<'home.compliance-items'>;
    image: Attribute.Media;
  };
}

export interface HomeHero extends Schema.Component {
  collectionName: 'components_home_heroes';
  info: {
    displayName: 'hero';
    description: '';
  };
  attributes: {
    heading: Attribute.String;
    headingAnimList: Attribute.Component<'ui.text', true>;
    button: Attribute.Component<'ui.button', true>;
    content: Attribute.Text;
    email: Attribute.String;
    video: Attribute.Media;
  };
}

export interface HomePartnersItem extends Schema.Component {
  collectionName: 'components_home_partners_items';
  info: {
    displayName: 'partnersItem';
  };
  attributes: {
    content: Attribute.Text;
    icon: Attribute.Media;
    image: Attribute.Media;
    name: Attribute.String;
    role: Attribute.String;
    linkedin: Attribute.String;
  };
}

export interface HomePartners extends Schema.Component {
  collectionName: 'components_home_partners';
  info: {
    displayName: 'partners';
  };
  attributes: {
    subhead: Attribute.String;
    heading: Attribute.String;
    items: Attribute.Component<'home.partners-item', true>;
  };
}

export interface HomeServicesItem extends Schema.Component {
  collectionName: 'components_home_services_item';
  info: {
    displayName: 'servicesItem';
  };
  attributes: {
    heading: Attribute.String;
    content: Attribute.Text;
  };
}

export interface HomeServicesItems extends Schema.Component {
  collectionName: 'components_home_services_items';
  info: {
    displayName: 'servicesItems';
  };
  attributes: {
    title: Attribute.String;
    items: Attribute.Component<'home.services-item', true>;
  };
}

export interface HomeServicesSliderInfo extends Schema.Component {
  collectionName: 'components_home_services_slider_infos';
  info: {
    displayName: 'servicesSliderInfo';
    description: '';
  };
  attributes: {
    heading: Attribute.String;
    content: Attribute.Text;
    icon: Attribute.Media;
    buttonLabel: Attribute.String;
    buttonHref: Attribute.String;
  };
}

export interface HomeServicesSliderItem extends Schema.Component {
  collectionName: 'components_home_services_slider_items';
  info: {
    displayName: 'servicesSliderItem';
  };
  attributes: {
    heading: Attribute.String;
    content: Attribute.Text;
    icon: Attribute.Media;
  };
}

export interface HomeServicesSlider extends Schema.Component {
  collectionName: 'components_home_services_sliders';
  info: {
    displayName: 'servicesSlider';
    description: '';
  };
  attributes: {
    subhead: Attribute.String;
    heading: Attribute.String;
    items: Attribute.Component<'home.services-slider-item', true>;
    backgroundImage: Attribute.Media;
    info: Attribute.Component<'home.services-slider-info'>;
  };
}

export interface HomeServices extends Schema.Component {
  collectionName: 'components_home_services';
  info: {
    displayName: 'services';
  };
  attributes: {
    subhead: Attribute.String;
    heading: Attribute.String;
    content: Attribute.Text;
    services: Attribute.Component<'home.services-items'>;
    buttons: Attribute.Component<'ui.button', true>;
    image: Attribute.Media;
  };
}

export interface LayoutFooter extends Schema.Component {
  collectionName: 'components_layout_footers';
  info: {
    displayName: 'footer';
  };
  attributes: {
    heading: Attribute.String;
  };
}

export interface LayoutHeader extends Schema.Component {
  collectionName: 'components_layout_headers';
  info: {
    displayName: 'header';
  };
  attributes: {
    navigation: Attribute.Component<'layout.menu-item', true>;
    menu: Attribute.Component<'layout.menu-item', true>;
    socials: Attribute.Component<'layout.menu-item', true>;
  };
}

export interface LayoutMenuItem extends Schema.Component {
  collectionName: 'components_layout_menu_items';
  info: {
    displayName: 'menuItem';
    description: '';
  };
  attributes: {
    label: Attribute.String;
    href: Attribute.String;
    isExternal: Attribute.Boolean;
    class: Attribute.String;
    file: Attribute.Media;
  };
}

export interface LayoutMenus extends Schema.Component {
  collectionName: 'components_layout_menus';
  info: {
    displayName: 'menus';
    description: '';
  };
  attributes: {
    title: Attribute.String;
    items: Attribute.Component<'layout.menu-item', true>;
  };
}

export interface NotFoundNotFound extends Schema.Component {
  collectionName: 'components_not_found_not_founds';
  info: {
    displayName: 'notFound';
    description: '';
  };
  attributes: {
    heading: Attribute.String;
    content: Attribute.Text;
    button: Attribute.Component<'ui.button'>;
  };
}

export interface OurPlansCompareItem extends Schema.Component {
  collectionName: 'components_our_plans_compare_items';
  info: {
    displayName: 'compareItem';
    description: '';
  };
  attributes: {};
}

export interface OurPlansCompareTitle extends Schema.Component {
  collectionName: 'components_our_plans_compare_title';
  info: {
    displayName: 'compareTitles';
    description: '';
  };
  attributes: {
    title: Attribute.String;
    only: Attribute.String;
    basic: Attribute.String;
    enhanced: Attribute.String;
    border: Attribute.Boolean;
  };
}

export interface OurPlansCompare extends Schema.Component {
  collectionName: 'components_our_plans_compares';
  info: {
    displayName: 'compare';
    description: '';
  };
  attributes: {
    items: Attribute.Component<'our-plans.compare-title', true>;
    buttons: Attribute.Component<'ui.button', true>;
    summary: Attribute.Component<'our-plans.compare-title', true>;
  };
}

export interface OurPlansHero extends Schema.Component {
  collectionName: 'components_our_plans_heroes';
  info: {
    displayName: 'hero';
  };
  attributes: {
    heading: Attribute.String;
    content: Attribute.Component<'our-plans.our-plans-items'>;
  };
}

export interface OurPlansOurPlansItem extends Schema.Component {
  collectionName: 'components_our_plans_our_plans_item';
  info: {
    displayName: 'ourPlansItem';
    description: '';
  };
  attributes: {
    heading: Attribute.String;
    label: Attribute.String;
  };
}

export interface OurPlansOurPlansItems extends Schema.Component {
  collectionName: 'components_our_plans_our_plans_items';
  info: {
    displayName: 'ourPlansItems';
  };
  attributes: {
    heading: Attribute.String;
    items: Attribute.Component<'our-plans.our-plans-item', true>;
    label: Attribute.String;
    price: Attribute.String;
    priceLabel: Attribute.String;
    button: Attribute.Component<'ui.button'>;
  };
}

export interface OurPlansPlansItem extends Schema.Component {
  collectionName: 'components_our_plans_plans_items';
  info: {
    displayName: 'plansItem';
    description: '';
  };
  attributes: {
    subhead: Attribute.String;
    price: Attribute.String;
    priceLabel: Attribute.String;
    otherPrice: Attribute.String;
    otherPriceLabel: Attribute.String;
    buttonLabel: Attribute.String;
    buttonHref: Attribute.String;
    items: Attribute.RichText;
  };
}

export interface OurPlansPlans extends Schema.Component {
  collectionName: 'components_our_plans_plans';
  info: {
    displayName: 'plans';
    description: '';
  };
  attributes: {
    heading: Attribute.String;
    items: Attribute.Component<'our-plans.plans-item', true>;
    button: Attribute.Component<'ui.button'>;
  };
}

export interface SharedMetaSocial extends Schema.Component {
  collectionName: 'components_shared_meta_socials';
  info: {
    displayName: 'metaSocial';
    icon: 'project-diagram';
  };
  attributes: {
    socialNetwork: Attribute.Enumeration<['Facebook', 'Twitter']> &
      Attribute.Required;
    title: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        maxLength: 60;
      }>;
    description: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        maxLength: 65;
      }>;
    image: Attribute.Media;
  };
}

export interface SharedSeo extends Schema.Component {
  collectionName: 'components_shared_seos';
  info: {
    displayName: 'seo';
    icon: 'search';
  };
  attributes: {
    metaTitle: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        maxLength: 60;
      }>;
    metaDescription: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        minLength: 50;
        maxLength: 160;
      }>;
    metaImage: Attribute.Media;
    metaSocial: Attribute.Component<'shared.meta-social', true>;
    keywords: Attribute.Text;
    metaRobots: Attribute.String;
    structuredData: Attribute.JSON;
    metaViewport: Attribute.String;
    canonicalURL: Attribute.String;
  };
}

export interface UiButton extends Schema.Component {
  collectionName: 'components_ui_buttons';
  info: {
    displayName: 'button';
  };
  attributes: {
    label: Attribute.String;
    href: Attribute.String;
    class: Attribute.String;
    target: Attribute.Enumeration<['_blank']>;
  };
}

export interface UiForm extends Schema.Component {
  collectionName: 'components_ui_forms';
  info: {
    displayName: 'form';
  };
  attributes: {
    title: Attribute.String;
    input: Attribute.Component<'ui.input', true>;
    submit: Attribute.Component<'ui.button'>;
  };
}

export interface UiInput extends Schema.Component {
  collectionName: 'components_ui_inputs';
  info: {
    displayName: 'input';
    description: '';
  };
  attributes: {
    placeholder: Attribute.String;
    error: Attribute.String;
    type: Attribute.Enumeration<['text', 'email', 'tel', 'textarea']>;
    name: Attribute.String;
    required: Attribute.Boolean;
  };
}

export interface UiText extends Schema.Component {
  collectionName: 'components_ui_texts';
  info: {
    displayName: 'text';
  };
  attributes: {
    text: Attribute.String;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'contact.contact-item': ContactContactItem;
      'contact.contact': ContactContact;
      'faq.faq-items': FaqFaqItems;
      'faq.faq': FaqFaq;
      'home.about-tabs': HomeAboutTabs;
      'home.about': HomeAbout;
      'home.benefit-items': HomeBenefitItems;
      'home.benefits': HomeBenefits;
      'home.compliance-items': HomeComplianceItems;
      'home.compliance': HomeCompliance;
      'home.hero': HomeHero;
      'home.partners-item': HomePartnersItem;
      'home.partners': HomePartners;
      'home.services-item': HomeServicesItem;
      'home.services-items': HomeServicesItems;
      'home.services-slider-info': HomeServicesSliderInfo;
      'home.services-slider-item': HomeServicesSliderItem;
      'home.services-slider': HomeServicesSlider;
      'home.services': HomeServices;
      'layout.footer': LayoutFooter;
      'layout.header': LayoutHeader;
      'layout.menu-item': LayoutMenuItem;
      'layout.menus': LayoutMenus;
      'not-found.not-found': NotFoundNotFound;
      'our-plans.compare-item': OurPlansCompareItem;
      'our-plans.compare-title': OurPlansCompareTitle;
      'our-plans.compare': OurPlansCompare;
      'our-plans.hero': OurPlansHero;
      'our-plans.our-plans-item': OurPlansOurPlansItem;
      'our-plans.our-plans-items': OurPlansOurPlansItems;
      'our-plans.plans-item': OurPlansPlansItem;
      'our-plans.plans': OurPlansPlans;
      'shared.meta-social': SharedMetaSocial;
      'shared.seo': SharedSeo;
      'ui.button': UiButton;
      'ui.form': UiForm;
      'ui.input': UiInput;
      'ui.text': UiText;
    }
  }
}
