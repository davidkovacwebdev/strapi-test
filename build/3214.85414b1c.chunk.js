"use strict";(self.webpackChunkbackend=self.webpackChunkbackend||[]).push([[3214],{44076:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(14094),i=t(83315),o=t(44747),c=(s=>s&&s.__esModule?s:{default:s})(n).default(o.Box)`
  display: grid;
  grid-template-columns: repeat(${({gridCols:s})=>s}, 1fr);
  ${({theme:s,gap:w})=>i("gap",w,s)}
`,d=s=>{const{gap:w="0",gridCols:v=12,...p}=s;return e.jsx(c,{gap:w,gridCols:v,...p})};a.Grid=d},3528:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(14094),n=t(44747),r=(l=>l&&l.__esModule?l:{default:l})(e).default(n.Box)`
  grid-column: span ${({col:l})=>l};
  max-width: 100%;

  ${({theme:l})=>l.mediaQueries.tablet} {
    grid-column: span ${({s:l})=>l};
  }

  ${({theme:l})=>l.mediaQueries.mobile} {
    grid-column: span ${({xs:l})=>l};
  }
`;a.GridItem=r},91594:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(35725),i=({startActions:o,endActions:r})=>!o&&!r?null:e.jsxs(n.Flex,{justifyContent:"space-between",alignItems:"flex-start",paddingBottom:4,paddingLeft:10,paddingRight:10,children:[e.jsx(n.Flex,{gap:2,wrap:"wrap",children:o}),e.jsx(n.Flex,{gap:2,shrink:0,wrap:"wrap",children:r})]});a.ActionLayout=i},3823:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(44747),i=({children:o})=>e.jsx(n.Box,{paddingLeft:10,paddingRight:10,children:o});a.ContentLayout=i},20285:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(14094),o=(r=>r&&r.__esModule?r:{default:r})(e).default.div`
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  grid-gap: ${({theme:r})=>r.spaces[4]};
`;a.GridLayout=o},32213:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(27279),i=t(14094),o=t(43809),r=t(29381),l=t(44747),c=t(35725),d=t(11880),s=u=>u&&u.__esModule?u:{default:u},w=s(n),v=s(i),p=u=>{const b=n.useRef(null),[g,M]=n.useState(null),[S,C]=o.useElementOnScreen({root:null,rootMargin:"0px",threshold:0});return r.useResizeObserver(S,()=>{S.current&&M(S.current.getBoundingClientRect())}),n.useEffect(()=>{b.current&&M(b.current.getBoundingClientRect())},[b]),e.jsxs(e.Fragment,{children:[e.jsx("div",{style:{height:g?.height},ref:S,children:C&&e.jsx(E,{ref:b,...u})}),!C&&e.jsx(E,{...u,sticky:!0,width:g?.width})]})};p.displayName="HeaderLayout";const x=v.default(l.Box)`
  width: ${({width:u})=>u?`${u/16}rem`:void 0};
  z-index: ${({theme:u})=>u.zIndices[1]};
`,E=w.default.forwardRef(({navigationAction:u,primaryAction:b,secondaryAction:g,subtitle:M,title:S,sticky:C,width:y,...h},f)=>{const L=typeof M=="string";return C?e.jsx(x,{paddingLeft:6,paddingRight:6,paddingTop:3,paddingBottom:3,position:"fixed",top:0,right:0,background:"neutral0",shadow:"tableShadow",width:y,"data-strapi-header-sticky":!0,children:e.jsxs(c.Flex,{justifyContent:"space-between",children:[e.jsxs(c.Flex,{children:[u&&e.jsx(l.Box,{paddingRight:3,children:u}),e.jsxs(l.Box,{children:[e.jsx(d.Typography,{variant:"beta",as:"h1",...h,children:S}),L?e.jsx(d.Typography,{variant:"pi",textColor:"neutral600",children:M}):M]}),g?e.jsx(l.Box,{paddingLeft:4,children:g}):null]}),e.jsx(c.Flex,{children:b?e.jsx(l.Box,{paddingLeft:2,children:b}):void 0})]})}):e.jsxs(l.Box,{ref:f,paddingLeft:10,paddingRight:10,paddingBottom:8,paddingTop:u?6:8,background:"neutral100","data-strapi-header":!0,children:[u?e.jsx(l.Box,{paddingBottom:2,children:u}):null,e.jsxs(c.Flex,{justifyContent:"space-between",children:[e.jsxs(c.Flex,{minWidth:0,children:[e.jsx(d.Typography,{as:"h1",variant:"alpha",...h,children:S}),g?e.jsx(l.Box,{paddingLeft:4,children:g}):null]}),b]}),L?e.jsx(d.Typography,{variant:"epsilon",textColor:"neutral600",as:"p",children:M}):M]})});a.BaseHeaderLayout=E,a.HeaderLayout=p},65030:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(14094),i=t(44747),r=(s=>s&&s.__esModule?s:{default:s})(n),l=r.default(i.Box)`
  display: grid;
  grid-template-columns: ${({hasSideNav:s})=>s?"auto 1fr":"1fr"};
`,c=r.default(i.Box)`
  overflow-x: hidden;
`,d=({sideNav:s,children:w})=>e.jsxs(l,{hasSideNav:Boolean(s),children:[s,e.jsx(c,{paddingBottom:10,children:w})]});a.Layout=d},90493:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(44076),i=t(3528),o=t(44747),r=({startCol:l,endCol:c})=>e.jsxs(n.Grid,{gap:4,children:[e.jsx(i.GridItem,{col:9,s:12,children:e.jsx(o.Box,{hasRadius:!0,background:"neutral0",shadow:"tableShadow",children:l})}),e.jsx(i.GridItem,{col:3,s:12,children:e.jsx(o.Box,{hasRadius:!0,background:"neutral0",shadow:"tableShadow",children:c})})]});a.TwoColsLayout=r},94305:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(65030),n=t(91594),i=t(3823),o=t(32213),r=t(90493),l=t(20285);a.Layout=e.Layout,a.ActionLayout=n.ActionLayout,a.ContentLayout=i.ContentLayout,a.BaseHeaderLayout=o.BaseHeaderLayout,a.HeaderLayout=o.HeaderLayout,a.TwoColsLayout=r.TwoColsLayout,a.GridLayout=l.GridLayout},24986:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(27279),i=t(29935),o=t(70598),r=t(77547),l=t(44747),c=s=>e.jsx(d,{...s,as:"th"}),d=({coords:s={col:0,row:0},as:w="td",...v})=>{const p=n.useRef(null),{rowIndex:x,colIndex:E,setTableValues:u}=i.useTable(),[b,g]=n.useState(!1),M=y=>{const h=o.getFocusableNodes(p.current,!0);if(h.length===0||h.length===1&&o.getFocusableNodesWithKeyboardNav(h).length===0)return;if(h.length>1&&!h.find(L=>L.tagName!=="BUTTON")){y.preventDefault();const L=h.findIndex(D=>D===document.activeElement);if(y.key===r.KeyboardKeys.RIGHT){const D=h[L+1];D&&(y.stopPropagation(),D.focus())}else if(y.key===r.KeyboardKeys.LEFT){const D=h[L-1];D&&(y.stopPropagation(),D.focus())}return}const f=y.key===r.KeyboardKeys.ENTER;if(f&&!b)g(!0);else if((y.key===r.KeyboardKeys.ESCAPE||f)&&b){if(f&&document.activeElement?.tagName==="A")return;g(!1),p.current.focus()}else b&&y.stopPropagation()},S=x===s.row-1&&E===s.col-1;n.useLayoutEffect(()=>{const y=o.getFocusableNodes(p.current,!0);y.length===0||y.length===1&&o.getFocusableNodesWithKeyboardNav(y).length!==0||y.length>1&&Boolean(y.find(h=>h.tagName!=="BUTTON"))?(p.current.setAttribute("tabIndex",!b&&S?"0":"-1"),y.forEach((h,f)=>{h.setAttribute("tabIndex",b?"0":"-1"),b&&f===0&&h.focus()})):y.forEach(h=>{h.setAttribute("tabIndex",S?"0":"-1")})},[b,S]);const C=n.useCallback(()=>{const y=o.getFocusableNodes(p.current,!0);y.length>=1&&(o.getFocusableNodesWithKeyboardNav(y).length!==0||!y.find(h=>h.tagName!=="BUTTON"))&&g(!0),u({rowIndex:s.row-1,colIndex:s.col-1})},[s,u]);return n.useLayoutEffect(()=>{const y=p.current;return o.getFocusableNodes(y,!0).forEach(f=>{f.addEventListener("focus",C)}),()=>{o.getFocusableNodes(y,!0).forEach(L=>{L.removeEventListener("focus",C)})}},[C]),e.jsx(l.Box,{role:"gridcell",as:w,ref:p,onKeyDown:M,...v})};a.RawTd=d,a.RawTh=c},56094:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(27279),i=t(9609),o=t(29935),r=t(77547),l=({colCount:c,rowCount:d,jumpStep:s=3,initialCol:w=0,initialRow:v=0,...p})=>{const x=n.useRef(null),E=n.useRef(!1),[u,b]=n.useState(v),[g,M]=n.useState(w),S=n.useCallback(({colIndex:h,rowIndex:f})=>{M(h),b(f)},[]);n.useEffect(()=>{E.current&&i.focusFocusable(x.current),E.current||(E.current=!0)},[g,u]);const C=h=>{switch(h.key){case r.KeyboardKeys.RIGHT:{h.preventDefault(),M(f=>f<c-1?f+1:f);break}case r.KeyboardKeys.LEFT:{h.preventDefault(),M(f=>f>0?f-1:f);break}case r.KeyboardKeys.UP:{h.preventDefault(),b(f=>f>0?f-1:f);break}case r.KeyboardKeys.DOWN:{h.preventDefault(),b(f=>f<d-1?f+1:f);break}case r.KeyboardKeys.HOME:{h.preventDefault(),h.ctrlKey&&b(0),M(0);break}case r.KeyboardKeys.END:{h.preventDefault(),h.ctrlKey&&b(d-1),M(c-1);break}case r.KeyboardKeys.PAGE_DOWN:{h.preventDefault(),b(f=>f+s<d?f+s:d-1);break}case r.KeyboardKeys.PAGE_UP:{h.preventDefault(),b(f=>f-s>0?f-s:0);break}}},y=n.useMemo(()=>({rowIndex:u,colIndex:g,setTableValues:S}),[g,u,S]);return e.jsx(o.RawTableContext.Provider,{value:y,children:e.jsx("table",{role:"grid",ref:x,"aria-rowcount":d,"aria-colcount":c,onKeyDown:C,...p})})};a.RawTable=l},29935:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(27279),n=e.createContext({rowIndex:0,colIndex:0,setTableValues(){throw new Error("setTableValues must be initialized via the RawTableContext.Provider")}}),i=()=>e.useContext(n);a.RawTableContext=n,a.useTable=i},6890:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(27279),i=({children:o,...r})=>{const l=n.Children.toArray(o).map((c,d)=>n.isValidElement(c)?n.cloneElement(c,{"aria-rowindex":d+2}):c);return e.jsx("tbody",{...r,children:l})};a.RawTbody=i},41179:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(27279),i=({children:o,...r})=>{const l=n.Children.toArray(o).map(c=>n.isValidElement(c)?n.cloneElement(c,{"aria-rowindex":1}):c);return e.jsx("thead",{...r,children:l})};a.RawThead=i},26014:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(27279),i=t(44747),o=({children:r,...l})=>{const c=n.Children.toArray(r).map((d,s)=>n.isValidElement(d)?n.cloneElement(d,{"aria-colindex":s+1,coords:{col:s+1,row:l["aria-rowindex"]}}):d);return e.jsx(i.Box,{as:"tr",...l,children:c})};a.RawTr=o},9609:(j,a)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const t=e=>{const n=e.querySelector('[tabindex="0"]');n&&n.focus()};a.focusFocusable=t},34922:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(14094),i=t(24986),o=t(35725),l=(v=>v&&v.__esModule?v:{default:v})(n),c=l.default(i.RawTd)`
  vertical-align: middle;
  text-align: left;
  color: ${({theme:v})=>v.colors.neutral600};
  outline-offset: -4px;

  /**
  * Hack to make sure the checkbox looks aligned
  */
  input {
    vertical-align: sub;
  }
`,d=l.default.span`
  svg {
    height: ${4/16}rem;
  }
`,s=({children:v,action:p,...x})=>e.jsx(c,{as:i.RawTh,...x,children:e.jsxs(o.Flex,{children:[v,e.jsx(d,{children:p})]})}),w=({children:v,...p})=>e.jsx(c,{...p,children:v});a.Td=w,a.Th=s},82079:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(14094),i=t(44747),o=t(19658),r=t(35725),l=t(11880),d=(p=>p&&p.__esModule?p:{default:p})(n),s=d.default(i.Box)`
  height: ${24/16}rem;
  width: ${24/16}rem;
  border-radius: 50%;
  display: flex;
  justify-content: center;
  align-items: center;

  svg {
    height: ${10/16}rem;
    width: ${10/16}rem;
  }

  svg path {
    fill: ${({theme:p})=>p.colors.primary600};
  }
`,w=d.default(i.Box)`
  border-radius: 0 0 ${({theme:p})=>p.borderRadius} ${({theme:p})=>p.borderRadius};
  display: block;
  width: 100%;
  border: none;
`,v=({children:p,icon:x,...E})=>e.jsxs("div",{children:[e.jsx(o.Divider,{}),e.jsx(w,{as:"button",background:"primary100",padding:5,...E,children:e.jsxs(r.Flex,{children:[e.jsx(s,{"aria-hidden":!0,background:"primary200",children:x}),e.jsx(i.Box,{paddingLeft:3,children:e.jsx(l.Typography,{variant:"pi",fontWeight:"bold",textColor:"primary600",children:p})})]})})]});a.TFooter=v},31661:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(27279),i=t(14094),o=t(56094),r=t(44747),c=(x=>x&&x.__esModule?x:{default:x})(i),d=c.default(r.Box)`
  overflow: hidden;
  border: 1px solid ${({theme:x})=>x.colors.neutral150};
`,s=c.default(o.RawTable)`
  width: 100%;
  white-space: nowrap;
`,w=c.default(r.Box)`
  &:before {
    // TODO: make sure to add a token for this weird stuff
    background: linear-gradient(90deg, #c0c0cf 0%, rgba(0, 0, 0, 0) 100%);
    opacity: 0.2;
    position: absolute;
    height: 100%;
    content: ${({overflowing:x})=>x==="both"||x==="left"?"''":void 0};
    box-shadow: ${({theme:x})=>x.shadows.tableShadow};
    width: ${({theme:x})=>x.spaces[2]};
    left: 0;
  }

  &:after {
    // TODO: make sure to add a token for this weird stuff
    background: linear-gradient(270deg, #c0c0cf 0%, rgba(0, 0, 0, 0) 100%);
    opacity: 0.2;
    position: absolute;
    height: 100%;
    content: ${({overflowing:x})=>x==="both"||x==="right"?"''":void 0};
    box-shadow: ${({theme:x})=>x.shadows.tableShadow};
    width: ${({theme:x})=>x.spaces[2]};
    right: 0;
    top: 0;
  }
`,v=c.default(r.Box)`
  overflow-x: auto;
`,p=({footer:x,...E})=>{const u=n.useRef(null),[b,g]=n.useState(),M=S=>{const C=S.target.scrollWidth-S.target.clientWidth;if(S.target.scrollLeft===0){g("right");return}if(S.target.scrollLeft===C){g("left");return}S.target.scrollLeft>0&&g("both")};return n.useEffect(()=>{u.current.scrollWidth>u.current.clientWidth&&g("right")},[]),e.jsxs(d,{shadow:"tableShadow",hasRadius:!0,background:"neutral0",children:[e.jsx(w,{overflowing:b,position:"relative",children:e.jsx(v,{ref:u,onScroll:M,paddingLeft:6,paddingRight:6,children:e.jsx(s,{...E})})}),x]})};a.Table=p},73314:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(14094),i=t(6890),l=(d=>d&&d.__esModule?d:{default:d})(n).default(i.RawTbody)`
  & tr:last-of-type {
    border-bottom: none;
  }
`,c=({children:d,...s})=>e.jsx(l,{...s,children:d});a.Tbody=c},79821:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(14094),i=t(41179),l=(d=>d&&d.__esModule?d:{default:d})(n).default(i.RawThead)`
  border-bottom: 1px solid ${({theme:d})=>d.colors.neutral150};
`,c=({children:d,...s})=>e.jsx(l,{...s,children:d});a.Thead=c},45286:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(74081),n=t(14094),i=t(26014),l=(d=>d&&d.__esModule?d:{default:d})(n).default(i.RawTr)`
  border-bottom: 1px solid ${({theme:d})=>d.colors.neutral150};

  & td,
  & th {
    padding: ${({theme:d})=>d.spaces[4]};
  }

  & td:first-of-type,
  & th:first-of-type {
    padding: 0 ${({theme:d})=>d.spaces[1]};
  }

  // Resetting padding values and fixing a height
  th {
    padding-top: 0;
    padding-bottom: 0;
    height: ${56/16}rem;
  }
`,c=d=>e.jsx(l,{...d});a.Tr=c},22493:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(31661),n=t(73314),i=t(79821),o=t(45286),r=t(34922),l=t(82079);a.Table=e.Table,a.Tbody=n.Tbody,a.Thead=i.Thead,a.Tr=o.Tr,a.Td=r.Td,a.Th=r.Th,a.TFooter=l.TFooter},43809:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(27279),n=i=>{const o=e.useRef(null),[r,l]=e.useState(!0),c=([d])=>{l(d.isIntersecting)};return e.useEffect(()=>{const d=o.current,s=new IntersectionObserver(c,i);return d&&s.observe(o.current),()=>{d&&s.disconnect()}},[o,i]),[o,r]};a.useElementOnScreen=n},29381:(j,a,t)=>{Object.defineProperty(a,Symbol.toStringTag,{value:"Module"});const e=t(27279),n=t(81906),i=(o,r)=>{const l=n.useCallbackRef(r);e.useLayoutEffect(()=>{const c=new ResizeObserver(l);return Array.isArray(o)?o.forEach(d=>{d.current&&c.observe(d.current)}):o.current&&c.observe(o.current),()=>{c.disconnect()}},[o,l])};a.useResizeObserver=i},83248:(j,a,t)=>{const e=t(74081),n=o=>e.jsx("svg",{xmlns:"http://www.w3.org/2000/svg",width:"1rem",height:"1rem",fill:"none",viewBox:"0 0 24 24",...o,children:e.jsx("path",{fill:"#212134",d:"M6.17 18a3 3 0 0 1 5.66 0H22v2H11.83a3 3 0 0 1-5.66 0H2v-2h4.17Zm6-7a3 3 0 0 1 5.66 0H22v2h-4.17a3 3 0 0 1-5.66 0H2v-2h10.17Zm-6-7a3.001 3.001 0 0 1 5.66 0H22v2H11.83a3 3 0 0 1-5.66 0H2V4h4.17Z"})}),i=n;j.exports=i},63102:(j,a,t)=>{const e=t(74081),n=o=>e.jsxs("svg",{xmlns:"http://www.w3.org/2000/svg",width:"1rem",height:"1rem",fill:"none",viewBox:"0 0 32 32",...o,children:[e.jsx("path",{fill:"#4945FF",d:"M0 4a4 4 0 0 1 4-4h24a4 4 0 0 1 4 4v24a4 4 0 0 1-4 4H4a4 4 0 0 1-4-4V4Z"}),e.jsx("path",{fill:"#fff",d:"M15.733 8c.343 0 .678.108.963.31.285.202.507.49.639.826.13.337.165.707.098 1.064a1.879 1.879 0 0 1-.474.942 1.705 1.705 0 0 1-.887.504 1.64 1.64 0 0 1-1.002-.105 1.76 1.76 0 0 1-.778-.678A1.924 1.924 0 0 1 14 9.841a1.9 1.9 0 0 1 .508-1.302c.325-.345.766-.539 1.225-.539ZM20 24h-8v-2.265h2.933v-6.23H12.8v-2.266h4.267v8.495H20V24Z"})]}),i=n;j.exports=i},37579:(j,a,t)=>{const e=t(74081),n=o=>e.jsx("svg",{xmlns:"http://www.w3.org/2000/svg",width:"1rem",height:"1rem",fill:"none",viewBox:"0 0 24 24",...o,children:e.jsx("path",{fill:"#212134",d:"M24 13.604a.3.3 0 0 1-.3.3h-9.795V23.7a.3.3 0 0 1-.3.3h-3.21a.3.3 0 0 1-.3-.3v-9.795H.3a.3.3 0 0 1-.3-.3v-3.21a.3.3 0 0 1 .3-.3h9.795V.3a.3.3 0 0 1 .3-.3h3.21a.3.3 0 0 1 .3.3v9.795H23.7a.3.3 0 0 1 .3.3v3.21Z"})}),i=n;j.exports=i},13214:(j,a,t)=>{t.r(a),t.d(a,{default:()=>Se});var e=t(74081),n=t(27279),i=t(51447),o=t(47665),r=t(53603),l=t.n(r),c=t(25074),d=t(61020),s=t(29759);const w=async()=>{try{return await(0,o.WY)(`/${l()}/component`,{method:"GET"})}catch{return null}},v=async()=>{try{return await(0,o.WY)(`/${l()}/content-types`,{method:"GET"})}catch{return null}},p=async()=>{try{return(await(0,o.WY)(`/${l()}/component`,{method:"POST"},!0)).json()}catch{return null}};var x=t(16897),E=t(37370),u=t(50568),b=t(29046),g=t(22493),M=t(37579),S=t.n(M),C=t(27589),y=t(93415),h=t(26322),f=t(30757),L=t(97487),D=t(87393),ie=t(5938),re=t(6918),ce=t(15244),ue=t(35250),he=t(83248),ge=t.n(he),fe=t(63102),Y=t.n(fe);const Q=t(97585).Z,G=({item:m})=>{const O=(0,o.lm)(),[R,N]=(0,n.useState)(!0),[$,H]=(0,n.useState)(!0),[A,K]=(0,n.useState)(!0),[I,U]=(0,n.useState)(!0),[k,J]=(0,n.useState)(!0),[X,q]=(0,n.useState)(!0),[_,ee]=(0,n.useState)(!0),[te,ne]=(0,n.useState)(!0),[ae,se]=(0,n.useState)(!0),[oe,de]=(0,n.useState)(!0),[W,le]=(0,n.useState)(null),[ve,z]=(0,n.useState)(!1),{formatMessage:P}=(0,d.Z)();(0,n.useEffect)(()=>{(async()=>{const B=await Q.get();le(B)})()},[]);const Oe=T=>{const B=W[m?.uid];N(B?.seoChecks?.metaTitle),H(B?.seoChecks?.metaDescription),K(B?.seoChecks?.metaRobots),U(B?.seoChecks?.metaSocial),J(B?.seoChecks?.wordCount),q(B?.seoChecks?.canonicalUrl),ee(B?.seoChecks?.keywordDensity),ne(B?.seoChecks?.structuredData),se(B?.seoChecks?.alternativeText),de(B?.seoChecks?.lastUpdatedAt),z(Z=>!Z)},Re=T=>{const B={...W,[m?.uid]:{collectionName:W[m?.uid]?.collectionName,seoChecks:{metaTitle:R,metaDescription:$,metaRobots:A,metaSocial:I,wordCount:k,canonicalUrl:X,keywordDensity:_,structuredData:te,alternativeText:ae,lastUpdatedAt:oe}}};Q.set(B).then(async()=>{le(B),z(Z=>!Z)}),O({type:"success",message:{id:"notification.success.settings",defaultMessage:`Settings saved for ${W[m?.uid]?.collectionName} content-type.`}})};return(0,e.jsxs)(e.Fragment,{children:[(0,e.jsx)(L.Button,{variant:"tertiary",startIcon:(0,e.jsx)(ge(),{}),onClick:T=>Oe(T),children:P({id:(0,s.O)("SEOPage.info.config"),defaultMessage:"Settings"})}),ve&&(0,e.jsxs)(ie.P,{onClose:()=>z(T=>!T),labelledBy:"title",children:[(0,e.jsx)(re.x,{children:(0,e.jsx)(u.Typography,{fontWeight:"bold",textColor:"neutral800",as:"h2",id:"title",children:P({id:(0,s.O)("SEOPage.info.settings"),defaultMessage:"Settings"})})}),(0,e.jsxs)(ce.f,{children:[(0,e.jsx)(y.x,{paddingBottom:8,paddingTop:4,children:(0,e.jsx)(o.Y_,{title:P({id:"Information",defaultMessage:"Information"}),subtitle:P({id:(0,s.O)("HomePage.info.settings.information"),defaultMessage:"Disable SEO checks for this specific content-type."}),icon:(0,e.jsx)(Y(),{}),iconBackground:"primary100"})}),(0,e.jsxs)(D.M,{children:[(0,e.jsx)(y.x,{padding:4,hasRadius:!0,background:"neutral0",shadow:"tableShadow",children:(0,e.jsxs)(h.K,{horizontal:!0,spacing:4,padding:3,children:[(0,e.jsx)(f.Switch,{label:"Switch",selected:R,onChange:()=>N(T=>!T)}),(0,e.jsx)(u.Typography,{variant:"delta",children:P({id:(0,s.O)("SEOPage.info.settings.meta-title-check"),defaultMessage:"Meta Title"})})]})}),(0,e.jsx)(y.x,{padding:4,hasRadius:!0,background:"neutral0",shadow:"tableShadow",children:(0,e.jsxs)(h.K,{horizontal:!0,spacing:4,padding:3,children:[(0,e.jsx)(f.Switch,{label:"Switch",selected:$,onChange:()=>H(T=>!T)}),(0,e.jsx)(u.Typography,{variant:"delta",children:P({id:(0,s.O)("SEOPage.info.settings.meta-description-check"),defaultMessage:"Meta Description"})})]})}),(0,e.jsx)(y.x,{padding:4,hasRadius:!0,background:"neutral0",shadow:"tableShadow",children:(0,e.jsxs)(h.K,{horizontal:!0,spacing:4,padding:3,children:[(0,e.jsx)(f.Switch,{label:"Switch",selected:A,onChange:()=>K(T=>!T)}),(0,e.jsx)(u.Typography,{variant:"delta",children:P({id:(0,s.O)("SEOPage.info.settings.meta-robots-check"),defaultMessage:"Meta Robots"})})]})}),(0,e.jsx)(y.x,{padding:4,hasRadius:!0,background:"neutral0",shadow:"tableShadow",children:(0,e.jsxs)(h.K,{horizontal:!0,spacing:4,padding:3,children:[(0,e.jsx)(f.Switch,{label:"Switch",selected:I,onChange:()=>U(T=>!T)}),(0,e.jsx)(u.Typography,{variant:"delta",children:P({id:(0,s.O)("SEOPage.info.settings.meta-social-check"),defaultMessage:"Meta Social"})})]})}),(0,e.jsx)(y.x,{padding:4,hasRadius:!0,background:"neutral0",shadow:"tableShadow",children:(0,e.jsxs)(h.K,{horizontal:!0,spacing:4,padding:3,children:[(0,e.jsx)(f.Switch,{label:"Switch",selected:k,onChange:()=>J(T=>!T)}),(0,e.jsx)(u.Typography,{variant:"delta",children:P({id:(0,s.O)("SEOPage.info.settings.word-count-check"),defaultMessage:"Word Count"})})]})}),(0,e.jsx)(y.x,{padding:4,hasRadius:!0,background:"neutral0",shadow:"tableShadow",children:(0,e.jsxs)(h.K,{horizontal:!0,spacing:4,padding:3,children:[(0,e.jsx)(f.Switch,{label:"Switch",selected:X,onChange:()=>q(T=>!T)}),(0,e.jsx)(u.Typography,{variant:"delta",children:P({id:(0,s.O)("SEOPage.info.settings.canonical-url-check"),defaultMessage:"Canonical URL"})})]})}),(0,e.jsx)(y.x,{padding:4,hasRadius:!0,background:"neutral0",shadow:"tableShadow",children:(0,e.jsxs)(h.K,{horizontal:!0,spacing:4,padding:3,children:[(0,e.jsx)(f.Switch,{label:"Switch",selected:_,onChange:()=>ee(T=>!T)}),(0,e.jsx)(u.Typography,{variant:"delta",children:P({id:(0,s.O)("SEOPage.info.settings.keyword-density-check"),defaultMessage:"Keyword Density"})})]})}),(0,e.jsx)(y.x,{padding:4,hasRadius:!0,background:"neutral0",shadow:"tableShadow",children:(0,e.jsxs)(h.K,{horizontal:!0,spacing:4,padding:3,children:[(0,e.jsx)(f.Switch,{label:"Switch",selected:te,onChange:()=>ne(T=>!T)}),(0,e.jsx)(u.Typography,{variant:"delta",children:P({id:(0,s.O)("SEOPage.info.settings.structured-data-check"),defaultMessage:"Structured Data"})})]})}),(0,e.jsx)(y.x,{padding:4,hasRadius:!0,background:"neutral0",shadow:"tableShadow",children:(0,e.jsxs)(h.K,{horizontal:!0,spacing:4,padding:3,children:[(0,e.jsx)(f.Switch,{label:"Switch",selected:ae,onChange:()=>se(T=>!T)}),(0,e.jsx)(u.Typography,{variant:"delta",children:P({id:(0,s.O)("SEOPage.info.settings.alternative-text-check"),defaultMessage:"Alt Text"})})]})}),(0,e.jsx)(y.x,{padding:4,hasRadius:!0,background:"neutral0",shadow:"tableShadow",children:(0,e.jsxs)(h.K,{horizontal:!0,spacing:4,padding:3,children:[(0,e.jsx)(f.Switch,{label:"Switch",selected:oe,onChange:()=>de(T=>!T)}),(0,e.jsx)(u.Typography,{variant:"delta",children:P({id:(0,s.O)("SEOPage.info.settings.last-updated-at-check"),defaultMessage:"Last Updated At"})})]})})]})]}),(0,e.jsx)(ue.m,{startActions:(0,e.jsx)(L.Button,{onClick:()=>z(T=>!T),variant:"tertiary",children:P({id:(0,s.O)("SEOPage.info.settings.cancel.button"),defaultMessage:"Cancel"})}),endActions:(0,e.jsx)(e.Fragment,{children:(0,e.jsx)(L.Button,{onClick:T=>Re(T),children:P({id:(0,s.O)("SEOPage.info.settings.save.button"),defaultMessage:"Save"})})})})]})]})};var F=t(84637),ye=t(82284),V=t.n(ye);const xe=({contentTypes:m})=>{const{formatMessage:O}=(0,d.Z)();return(0,e.jsx)(e.Fragment,{children:(0,e.jsx)(c.Box,{padding:8,children:(0,e.jsxs)(F.TabGroup,{label:"label",id:"tabs",variant:"simple",children:[(0,e.jsxs)(F.Tabs,{children:[(0,e.jsx)(F.Tab,{children:(0,e.jsx)(u.Typography,{children:O({id:(0,s.O)("SEOPage.tab.collection-type-title"),defaultMessage:"Collection Types"})})}),(0,e.jsx)(F.Tab,{children:(0,e.jsx)(u.Typography,{variant:"omega",children:O({id:(0,s.O)("SEOPage.tab.single-type-title"),defaultMessage:"Single Types"})})}),(0,e.jsx)(F.Tab,{children:(0,e.jsx)(u.Typography,{variant:"omega",children:O({id:(0,s.O)("SEOPage.tab.plugin-title"),defaultMessage:"Plugins"})})})]}),(0,e.jsxs)(F.TabPanels,{children:[(0,e.jsx)(F.TabPanel,{children:(0,e.jsxs)(g.Table,{colCount:2,rowCount:m.collectionTypes.length,children:[(0,e.jsx)(g.Thead,{children:(0,e.jsx)(g.Tr,{children:(0,e.jsx)(g.Th,{children:(0,e.jsx)(u.Typography,{variant:"sigma",children:O({id:(0,s.O)("SEOPage.tab-panel.column-name"),defaultMessage:"Name"})})})})}),(0,e.jsx)(g.Tbody,{children:m&&m.collectionTypes&&!V().isEmpty(m.collectionTypes)?m.collectionTypes.map(R=>(0,e.jsxs)(g.Tr,{children:[(0,e.jsx)(g.Td,{children:(0,e.jsx)(u.Typography,{textColor:"neutral800",children:R.globalId})}),(0,e.jsx)(g.Td,{children:(0,e.jsx)(x.Flex,{justifyContent:"right",alignItems:"right",children:R.seo?(0,e.jsx)(G,{item:R}):(0,e.jsx)(E.Q,{startIcon:(0,e.jsx)(S(),{}),variant:"secondary",href:`/plugins/content-type-builder/content-types/${R.uid}`,children:O({id:(0,s.O)("SEOPage.info.add"),defaultMessage:"Add component"})})})})]},R.uid)):(0,e.jsx)(c.Box,{padding:8,background:"neutral0",children:(0,e.jsx)(b.EmptyStateLayout,{icon:(0,e.jsx)(C.w,{}),content:O({id:(0,s.O)("SEOPage.info.no-collection-types"),defaultMessage:"You don't have any collection-types yet..."}),action:(0,e.jsx)(E.Q,{to:"/plugins/content-type-builder",variant:"secondary",startIcon:(0,e.jsx)(S(),{}),children:O({id:(0,s.O)("SEOPage.info.create-collection-type"),defaultMessage:"Create your first collection-type"})})})})})]})}),(0,e.jsx)(F.TabPanel,{children:(0,e.jsxs)(g.Table,{colCount:2,rowCount:m.singleTypes.length,children:[(0,e.jsx)(g.Thead,{children:(0,e.jsx)(g.Tr,{children:(0,e.jsx)(g.Th,{children:(0,e.jsx)(u.Typography,{variant:"sigma",children:O({id:(0,s.O)("SEOPage.tab-panel.column-name"),defaultMessage:"Name"})})})})}),(0,e.jsx)(g.Tbody,{children:m&&m.singleTypes&&!V().isEmpty(m.singleTypes)?m.singleTypes.map(R=>(0,e.jsxs)(g.Tr,{children:[(0,e.jsx)(g.Td,{children:(0,e.jsx)(u.Typography,{textColor:"neutral800",children:R.globalId})}),(0,e.jsx)(g.Td,{children:(0,e.jsx)(x.Flex,{justifyContent:"right",alignItems:"right",children:R.seo?(0,e.jsx)(G,{item:R}):(0,e.jsx)(E.Q,{startIcon:(0,e.jsx)(S(),{}),variant:"secondary",href:`/admin/plugins/content-type-builder/content-types/${R.uid}`,children:O({id:(0,s.O)("SEOPage.info.add"),defaultMessage:"Add component"})})})})]},R.uid)):(0,e.jsx)(c.Box,{padding:8,background:"neutral0",children:(0,e.jsx)(b.EmptyStateLayout,{icon:(0,e.jsx)(C.w,{}),content:O({id:(0,s.O)("SEOPage.info.no-single-types"),defaultMessage:"You don't have any single-types yet..."}),action:(0,e.jsx)(E.Q,{to:"/admin/plugins/content-type-builder",variant:"secondary",startIcon:(0,e.jsx)(S(),{}),children:O({id:(0,s.O)("SEOPage.info.create-single-type"),defaultMessage:"Create your first single-type"})})})})})]})}),(0,e.jsx)(F.TabPanel,{children:(0,e.jsxs)(g.Table,{colCount:2,rowCount:m.plugins.length,children:[(0,e.jsx)(g.Thead,{children:(0,e.jsx)(g.Tr,{children:(0,e.jsx)(g.Th,{children:(0,e.jsx)(u.Typography,{variant:"sigma",children:O({id:(0,s.O)("SEOPage.tab-panel.column-name"),defaultMessage:"Name"})})})})}),(0,e.jsx)(g.Tbody,{children:m&&m.plugins&&!V().isEmpty(m.plugins)?m.plugins.map(R=>(0,e.jsxs)(g.Tr,{children:[(0,e.jsx)(g.Td,{children:(0,e.jsx)(u.Typography,{textColor:"neutral800",children:R.globalId})}),(0,e.jsx)(g.Td,{children:(0,e.jsx)(x.Flex,{justifyContent:"right",alignItems:"right",children:R.seo?(0,e.jsx)(G,{item:R}):(0,e.jsx)(E.Q,{startIcon:(0,e.jsx)(S(),{}),variant:"secondary",href:`/admin/plugins/content-type-builder/content-types/${R.uid}`,children:O({id:(0,s.O)("SEOPage.info.add"),defaultMessage:"Add component"})})})})]},R.uid)):(0,e.jsx)(c.Box,{padding:8,background:"neutral0",children:(0,e.jsx)(b.EmptyStateLayout,{icon:(0,e.jsx)(C.w,{}),content:O({id:(0,s.O)("SEOPage.info.no-plugin-content-type"),defaultMessage:"You don't have any plugin content-type yet..."})})})})]})})]})]})})})};var pe=t(94305);const je=m=>{const{formatMessage:O}=(0,d.Z)();return(0,e.jsx)(c.Box,{background:"neutral100",children:(0,e.jsx)(pe.BaseHeaderLayout,{secondaryAction:m?null:(0,e.jsx)(LinkButton,{variant:"tertiary",to:"/admin/plugins/content-type-builder/component-categories/shared/shared.seo",startIcon:(0,e.jsx)(Pencil,{}),children:O({id:(0,s.O)("SEOPage.header.button.edit-component"),defaultMessage:"Edit SEO component"})}),title:O({id:(0,s.O)("SEOPage.header.title"),defaultMessage:"SEO"}),subtitle:O({id:(0,s.O)("SEOPage.header.subtitle"),defaultMessage:"Optimize your content to be SEO friendly"}),as:"h2"})})},me=()=>{const{formatMessage:m}=(0,d.Z)(),{lockAppWithAutoreload:O,unlockAppWithAutoreload:R}=(0,o.Vu)(),[N,$]=(0,n.useState)(!0),[H,A]=(0,n.useState)(!1),K=(0,n.useRef)({}),I=(0,n.useRef)({});return(0,n.useEffect)(()=>{(async()=>{if(K.current=await w(),I.current=await v(),!K.current)try{O(),await p()}catch(k){console.log(k)}finally{R(),A(!0)}})().then(()=>{$(!1)})},[H]),N?(0,e.jsx)(o.dO,{}):(0,e.jsxs)(e.Fragment,{children:[(0,e.jsx)(je,{seoComponent:K.current}),(0,e.jsx)(c.Box,{paddingLeft:8,paddingRight:8,children:(0,e.jsx)(o.Y_,{title:m({id:"Information",defaultMessage:"Information"}),subtitle:m({id:(0,s.O)("HomePage.info.information"),defaultMessage:"When adding your SEO component, make sure to name it 'seo' and to include it in the root of your Content-Type."}),icon:(0,e.jsx)(Y(),{}),iconBackground:"primary100"})}),(0,e.jsx)(xe,{contentTypes:I.current})]})},be=(0,n.memo)(me);var Te=t(32141);const Se=()=>(0,e.jsx)(o.O4,{permissions:Te.Z.main,children:(0,e.jsx)("div",{children:(0,e.jsx)(i.rs,{children:(0,e.jsx)(i.AW,{path:`/plugins/${l()}`,component:be,exact:!0})})})})},87393:(j,a,t)=>{t.d(a,{M:()=>n});var e=t(14094);const n=e.default.div`
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  grid-gap: ${({theme:i})=>i.spaces[4]};
`}}]);