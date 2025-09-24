Return-Path: <devicetree+bounces-220633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D03B98B66
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 09:59:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C6C619C7283
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 07:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EFB427FD6D;
	Wed, 24 Sep 2025 07:59:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F10A16132A
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758700742; cv=none; b=Q1I4p0uKerKBVS52eb3KYDJ0XN8YmVvmqKHwW7IrrDKJgusna9zeQZwnylwl8iaPXc1C376CZ5FRuZwXle+SL/4RzJIExmBohosZglNpL/kkn9ne4fgKCSzCB3+i708lqmMMuo4bIamC9S1ATfbf855BZJtMF7it/bks/7an6jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758700742; c=relaxed/simple;
	bh=aWLfvJIhJGUp5ivux4F05IzZUz29wUscuHa27oPNgME=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oUZZseT4yVwLSGVXg1npv0f4ZtYdo03vVJt0/2VdRqB+JwmNf7sokfwjJ5OkG6KNWJ47X6D5ezBQEHtHo2vWETHiSaV3JwtmHvqxGBI2Z+SfZfUs+j2VWYA7UGIemOGMsevPHMHu/zMr3Kg77p3Hag4KAvxiIqSvWqvk++AUPVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-344618b80d0so2354830fac.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 00:59:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758700739; x=1759305539;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hh+Khf6unZqbzxNHEU+Ts8bq4BIxlEWA7Rzthe6aDww=;
        b=oKg+n/U3hzHJXSBMDPXC6hlH83sb9ArxsPL4eBB7yRezLrthHeKqBcLBMkYzoBZ8Vp
         v6LijpObKGwEdroVMOExMX9dpA6CMMr25vrgkYlJ2AxvvB7TzEhlcPHsfRdOyo+uY25S
         5mJ/6Fm7tv744RblPRDV/ZhCOWjKC8PaBH9296dp12yZDvD0oK6qv1Hdg83/XNqLtuK0
         pmmsqDEhvgjNFGsVmBEq14B5AA8sxdG9PLP7OFVs0/7HrRJiRGwFkI2tK/f6AEPdb6hZ
         doGnINJIjEpy6gDWU3gwEzMZtWGe4OqrlhcMVWQQD413w3iQ2WGIC+ylz7XRxndbW4R1
         RLJw==
X-Forwarded-Encrypted: i=1; AJvYcCXueDgLQkmBFmD03sK4jRlv75UnZAWCj4+i2nke1pqpeQU2APCtey4isHx4HcIeLkWFJJRbmv1yqdae@vger.kernel.org
X-Gm-Message-State: AOJu0YxfPlKaiZYklkO894YzeUgk7U0fAEJkur0TTOhERC1Pu1qX5Oq/
	3flWMnrxZwVjpF93FnKZjcTZKe2QupXW/jEdQmOVedQOOz95U+5sdZUmFMVBLNjq
X-Gm-Gg: ASbGncsBlfU38PbhfUaI5XVesY1QPu7zmFUcWbmFybFhY/nCkWmZMu9nBOiJGU5Bjn0
	xSrfPzf/4ta8IhhRIFxhkSD+1ZaPQCwcdz0EkO+YnHU2L48Bd3NG4rg2VzuyhzBg3kdfGH66SR6
	F/zcEekAwXl0JiCDu4bXwW3vv6Cr5t5WwSLZqGZypeRwBZjozCiDhQI7io3Qwofqt8ELRrCKyvb
	l6X2usjF6c37k38Ov/BvFPfBSXU53B8XSwTfgZafFEMn2n+O82iwHMAfWGPNWejnQQ362X/8LW4
	iwE+taPzmGO3IQxcj1GpYxmdswEkXm+9vNzv70qmM7sYGu859M/ioD4fsQK8AMwt1G9ukl1nEZj
	oYdt1G4En55ZMWjPU7HaFjLLYuiHnPkvFB9zrYr1IKAvKImJQK6eUvfWanRD1
