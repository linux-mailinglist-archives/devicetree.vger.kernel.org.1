Return-Path: <devicetree+bounces-139008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A06A13A82
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:09:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E30A188B914
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 13:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 806121F37C6;
	Thu, 16 Jan 2025 13:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgyCvMbK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543B01E766F;
	Thu, 16 Jan 2025 13:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737032891; cv=none; b=dbPjjGUeKD9LJnb4PkAT7PlJtOskfbC79+gLpFJqE34HHbadEkChKcKl6JIft3o8K3opw96YvRQJVqzHw/RS/KDAlas8KQ3VrZ+pHd2VgZ2arhf/cgDocdgMpx6fHq9PZTSBJqCcslBNyYy0DzUC+XoIyDxmJEnzEaNcz9ckcIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737032891; c=relaxed/simple;
	bh=odvMQVbU9ufN8gBiaClCLD96/SWVckwJ41GyrRYtA5g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VEVkaVMCiwUdyvJMVDDUOQMKWPGf8bntz7YhESKrUevFVnMM1XuJ6cQg8yMerspUX9p7cysWB+rPDVxKJ6SL4H+C7XBtgpD2PHeMpYVKNf+mecVf+HvNjWkbDWonvLrAKjBQuTVyenDaLWZEwNWvuN/FOWkOFz40AktAaSvTgRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgyCvMbK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86669C4CED6;
	Thu, 16 Jan 2025 13:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737032890;
	bh=odvMQVbU9ufN8gBiaClCLD96/SWVckwJ41GyrRYtA5g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=EgyCvMbKpZg4goWG4Ef+VKveLj1A/XkiLFKBUArqlRWgvFfnZVKgnoyk9t338jOxs
	 /NOs55cOBLDFoYyejnFy94dTHcpI2ClZxZIar3UjEqyfqSmaAWSHXVPuUKuzBic6eJ
	 2fwxw2VKkWs30yMVyj/akRdLe63ujYWzfDAiIu8mDuBtoJhYIT1eC8ahmvR9p1Rx7j
	 Vg0wpGzB9ZbiZJCpdL1zPEhk4+Mn+o2KelVX5KVmDe55Ytiy7E9a0CPH6EGXeWULz3
	 zTkyO4TRGdPOS+4LAMy23zEdFe7klbJKMXGhR3/CyAgwRfrhGy9KRycHmT9zpw5OyU
	 Rqtd7moggpBCg==
Message-ID: <fe006de3-16eb-4c20-8e8e-da5ff5531c6f@kernel.org>
Date: Thu, 16 Jan 2025 14:08:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1 2/6] dt-bindings: phy: rockchip: add rk3328 usb3
 phy
To: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: zyw@rock-chips.com, kever.yang@rock-chips.com, frank.wang@rock-chips.com,
 william.wu@rock-chips.com, wulf@rock-chips.com,
 linux-rockchip@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
 <20250115012628.1035928-3-pgwipeout@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20250115012628.1035928-3-pgwipeout@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/01/2025 02:26, Peter Geis wrote:
> Add documentation for the usb3 phy as implemented on the rk3328 SoC.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
> 
>  .../bindings/phy/rockchip,inno-usb3phy.yaml   | 166 ++++++++++++++++++
>  1 file changed, 166 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml
> new file mode 100644
> index 000000000000..cde489ca87ab
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml
> @@ -0,0 +1,166 @@
> +# SPDX-License-Identifier: GPL-2.0-only

Wrong license.

Please run scripts/checkpatch.pl and fix reported warnings. After that,
run also `scripts/checkpatch.pl --strict` and (probably) fix more
warnings. Some warnings can be ignored, especially from --strict run,
but the code here looks like it needs a fix. Feel free to get in touch
if the warning is not clear.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/rockchip,inno-usb3phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip USB 3.0 phy with Innosilicon IP block

> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3328-usb3phy

Why is this binding entirely different than existing usb2 phy? Nothing
in common? This looks like made for driver and both - driver and binding
- duplicating a lot.

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 3

Drop

> +    maxItems: 3
> +
> +  clock-names:
> +    items:
> +      - const: refclk-usb3otg

ref

> +      - const: usb3phy-otg

otg

> +      - const: usb3phy-pipe

pipe

> +
> +  interrupts:
> +    minItems: 4

You code here randomly. reg has only maxItems, clocks have both and this
have only minItems. Does not make sense. If you get it wrong, I would
assume you repeat the same mistake but here it is like randomly chosen
pieces. And this is making me wonder whether this was not sent too fast.

Anyway: only maxItems.


> +
> +  interrupt-names:
> +    items:
> +      - const: bvalid
> +      - const: id
> +      - const: linestate
> +      - const: rxdet
> +
> +  resets:
> +    minItems: 6

maxItems instead

> +
> +  reset-names:
> +    items:
> +      - const: usb3phy-u2-por
> +      - const: usb3phy-u3-por
> +      - const: usb3phy-pipe-mac
> +      - const: usb3phy-utmi-mac
> +      - const: usb3phy-utmi-apb
> +      - const: usb3phy-pipe-apb
> +
> +  "#address-cells":
> +    const: 2
> +
> +  "#size-cells":
> +    const: 2
> +
> +  ranges: true
> +
> +patternProperties:
> +

Drop blank line

> +  utmi-port@[0-9a-f]+$:

This wasn't tested. Missing quotes, missing starting anchor.

> +    type: object

Explain what are the children here - description.


> +    additionalProperties: false
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - rockchip,rk3328-usb3phy-utmi
> +
> +      reg:
> +        maxItems: 1
> +
> +      "#phy-cells":
> +        const: 0

Does not look correct. Your parent device is the phy, not child. Why do
you create children per each type of phy?

> +
> +      phy-supply:
> +        description:
> +          Phandle to a regulator that provides power to VBUS.
> +          See ./phy-bindings.txt for details.
> +
> +    required:
> +      - compatible
> +      - reg
> +      - "#phy-cells"
> +
> +  pipe-port@[0-9a-f]+$:
> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - rockchip,rk3328-usb3phy-pipe
> +
> +      reg:
> +        maxItems: 1
> +
> +      "#phy-cells":
> +        const: 0
> +
> +      phy-supply:
> +        description:
> +          Phandle to a regulator that provides power to VBUS.
> +          See ./phy-bindings.txt for details.

Drop "see ....".

> +
> +    required:
> +      - compatible
> +      - reg
> +      - "#phy-cells"
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - interrupt-names
> +  - resets
> +  - reset-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3328-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    soc {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      usb3phy: usb3-phy@ff460000 {
> +        compatible = "rockchip,rk3328-usb3phy";
> +        reg = <0x0 0xff460000 0x0 0x10000>;
> +        clocks = <&cru SCLK_REF_USB3OTG>, <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;

That's way over the limit. Wrapping is at 80.

> +        clock-names = "refclk-usb3otg", "usb3phy-otg", "usb3phy-pipe";
> +        interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "bvalid", "id", "linestate", "rxdet";




Best regards,
Krzysztof

