Return-Path: <devicetree+bounces-15642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B9D7EB188
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:07:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6317B281114
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 14:07:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F348B405E4;
	Tue, 14 Nov 2023 14:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33273405C2;
	Tue, 14 Nov 2023 14:07:27 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30996AD;
	Tue, 14 Nov 2023 06:07:25 -0800 (PST)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1efad296d42so3347774fac.2;
        Tue, 14 Nov 2023 06:07:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699970844; x=1700575644;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FEs/ownMYNKE+UjNbrLE1kweeHoQ3jzAJN+nYgsgw4A=;
        b=XRgdnW+08czhM/VGSGmdKa/mf/XsozCkptULmqcUe2xQCN6akCBcAKrCRDayi4jmnX
         ZG6K/0c3KEpeaV4UiPKi5svQ1gzMR/ltE67PBxiFvHhK41ry2d08bCQHOSkCgvC0n+fV
         b6WhfvNHKwBfmjnLER6AIe1DlFhpko8ODCU+sNSEvOhF3mtYjeWO4XZf8qIWUCfjmD5Q
         yutVXKR7WOPk0zk+tx/fHI3kvlxFkCd0SG241pP8QfxLMNCpaxWKZf/pTbT/GAepWR82
         k475COvimhPdLpcMIUfjTZq6ZMO1J7NUa718UIMc3dlvSMY56j5hjzyMimoRiK5mXK00
         kNbA==
X-Gm-Message-State: AOJu0YzanDumGb9Q1tDszmmDVJ5rp85Jqi2g0oRxaIkMVHaEMVvccTZv
	/sDuFoBG93rnnlzdx+vNmA==
X-Google-Smtp-Source: AGHT+IH0CprHDJph4F0ArxeLmLU96GyyoKL7u7UOlWmtp34VMZS0p4pd66e3/sX3/RKBBWpf/EV12w==
X-Received: by 2002:a05:6870:d14a:b0:1ef:b4ae:e2a3 with SMTP id f10-20020a056870d14a00b001efb4aee2a3mr13279733oac.5.1699970843005;
        Tue, 14 Nov 2023 06:07:23 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r8-20020a05683001c800b006c4d38e12b9sm201972ota.65.2023.11.14.06.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 06:07:22 -0800 (PST)
Received: (nullmailer pid 1676214 invoked by uid 1000);
	Tue, 14 Nov 2023 14:07:19 -0000
Date: Tue, 14 Nov 2023 08:07:19 -0600
From: Rob Herring <robh@kernel.org>
To: Daniel Golle <daniel@makrotopia.org>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>, 
	Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Alexander Couzens <lynxis@fe80.eu>, Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH 7/8] dt-bindings: net: mediatek,net: fix and complete
 mt7988-eth binding
Message-ID: <20231114140719.GA1664629-robh@kernel.org>
References: <cover.1699565880.git.daniel@makrotopia.org>
 <d8152679b6558ce9fd177ff20478e3fbc2ab73b4.1699565880.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d8152679b6558ce9fd177ff20478e3fbc2ab73b4.1699565880.git.daniel@makrotopia.org>

On Thu, Nov 09, 2023 at 09:52:09PM +0000, Daniel Golle wrote:
> Remove clocks which were copied from the vendor driver but are now taken
> care of by dedicated drivers for PCS and PHY in the upstream driver.
> Also remove mediatek,sgmiisys phandle which isn't required on MT7988
> because we use pcs-handle on the MAC nodes instead.
> Last but not least, add an example for MT7988.

'Also' is a clue for it should be a separate patch. These changes are 
all ABI breakage. Please explain why that's okay.

> 
> Fixes: c94a9aabec36 ("dt-bindings: net: mediatek,net: add mt7988-eth binding")
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  .../devicetree/bindings/net/mediatek,net.yaml | 171 +++++++++++++++---
>  1 file changed, 142 insertions(+), 29 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/mediatek,net.yaml b/Documentation/devicetree/bindings/net/mediatek,net.yaml
> index e74502a0afe86..c0f7bb6f3ef8d 100644
> --- a/Documentation/devicetree/bindings/net/mediatek,net.yaml
> +++ b/Documentation/devicetree/bindings/net/mediatek,net.yaml
> @@ -27,9 +27,6 @@ properties:
>        - mediatek,mt7988-eth
>        - ralink,rt5350-eth
>  
> -  reg:
> -    maxItems: 1
> -

It's not clear what this change is from the commit msg.

This should stay and be:

reg:
  minItems: 1
  items:
    - description: what's in the 1st region
    - description: what's in the 2nd region

