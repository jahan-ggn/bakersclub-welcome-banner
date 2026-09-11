import Component from "@glimmer/component";
import { service } from "@ember/service";
import { defaultHomepage } from "discourse/lib/utilities";

export default class WelcomeBanner extends Component {
  @service router;
  @service currentUser;

  get isHomepage() {
    return this.router.currentRouteName === `discovery.${defaultHomepage()}`;
  }

  <template>
    {{#if this.isHomepage}}
      {{#if this.currentUser}}
        {{#if this.currentUser.username}}
          <div class="welcome-banner">
            <span class="welcome-banner__text">
              {{settings.welcome_text}}
            </span>
            <span class="welcome-banner__username">
              {{this.currentUser.username}}!
            </span>
          </div>
        {{/if}}
      {{/if}}
    {{/if}}
  </template>
}
