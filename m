Return-Path: <devicetree+bounces-188784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA65AE568D
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 00:21:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2E091C21ADF
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 22:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28581223DF0;
	Mon, 23 Jun 2025 22:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c13ETHG2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038B015ADB4
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 22:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750717259; cv=none; b=PF9wyY4P4w25MbT+q919aMeYYfjCexpIM92IRPG3vRKO5aCQ26mmbHgdSaKpP0QV3Vd51a48NpWYSawwNgXMtZQJWkUpgvpKg+k2HU4PfwL9BR+np4sBAmDMVRZNHDha1fjwTBvcAFG9VurCiGsMJROhFLUa7u4R1BqH8rvTdgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750717259; c=relaxed/simple;
	bh=0MH3Bllr4lLXd9P1E6B6EXf1T5wZ2u6mb+nmVUmdayo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KkQyZqFJNP6PbHOg1gwIPPIchmaeCc2M/iV/iB+gT5Hh5EUgeEk3bn5J0pitx/6qn0VTCSGOaaCkGJSh2fwBhto/fuXLUoyP2ea2D1s94Iv/JIpA62sJNAXaIKvuEP6pYDnYMrsAubY7hfwlCpjDZLf6qV1upeOEgB3gdJTDGVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c13ETHG2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B264C4CEEA;
	Mon, 23 Jun 2025 22:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750717258;
	bh=0MH3Bllr4lLXd9P1E6B6EXf1T5wZ2u6mb+nmVUmdayo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c13ETHG2YACUqID8tfYVRMtIRnaCFRQASWY5/w7GsTfGBo8AARnqvIWycAuBDlVBy
	 0pH5jOQZFOd5eKmoEN/YKoUtELZhqTK51pfwD71/LQ1eLt0e7nWRtkukR5SwNCnrBM
	 CHX5YebqGotGiJ6g3MPOwNhNQFjoJ6nu/HO3ebATTa4azJqticLg0z95ztufH5KyMX
	 qHbYCI0h+nFqUCtwQRHltee5skfi0L98E2R/PKiUQgUsagcIct6vq5t/BoIbfGS3MK
	 Cw9eZLk5pmF/cvjVxGzVbEnakGyrXNcZOp336gjhFurMp2OvlLmhpEOJz3mnqWe1uM
	 sYWpClRzYa5sA==
Date: Mon, 23 Jun 2025 17:20:57 -0500
From: Rob Herring <robh@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: krzysztof.kozlowskii+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: net: convert socfpga-dwmac.txt to DT schema
Message-ID: <20250623222057.GA1259495-robh@kernel.org>
References: <20250621034401.586780-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250621034401.586780-1-dinguyen@kernel.org>

On Fri, Jun 20, 2025 at 10:44:01PM -0500, Dinh Nguyen wrote:
> Convert the socfpga-dwmac.txt to yaml.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  .../bindings/net/altr,dwmac-socfpga.yaml      | 152 ++++++++++++++++++
>  .../devicetree/bindings/net/socfpga-dwmac.txt |  57 -------
>  2 files changed, 152 insertions(+), 57 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/socfpga-dwmac.txt
> 
> diff --git a/Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml b/Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
> new file mode 100644
> index 000000000000..fc088bd55178
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
> @@ -0,0 +1,152 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Intel/Altera SoCFPGA DWMAC controller
> +
> +maintainers:
> +  - Dinh Nguyen <dinguyen@kernel.org>
> +

You'll need a custom 'select' to avoid matching on the common compatible 
strings.

> +properties:
> +  compatible:
> +    additionalItems: true
> +    maxItems: 3
> +    items:
> +      - enum:
> +          - altr,socfpga-stmmac
> +          - altr,socfpga-stmmac-a10-s10
> +    contains:
> +      enum:
> +        - snps,dwmac-3.74a
> +        - snps,dwmac-3.70a
> +        - snps,dwmac

Need to define the exact combinations of compatible strings which are 
valid.

> +
> +  reg:
> +    items:
> +      - description: Base DWMAC registers

Just 'maxItems: 1'

> +
> +  iommus:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: MAC host clock
> +      - description: MAC timer clock
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 2
> +    contains:
> +      enum:
> +        - stmmaceth
> +        - ptp_ref

'contains' passes if either of these strings is present and allows 
anything for the 2nd string. Use 'items' instead and define the exact 
order and entries.

> +
> +  resets:
> +    minItems: 1
> +    items:
> +      - description: GMAC stmmaceth reset
> +      - description: AHB reset
> +
> +  reset-names:
> +    oneOf:
> +      - items:
> +          - enum: [stmmaceth, ahb]

Drop this and add 'minItems: 1' below.

> +      - items:
> +          - const: stmmaceth
> +          - const: ahb
> +
> +  interrupts:
> +    items:
> +      - description: DWAC interrupt

typo.

> +
> +  interrupt-names:
> +    items:
> +      - const: macirq
> +
> +  mac-address: true

Drop

> +
> +  phy-mode:
> +    maxItems: 1
> +    items:
> +      enum:
> +        - rgmii
> +        - gmii
> +        - mii
> +
> +  tx-fifo-depth:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: DWMAC Tx fifo depth(Stratix10, Agilex)
> +
> +  rx-fifo-depth:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: DWMAC Rx fifo depth(Stratix10, Agilex)

Already defined in ethernet-controller.yaml. Drop unless you have 
additional constaints on them.

> +
> +  snps,multicast-filter-bins:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Number of multicast filter hash bins supported by this device
> +      instance

Already defined in snps,dwmac.yaml. Drop unless you have additional 
constaints on it.

> +
> +  altr,sysmgr-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to the sysmgr node
> +          - description: register offset that controls the SDMMC clock phase
> +          - description: register shift for the smplsel(drive in) setting
> +    description:
> +      Should be the phandle to the system manager node that
> +      encompasses the glue register, the register offset, and the register shift.
> +      On Cyclone5/Arria5, the register shift represents the PHY mode bits, while
> +      on the Arria10/Stratix10/Agilex platforms, the register shift represents
> +      bit for each emac to enable/disable signals from the FPGA fabric to the
> +      EMAC modules.
> +
> +  altr,emac-splitter:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Should be the phandle to the emac splitter soft IP node if DWMAC
> +      controller is connected emac splitter.
> +
> +  altr,sgmii-to-sgmii-converter:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the TSE SGMII converter.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - phy-mode
> +
> +allOf:
> +  - $ref: snps,dwmac.yaml#
> +
> +additionalProperties: false

unevaluatedProperties: false

> +
> +examples:
> +  - |
> +    soc {
> +        #address-cells = <1>;
> +        #size-cells = <1>;

Don't need this node.

> +
> +        gmac0: ethernet@ff700000 {
> +            compatible = "altr,socfpga-stmmac", "snps,dwmac-3.70a", "snps,dwmac";
> +            altr,sysmgr-syscon = <&sysmgr 0x60 0>;
> +            reg = <0xff700000 0x2000>;
> +            interrupts = <0 115 4>;
> +            interrupt-names = "macirq";
> +            mac-address = [00 00 00 00 00 00];/* Filled in by U-Boot */
> +            clocks = <&emac_0_clk>;
> +            clock-names = "stmmaceth";
> +            phy-mode = "rgmii";
> +            tx-fifo-depth = <16384>;
> +            rx-fifo-depth = <16384>;
> +       };
> +    };

