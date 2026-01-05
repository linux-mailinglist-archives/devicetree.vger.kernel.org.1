Return-Path: <devicetree+bounces-251705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4E3CF5C5D
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 23:09:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61226302CDD0
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 22:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C98B72D7D42;
	Mon,  5 Jan 2026 22:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rl12Ov2n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FD4A212549;
	Mon,  5 Jan 2026 22:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767650940; cv=none; b=KkjQqn/Cjy1cvKlEf0+ymJijNyTh2TQoH1gpAGZEOs7qXhT6KnqKJt4TWUtNSkFfyF9O91aLWmjTKWVMNaFkPnEFg6QQD3E2HOddJOZeHBb/y7Y8LsMJp/GHCGLq9pTWgaGvBTwWdPHiKhoGZFbJU9RTYn+qhYuR3Z4c5dZUoIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767650940; c=relaxed/simple;
	bh=OT7qGR+zPTIDPXBVfIEPEdBknDEX6cYQwoyWhOvgpVo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dOJBknanpXYLmjSSWHjhVDBR0SkNjwqPUxsDzu1NHT57UMwybZLIA82RL9gSnnCkfYl4A7T1v5CwBv7sjG6LR/u91mqFLSmSwDTm2Sozi3uwV0VZPAWA+lIPvYLqNGeaDkDo+TrwpGWqyC/OED7/nRQ6XSrB9mdqiSJOuFshBL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rl12Ov2n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50B8FC116D0;
	Mon,  5 Jan 2026 22:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767650940;
	bh=OT7qGR+zPTIDPXBVfIEPEdBknDEX6cYQwoyWhOvgpVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rl12Ov2n1zZn5IpgQf2V965rF2qfv63NLcwKpCEBvkX1HCgORPIw6DXEnZ4JAzQHS
	 c0SbqcRq6RwxFRiCRjRc2OQs4+Xfn3z2a1yKY0vqODfTjvRn1CQ0kpR2kzZQc6K0bn
	 /0sxQBI82R0uZ2GzeKu1BS4pf1r+T6Bu4PCIeGbMk7JDicPSXhCoWCbmyzxR+Jm+kF
	 8l5+YnFuwcJxe/CDDpH7hqUMJCZ9qJM2mpOIC5ZV3wxbDPgb7Onc6ckfKTt9kqpeVu
	 PC7a1CKEnM7tPxN8UoqTwT2WALVL0SD04Pgmor851AefmwCMMdK9wqnLo4AffBF5kd
	 jZ7zAtFQgnedg==
Date: Mon, 5 Jan 2026 16:08:59 -0600
From: Rob Herring <robh@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: ti,control-phy-otghs: convert to DT
 schema
Message-ID: <20260105220859.GA3498531-robh@kernel.org>
References: <20260103-ti-phy-v1-1-8c3f5e2cbd63@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260103-ti-phy-v1-1-8c3f5e2cbd63@gmail.com>

On Sat, Jan 03, 2026 at 11:06:10AM +0000, Charan Pedumuru wrote:
> Convert TI OMAP Control PHY and PIPE3 PHY binding to YAML format.
> Changes during conversion:
> - Define a new pattern 'pciephy'and 'control-phy' to match nodes
>   defined in DT.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  .../bindings/phy/ti,control-phy-otghs.yaml         | 206 +++++++++++++++++++++
>  Documentation/devicetree/bindings/phy/ti-phy.txt   |  98 ----------
>  2 files changed, 206 insertions(+), 98 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
> new file mode 100644
> index 000000000000..830be2af5fb6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
> @@ -0,0 +1,206 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/ti,control-phy-otghs.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI PHYs for TI Platforms (OMAP Control PHY and PIPE3 PHY)
> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>

No, this should be a TI person or someone with the h/w.

> +
> +description:
> +  This device tree binding describes the TI PHYs used in TI platforms.
> +  Two types of PHYs are supported.
> +  1. OMAP Control PHY - Simple control PHYs for power control
> +  2. PIPE3 PHY - High-speed PIPE3 PHYs for USB3, SATA, PCIe
> +
> +properties:
> +  $nodename:
> +    pattern: "^(pciephy|control-phy|usb3phy|phy)(@[0-9a-fA-F]+)?$"

Only phy, pcie-phy, or usb3-phy are valid node names.

A-F is not valid for unit-addresses either.

> +
> +  compatible:
> +    oneOf:
> +      - description: OMAP Control PHY compatibles
> +        items:
> +          enum:
> +            - ti,control-phy-otghs
> +            - ti,control-phy-usb2
> +            - ti,control-phy-pipe3
> +            - ti,control-phy-pcie
> +            - ti,control-phy-usb2-dra7
> +            - ti,control-phy-usb2-am437
> +      - description: PIPE3 high-speed PHY compatibles
> +        items:
> +          enum:
> +            - ti,phy-usb3
> +            - ti,phy-pipe3-sata
> +            - ti,phy-pipe3-pcie
> +            - ti,omap-usb3

IMO, these 2 bindings are completely unrelated and should be split to 2 
schema files.

> +
> +  reg:
> +    minItems: 1
> +    maxItems: 4
> +
> +  reg-names:
> +    oneOf:
> +      - description: OMAP Control PHY
> +        items:
> +          enum: [otghs_control, power, pcie_pcs, control_sma]
> +      - description: PIPE3 high-speed PHY
> +        items:
> +          enum: [phy_rx, phy_tx, pll_ctrl]

Here's one example why.

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
> +# Optional Properties
> +  id:
> +    description:
> +      Instance ID for multiple instances of same PHY type.
> +      Used for multi-lane PCIe PHYs.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 1

There aren't any users of this that I see. Drop it (and note that in the 
commit msg).

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

I believe all these phandle props only apply to the PIPE3 binding.

Rob

