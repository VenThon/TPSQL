// const isProd = import.meta.env?.MODE !== "development";
// export const basedUrl = isProd ? "kradass.com" : `kradass.test`
// export const host = `ewc.${basedUrl}`
export const APIs = {
  KAUTH: {
    name: 'KAUTH',
    csr_uri: `http://api.kradass.com/kauth/graphql`,
    ssr_uri: `http://api.kradass.com/kauth/graphql`
  },
  KTALK: {
    name: 'KTALK',
    csr_uri: `http://api.kradass.com/ktalk/graphql`,
    ssr_uri: `http://api.kradass.com/ktalk/graphql`
  },
  KART: {
    name: 'KART',
    csr_uri: `http://api.kradass.com/kart/graphql`,
    ssr_uri: `http://api.kradass.com/kart/graphql`
  },
  KSTORAGE: {
    name: 'KSTORAGE',
    csr_uri: `http://api.kradass.com/kstorage`,
    ssr_uri: `http://api.kradass.com/kstorage`
  },
  KTOUR: {
    name: 'KTOUR',
    csr_uri: `http://api.kradass.com/ktour/graphql`,
    ssr_uri: `http://api.kradass.com/ktour/graphql`
  },
  KCHANNEL: {
    name: 'KCHANNEL',
    csr_uri: `http://127.0.0.1:3000/graphql`,
    ssr_uri: `http://127.0.0.1:3000/graphql`
  },
}
