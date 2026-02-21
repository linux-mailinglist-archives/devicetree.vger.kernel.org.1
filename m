Return-Path: <devicetree+bounces-267132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qL99LugYmmlYYgMAu9opvQ
	(envelope-from <devicetree+bounces-267132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 21:43:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E4816DD3C
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 21:43:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EFB3A3034DC1
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 20:43:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13777369209;
	Sat, 21 Feb 2026 20:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2nbDrKY0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com [209.85.167.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86014309EEB
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 20:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771706589; cv=none; b=nkwslQSwF7XJank0IsWi/Vb/sTnccSnzJq2PmoP08r8ixbpEp/w7hKgTw4t3CdHFc0YPHKOax37YWm+wREafODhOc+tJ9WJZWulJAGYo/mkaASA72n2/TeXNscQFjm7FyPr++OCMyGNrk3vG78tpTIyLpi8Lwox38vy3CCW1h5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771706589; c=relaxed/simple;
	bh=VE6eeUmX/aNvzhie5dJ8Y2YArM7BifAAR7+HRiM4tNg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dlyAEomRAyAoGarknC2i7xyNdanG05OoZ87RBHT5P2ttXrrjd+7QdUmoDo1iDRhTYLyclCZQk04NuHYuvoB1axXinZFGBmM2/LEOTfTefbnfxQSwYBWGodbo1NggwdLivOnlHP4TyKUu/+HSON2+1CyOeDXyIQgdA7njnvlK/zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2nbDrKY0; arc=none smtp.client-ip=209.85.167.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f193.google.com with SMTP id 5614622812f47-46391e91e16so2015560b6e.3
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 12:43:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771706584; x=1772311384; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PvKpCMRTgeYg3+BVQGMPDnKEFwtzJ8PAAHOztYiNYDo=;
        b=2nbDrKY0kyRpoilQYVhLaLfwZd6VVtXv5zZNkbCC2pMKfksSARf+5HJNceyy9PdTfS
         XcQtyNd6vF+/X1si0Z+YX0b1WvfcV3O5TdbP8SM4SfPUaw7nUbU+DtpcxBHk98p7nCha
         5cLTcls9B/FTXezpZUm6II9+vlyfvNoFnu9Cvq2ggTsy3Kg5hDWDpL22EWLLPQTrCa34
         0Q9KAjgSOF56pXgq4m3c/KYYNBkHnnTDfl37aXfy0jv7Br4ymaT5r2BmZPA1rBffkqAi
         6T6vYieKfVkiT56rU9ocHlu+77KmIKLcFd0Wst4GjjqO7BetAuXic3Ek1JUT0rPy/uqg
         oqdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771706584; x=1772311384;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PvKpCMRTgeYg3+BVQGMPDnKEFwtzJ8PAAHOztYiNYDo=;
        b=jm4zUacaMrvcX5kYK4A9t//+BvG4NQMiQgwueq7fAj+SgcLBu8HuxrGE6uVqpEZBvT
         qS3nnOxB9u8UQQb91HGjBsoGsIr2wmuqZM7yYJ4jbK0N7yPs2AyJTTe3IOlYG9PNrOQB
         K+dsQ2NXBt4nVNUxrGQ5shikKH9/88noKDKewTq/He/Jj6N4U7CSUUd3QW1jOOQi5Vl3
         bAZkxkpPBrfNxfHUC5PGKUgqrmOdJjjkjYQfoaIJ8pI1+mJ3UfIbkkMY9Iwk6BbKdNi5
         MMPT1XupVi62CQgf27w/Siufq4bs/Hi+46J1ZjO5mzFTCgsciKEXJhOgIJiLgZ7wdwJC
         8Ugw==
X-Forwarded-Encrypted: i=1; AJvYcCWa5mI69vUHQ2+Vf9WFsi68+3MH02wWjX0EyhArR1Ke6DASjdoy7+a/odmQOcvtZkQM+9aH+IwBXL9W@vger.kernel.org
X-Gm-Message-State: AOJu0YwuXtIBJA6mcltSsN+NXnLQzcnoarIGZmhDSPDlzNGbWuDpK8/0
	pvYUI/mX+zvhpbkPmHKq0ZBb4OOyAGYnDVf0S7+UTlsDhC5LtysuQgbPghrO5tOmgMQ=
X-Gm-Gg: AZuq6aJt7NqjpcPI56xjs6tnXmFmwwzAw5QZX3fgbKNRIrqKd9HwuQCIbS+cnfzP3ut
	9vRq11+DmkRNszR+OGHlTyJrcnsrhP8CPpHhB1AWeNd9lAJLOH38orA0ZmiXeRgf1zT9850m8v6
	bBNmBAjRcYU1LWLs6c3f8dwCSrAp0oyLUWwUfaJwWb21PJyLveeLU8PlHHeauM2bOSOLgsxe/Yk
	jYRZX2rbNj1bGsYP8JPhxcuXSYKN3gUwvz7RD/HRfxhvNLp1fCkAKxGdGbw0vmuddUzfFkB4NQS
	vdhprsjfev+h0rkZxbpZAco150b91i42U33PA6wpt7iuaalgGVs2Ab2bo8rVnvvCOfcmyw+WMcp
	8Hvn9GyDoj6dWtt0SMrpNCkwmCLL1UY0auhTRJYr71EK+xS5eIBefS+AolKnMMzI/xqbSwkvt2J
	saqT69UZKsfSVaNGTkVQIoPE3/2mRbF5YxVW2FuJfxMXdETlxXQ9gP7ORC12JjatRcrVKpkg==
X-Received: by 2002:a05:6808:5093:b0:45e:8554:1f14 with SMTP id 5614622812f47-464463ff054mr2361330b6e.59.1771706584270;
        Sat, 21 Feb 2026 12:43:04 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:611:96af:f385:64bf? ([2600:8803:e7e4:500:611:96af:f385:64bf])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4644a013cddsm2118373b6e.8.2026.02.21.12.43.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Feb 2026 12:43:03 -0800 (PST)
Message-ID: <41190a42-70ab-45b9-922f-317e792b25a0@baylibre.com>
Date: Sat, 21 Feb 2026 14:43:02 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/8] dt-bindings: iio: frequency: add ad9910
To: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <20260220-ad9910-iio-driver-v1-1-3b264aa48a10@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260220-ad9910-iio-driver-v1-1-3b264aa48a10@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267132-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,baylibre.com:mid,analog.com:url,analog.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 40E4816DD3C
X-Rspamd-Action: no action

On 2/20/26 10:46 AM, Rodrigo Alencar via B4 Relay wrote:
> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> DT-bindings for AD9910, a 1 GSPS DDS with 14-bit DAC. It includes
> configurations for the reference clock path, DAC current, reset and basic
> GPIO control.
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> ---
>  .../bindings/iio/frequency/adi,ad9910.yaml         | 236 +++++++++++++++++++++
>  MAINTAINERS                                        |   7 +
>  2 files changed, 243 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/frequency/adi,ad9910.yaml b/Documentation/devicetree/bindings/iio/frequency/adi,ad9910.yaml
> new file mode 100644
> index 000000000000..43b21d1428ba
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/frequency/adi,ad9910.yaml
> @@ -0,0 +1,236 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/frequency/adi,ad9910.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AD9910 Direct Digital Synthesizer
> +
> +maintainers:
> +  - Rodrigo Alencar <rodrigo.alencar@analog.com>
> +
> +description:
> +  The AD9910 is a 1 GSPS direct digital synthesizer (DDS) with an integrated
> +  14-bit DAC. It features single tone mode with 8 configurable profiles,
> +  a digital ramp generator, RAM control, OSK, and a parallel data port for
> +  high-speed streaming.
> +
> +  https://www.analog.com/en/products/ad9910.html
> +
> +properties:
> +  compatible:
> +    const: adi,ad9910
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    maximum: 70000000
> +
> +  clocks:
> +    maxItems: 1
> +    description:
> +      Reference clock input (REFCLK). When the PLL is enabled, this is
> +      multiplied by adi,pll-multiplier to produce the system clock.
> +      When the PLL is bypassed, the reference clock is used directly or divided
> +      by 2 based on adi,reference-div2-enable to produce the system clock.

Devicetree is just concerned with how it is wired up. The first
sentence is enough.

> +
> +  dvdd-io33-supply:
> +    description: 3.3V Digital I/O supply.
> +
> +  avdd33-supply:
> +    description: 3.3V Analog DAC supply.
> +
> +  dvdd18-supply:
> +    description: 1.8V Digital Core supply.
> +
> +  avdd18-supply:
> +    description: 1.8V Analog Core supply.
> +
> +  resets:
> +    minItems: 1
> +    maxItems: 2
> +
> +  reset-names:
> +    oneOf:
> +      - items:
> +          - const: dev
> +      - items:
> +          - const: dev
> +          - const: io

This could be a bit more clear. Does dev == MASTER_RESET pin?
And what about DAC_RSET?

> +
> +  reset-gpios:
> +    maxItems: 2
> +    description:
> +      GPIOs controlling the device reset and the I/O_RESET pins. This is only
> +      used if resets property is not defined.
> +
> +  powerdown-gpios:
> +    maxItems: 1
> +    description:
> +      GPIO controlling the EXT_PWR_DWN pin.
> +
> +  update-gpios:
> +    maxItems: 1
> +    description:
> +      GPIO controlling the I/O_UPDATE pin.
> +
> +  profile-gpios:
> +    minItems: 3
> +    maxItems: 3
> +    description:
> +      GPIOs controlling the PROFILE[2:0] pins for profile selection.
> +

Looks like possibly some interrupts as well: RAM_SWP_OVR and SYNC_SMP_ERR

> +  adi,pll-multiplier:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 12
> +    maximum: 127
> +    description:
> +      PLL feedback divider value (N). The system clock frequency is
> +      REFCLK * N. When not specified, the PLL is bypassed.

What determines the value that should be selected here? This doesn't seem like
something we would normally put in the devicetree. (Smells like configuration
rather than describing what is wired up.)

> +
> +  adi,pll-vco-select:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 5
> +    description: |
> +      VCO frequency range selection (0-5). When not specified and the PLL
> +      is enabled, the VCO range is automatically selected based on the
> +      computed system clock frequency. Typical VCO frequency ranges are:
> +      - Range 0: 370 MHz to 510 MHz (Auto-selected when <= 465 MHz)
> +      - Range 1: 420 MHz to 590 MHz (Auto-selected when > 465 MHz and <= 545 MHz)
> +      - Range 2: 500 MHz to 700 MHz (Auto-selected when > 545 MHz and <= 650 MHz)
> +      - Range 3: 600 MHz to 880 MHz (Auto-selected when > 650 MHz and <= 790 MHz)
> +      - Range 4: 700 MHz to 950 MHz (Auto-selected when > 790 MHz and <= 885 MHz)
> +      - Range 5: 820 MHz to 1050 MHz (Auto-selected when > 885 MHz)
> +

Same here. How does this depend on how the chip is wired up?

> +  adi,charge-pump-current-microamp:
> +    minimum: 212
> +    maximum: 387
> +    default: 387
> +    description:
> +      PLL charge pump current in microamps. Only applicable when the PLL
> +      is enabled. The value is rounded to the nearest supported step.
> +
> +  adi,refclk-out-drive-strength:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    enum: [ disabled, low, medium, high ]
> +    default: disabled
> +    description:
> +      Reference clock output (DRV0) drive strength. Only applicable when
> +      the PLL is enabled.
> +
> +  adi,reference-div2-enable:
> +    type: boolean
> +    description:
> +      Enable the reference clock input divider. When enabled, the input
> +      reference frequency is halved before deriving the system clock.
> +      This is only applicable when the PLL is bypassed.
> +
> +  adi,inverse-sinc-enable:
> +    type: boolean
> +    description:
> +      Enable the inverse sinc filter that compensates for the sinc roll-off
> +      of the DAC output. When it is enabled, the filter introduces up to 3 dB
> +      of insertion loss.
> +
> +  adi,sine-output-enable:
> +    type: boolean
> +    description:
> +      Select sine wave output from the DDS core. When not set, the
> +      output is a cosine wave.

And these last few are really getting into things that are typically
controlled by the IIO driver and not hard-coded.

> +
> +  adi,sync-clk-disable:
> +    type: boolean
> +    description:
> +      Disable the SYNC_CLK output pin. SYNC_CLK runs at one quarter
> +      of the system clock frequency.

Clock outputs should be described as clock-controller and #clock-cells.
The actual enabling/disabling can be done at runtime.

> +
> +  adi,pdclk-disable:
> +    type: boolean
> +    description:
> +      Disable the parallel data clock (PDCLK) output. PDCLK runs at
> +      one quarter of the system clock frequency.
> +
> +  adi,pdclk-invert:
> +    type: boolean
> +    description:
> +      Invert the polarity of the PDCLK output.
> +
> +  adi,tx-enable-invert:
> +    type: boolean
> +    description:
> +      Invert the polarity of the TX_ENABLE input pin.
> +
> +  adi,dac-output-current-microamp:
> +    minimum: 8640
> +    maximum: 31590
> +    default: 20070
> +    description:
> +      DAC full-scale output current in microamps.
> +
> +dependencies:
> +  adi,pll-vco-select: [ 'adi,pll-multiplier' ]
> +  adi,charge-pump-current-microamp: [ 'adi,pll-multiplier' ]
> +  adi,refclk-out-drive-strength: [ 'adi,pll-multiplier' ]
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - dvdd-io33-supply
> +  - avdd33-supply
> +  - dvdd18-supply
> +  - avdd18-supply
> +
> +dependentSchemas:
> +  resets:
> +    properties:
> +      reset-gpios: false
> +  reset-gpios:
> +    properties:
> +      resets: false

This seems too strict. Couldn't we have some resets from a reset
controller and others from gpios?

Or maybe the reset bindings are enough and we don't need the gpio
bindings for the same pin?

> +  adi,reference-div2-enable:
> +    properties:
> +      adi,pll-multiplier: false
> +  adi,pll-multiplier:
> +    properties:
> +      adi,reference-div2-enable: false
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        dds@0 {
> +            compatible = "adi,ad9910";
> +            reg = <0>;
> +            spi-max-frequency = <1000000>;
> +            clocks = <&ad9910_refclk>;
> +
> +            dvdd-io33-supply = <&vdd_io33>;
> +            avdd33-supply = <&vdd_a33>;
> +            dvdd18-supply = <&vdd_d18>;
> +            avdd18-supply = <&vdd_a18>;
> +
> +            reset-gpios = <&gpio 0 GPIO_ACTIVE_HIGH>,
> +                          <&gpio 1 GPIO_ACTIVE_HIGH>;
> +            powerdown-gpios = <&gpio 2 GPIO_ACTIVE_HIGH>;
> +            update-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
> +            profile-gpios = <&gpio 4 GPIO_ACTIVE_HIGH>,
> +                            <&gpio 5 GPIO_ACTIVE_HIGH>,
> +                            <&gpio 6 GPIO_ACTIVE_HIGH>;
> +
> +            adi,pll-multiplier = <40>;
> +            adi,charge-pump-current-microamp = <387>;
> +            adi,refclk-out-drive-strength = "disabled";
> +            adi,inverse-sinc-enable;
> +        };
> +    };
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 1251965d70bd..79b4180e2334 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1610,6 +1610,13 @@ W:	https://ez.analog.com/linux-software-drivers
>  F:	Documentation/devicetree/bindings/iio/dac/adi,ad9739a.yaml
>  F:	drivers/iio/dac/ad9739a.c
>  
> +ANALOG DEVICES INC AD9910 DRIVER
> +M:	Rodrigo Alencar <rodrigo.alencar@analog.com>
> +L:	linux-iio@vger.kernel.org
> +S:	Supported
> +W:	https://ez.analog.com/linux-software-drivers
> +F:	Documentation/devicetree/bindings/iio/frequency/adi,ad9910.yaml
> +
>  ANALOG DEVICES INC MAX22007 DRIVER
>  M:	Janani Sunil <janani.sunil@analog.com>
>  L:	linux-iio@vger.kernel.org
> 


