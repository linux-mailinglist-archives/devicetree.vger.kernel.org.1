Return-Path: <devicetree+bounces-141596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D39A218B2
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 09:13:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB48C3A681E
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 08:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32CDF19ADA2;
	Wed, 29 Jan 2025 08:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0KvxGZN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EE12F29;
	Wed, 29 Jan 2025 08:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738138390; cv=none; b=qEdEIKiuI0OqRpnhdI1AG2Otebsh3FeFh5HLH60KVqmbMZgEv1MZ1L8nd3iybCJXTpekweIl3lPn2ozVzGI+VgvpOH5Q5t62zAaKeVbLcrSLz1tVsJ/OmQMSnTJ/VFWlS121BVP1frn6rU+zbWdMlkdutBnbCHCb+aeZqdloOec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738138390; c=relaxed/simple;
	bh=lbo3t5sugwm+oOrpE6VWW61CU9LFvh/0XBikVI2WjHQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EmDv5Bsvk/4iQ+fNsrWkuLnEXfYC1sUG36zljockanZ23mODFQCNyoCGrpyeUVAr8Tu/9Hf9YsRxyJrzWbWG11MYYpTOHdCRTRCxX9Mi1RFcz4pjC36qMPUmtNARhGzha6kL8UvbZha6K0FeD0x19+wB6gdzkipLHwV9MytNZnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0KvxGZN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68C2FC4CED3;
	Wed, 29 Jan 2025 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738138389;
	bh=lbo3t5sugwm+oOrpE6VWW61CU9LFvh/0XBikVI2WjHQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s0KvxGZNnt5658TDCXz1u92A+19VLGg1a9XCEOm/sYaKlbRu4IP1DOkt5JuOaoPP/
	 D7vLNoHgOoB0zcCIgET+PMCLpPkujnegABPA0vCrrFnD2I8fO2Fx8uxABlLw4SSc9U
	 unniSXvXsJ9uMEvcRtqZ+J1+DpFRdyAfZadMZ7CnZMEBTu7gngkR4NrE0K61igJYCP
	 PaLx3+CbmPYCeAJGdLHmo5bXSe0s/iJsF1xB4e7B1XLIyPBGLV3OMlvEbXUe0uHFbe
	 ctZQKjJzXCQ144PkuKNROVovF4c3oUS+/b6bD3F8Uilf3IdWNDzKtKZcQ7caWR6rZ6
	 htmRJ+iabysZg==
Date: Wed, 29 Jan 2025 09:13:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andrei Simion <andrei.simion@microchip.com>
Cc: claudiu.beznea@tuxon.dev, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, broonie@kernel.org, nicolas.ferre@microchip.com, 
	alexandre.belloni@bootlin.com, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: misc: atmel,at91-ssc: Convert to YAML
 format
Message-ID: <20250129-vagabond-scrupulous-scorpion-b57db9@krzk-bin>
References: <20250128161842.44541-1-andrei.simion@microchip.com>
 <20250128161842.44541-2-andrei.simion@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250128161842.44541-2-andrei.simion@microchip.com>

On Tue, Jan 28, 2025 at 06:18:43PM +0200, Andrei Simion wrote:
> Convert devicetree binding atmel-ssc.txt to YAML format.
> 
> Signed-off-by: Andrei Simion <andrei.simion@microchip.com>
> ---
>  .../bindings/misc/atmel,at91-ssc.yaml         | 111 ++++++++++++++++++
>  .../devicetree/bindings/misc/atmel-ssc.txt    |  50 --------
>  2 files changed, 111 insertions(+), 50 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/misc/atmel,at91-ssc.yaml

Please place it in sound directory. Or soc if this is not ASoC, but
including dai-common is clear indication.

>  delete mode 100644 Documentation/devicetree/bindings/misc/atmel-ssc.txt
> 
> diff --git a/Documentation/devicetree/bindings/misc/atmel,at91-ssc.yaml b/Documentation/devicetree/bindings/misc/atmel,at91-ssc.yaml
> new file mode 100644
> index 0000000000000..a37ee5e58fa58
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/atmel,at91-ssc.yaml
> @@ -0,0 +1,111 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/misc/atmel,at91-ssc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel Serial Synchronous Serial (SSC)
> +
> +maintainers:
> +  - Andrei Simion <andrei.simion@microchip.com>
> +
> +description:
> +  The Atmel Synchronous Serial Controller (SSC) provides a versatile
> +  synchronous communication link for audio and telecom applications,
> +  supporting protocols like I2S, Short Frame Sync, and Long Frame Sync.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - atmel,at91rm9200-ssc
> +          - atmel,at91sam9g45-ssc
> +      - items:
> +          - const: microchip,sam9x7-ssc

This wasn't in the binding and your commit msg is silent. You need to
explain all changes done to the binding during conversion.

> +          - const: atmel,at91sam9g45-ssc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +
> +  dmas:
> +    items:
> +      - description: TX DMA Channel
> +      - description: RX DMA Channel
> +
> +  dma-names:
> +    description: Names of the DMA channels.

Drop description

> +    items:
> +      - const: tx
> +      - const: rx
> +
> +  atmel,clk-from-rk-pin:
> +    description:
> +      Specify the clock source for the SSC (Synchronous Serial Controller)
> +      when operating in slave mode. By default, the clock is sourced from
> +      the TK pin. Set this property to true to source the clock from

You cannot set this property to true. This can be present or can be
missing

> +      the RK pin instead, based on your hardware design requirements.
> +    type: boolean
> +

Missing dai-cells. Old binding said 0, now you say anything...

Missing required block

> +allOf:
> +  - $ref: ../sound/dai-common.yaml#

Full path, so /schemas/

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - atmel,at91sam9g45-ssc
> +    then:
> +      required:
> +        - compatible
> +        - reg
> +        - interrupts
> +        - dmas
> +        - dma-names

So only dmas?

> +        - clocks
> +        - clock-names
> +    else:
> +      required:
> +        - compatible
> +        - reg
> +        - interrupts
> +        - clocks
> +        - clock-names

Drop entire required:

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/at91.h>
> +    #include <dt-bindings/dma/at91.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    ssc@100000 {
> +       compatible = "atmel,at91sam9g45-ssc";
> +       reg = <0x100000 0x4000>;
> +       interrupts = <28 IRQ_TYPE_LEVEL_HIGH 5>;
> +       dmas = <&dma0 (AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1) |
> +                     AT91_XDMAC_DT_PERID(38))>,
> +              <&dma0 (AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1) |
> +                     AT91_XDMAC_DT_PERID(39))>;
> +       dma-names = "tx", "rx";
> +       clocks = <&pmc PMC_TYPE_PERIPHERAL 28>;
> +       clock-names = "pclk";

Make the binding complee - dai properties.

Best regards,
Krzysztof


