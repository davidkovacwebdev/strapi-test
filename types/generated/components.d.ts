import type { Schema, Attribute } from '@strapi/strapi';

export interface AnalysisEmpty extends Schema.Component {
  collectionName: 'components_analysis_empties';
  info: {
    displayName: 'empty';
    description: '';
  };
  attributes: {
    heading: Attribute.String;
    content: Attribute.Text;
    image: Attribute.Media;
  };
}

export interface ContactContact extends Schema.Component {
  collectionName: 'components_contact_contacts';
  info: {
    displayName: 'contact';
  };
  attributes: {
    input: Attribute.Component<'contact.item', true>;
  };
}

export interface ContactItem extends Schema.Component {
  collectionName: 'components_contact_items';
  info: {
    displayName: 'item';
    description: '';
  };
  attributes: {
    label: Attribute.String;
    placeholder: Attribute.String;
    name: Attribute.String;
    error: Attribute.String;
    type: Attribute.Enumeration<['text', 'email', 'textarea']>;
    required: Attribute.Boolean & Attribute.DefaultTo<false>;
  };
}

export interface FaqFaqItem extends Schema.Component {
  collectionName: 'components_faq_faq_items';
  info: {
    displayName: 'faqItem';
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
    items: Attribute.Component<'faq.faq-item', true>;
  };
}

export interface GetStartedGetStarted extends Schema.Component {
  collectionName: 'components_get_started_get_starteds';
  info: {
    displayName: 'getStarted';
  };
  attributes: {
    heading: Attribute.String;
    items: Attribute.Component<'get-started.item', true>;
  };
}

export interface GetStartedItem extends Schema.Component {
  collectionName: 'components_get_started_items';
  info: {
    displayName: 'item';
  };
  attributes: {
    heading: Attribute.String;
    content: Attribute.Text;
    images: Attribute.Media;
  };
}

export interface HomeHero extends Schema.Component {
  collectionName: 'components_home_heroes';
  info: {
    displayName: 'hero';
  };
  attributes: {
    heading: Attribute.String;
    items: Attribute.Component<'ui.text', true>;
    logo: Attribute.Media;
    button: Attribute.Component<'ui.button'>;
    image: Attribute.Media;
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
    type: Attribute.Enumeration<
      [
        'tel',
        'file',
        'text',
        'email',
        'range',
        'number',
        'textarea',
        'checkbox'
      ]
    >;
    name: Attribute.String;
    required: Attribute.Boolean;
    description: Attribute.Text;
    tooltip: Attribute.String;
    tooltipContent: Attribute.Text;
    label: Attribute.String;
    rangeMin: Attribute.String;
    rangeMax: Attribute.String;
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
      'analysis.empty': AnalysisEmpty;
      'contact.contact': ContactContact;
      'contact.item': ContactItem;
      'faq.faq-item': FaqFaqItem;
      'faq.faq': FaqFaq;
      'get-started.get-started': GetStartedGetStarted;
      'get-started.item': GetStartedItem;
      'home.hero': HomeHero;
      'shared.meta-social': SharedMetaSocial;
      'shared.seo': SharedSeo;
      'ui.button': UiButton;
      'ui.form': UiForm;
      'ui.input': UiInput;
      'ui.text': UiText;
    }
  }
}
