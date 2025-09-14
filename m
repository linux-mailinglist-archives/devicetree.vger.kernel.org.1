Return-Path: <devicetree+bounces-216927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB982B568A3
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:35:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6555B165F11
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 12:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED90825F99F;
	Sun, 14 Sep 2025 12:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dO4mM1Z7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4D924E00F
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 12:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757853300; cv=none; b=naox8VirXv10KPTTZR6gl0iieLTyFI7vkbdT6M+phKGrfrZ+UWS67eoa0kQnHcEE5ZQkZPKZVb8aha8wFdaESw9VvsE5+/R5SOS66c61rZ1AWm2Dag64lXSPjnsQ6uWm1fAX10OeOTYKRmKdnG8M7V0KgYWcb/IiWhCOLXO8sJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757853300; c=relaxed/simple;
	bh=fRxf354j9p5dLkCyRRpVnIzv7RmHa2wj/7G8YB2Kzos=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JIsk1juAsuqKBcmKKGClCKGOUQfQNzR105LxC6ivSYEfNcRm7EOFi91YP1kQQphh5PkW4DWknjZG5lfb/cHqrhQqFuukkvfeumMOZIs8VpZ8goDamfKZeElRrhQxaNZ1G1mhyDlP7AaUc1Ciiq+N0ObaVUHRZ2vf5Qn3WWA0muY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dO4mM1Z7; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-625e1dfc43dso5717826a12.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 05:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757853297; x=1758458097; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6My8g8ijlC6ggM3Nx6OmXgJVfqUSxwxL444mCRnJ11g=;
        b=dO4mM1Z7bieQEVV9pvJtiYB1n2s3M0sxuhEiKCi0QlhfFt6rOlNCbu1upgPSxukMyt
         00ZEN6lV6ryAfyb30zprRNm/OwvDldlBEcNfCtj4BWvoE0J3/xB+C9S+sp9i1dWYEgTx
         VdLgVaDbQYSuT/lQ//Hj15xByBHE/070bIskFk3z757O68AbtbmZuUbnui+VncOEm911
         7yeWSQzI7TdNEH5zKev5RS7RDQRzs/9A6Rvw0lo4m/8F++54wChp62Wa2AdTa6qjhdVE
         ZzahHFCd5IqzeSVACdZPSasIE609mg8wpHUIBhBiFYr+EKYNhmyu3FlLvyhNbJXyM8Cf
         EJ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757853297; x=1758458097;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6My8g8ijlC6ggM3Nx6OmXgJVfqUSxwxL444mCRnJ11g=;
        b=ML2rku6bNbU2MbapuB2wsajy4iyKH+zt8MB3VJs6KSUXjnZBR4aAKLHFmRsrzrSThr
         mui0SYCMU1gNFUi+l0d7zlFdN9C4oCUsnRPqYEjbodNf/LAGGJX0oORzpfIZZre7GZpx
         2GP7vE2W1+2J0g9H2pOWMqFOzaQeQs5IbVl/5OASHLD9RukqIPq7YmgJZ9fJBi3MsMLU
         DD9QxdFxCNHhwnnF6LxvC9rYEoPTTKN6AH28winkHhcm+I/+fGjTLQM5pUA0nEgQYk6+
         xTFwUMXXLQsixqL7KN0J0oZvJkUK4KNZ6O2En05OvUH+68z+W4y8iFgjwguWfboz2GFA
         FbeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmYVHG+eqpYj1flKNHhdz3NJ4wXIlv2Hf16+3b2cpSBIAVidI6mS7KNYyMwH4P81zSLVoP72cg5vUb@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3Lh/yeReJR3e8uH6qWnj9MdASicbbdFxAGNvAA59m1+sCZo7I
	UawPViRTShaXwgXCywt1fyV+aquT1+F2TvhOHvWiUGvbC0ozFl8I12hsJhDY/gMWkfcR9DnKnVf
	lFGhckVR6w0ov5Xs4a7WFDHy0hNVTW7K5kjv9Q/Fvsw==
X-Gm-Gg: ASbGncuYGEjzs0yMoVFx+N2BsYLLH5MlU4k3WGsN7gjJgifL4ip8T1nD35zgmWtFm7S
	mE/96n7QmiFsOIU4ThwP1Ujrh6r8hWZiOflUQTDHts8e+9LdIVUKDdAWJkTiuYq2R38BzEEJQ9Y
	dEcRg40H3fWbwkvBYvJfLbEEs2yahqjMB5kOp3+vJp7+vxM68iHDRQmcQPIN5Ix/lW/S4MTS6SK
	nFjQ+WxWa/RSL9fSWX6tdym+WxJtFGZPlnFzbDM+9ueBlA=
X-Google-Smtp-Source: AGHT+IE9iMZLipi8SbmYOlVHFkjWHvFeGW1GqsUB94IHXcDFtD/+YhZqBpHxrpl4wzzT0r2J3Pq8q72gpM+PxQoXhrE=
X-Received: by 2002:a17:907:7f87:b0:b0e:d477:4961 with SMTP id
 a640c23a62f3a-b0ed477740fmr113747966b.23.1757853296988; Sun, 14 Sep 2025
 05:34:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250912141436.2347852-1-vincent.guittot@linaro.org>
 <20250912141436.2347852-2-vincent.guittot@linaro.org> <aMSHsoLHGUBoWX8e@lizhi-Precision-Tower-5810>
