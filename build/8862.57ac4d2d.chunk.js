"use strict";(self.webpackChunkbackend=self.webpackChunkbackend||[]).push([[8862],{48862:(R,a,t)=>{t.r(a),t.d(a,{UserListPageEE:()=>f});var n=t(74081),o=t(48075),M=t(7199),D=t(47665),P=t(59461),l=t(12847),i=t(27279),L=t(40464),d=t(64797),e=t(85811),s=t(30594),E=t(15816),I=t(97442),O=t(13576),C=t(87830),T=t(47184),U=t(364),r=t(71563),_=t(49204),m=t(47853),v=t(75719),A=t(74919),B=t(29206),K=t(98934),W=t(43433),c=t(8175),u=t(11266),g=t(79211),h=t(70882),S=t(69439),y=t(66360);function f(){return(0,M.u)(),(0,n.jsx)(o.U,{})}},7199:(R,a,t)=>{t.d(a,{u:()=>e});var n=t(27279),o=t(47665),M=t(69439),D=t(61020),P=t(51447),l=t(66360);const i="strapi-notification-seat-limit",L="https://cloud.strapi.io/profile/billing",d="https://strapi.io/billing/request-seats",e=()=>{const{formatMessage:s}=(0,D.Z)(),{license:E,isError:I,isLoading:O}=(0,l.u)(),C=(0,o.lm)(),{pathname:T}=(0,P.TH)(),{enforcementUserCount:U,permittedSeats:r,licenseLimitStatus:_,isHostedOnStrapiCloud:m}=E;n.useEffect(()=>{if(I||O)return;const v=!M(r)&&!window.sessionStorage.getItem(`${i}-${T}`)&&(_==="AT_LIMIT"||_==="OVER_LIMIT");let A;_==="OVER_LIMIT"?A="warning":_==="AT_LIMIT"&&(A="softWarning"),v&&C({type:A,message:s({id:"notification.ee.warning.over-.message",defaultMessage:"Add seats to {licenseLimitStatus, select, OVER_LIMIT {invite} other {re-enable}} Users. If you already did it but it's not reflected in Strapi yet, make sure to restart your app."},{licenseLimitStatus:_}),title:s({id:"notification.ee.warning.at-seat-limit.title",defaultMessage:"{licenseLimitStatus, select, OVER_LIMIT {Over} other {At}} seat limit ({enforcementUserCount}/{permittedSeats})"},{licenseLimitStatus:_,enforcementUserCount:U,permittedSeats:r}),link:{url:m?L:d,label:s({id:"notification.ee.warning.seat-limit.link",defaultMessage:"{isHostedOnStrapiCloud, select, true {ADD SEATS} other {CONTACT SALES}}"},{isHostedOnStrapiCloud:m})},blockTransition:!0,onClose(){window.sessionStorage.setItem(`${i}-${T}`,"true")}})},[C,E,T,s,O,r,_,U,m,I])}},66360:(R,a,t)=>{t.d(a,{u:()=>D});var n=t(27279),o=t(47665),M=t(40464);function D({enabled:P}={enabled:!0}){const{get:l}=(0,o.kY)(),{data:i,isError:L,isLoading:d}=(0,M.useQuery)(["ee","license-limit-info"],async()=>{const{data:{data:E}}=await l("/admin/license-limit-information");return E},{enabled:P}),e=n.useMemo(()=>i??{},[i]),s=n.useCallback(E=>(e?.features??[]).find(O=>O.name===E)?.options??{},[e?.features]);return{license:e,getFeature:s,isError:L,isLoading:d}}}}]);
