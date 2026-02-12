Return-Path: <devicetree+bounces-264915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IO2mFKt+jWl93QAAu9opvQ
	(envelope-from <devicetree+bounces-264915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:18:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D9712AE6C
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:18:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B645B3028105
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:18:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C3272BD5BB;
	Thu, 12 Feb 2026 07:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rkY0ARSt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69EB7295D90
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 07:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770880678; cv=pass; b=K/nxvLi4bGyBexjBBptuqqm09yihgVk3IYu0G3XUcLM4GzuehIjdr1ZI+e0JlcVUVC9xAHh5p4Hi/KQgHDU9fVEHNN/xtfxxQ8CXQqoNNuJASIu5yFS7yvx4VaJPnwrdfQNyJBJJelmH2QwaShX0OSN9uJVlEY6kTCw6JmOqWBQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770880678; c=relaxed/simple;
	bh=3JUYhEjG86u79GzhS2NXkVdzj4AGSv4a26ZGnvYxQ18=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PRlYXmSvZNxRSSASFkJBQUDvWg6yXy0NWN9NCmwMD/EHx3Wv01czSPzFftePAG7/7kfkd/DSov55yfxuuZlyaL0VcHJu6qAbvMe9hsfVRf3h2xZibCcXkESl+55G3Haoax6rjuWKgJNNMRF5eJy8OkOOikarOjpcpIXbvigjGE0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rkY0ARSt; arc=pass smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-65a1b17a99aso4004593a12.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 23:17:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770880676; cv=none;
        d=google.com; s=arc-20240605;
        b=Arb7cW92N8ckClbt/y1nwx4oh1ZXDfz9lFkAsMgtqH2/oOGbG/ajB1gekFHbRBtGLM
         gwI056ePsz4Dcg+161nXVoewiSOKRLv5GZe7RMCn1E8gYan6yiGwdied8ENqg4tyUCY0
         MznFuNooOi1oZmgqjRftphZdwtRZRmvVbT5wlNOcugPMZhi1eQu5uaHEO0rVe+kt59tW
         n2EzavtkT663Zu8r7o1qti7WwNdhUSyVfB2KkFly1Va9QMgG+nhXu/J9lWNGsDMFuqdn
         VEmkEDQHFwkFNP6l823VrCY1QHYxLfr6/Cpm91fDVqSvjJ9jNVzCxNEAADB+BACc2ztR
         yNrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4VtkmaXYDRoBb0Ii/zZutz9SPx4ofKw8c7aX2qO71JI=;
        fh=7gXb30BLDKdOp6J76F+7hGUEv9hAcxa14d6bbSsmj0s=;
        b=OPOF5nHcnnY466NdRKG0eosmNZ6OaunmSgmkg2aofm0VT/xGfsvTJbnnlU+tEU6AzU
         pLUhBZKfpMQR54pL43w98eRJcd9fJ5uNVjVYDJKDmsPJl8rLnyJCSYJBRXF7JPfaAzpw
         BQftCPJ1LXs2i4MExampdsxsDLrHHGrCnac6ku0YbsWTWuJSbq06d9I9q0Ns4wqJ6Lfi
         fmbPBtPUgUj9zS0Udz5x19b4j3aO+wfpkLlodQCb/90B6VPBa+uecQj0XwTyimclCoeJ
         VYTRS750imYK3AfL9S5KpKlQJAEOmKpJqFPx/Kt7uZE0c0+3eVp84az875jVgW00g0Zo
         K8ZQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770880676; x=1771485476; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4VtkmaXYDRoBb0Ii/zZutz9SPx4ofKw8c7aX2qO71JI=;
        b=rkY0ARSt3TOLfqzD+HTUxHajiAzuUb0ekbyaW2WLRD507nz6VTMp4G9zfrM9yP7FWk
         qslPozqDpbI04Z7zO40qyEPorafldUc94k42/KBMatwJp02FDkG31xn4JNVhvsVEef29
         10Chl+Grox8n1DzSMfDOZhiBHKwrMME4Z20qA8Z1Pqy5Ivq7BAiV3zi81S2i8tau8qaF
         Z8MBA+nSEqSPVmPfLqTt5a4Fjb+hh0Xaoo0uW39+oLB1mzwSmh6RtCC9fT3YVh69qA3r
         5MC9g4WbuiueUkuEhGFDzc90EDVtx/3iPkXL7cKutZrznxZIhmBsm1km5bnsHCkE031L
         ed0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770880676; x=1771485476;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4VtkmaXYDRoBb0Ii/zZutz9SPx4ofKw8c7aX2qO71JI=;
        b=VkVYOpdFpTeBKxPj6IEgyF+1DSgmW7TrgjSHYcz+BROkko+eEIZxfY+I1PDrQoeTSf
         rA2R8vy/1yh+HdXjcjgClBJ3LPSKd9FLyy8jmHAEEkpN17aCDqyofUr799atRdu5fKVU
         CdKaOPyG4Qx9pv3vNUsyCEMJ9cf/znRstZ1RDGTTrq9SdbAYJFTsAW+6m+47M7WwMP89
         52kMgo1Asqp0xHK3L0TJT/cvFFaIaiLPse6g7V/NAJQmnHNf35u9uYnnvoblayb7OY2J
         sg9yq42cRe/i3xn/c0XFok9T8i5IXfLar8Cs8GDZtMi5w3vYA1weOjrZ9mZ6b3FmPcpW
         yLvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUv+3YjjBx4XldlCmrrhPOCOqvC5P0DbzgIkCoVchQ979wUlQoqGNnOdlC3v5dUzvzvz9VbKHR00Phz@vger.kernel.org
X-Gm-Message-State: AOJu0YwnKC6rqSJFZcEHF9eqv9fgV5NhBN2ucX7zxUqVIEidhEpxwm8y
	JZMr16rUMsKVkSwwJZq1pHAQdg8OWpIDyYdCWQScf5rA8ZGyk8W30UaBhBw+Hmvuq02vCZTbmp7
	NDYDaXwgmZN+q07UDjrz2J6YfvBUrRD+I1jncYD7K0Q==
X-Gm-Gg: AZuq6aIAjO9f8K24bw98EcoUWqgeQuulJvUTIPzdJvAAeQIar8e4qFA4N7lnCoLivCN
	dG5e5JMEK3sT4xarZPYz9rWCqf1lbee0SQP2JzsW/Cfy500CbCmDQu0nwinwXaKQ3+R5e99Btny
	y2bqo89PKbZ1EKyWYr17L0MpopdgA+eHj6RNPNI477LJLaqgB25VapJe3yAiC3yOB0vj6CXSsgE
	ag5Mb79Ijflu5qVpBtREZcL9+xdEHCMY4S0hjqzowGQu6T1bt23ux0XKNG1BorVhgWxTAunmB5m
	N1+OdkOBYTYZijJAbciBsESYeimSpYqlJFkc
X-Received: by 2002:a05:6402:2690:b0:658:bab5:57f4 with SMTP id
 4fb4d7f45d1cf-65b9db110b9mr587533a12.23.1770880675576; Wed, 11 Feb 2026
 23:17:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203161917.1666696-1-vincent.guittot@linaro.org>
 <20260203161917.1666696-2-vincent.guittot@linaro.org> <20260210004011.GA2188625-robh@kernel.org>
In-Reply-To: <20260210004011.GA2188625-robh@kernel.org>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 12 Feb 2026 08:17:44 +0100
X-Gm-Features: AZwV_Qj567pfCDwzOGI7nJVgtwTDzptXPKhrNBHBCOrwOw7GShjTLukyePRdLLo
Message-ID: <CAKfTPtA299R7yn3r=tCqhhP_tK3E_UpGSMrDLyRP4Ccwt1m58g@mail.gmail.com>
Subject: Re: [PATCH 1/4 v2] dt-bindings: serdes: s32g: Add NXP serdes subsystem
To: Rob Herring <robh@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, linux@armlinux.org.uk, ghennadi.procopciuc@nxp.com, 
	Ionut.Vicovan@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	horms@kernel.org, Frank.li@nxp.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264915-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	DBL_PROHIBIT(0.00)[2.105.173.0:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim,mail.gmail.com:mid,nxp.com:email,devicetree.org:url,0.0.0.1:email]
X-Rspamd-Queue-Id: C3D9712AE6C
X-Rspamd-Action: no action

On Tue, 10 Feb 2026 at 01:40, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Feb 03, 2026 at 05:19:14PM +0100, Vincent Guittot wrote:
> > Describe the serdes subsystem available on the S32G platforms.
> >
> > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > ---
> >  .../bindings/phy/nxp,s32g-serdes.yaml         | 154 ++++++++++++++++++
> >  1 file changed, 154 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> > new file mode 100644
> > index 000000000000..fad34bee2a4f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> > @@ -0,0 +1,154 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/nxp,s32g-serdes.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: NXP S32G2xxx/S32G3xxx SerDes PHY subsystem
> > +
> > +maintainers:
> > +  - Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> > +
> > +description: |
> > +  The SerDes subsystem on S32G SoC Family includes two types of PHYs:
> > +    - One PCIe PHY: Supports various PCIe operation modes
> > +    - Two Ethernet Physical Coding Sublayer (XPCS) controllers
> > +
> > +  SerDes operation mode selects the enabled PHYs and speeds. Clock frequency
> > +  must be adapted accordingly. Below table describes all possible operation
> > +  modes.
> > +
> > +  Mode  PCIe XPCS0           XPCS1           PHY clock       Description
> > +                SGMII                SGMII             (MHz)
> > +  -------------------------------------------------------------------------
> > +  0  Gen3    N/A             N/A             100             Single PCIe
> > +  1  Gen2    1.25Gbps        N/A             100             PCIe/SGMII
> > +  2  Gen2    N/A             1.25Gbps        100             PCIe/SGMII
> > +  3  N/A     1.25Gbps        1.25Gbps        100,125         SGMII
> > +  4  N/A     3.125/1.25Gbps  3.125/1.25Gbps  125             SGMII
> > +  5  Gen2    N/A             3.125Gbps       100             PCIe/SGMII
>
> Mixed tabs and spaces. Drop the tabs.

okay

>
> What's not clear to me is do you have 2 or 4 lanes?

2 lanes per serdes
as an example mode 0 is one PCIe x2 lane
and mode 1 is one PCIe x1 and one xpcs0/SGMII on lane 1
or mode 3 is one  xpcs0/SGMII on lane 0 and one xpcs1/SGMII on lane 1

>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - enum:
> > +          - nxp,s32g2-serdes
> > +      - items:
> > +          - const: nxp,s32g3-serdes
> > +          - const: nxp,s32g2-serdes
> > +
> > +  reg:
> > +    maxItems: 4
> > +
> > +  reg-names:
> > +    items:
> > +      - const: ss_pcie
> > +      - const: pcie_phy
> > +      - const: xpcs0
> > +      - const: xpcs1
> > +
> > +  clocks:
> > +    minItems: 4
> > +    maxItems: 5
> > +
> > +  clock-names:
> > +    items:
> > +      - const: axi
> > +      - const: aux
> > +      - const: apb
> > +      - const: ref
> > +      - const: ext
> > +    minItems: 4
> > +
> > +  resets:
> > +    maxItems: 2
> > +
> > +  reset-names:
> > +    items:
> > +      - const: serdes
> > +      - const: pcie
> > +
> > +  nxp,sys-mode:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
>
>        maximum: 5
>
> Though isn't this redundant with the child nodes? You could use the
> standard 'phy-mode' property in each child.

not really because we can have mode 1 but only a node to describe
lane0 for PCIe x1 if the lane 1 is not used

>
> > +    description: |
> > +      SerDes operational mode. See above table for possible values.
> > +
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  '#size-cells':
> > +    const: 0
> > +
> > +patternProperties:
> > +  '^serdes[0,1]_lane@[0,1]$':
>
> Do you need to support serdes0_lane@0 and serdes1_lane@0 (or similar
> with "@1")? That's illegal as you have 2 nodes with the same address.

okay, we can find other naming

>
> > +    description:
> > +      Describe a serdes lane.
> > +    type: object
> > +
> > +    properties:
> > +      compatible:
> > +        enum:
> > +          - nxp,s32g2-serdes-pcie-phy
> > +          - nxp,s32g2-serdes-xpcs
>
> Seems like phy-mode would be sufficient. Are these separate blocks from
> the parent?

Isn't phy-mode only for ethernet phy ?

here we have either a PCIe phy or a xpcs instance which are referenced
with phandle

>
> > +
> > +      reg:
> > +        maxItems: 1
>
> Just 'maximum: 1' instead.

okay


>
> > +
> > +      '#phy-cells':
> > +        const: 0
> > +
> > +    required:
> > +      - reg
> > +      - compatible
> > +
> > +    unevaluatedProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - clocks
> > +  - clock-names
> > +  - resets
> > +  - reset-names
> > +  - nxp,sys-mode
> > +  - '#address-cells'
> > +  - '#size-cells'
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    bus {
> > +        #address-cells = <2>;
> > +        #size-cells = <2>;
> > +        serdes0: serdes@40480000 {
> > +          compatible = "nxp,s32g3-serdes", "nxp,s32g2-serdes";
> > +            reg = <0x0 0x40480000 0x0 0x108>,
> > +                  <0x0 0x40483008 0x0 0x10>,
> > +                  <0x0 0x40482000 0x0 0x800>,
> > +                  <0x0 0x40482800 0x0 0x800>;
> > +            reg-names = "ss_pcie", "pcie_phy", "xpcs0", "xpcs1";
> > +            clocks = <&clks 1>,
> > +                     <&clks 2>,
> > +                     <&clks 3>,
> > +                     <&clks 4>,
> > +                     <&serdes_100_ext>;
> > +            clock-names = "axi", "aux", "apb", "ref", "ext";
> > +            resets = <&reset 9>,
> > +                     <&reset 8>;
> > +            reset-names = "serdes", "pcie";
> > +            nxp,sys-mode = <1>;
> > +            #address-cells = <1>;
> > +            #size-cells = <0>;
> > +            phy_pcie0: serdes0_lane@0 {
> > +              compatible = "nxp,s32g2-serdes-pcie-phy";
> > +              #phy-cells = <0>;
> > +              reg = <0>;
> > +            };
> > +            phy_xpcs0_0: serdes0_lane@1 {
> > +              compatible = "nxp,s32g2-serdes-xpcs";
> > +              reg = <0>;
> > +            };
> > +        };
> > +    };
> > --
> > 2.43.0
> >