>    clocks: true
>    clock-names: true
>  
> @@ -115,6 +112,9 @@ allOf:
>                - mediatek,mt7623-eth
>      then:
>        properties:
> +        reg:
> +          maxItems: 1
> +
>          interrupts:
>            maxItems: 3
>  
> @@ -149,6 +149,9 @@ allOf:
>                - mediatek,mt7621-eth
>      then:
>        properties:
> +        reg:
> +          maxItems: 1
> +
>          interrupts:
>            maxItems: 1
>  
> @@ -174,6 +177,9 @@ allOf:
>              const: mediatek,mt7622-eth
>      then:
>        properties:
> +        reg:
> +          maxItems: 1
> +
>          interrupts:
>            maxItems: 3
>  
> @@ -215,6 +221,9 @@ allOf:
>              const: mediatek,mt7629-eth
>      then:
>        properties:
> +        reg:
> +          maxItems: 1
> +
>          interrupts:
>            maxItems: 3
>  
> @@ -257,6 +266,9 @@ allOf:
>              const: mediatek,mt7981-eth
>      then:
>        properties:
> +        reg:
> +          maxItems: 1
> +
>          interrupts:
>            minItems: 4
>  
> @@ -295,6 +307,9 @@ allOf:
>              const: mediatek,mt7986-eth
>      then:
>        properties:
> +        reg:
> +          maxItems: 1
> +

Looks like lots of duplication. Perhaps there's a cleaner way.

