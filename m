Return-Path: <devicetree+bounces-254841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 89781D1D15B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:23:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2B5B630053C9
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6519A37E2EF;
	Wed, 14 Jan 2026 08:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNBJsn+P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F5437C110;
	Wed, 14 Jan 2026 08:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768379005; cv=none; b=qizCfE+bXfiuzPO97eiRo2qV524PbSFs5LGsFWYYP11kRgcRvSGe1KkY9Ml+LAAwHN7uJiiNYkI7Obr8z5OnEr4Ags/8nzldnxxpdYyF7BWpfrPS3c3G2qyluzXWbYPxkxeM9x7NDAyfbG4fuk3PidKzxXxP1dDEI8Ptu4GsCUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768379005; c=relaxed/simple;
	bh=bm6Wk/2IJsqzSV4Snr6b9N9VaG2peRhoZM9i1VOuZZA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UtVnEP8Vq0J5fAicPInOTTG9kmlFU1rgWkjrog3oNQy6X7JC8T2nDyEV8n4slLgW9aaAzlouxFE0nuFt0hpw3nPE3Ps07dhFnRDNcecui6whouAoxlHyzdSFFgLnV/Do0whjQz7Lhp5Y2VxNhjuZcuryV6JSYqNiQs84HDLB+Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNBJsn+P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0795C19423;
	Wed, 14 Jan 2026 08:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768379005;
	bh=bm6Wk/2IJsqzSV4Snr6b9N9VaG2peRhoZM9i1VOuZZA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nNBJsn+POn+OkTCXRvBreBekxftudgPaLNLqrOtt6vrHFMbQm+BHWrxOEpyQlwgqk
	 xHJ1PiYBDe4D2fRZo2smPZ9+kzjTiH6ZzAEO11PWaGPnzzzSpmaAOerfYwkoSmXB9t
	 LNNPjHv5Nv66un0tK7qrj941b4mxz8WpUO1VpjtMGH3+uESht1dCksy5pGSuqP1Tcr
	 x66lJcBqitUQGLCDB9AD/rFDFWMS27B2siy3AcV02as3Q1T7CWImh0imKM+YewqKwB
	 NpCzH9Y+Qzavj6KeCrN5dgVLZeCW+SiFqCPlHThX39Kt73UYqkk85s4qPDYdA707fg
	 rbllzioCEHlLA==
Date: Wed, 14 Jan 2026 09:23:22 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org, 
	alexandre.belloni@bootlin.com, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org, Frank.Li@nxp.com, 
	lgirdwood@gmail.com, vikash.bansal@nxp.com, priyanka.jain@nxp.com, 
	shashank.rebbapragada@nxp.com
Subject: Re: [PATCH v4 2/5] dt-bindings: i3c: Add NXP P3H2x4x i3c-hub support
Message-ID: <20260114-wonderful-vermilion-starfish-ad6ec9@quoll>
References: <20260113114529.1692213-1-aman.kumarpandey@nxp.com>
 <20260113114529.1692213-2-aman.kumarpandey@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260113114529.1692213-2-aman.kumarpandey@nxp.com>

On Tue, Jan 13, 2026 at 01:45:26PM +0200, Aman Kumar Pandey wrote:
> Add bindings for the NXP P3H2x4x (P3H2440/P3H2441/P3H2840/P3H2841)
> multiport I3C hub family. These devices connect to a host via
> I3C/I2C/SMBus and allow communication with multiple downstream
> peripherals.
> 
> Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>
> 
> ---
> Changes in v4:
>  - Fixed DT binding check warning
>  - Removed SW properties: ibi-enable, local-dev, and always-enable
> 
> Changes in v3:
>  - Added MFD (Multi-Function Device) support for I3C hub and on-die regulator
>  - Added Regulator supply node
> 
> Changes in v2:
>  - Fixed DT binding check warning
>  - Revised logic for parsing DTS nodes
> ---
> ---
>  .../bindings/mfd/nxp,p3h2840-i3c-hub.yaml     | 240 ++++++++++++++++++
>  MAINTAINERS                                   |   8 +
>  2 files changed, 248 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/nxp,p3h2840-i3c-hub.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/nxp,p3h2840-i3c-hub.yaml b/Documentation/devicetree/bindings/mfd/nxp,p3h2840-i3c-hub.yaml
> new file mode 100644
> index 000000000000..b6853a1d1893
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/nxp,p3h2840-i3c-hub.yaml

Same comment as before, filename matching compatible.

> @@ -0,0 +1,240 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright 2025 NXP
> +

Drop blank line.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/nxp,p3h2840-i3c-hub.yaml#

This is not a MFD device. Place it in appropriate place, e.g. i2c or i3c
controllers directory.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP P3H2X4X I3C HUB
> +
> +maintainers:
> +  - Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> +  - Vikash Bansal <vikash.bansal@nxp.com>
> +
> +description: |
> +  P3H2x4x (P3H2440/P3H2441/P3H2840/P3H2841) is a family of multiport I3C
> +  hub devices that connect to:-
> +  1. A host CPU via I3C/I2C/SMBus bus on upstream side and connect to multiple
> +     peripheral devices on the downstream  side.
> +  2. Have two Controller Ports which can support either
> +     I2C/SMBus or I3C buses and connect to a CPU, BMC or SOC.
> +  3. P3H2840/ P3H2841 are 8 port I3C hub with eight I3C/I2C Target Port.
> +  4. P3H2440/ P3H2441 are 4 port I3C hub with four I3C/I2C Target Port.
> +     Target ports can be configured as I2C/SMBus, I3C or GPIO and connect to
> +     peripherals.
> +
> +allOf:
> +  - $ref: /schemas/i3c/i3c.yaml#
> +
> +properties:
> +  compatible:
> +    items:

