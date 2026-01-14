Return-Path: <devicetree+bounces-255068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0654FD1F582
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:16:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 79B893002897
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A141E2D94BB;
	Wed, 14 Jan 2026 14:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxQawwh0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF45231829;
	Wed, 14 Jan 2026 14:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768400199; cv=none; b=WyLlScONjAsmcVkHaqiHJMVdggePgB2TfG9UluDCMNmzQ3pHCwakyn8hpHoiPyzYHrTKWAIsC+mcC33Eb4G1KZiSRLAo25YizzMHyMgDqAsj2jRG7GaO9uREjui3yMeh0+NYIxydwfcKMWxejYsvN+k53gEsUE2GC6/xwEQjjIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768400199; c=relaxed/simple;
	bh=pdFX83VmlNrXto/FtySPpyRMozy2CEnS0+zsgnBiyis=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kb8FJAuBqxp1reh7DugexD17V/XCMK8lw6B1f8udFa+lC+tpHOJra5d0qrc1TT0xFK2r80hS50OsVORNn5QXG3/1zGppt7lqCy4lGHjdiqmeeHv6+kYSjHdg6clVQI+Yr2ImfhOnc1dryiaAOroOBMfwCcyEb1Z8mA/tMQzWLsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxQawwh0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B35EC4CEF7;
	Wed, 14 Jan 2026 14:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768400199;
	bh=pdFX83VmlNrXto/FtySPpyRMozy2CEnS0+zsgnBiyis=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PxQawwh0TpmFRe8Y87Ig1EKq8r4S2M2tWO5h5iPXByTKraTm8hYPL9o3+iJuEiYhO
	 vUv+rMOhPtRkUkHuNT+F4TgONkO1Gp6d8J0RuNIQP5H5EpRd/iX8AxN1/x6LnBICjP
	 xisSo+cnFk25f8/jiXfYgxbAPc8ch+XVO+oh2aehUePFwAWbcZTAnSG0HRQGxlWNmk
	 9COnE81Bf49m+u4dHo0I1q4zk5SHLD/PR0ybQoKKzcoBezwSQZyM5NR4LiGUIiiuvD
	 uwYrheNcyJmkyqtZOKwFstQKplPfV2lju5J+iTudX3VY2j+qTGeWi7mRLrqeI1/C5S
	 1hfNFQOcVOKRQ==
Date: Wed, 14 Jan 2026 19:46:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: convert to DT
 schema
Message-ID: <aWelQ7P1kjKrQMG9@vaman>
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
 <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com>

On 07-01-26, 16:11, Charan Pedumuru wrote:
> Convert TI PIPE3 PHY binding to DT schema.
> Changes during conversion:
> - Define a new pattern 'pciephy' to match nodes defined in DT.
> - Drop obsolete "id" property from the schema.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 127 +++++++++++++++++++++
>  1 file changed, 127 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> new file mode 100644
> index 000000000000..41b3828723ae
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> @@ -0,0 +1,127 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/ti,phy-usb3.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI PIPE3 PHY Module
> +
> +maintainers:
> +  - Kishon Vijay Abraham I <kishon@ti.com>

That is not correct, please check the current people on TI for this.

> +
> +description:
> +  The TI PIPE3 PHY is a high-speed SerDes (Serializer/Deserializer)
> +  transceiver integrated in OMAP5, DRA7xx/AM57xx, and similar SoCs.
> +  It supports multiple protocols (USB3, SATA, PCIe) using the PIPE3
> +  interface standard, which defines a common physical layer for
> +  high-speed serial interfaces.
> +
> +properties:
> +  $nodename:
> +    pattern: "^(pciephy|usb3phy|phy)(@[0-9a-f]+)?$"
> +
> +  compatible:
> +    enum:
> +      - ti,phy-usb3
> +      - ti,phy-pipe3-sata
> +      - ti,phy-pipe3-pcie
> +      - ti,omap-usb3
> +
> +  reg:
> +    minItems: 2
> +    maxItems: 3
> +
> +  reg-names:
> +    minItems: 2
> +    maxItems: 3
> +    items:
> +      enum:
> +        - phy_rx
> +        - phy_tx
> +        - pll_ctrl
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 7
> +
> +  clock-names:
> +    minItems: 2
> +    maxItems: 7
> +    items:
> +      enum: [wkupclk, sysclk, refclk, dpll_ref,
> +             dpll_ref_m2, phy-div, div-clk]
> +
> +  syscon-phy-power:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandle/offset pair to system control module register for PHY
> +      power on/off.
> +
> +  syscon-pllreset:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandle/offset pair to CTRL_CORE_SMA_SW_0 register containing
> +      SATA_PLL_SOFT_RESET bit (SATA PHY only).
> +
> +  syscon-pcs:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandle/offset pair to system control module for writing PCS delay value.
> +
> +  ctrl-module:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle of control module for PHY power on.
> +    deprecated: true
> +
> +dependencies:
> +  syscon-pllreset:
> +    properties:
> +      compatible:
> +        contains:
> +          const: ti,phy-pipe3-sata
> +
> +required:
> +  - reg
> +  - compatible
> +  - reg-names
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    /* TI PIPE3 USB3 PHY */
> +    usb3phy@4a084400 {
> +        compatible = "ti,phy-usb3";
> +        reg = <0x4a084400 0x80>,
> +              <0x4a084800 0x64>,
> +              <0x4a084c00 0x40>;
> +        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
> +        #phy-cells = <0>;
> +        clocks = <&usb_phy_cm_clk32k>,
> +                 <&sys_clkin>,
> +                 <&usb_otg_ss_refclk960m>;
> +        clock-names = "wkupclk", "sysclk", "refclk";
> +        ctrl-module = <&omap_control_usb>;
> +    };
> +
> +  - |
> +    /* TI PIPE3 SATA PHY */
> +    phy@4a096000 {
> +        compatible = "ti,phy-pipe3-sata";
> +        reg = <0x4A096000 0x80>,  /* phy_rx */
> +              <0x4A096400 0x64>,  /* phy_tx */
> +              <0x4A096800 0x40>;  /* pll_ctrl */
> +        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
> +        clocks = <&sys_clkin1>, <&sata_ref_clk>;
> +        clock-names = "sysclk", "refclk";
> +        syscon-pllreset = <&scm_conf 0x3fc>;
> +        #phy-cells = <0>;
> +    };
> +...
> 
> -- 
> 2.52.0

-- 
~Vinod

