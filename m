Return-Path: <devicetree+bounces-2818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 126597ACB23
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:47:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1E84D2813CC
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 17:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7181EDDA9;
	Sun, 24 Sep 2023 17:47:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A75BD280
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 17:47:42 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::222])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 797F0FB;
	Sun, 24 Sep 2023 10:47:39 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 52B3D40002;
	Sun, 24 Sep 2023 17:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1695577657;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RFE+cgklfTRHAwkckKPBu2omU1bX26+xQGYNfdliYZ8=;
	b=lDH3OnvX81oVTST6igjVoTJonxNAJDsYvbOXFVAYcpYuT8kxwhixzQsu8di56TQb7gOgzO
	H2tEiwqK3U2gmRDEdAbohek2/5QZ4fXs4aUuw87gXrYfO69a+IFHyU6ZsM+aH6/REtE0ZM
	Qni07UByfsGIBMI+3r2QsSU1SjBZDlIm5SXCWJ+xi3LUQk507buzIXWvk2vpFvK3nvPy8N
	3oMvMSXrFjRFuBRTCZftOOasojiecE59c3tugkYKURo1RAiVr1whRwOMNmfY8flRYmVHgQ
	FEZBYLm8RTMIDIWZjM/xiUnR4ZYZA68p3L27hxkZdtOE75if5X/laVVWQFZjsw==
Date: Sun, 24 Sep 2023 19:47:32 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Nik Bune <n2h9z4@gmail.com>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	nicolas.ferre@microchip.com, claudiu.beznea@microchip.com,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: watchdog: atmel,at91rm9200-wdt: convert
 txt to yaml
Message-ID: <20230924174732990a62f8@mail.local>
References: <20230924172004.59208-1-n2h9z4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230924172004.59208-1-n2h9z4@gmail.com>
X-GND-Sasl: alexandre.belloni@bootlin.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello Nik,

On 24/09/2023 19:20:04+0200, Nik Bune wrote:
> Convert txt file to yaml.
> 
> Signed-off-by: Nik Bune <n2h9z4@gmail.com>
> ---
> 
> Changes in v2:
> - Removed unnecessary copyright. 
> - Added blank line between properties.
> - Updated maintenance list. 
> - Added ref to watchdog 
> - Fixed compatible value.
> 
> v1 patch: https://lore.kernel.org/linux-devicetree/20230916154826.84925-1-n3q5u8@yahoo.com/
> related unapplied patch: https://lore.kernel.org/linux-devicetree/20230525125602.640855-5-claudiu.beznea@microchip.com/
> 
>  .../watchdog/atmel,at91rm9200-wdt.yaml        | 33 +++++++++++++++++++
>  .../watchdog/atmel-at91rm9200-wdt.txt         |  9 -----
>  2 files changed, 33 insertions(+), 9 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml b/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
> new file mode 100644
> index 000000000000..37fa9a62eaac
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
> @@ -0,0 +1,33 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/atmel,at91rm9200-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel AT91RM9200 System Timer Watchdog
> +
> +maintainers:
> +  - Nicolas Ferre <nicolas.ferre@microchip.com> 

There is a trailing whitespace here.

> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +properties:
> +  compatible:
> +    const: atmel,at91rm9200-wdt
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    watchdog@fffffd00 {
> +        compatible = "atmel,at91rm9200-wdt";
> +        reg = <0xfffffd00 0x10>;
> +    };
> diff --git a/Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt b/Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt
> deleted file mode 100644
> index d4d86cf8f9eb..000000000000
> --- a/Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt
> +++ /dev/null
> @@ -1,9 +0,0 @@
> -Atmel AT91RM9200 System Timer Watchdog
> -
> -Required properties:
> -- compatible: must be "atmel,at91sam9260-wdt".
> -
> -Example:
> -	watchdog@fffffd00 {
> -		compatible = "atmel,at91rm9200-wdt";
> -	};
> -- 
> 2.34.1
> 

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

