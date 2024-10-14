Return-Path: <devicetree+bounces-110825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7A699C119
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 09:18:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 906FDB2471F
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 07:18:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AEA314A4C7;
	Mon, 14 Oct 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFaLrK5q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2688314A0BC
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 07:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728890296; cv=none; b=qpWLue5Nfubx/Y7MMmVui61iREX1eAyTde68plBJOnW3f4mAk4RaKp4c0T+L+NVJTki19GHhs7Ap88mxQpnBArlIRx8OeEcKymHTM0FVEDuFGlySrmItDZa4rzd+71muR90x3CY8KAIbiGnWuTr89d49wTxTdg9l+jipq6mLcUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728890296; c=relaxed/simple;
	bh=S1utHm/xnR4E60uk3XBCaXk9y0n3j7/N34HZYkGL7vo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W2WZqvYRB5w7EGa8kTJ0Tuxu3nCyIP1cFT9APsf4ik0FEGBEa7VXjbHykaN+Wqa3iZoUnT4I8CzGx82qcoQKXnqsdM8SkSZVN572aDMKjitHOpgEwWMBepq1isp9/PP3GkFGbzc2XOVTwJjENTzwFJrFfTGL682VayYhVJVNX8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFaLrK5q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8807EC4CEC3;
	Mon, 14 Oct 2024 07:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728890295;
	bh=S1utHm/xnR4E60uk3XBCaXk9y0n3j7/N34HZYkGL7vo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RFaLrK5qrJ/MeNuLMqikMSYb+aMVUNZoDzWDnBTmGvaHqz0PMeYE4xkicaz2OQwdd
	 NWglYcrQlQbsmVA4LFcvKC2eWljEgLjA9fWOGXG4qlzIVrZxwQbpULnKLjrfVuMM67
	 0SZS8ZpeAJt/aFD5WeurNUX1OYZbhOD7a1Xed2lDgbp1HWNWq6qMRgI0Cyqeodee7J
	 XtjlXcV/+lD6q6iraGmH/j/IMAd/abBesH34K6nBVZA/U2um7jwd/so1Y+z0CXcvdM
	 iSwTMdgyQ2sEBw9h0wBVD+IxYY43L+Z6MLmAamsgT8x1tMpRCE5MLHzukFAaf2QmSs
	 uGWC8sSytaW1A==
Date: Mon, 14 Oct 2024 09:18:11 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, chris.packham@alliedtelesis.co.nz
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Message-ID: <sck3hvr6vtdsnseyzdoxdwasd47c7m5yzavpyodc7rj3cwbu26@kqxistduok3u>
References: <20241012134834.1306992-1-markus.stockhausen@gmx.de>
 <20241012134834.1306992-2-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241012134834.1306992-2-markus.stockhausen@gmx.de>

On Sat, Oct 12, 2024 at 09:48:33AM -0400, Markus Stockhausen wrote:
> Add bindings for the SerDes of the Realtek Otto platform. These are
> MIPS based network Switch SoCs with up to 52 ports divided into four
> different model lines.
> 
> Changes in v3
> 

<form letter>
This is a friendly reminder during the review process.

It seems my or other reviewer's previous comments were not fully
addressed. Maybe the feedback got lost between the quotes, maybe you
just forgot to apply it. Please go back to the previous discussion and
either implement all requested changes or keep discussing them.

Thank you.
</form letter>

>  - renamed to realtek,rtl8380m-serdes.yaml
>  - removed parameter controlled-ports
>  - verified with make dt_binding_check
>  - recipient list according to get_maintainers
> 
> Changes in v2:
> 
>  - new subject
>  - removed patch command sequences
>  - renamed parameter controlled-ports to realtek,controlled-ports
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
>  .../bindings/phy/realtek,rtl8380m-serdes.yaml | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> new file mode 100644
> index 000000000000..c1deef8ec63c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/realtek,rtl8380m-serdes.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek Otto SerDes controller
> +
> +maintainers:
> +  - Markus Stockhausen <markus.stockhausen@gmx.de>
> +
> +description:
> +  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL930x
> +  and RTL931x series have multiple SerDes built in. They are linked to single,
> +  quad or octa PHYs like the RTL8218B, RTL8218D or RTL8214FC and are one of
> +  the integral part of the up-to-52-port switch architecture. Although these
> +  SerDes controllers have common basics they are designed differently in the
> +  SoC families.
> +
> +properties:
> +  $nodename:
> +    pattern: "^phy@[0-9a-f]+$"
> +
> +  compatible:
> +    items:
> +      - enum:
> +          - realtek,rtl8380m-serdes
> +          - realtek,rtl8392m-serdes
> +          - realtek,rtl9302b-serdes
> +          - realtek,rtl9311-serdes
> +
> +  reg:
> +    items:
> +      description:
> +        The primary register memory location. On RTL83xx devices this is the
> +        address to the I/O register range, on RTL93xx devices this is the
> +        address of the MDIO style command/data registers.

Not much improved, still missing constraints.

I don't understand why you introduce changes like this.


> +
> +  "#phy-cells":
> +    const: 4
> +    description:
> +      The first number defines the SerDes to use. The second number a linked
> +      SerDes. E.g. if a octa 1G PHY is attached to two QSGMII SerDes. The third
> +      number is the first switch port this SerDes is working for, the fourth
> +      number is the last switch port the SerDes is working for.
> +
> +  firmware-name:
> +    maxItems: 1
> +    description:
> +      An alternative name of the SerDes firmware image file located in the
> +      firmware search path. Set to "" to disable firmware loading.

Missing property, not empty string, should rather indicate unneeded
firmware.

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    serdes: phy@1b00e780 {
> +      compatible = "realtek,rtl9302b-serdes";
> +      reg = <0x1b0003b0 0x8>;

This does notmatch unit address... and again: this was not an issue in
previous version. Your new versions of patchset introduce errors and
bugs. This is not how the process should look like. Review should
improve the patch, not reduce its quality.

Please start carefully reviewing your changes *before* you post.

Best regards,
Krzysztof