>          interrupts:
>            minItems: 4
>  
> @@ -333,36 +348,32 @@ allOf:
>              const: mediatek,mt7988-eth
>      then:
>        properties:
> +        reg:
> +          maxItems: 2
> +          minItems: 2
> +
>          interrupts:
>            minItems: 4
> +          maxItems: 4
>  
>          clocks:
> -          minItems: 34
> -          maxItems: 34
> +          minItems: 24
> +          maxItems: 24
>  
>          clock-names:
>            items:
> -            - const: crypto
> +            - const: xgp1
> +            - const: xgp2
> +            - const: xgp3
>              - const: fe
>              - const: gp2
>              - const: gp1
>              - const: gp3
> +            - const: esw
> +            - const: crypto
>              - const: ethwarp_wocpu2
>              - const: ethwarp_wocpu1
>              - const: ethwarp_wocpu0
> -            - const: esw
> -            - const: netsys0
> -            - const: netsys1
> -            - const: sgmii_tx250m
> -            - const: sgmii_rx250m
> -            - const: sgmii2_tx250m
> -            - const: sgmii2_rx250m
> -            - const: top_usxgmii0_sel
> -            - const: top_usxgmii1_sel
> -            - const: top_sgm0_sel
> -            - const: top_sgm1_sel
> -            - const: top_xfi_phy0_xtal_sel
> -            - const: top_xfi_phy1_xtal_sel
>              - const: top_eth_gmii_sel
>              - const: top_eth_refck_50m_sel
>              - const: top_eth_sys_200m_sel
> @@ -375,18 +386,9 @@ allOf:
>              - const: top_netsys_sync_250m_sel
>              - const: top_netsys_ppefb_250m_sel
>              - const: top_netsys_warp_sel
> -            - const: wocpu1
> -            - const: wocpu0
> -            - const: xgp1
> -            - const: xgp2
> -            - const: xgp3
> -
> -        mediatek,sgmiisys:
> -          minItems: 2
> -          maxItems: 2
>  
>  patternProperties:
> -  "^mac@[0-1]$":
> +  "^mac@[0-2]$":
>      type: object
>      unevaluatedProperties: false
>      allOf:
> @@ -577,3 +579,114 @@ examples:
>          };
>        };
>      };
> +
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/clock/mediatek,mt7988-clk.h>
> +
> +    soc {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      ethernet@15100000 {
> +        compatible = "mediatek,mt7988-eth";
> +        reg = <0 0x15100000 0 0x80000>, <0 0x15400000 0 0x380000>;
> +        interrupts = <GIC_SPI 196 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 197 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 198 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 199 IRQ_TYPE_LEVEL_HIGH>;
> +
> +        clocks = <&ethsys CLK_ETHDMA_XGP1_EN>,
> +                 <&ethsys CLK_ETHDMA_XGP2_EN>,
> +                 <&ethsys CLK_ETHDMA_XGP3_EN>,
> +                 <&ethsys CLK_ETHDMA_FE_EN>,
> +                 <&ethsys CLK_ETHDMA_GP2_EN>,
> +                 <&ethsys CLK_ETHDMA_GP1_EN>,
> +                 <&ethsys CLK_ETHDMA_GP3_EN>,
> +                 <&ethsys CLK_ETHDMA_ESW_EN>,
> +                 <&ethsys CLK_ETHDMA_CRYPT0_EN>,
> +                 <&ethwarp CLK_ETHWARP_WOCPU2_EN>,
> +                 <&ethwarp CLK_ETHWARP_WOCPU1_EN>,
> +                 <&ethwarp CLK_ETHWARP_WOCPU0_EN>,
> +                 <&topckgen CLK_TOP_ETH_GMII_SEL>,
> +                 <&topckgen CLK_TOP_ETH_REFCK_50M_SEL>,
> +                 <&topckgen CLK_TOP_ETH_SYS_200M_SEL>,
> +                 <&topckgen CLK_TOP_ETH_SYS_SEL>,
> +                 <&topckgen CLK_TOP_ETH_XGMII_SEL>,
> +                 <&topckgen CLK_TOP_ETH_MII_SEL>,
> +                 <&topckgen CLK_TOP_NETSYS_SEL>,
> +                 <&topckgen CLK_TOP_NETSYS_500M_SEL>,
> +                 <&topckgen CLK_TOP_NETSYS_PAO_2X_SEL>,
> +                 <&topckgen CLK_TOP_NETSYS_SYNC_250M_SEL>,
> +                 <&topckgen CLK_TOP_NETSYS_PPEFB_250M_SEL>,
> +                 <&topckgen CLK_TOP_NETSYS_WARP_SEL>;
> +
> +        clock-names = "xgp1", "xgp2", "xgp3", "fe", "gp2", "gp1",
> +                      "gp3", "esw", "crypto",
> +                      "ethwarp_wocpu2", "ethwarp_wocpu1",
> +                      "ethwarp_wocpu0", "top_eth_gmii_sel",
> +                      "top_eth_refck_50m_sel", "top_eth_sys_200m_sel",
> +                      "top_eth_sys_sel", "top_eth_xgmii_sel",
> +                      "top_eth_mii_sel", "top_netsys_sel",
> +                      "top_netsys_500m_sel", "top_netsys_pao_2x_sel",
> +                      "top_netsys_sync_250m_sel",
> +                      "top_netsys_ppefb_250m_sel",
> +                      "top_netsys_warp_sel";
> +        assigned-clocks = <&topckgen CLK_TOP_NETSYS_2X_SEL>,
> +                          <&topckgen CLK_TOP_NETSYS_GSW_SEL>,
> +                          <&topckgen CLK_TOP_USXGMII_SBUS_0_SEL>,
> +                          <&topckgen CLK_TOP_USXGMII_SBUS_1_SEL>,
> +                          <&topckgen CLK_TOP_SGM_0_SEL>,
> +                          <&topckgen CLK_TOP_SGM_1_SEL>;
> +        assigned-clock-parents = <&apmixedsys CLK_APMIXED_NET2PLL>,
> +                                 <&topckgen CLK_TOP_NET1PLL_D4>,
> +                                 <&topckgen CLK_TOP_NET1PLL_D8_D4>,
> +                                 <&topckgen CLK_TOP_NET1PLL_D8_D4>,
> +                                 <&apmixedsys CLK_APMIXED_SGMPLL>,
> +                                 <&apmixedsys CLK_APMIXED_SGMPLL>;
> +        mediatek,ethsys = <&ethsys>;
> +        mediatek,infracfg = <&topmisc>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        mac@0 {
> +          compatible = "mediatek,eth-mac";
> +          reg = <0>;
> +          phy-mode = "internal";
> +          status = "disabled";

Examples should be enabled.

> +
> +          fixed-link {
> +            speed = <10000>;
> +            full-duplex;
> +            pause;
> +          };
> +        };
> +
> +        mac@1 {
> +          compatible = "mediatek,eth-mac";
> +          reg = <1>;
> +          status = "disabled";
> +          pcs-handle = <&usxgmiisys1>;
> +        };
> +
> +        mac@2 {
> +          compatible = "mediatek,eth-mac";
> +          reg = <2>;
> +          status = "disabled";
> +          pcs-handle = <&usxgmiisys0>;
> +        };
> +
> +        mdio_bus: mdio-bus {

mdio {

> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          /* internal 2.5G PHY */
> +          int_2p5g_phy: ethernet-phy@15 {
> +            reg = <15>;
> +            compatible = "ethernet-phy-ieee802.3-c45";
> +            phy-mode = "internal";
> +          };
> +        };
> +      };
> +    };
> -- 
> 2.42.1

