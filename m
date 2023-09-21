Return-Path: <devicetree+bounces-2171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 556D87A9C56
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:15:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4170EB22D5B
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:11:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5EEE168C2;
	Thu, 21 Sep 2023 18:20:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B57024E26F
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:20:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A5E5C433C7;
	Thu, 21 Sep 2023 18:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695320410;
	bh=F7FOmZJGIZea3PDFeMXSNL3wD06ectqhotbY/CYvQks=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gcrZlu1OoqwfasuSssDAxLOCRvqJmyVmQChzusvlYR8QPU7Zzl9UKSTMk3D9DZ7it
	 MwoxrJ+pSxuduTRLsqGaciU8U/7IwTkj/okC+SktMnxUm6pBDNdXoBpRN9UbS2LYwx
	 GUaJF0XjITZrbG8fDh0+gxRYAqerHh9UYlA6BIVoL0iteOZXgotzm9WR2oWUNanZqT
	 JW2mryDuv01/LdooWc4APsPKALCXkNxADgfc7Hx/I2LnNXy18SJymxQCnsUeelAyx9
	 32s3745804OphWhgnApJhk3blLfh4/BwkShCyTU1poJzkvUDWpnFBmYWMMhzvBiyDs
	 FcoEr4BDF895A==
Received: (nullmailer pid 762555 invoked by uid 1000);
	Thu, 21 Sep 2023 18:20:07 -0000
Date: Thu, 21 Sep 2023 13:20:07 -0500
From: Rob Herring <robh@kernel.org>
To: Alvin =?utf-8?Q?=C5=A0ipraga?= <alvin@pqrs.dk>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, =?utf-8?B?77+9aXByYWdh?= <alsi@bang-olufsen.dk>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Rabeeh Khoury <rabeeh@solid-run.com>, Jacob Siverskog <jacob@teenage.engineering>, Sergej Sawazki <sergej@taudac.com>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: clock: si5351: add PLL reset mode
 property
Message-ID: <20230921182007.GA761604-robh@kernel.org>
References: <20230920140343.2329225-1-alvin@pqrs.dk>
 <20230920140343.2329225-3-alvin@pqrs.dk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230920140343.2329225-3-alvin@pqrs.dk>

On Wed, Sep 20, 2023 at 03:09:54PM +0200, Alvin Šipraga wrote:
> From: Alvin Šipraga <alsi@bang-olufsen.dk>
> 
> For applications where the PLL must be adjusted without glitches in the
> clock output(s), a new silabs,pll-reset-mode property is added. It
> can be used to specify whether or not the PLL should be reset after
> adjustment. Resetting is known to cause glitches.
> 
> For compatibility with older device trees, it must be assumed that the
> default PLL reset mode is to unconditionally reset after adjustment.
> 
> Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> Cc: Rabeeh Khoury <rabeeh@solid-run.com>
> Cc: Jacob Siverskog <jacob@teenage.engineering>
> Cc: Sergej Sawazki <sergej@taudac.com>
> Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
> ---
>  .../bindings/clock/silabs,si5351.yaml         | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/silabs,si5351.yaml b/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
> index 3ca8d998c48c..b6692b323a66 100644
> --- a/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
> +++ b/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
> @@ -50,6 +50,22 @@ properties:
>        Pair of <number source> for each PLL. Allows to overwrite clock source of
>        PLL A (number=0) or PLL B (number=1).
>  
> +  silabs,pll-reset-mode:
> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +    minItems: 1
> +    maxItems: 2
> +    description: |
> +      Pair of <number mode> for each PLL. Configures the reset mode for PLL A
> +      (number=0) and/or PLL B (number=1). Mode can be one of:
> +
> +      0 - reset whenever PLL rate is adjusted (default mode)
> +      1 - do not reset when PLL rate is adjusted
> +
> +      In mode 1, the PLL is only reset if the silabs,pll-reset is specified in
> +      one of the clock output child nodes that also sources the PLL. This mode
> +      may be preferable if output clocks are expected to be adjusted without
> +      glitches.

Same comments as the other matrix property.

> +
>  patternProperties:
>    "^clkout@?[0-8]$":
>      type: object
> @@ -205,6 +221,9 @@ examples:
>          /* Use XTAL input as source of PLL0 and PLL1 */
>          silabs,pll-source = <0 0>, <1 0>;
>  
> +        /* Don't reset PLL1 on rate adjustment */
> +        silabs,pll-reset-mode = <1 1>;
> +
>          /*
>           * Overwrite CLK0 configuration with:
>           * - 8 mA output drive strength
> -- 
> 2.41.0
> 