X-Google-Smtp-Source: AGHT+IGbpAU0JenSHNHPPndJsMQ0T61/fleVg5v+fLx0ThR1FsUyoMxhmVwMdCmFLx+ULNKwofe70Q==
X-Received: by 2002:a05:6870:a093:b0:30c:2b4:e332 with SMTP id 586e51a60fabf-34c751c197bmr3744841fac.2.1758700739249;
        Wed, 24 Sep 2025 00:58:59 -0700 (PDT)
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com. [209.85.160.54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-343736accb1sm3524627fac.32.2025.09.24.00.58.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 00:58:59 -0700 (PDT)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-344618b80d0so2354822fac.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 00:58:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVxK24Z1NMBOGUW2nmdbngxOHvYNKgaPlagePvQdVFwDAFKd+mlXw0d4I7+h8Qqlczi966ZySX6eTmP@vger.kernel.org
X-Received: by 2002:a05:6102:6884:b0:569:93c9:b572 with SMTP id
 ada2fe7eead31-5a57695d27dmr1659602137.9.1758700290135; Wed, 24 Sep 2025
 00:51:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250923160524.1096720-1-cosmin-gabriel.tanislav.xa@renesas.com> <20250923160524.1096720-3-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20250923160524.1096720-3-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 24 Sep 2025 09:51:17 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVEDJZ6wdGZs_CDs=jLPV1u382o6=cZ1HfKQOffGf7jGw@mail.gmail.com>
X-Gm-Features: AS18NWCUnOtI9sni6QIPbp0MqkmfhYYAKBnwNUuJbeyYXQXVL2FCMeoJiSjFxRk
Message-ID: <CAMuHMdVEDJZ6wdGZs_CDs=jLPV1u382o6=cZ1HfKQOffGf7jGw@mail.gmail.com>
Subject: Re: [PATCH 2/7] dt-bindings: iio: adc: document RZ/T2H and RZ/N2H ADC
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-iio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Tue, 23 Sept 2025 at 18:06, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Document the A/D 12-Bit successive approximation converters found in the
> Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs.
>
> RZ/T2H has two ADCs with 4 channels and one with 6.
> RZ/N2H has two ADCs with 4 channels and one with 15.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/renesas,r9a09g077-adc.yaml
> @@ -0,0 +1,170 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/renesas,r9a09g077-adc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas RZ/T2H / RZ/N2H ADC12
> +
> +maintainers:
> +  - Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> +
> +description: |
> +  A/D Converter block is a successive approximation analog-to-digital converter
> +  with a 12-bit accuracy. Up to 15 analog input channels can be selected.

The documentation for several registers talks about bitmasks for ch0-ch15,
so the actual hardware block supports up to 16 channels.

> +  Conversions can be performed in single or continuous mode. Result of the ADC
> +  is stored in a 16-bit data register corresponding to each channel.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - renesas,r9a09g077-adc # RZ/T2H
> +      - renesas,r9a09g087-adc # RZ/N2H
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: A/D scan end interrupt
> +      - description: A/D scan end interrupt for Group B
> +      - description: A/D scan end interrupt for Group C
> +      - description: Window A compare match
> +      - description: Window B compare match
> +      - description: Compare match
> +      - description: Compare mismatch
> +
> +  interrupt-names:
> +    items:
> +      - const: adi
> +      - const: gbadi
> +      - const: gcadi
> +      - const: cmpai
> +      - const: cmpbi
> +      - const: wcmpm
> +      - const: wcmpum
> +
> +  clocks:
> +    items:
> +      - description: converter clock

Converter

> +      - description: peripheral clock

Peripheral

> +
> +  clock-names:
> +    items:
> +      - const: adclk
> +      - const: pclk
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  renesas,max-channels:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Maximum number of channels supported by the ADC.
> +      RZ/T2H has two ADCs with 4 channels and one with 6 channels.
> +      RZ/N2H has two ADCs with 4 channels and one with 15 channels.

According to the documentation, both SoCs have three instances?

I agree with Connor that this should be dropped: the same information
is available from the channel@N subnodes, and future SoCs could have
gaps in the numbering.

FTR, from a quick glance, it looks like this module is very similar
to the ADC on RZ/A2M, so I hope we can reuse the driver for that SoC.

> +patternProperties:
> +  "^channel@[0-9a-e]$":

0-9a-f

> +    $ref: adc.yaml
> +    type: object
> +    description: The external channels which are connected to the ADC.
> +
> +    properties:
> +      reg:
> +        description: The channel number.
> +        maximum: 14

15
But I don't think it is needed, as the dtc check for non-matching unit
addresses and reg properties should already enforce this.

> +
> +    required:
> +      - reg
> +
> +    additionalProperties: false
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,r9a09g077-adc
> +    then:
> +      properties:
> +        renesas,max-channels:
> +          enum: [4, 6]
> +
> +      patternProperties:
> +        "^channel@[6-9a-e]$": false

6-9a-f

> +        "^channel@[0-5]$":
> +          properties:
> +            reg:
> +              maximum: 5

Not needed as per above.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