In-Reply-To: <aMSHsoLHGUBoWX8e@lizhi-Precision-Tower-5810>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Sun, 14 Sep 2025 14:34:44 +0200
X-Gm-Features: Ac12FXyj3Q4Ir_GGRHAULDx1O8xgannDkGizhiAuLvket8uRGtmjSHnXquF9Gho
Message-ID: <CAKfTPtBh3jvEQF09sL8g7Zeru+WvtQO31UFZEZDx1DYJ8RCK3w@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: pcie: Add the NXP PCIe controller
To: Frank Li <Frank.li@nxp.com>
Cc: chester62515@gmail.com, mbrugger@suse.com, ghennadi.procopciuc@oss.nxp.com, 
	s32@nxp.com, lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	Ionut.Vicovan@nxp.com, larisa.grigore@nxp.com, Ghennadi.Procopciuc@nxp.com, 
	ciprianmarian.costea@nxp.com, bogdan.hamciuc@nxp.com, 
	linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 12 Sept 2025 at 22:51, Frank Li <Frank.li@nxp.com> wrote:
>
> On Fri, Sep 12, 2025 at 04:14:33PM +0200, Vincent Guittot wrote:
> > Describe the PCIe controller available on the S32G platforms.
>
> can you cc imx@lists.linux.dev next time? suppose most part is similar with
> imx and layerscape chips.

Ok will do

>
> >
> > Co-developed-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> > Signed-off-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> > Co-developed-by: Bogdan-Gabriel Roman <bogdan-gabriel.roman@nxp.com>
> > Signed-off-by: Bogdan-Gabriel Roman <bogdan-gabriel.roman@nxp.com>
> > Co-developed-by: Larisa Grigore <larisa.grigore@nxp.com>
> > Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
> > Co-developed-by: Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>
> > Signed-off-by: Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>
> > Co-developed-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
> > Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
> > Co-developed-by: Bogdan Hamciuc <bogdan.hamciuc@nxp.com>
> > Signed-off-by: Bogdan Hamciuc <bogdan.hamciuc@nxp.com>
> > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > ---
> >  .../devicetree/bindings/pci/nxp,s32-pcie.yaml | 169 ++++++++++++++++++
> >  1 file changed, 169 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pci/nxp,s32-pcie.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/pci/nxp,s32-pcie.yaml b/Documentation/devicetree/bindings/pci/nxp,s32-pcie.yaml
> > new file mode 100644
> > index 000000000000..287596d7162d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/nxp,s32-pcie.yaml
> > @@ -0,0 +1,169 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pci/nxp,s32-pcie.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: NXP S32G2xx/S32G3xx PCIe controller
> > +
> > +maintainers:
> > +  - Bogdan Hamciuc <bogdan.hamciuc@nxp.com>
> > +  - Ionut Vicovan <ionut.vicovan@nxp.com>
> > +
> > +description:
> > +  This PCIe controller is based on the Synopsys DesignWare PCIe IP.
> > +  The S32G SoC family has two PCIe controllers, which can be configured as
> > +  either Root Complex or End Point.
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - enum:
> > +          - nxp,s32g2-pcie     # S32G2 SoCs RC mode
> > +      - items:
> > +          - const: nxp,s32g3-pcie
> > +          - const: nxp,s32g2-pcie
> > +
> > +  reg:
> > +    minItems: 7
>
> If minItems is the same maxItems, needn't minItems.

Ok, I didn't know that

>
> > +    maxItems: 7
> > +
> > +  reg-names:
> > +    items:
> > +      - const: dbi
> > +      - const: dbi2
> > +      - const: atu
> > +      - const: dma
> > +      - const: ctrl
> > +      - const: config
> > +      - const: addr_space
> > +
> > +  interrupts:
> > +    minItems: 8
> > +    maxItems: 8
> > +
> > +  interrupt-names:
> > +    items:
> > +      - const: link_req_stat
> > +      - const: dma
> > +      - const: msi
> > +      - const: phy_link_down
> > +      - const: phy_link_up
> > +      - const: misc
> > +      - const: pcs
> > +      - const: tlp_req_no_comp
>
> use - for names

Yes, I forgot to change this

>
> > +
> > +  msi-parent:
> > +    description:
> > +      Use this option to reference the GIC controller node which will
> > +      handle the MSIs. This property can be used only in Root Complex mode.
> > +      The msi-parent node must be declared as "msi-controller" and the list of
> > +      available SPIs that can be used must be declared using "mbi-ranges".
> > +      If "msi-parent" is not present in the PCIe node, MSIs will be handled
> > +      by iMSI-RX -Integrated MSI Receiver [AXI Bridge]-, an integrated
> > +      MSI reception module in the PCIe controller's AXI Bridge which
> > +      detects and terminates inbound MSI requests (received on the RX wire).
> > +      These MSIs no longer appear on the AXI bus, instead a hard-wired
> > +      interrupt is raised, documented as "DSP AXI MSI Interrupt" in the SoC
> > +      Reference Manual.
>
> Don't need description for this common property.
>
> msi-parent for pcie devices is most likely wrong. It should use msi-map.