Drop items, not needed, and use directly const.

> +      - const: nxp,p3h2840
> +
> +  cp0-ldo-microvolt:
> +    description:
> +      Selects the voltage for controller Port 0, in microvolts.

This is confusing. Why do you have voltage choice of cp0 here and also
in cp0 regulator? Only regulator node is needed.

> +    enum: [1000000, 1100000, 1200000, 1800000]
> +    default: 1000000
> +
> +  cp1-ldo-microvolt:
> +    description:
> +      Selects the voltage for controller Port 1, in microvolts.
> +    enum: [1000000, 1100000, 1200000, 1800000]
> +    default: 1000000
> +
> +  tp0145-ldo-microvolt:
> +    description:
> +      Selects the voltage for target Port 0/1/4/5, in microvolts.
> +    enum: [1000000, 1100000, 1200000, 1800000]
> +    default: 1000000
> +
> +  tp2367-ldo-microvolt:
> +    description:
> +      Selects the voltage for target Port 2/3/6/7, in microvolts.
> +    enum: [1000000, 1100000, 1200000, 1800000]
> +    default: 1000000
> +
> +  tp0145-pullup-ohms:
> +    description:
> +      Selects the pull up resistance for target Port 0/1/4/5, in ohms.
> +    enum: [250, 500, 1000, 2000]
> +    default: 500
> +
> +  tp2367-pullup-ohms:
> +    description:
> +      Selects the pull up resistance for target Port 2/3/6/7, in ohms.
> +    enum: [250, 500, 1000, 2000]
> +    default: 500
> +
> +  cp0-io-strength-ohms:
> +    description:
> +      Selects the IO drive strength for controller Port 0, in ohms.
> +    enum: [20, 30, 40, 50]
> +    default: 20
> +
> +  cp1-io-strength-ohms:
> +    description:
> +      Selects the IO drive strength for controller Port 1, in ohms.
> +    enum: [20, 30, 40, 50]
> +    default: 20
> +
> +  tp0145-io-strength-ohms:
> +    description:
> +      Selects the IO drive strength for target port 0/1/4/5, in ohms.
> +    enum: [20, 30, 40, 50]
> +    default: 20
> +
> +  tp2367-io-strength-ohms:
> +    description:
> +      Selects the IO drive strength for target port 2/3/6/7, in ohms.
> +    enum: [20, 30, 40, 50]
> +    default: 20
> +
> +  cp0-supply:
> +    description: Phandle to voltage regulator providing power to controller port 0.

s/handle to voltage regulator providing power// because it is completely
redundant. Just say port 0 power supply.

> +
> +  cp1-supply:
> +    description: Phandle to voltage regulator providing power to controller port 1.
> +
> +  tp0145-supply:
> +    description: Phandle to voltage regulator providing power to target port 0/1/4/5.
> +
> +  tp2367-supply:
> +    description: Phandle to voltage regulator providing power to target port 2/3/6/7.
> +
> +  regulators:
> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      cp0:
> +        type: object
> +        $ref: /schemas/regulator/regulator.yaml#
> +        unevaluatedProperties: false
> +
> +      cp1:
> +        type: object
> +        $ref: /schemas/regulator/regulator.yaml#
> +        unevaluatedProperties: false
> +
> +      tp0145:
> +        type: object
> +        $ref: /schemas/regulator/regulator.yaml#
> +        unevaluatedProperties: false
> +
> +      tp2367:
> +        type: object
> +        $ref: /schemas/regulator/regulator.yaml#
> +        unevaluatedProperties: false
> +
> +patternProperties:
> +  "^i3c@[0-7]$":
> +    type: object
> +    $ref: /schemas/i3c/i3c.yaml#
> +    unevaluatedProperties: false
> +
> +    properties:
> +      reg:
> +        description:
> +          The I3C HUB Target Port number.
> +        maxItems: 1
> +
> +      pullup-enable:
> +        type: boolean
> +        description:
> +          Enables the on-die pull-up for Target Port.
> +
> +  "^(i2c|smbus)@[0-7]$":
> +    type: object
> +    $ref: /schemas/i2c/i2c-controller.yaml#
> +    unevaluatedProperties: false
> +
> +    properties:
> +      reg:
> +        description:
> +          The I3C HUB Target Port number.
> +        maxItems: 1
> +
> +      pullup-enable:
> +        type: boolean
> +        description:
> +          Enables the on-die pull-up for Target Port.
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i3c {
> +        #address-cells = <3>;
> +        #size-cells = <0>;
> +
> +        hub@70,236153000c2 {
> +            reg = <0x70 0x236 0x3000c2>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            assigned-address = <0x50>;
> +
> +            cp0-ldo-microvolt = <1800000>;
> +            cp1-ldo-microvolt = <1800000>;
> +            tp0145-ldo-microvolt = <1800000>;
> +            tp2367-ldo-microvolt = <1800000>;
> +            tp0145-pullup-ohm = <1000>;
> +            tp2367-pullup-ohm = <1000>;
> +            cp0-io-strength-ohm = <50>;
> +            cp1-io-strength-ohm = <50>;
> +            tp0145-io-strength-ohm = <50>;
> +            tp2367-io-strength-ohm = <50>;
> +            cp0-supply = <&cp0>;

This makes no sense ether. How supply of cp0 regulator can be cp0?


> +            tp0145-supply = <&tp0145>;
> +            tp2367-supply = <&tp2367>;
> +
> +            regulators {
> +                cp0 {
> +                    regulator-name = "cp0";
> +                    regulator-min-microvolt = <1000000>;
> +                    regulator-max-microvolt = <1800000>;
> +                };

Best regards,
Krzysztof