Ok, I'm going to have a look.

>
> > +
> > +  nxp,phy-mode:
> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    description: Select PHY mode for PCIe controller
> > +    enum:
> > +      - crns  # Common Reference Clock, No Spread Spectrum
> > +      - crss  # Common Reference Clock, Spread Spectrum
> > +      - srns  # Separate reference Clock, No Spread Spectrum
> > +      - sris  # Separate Reference Clock, Independent Spread Spectrum
> > +
> > +  max-link-speed:
> > +    description:
> > +      The max link speed is normaly Gen3, but can be enforced to a lower value
> > +      in case of special limitations.
>
> needn't description here.

ok

>
> > +    maximum: 3
> > +
> > +  num-lanes:
> > +    description:
> > +      Max bus width (1 or 2); it is the number of physical lanes
>
> needn't description here.

ok

>
> > +    minimum: 1
> > +    maximum: 2
> > +
> > +allOf:
> > +  - $ref: /schemas/pci/snps,dw-pcie-common.yaml#
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - interrupts
> > +  - interrupt-names
> > +  - ranges
> > +  - nxp,phy-mode
> > +  - num-lanes
> > +  - phys
> > +
> > +additionalProperties: true
>
> unevaluatedProperties: false
>
> because you refs to /schemas/pci/snps,dw-pcie-common.yaml
>
> You can send to me do internal review before you post to upstream.

ok, thanks

>
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/phy/phy.h>
> > +
> > +    bus {
> > +        #address-cells = <2>;
> > +        #size-cells = <2>;
> > +
> > +        pcie0: pcie@40400000 {
>
> Needn't label "pcie0"

ok

>
> > +            compatible = "nxp,s32g3-pcie",
> > +                         "nxp,s32g2-pcie";
> > +            dma-coherent;
> > +            reg = <0x00 0x40400000 0x0 0x00001000>,   /* dbi registers */
> > +                  <0x00 0x40420000 0x0 0x00001000>,   /* dbi2 registers */
> > +                  <0x00 0x40460000 0x0 0x00001000>,   /* atu registers */
> > +                  <0x00 0x40470000 0x0 0x00001000>,   /* dma registers */
> > +                  <0x00 0x40481000 0x0 0x000000f8>,   /* ctrl registers */
> > +                  /* RC configuration space, 4KB each for cfg0 and cfg1
> > +                   * at the end of the outbound memory map
> > +                   */
> > +                  <0x5f 0xffffe000 0x0 0x00002000>,
> > +                  <0x58 0x00000000 0x0 0x40000000>; /* 1GB EP addr space */
> > +                  reg-names = "dbi", "dbi2", "atu", "dma", "ctrl",
> > +                              "config", "addr_space";
> > +                  #address-cells = <3>;
> > +                  #size-cells = <2>;
> > +                  device_type = "pci";
> > +                  ranges =
> > +                  /* downstream I/O, 64KB and aligned naturally just
> > +                   * before the config space to minimize fragmentation
> > +                   */
> > +                  <0x81000000 0x0 0x00000000 0x5f 0xfffe0000 0x0 0x00010000>,
> > +                  /* non-prefetchable memory, with best case size and
> > +                  * alignment
> > +                   */
> > +                  <0x82000000 0x0 0x00000000 0x58 0x00000000 0x7 0xfffe0000>;
> > +
> > +                  nxp,phy-mode = "crns";
> > +                  bus-range = <0x0 0xff>;
> > +                  interrupts =  <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
> > +                                <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
> > +                                <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
> > +                                <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
> > +                                <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>,
> > +                                <GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>,
> > +                                <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
> > +                                <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
> > +                  interrupt-names = "link_req_stat", "dma", "msi",
> > +                                    "phy_link_down", "phy_link_up", "misc",
> > +                                    "pcs", "tlp_req_no_comp";
> > +                  #interrupt-cells = <1>;
> > +                  interrupt-map-mask = <0 0 0 0x7>;
> > +                  interrupt-map = <0 0 0 1 &gic 0 0 0 128 4>,
> > +                                  <0 0 0 2 &gic 0 0 0 129 4>,
> > +                                  <0 0 0 3 &gic 0 0 0 130 4>,
> > +                                  <0 0 0 4 &gic 0 0 0 131 4>;
>
> use pre define macro
>
> <0 0 0 1 &gic GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>,

yes

>
> > +                  msi-parent = <&gic>;
>
> Suppose it is wrong for pcie



>
> you should use msi-map
>
> Frank
> > +
> > +                  num-lanes = <2>;
> > +                  phys = <&serdes0 PHY_TYPE_PCIE 0 0>;
> > +        };
> > +    };
> > --
> > 2.43.0
> >

