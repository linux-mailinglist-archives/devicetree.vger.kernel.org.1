Return-Path: <devicetree+bounces-218604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF3AB824DD
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 01:34:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A48A71C23036
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 23:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67FA13294FE;
	Wed, 17 Sep 2025 23:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fHD3+5rY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 968363101CE
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 23:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758152067; cv=none; b=uoMfaHuPbdxZToQW+mybF5Xhsqmut6tel0AuZ9lKE6koKVe5PNswWfEk5Ff9Gxwqm0l5TC48WPE8Hczwtx4qvfwNZihVJhieWmHCW2+layufEFy2SonD42o7rqT5+u0iG05yzVL4BEMH57S3nnftaXNjFIzc5V792tGlGByytkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758152067; c=relaxed/simple;
	bh=swWyIN+1pJbbIQJJjvJgyKEibOYxD+xzaD2IMHdTwP8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XfpAzyxZ3VPFf9FGcpA+dUrZ2oNt8Ziz8RK5MB6+Xa2D2S4EC6BgsDuBSb8d+83uMwYWlGgJWPVqbzG4n5TPeI4afy8BJaVqlJ77moHdZ/tdNtCAJ+GqWVJqyPLJaSBSEnL1oNafNv7CK+ex5GZagbRQIMa6PSBTWqYTNpFEJF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fHD3+5rY; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-74526ca7d64so418487a34.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 16:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758152063; x=1758756863; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZKhBLhOoADNGhrD1cnDjjtM0fyI+xW8dSVMWE/99mqc=;
        b=fHD3+5rYdQXWtZN9ttp8ggQRDm5yDRxNlGHZ29cm1jgrrVij0JbCSmK/esV8CgIpux
         Q+nDMl4iBLq1wlsZN8GcwCWAMLzlMo9aV/xwpJ72mB4JYqXeYG7be/Ibumi5hzfAxzb9
         bn/7GyZTLzOlLHvCn4lUkMBf9K7+I+0zl6ZiUcmQbV9JACLcLIIRjDgyT/vNisq+6dPb
         fQ6mf542fBi8iGUGKfVPIekKVaDHlMMgSrkcWmvmIhLQEnI33H1xyOFbbik7k+J95wTC
         6uJslYfxMdeXj++VxJrISTGdtZ7AjumAYrk/TF0fGN/IgSCfKAd54l0zNt4q8EtFVjCD
         PADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758152063; x=1758756863;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZKhBLhOoADNGhrD1cnDjjtM0fyI+xW8dSVMWE/99mqc=;
        b=Bplha5BsRZDaPVbgNEzM5DQayOdySVoZBf7lvkbwOSUhgYbH6LhjNg0FSfrcT9/4Zy
         Zc+SLPRfzVGSQfXLRw4RcBqX6UHRyQzx00ZQkkQdqyA4Hwn7TlLmv7KKyq1r8Z5vdajg
         egtYzJDXU0h9LQkWedYD4tj6ro8dwcCcFtVLDHFwz4MBFVQ6EIIbCx9oPlp1MLUR8V0v
         LPcApn2KGiTtogf3mrCQ/1BFZJZrIb9G1URmB4S1hWYewDsot+LDbm1ZERlyzfCx8bDs
         g9h9DMLIm/YmHqwz9FGn9zZDP7/zWdsbejRcnUNzqDgI2mSaZjOsc2Ot0BN3ytaVE0sI
         hOZA==
X-Forwarded-Encrypted: i=1; AJvYcCXVNHaPAHjXqszg9mzku64a1xO6rWqnBbK42u9Rez8bxGaha+r/lr/bq106B0ehJCwBN+rUpZJPJtuc@vger.kernel.org
X-Gm-Message-State: AOJu0Yyplt4uBdD472IkzaeoIW+Kz8XmJDugiA03GkwHI2noiKWeKcVK
	OtBAZX0gFScoJJCPkkvGS1nis4EQpd3TsSZpwQVbj9icYMBQgd40hiRvMd1/wuhXkCM=
X-Gm-Gg: ASbGncth/kuPwR8vniP95cTV8u8D3h2r37y/EkGHgrvI5ENGhvtoWAOzQ7FA9/tUmZ0
	rAYSb82xzKCGdTGh0E1Zge+1vcnovpX738rmt63gmL0qxNR0CbCkHq3RbasTK7lt+Ga0+eFTK1n
	tcykAf16KAy1HR9wVbuFg1FOV6fTgv+Cj27h0xY2v3z2A+u/K67MhaCNfZtD4mMff6EsOzKCV9r
	9Grd4yAhSwTg6yX6/dW90uLbbfA5YdlcyFSdqZ0OkVe3dyGzmXyRgRQ2nm0mqOaaoG57Cj2rLZH
	ibmR9ZaHFPnELvLQVSaWdZHTOLNVzxWIMGNdKGKWjMmCFPZjj/vt720eL/ow9LHu+1G1e+NMbyx
	5XmGBsiW7X1gUXXrzjBUlJjHlrQJ658yw1Exc+icOXziNmFfIjbIsbAvru1dLuGDK7HRke4Lmtl
	o2B/HTdAyOrCWteSB2dQ==
X-Google-Smtp-Source: AGHT+IE7RaIyMAJaTvPyOiXN+JJtZea0493IhCnfctYazgeVBHja7BYLWwucFVnhI9ICXngYTmNZug==
X-Received: by 2002:a05:6830:6182:b0:746:d65b:a3b0 with SMTP id 46e09a7af769-76318d69ba4mr2431458a34.2.1758152063547;
        Wed, 17 Sep 2025 16:34:23 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:55b7:b662:4c5b:a28e? ([2600:8803:e7e4:1d00:55b7:b662:4c5b:a28e])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-625dbab5cf1sm247661eaf.22.2025.09.17.16.34.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 16:34:23 -0700 (PDT)
Message-ID: <0bc1b77c-bbbc-4e8a-a792-fb7e30a2a789@baylibre.com>
Date: Wed, 17 Sep 2025 18:34:22 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: temperature: add support for
 EMC1812
To: Marius Cristea <marius.cristea@microchip.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250917-iio-emc1812-v1-0-0b1f74cea7ab@microchip.com>
 <20250917-iio-emc1812-v1-1-0b1f74cea7ab@microchip.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250917-iio-emc1812-v1-1-0b1f74cea7ab@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/17/25 7:21 AM, Marius Cristea wrote:
> This is the devicetree schema for Microchip EMC1812/13/14/15/33
> Multichannel Low-Voltage Remote Diode Sensor Family.
> 
> Signed-off-by: Marius Cristea <marius.cristea@microchip.com>
> ---
>  .../iio/temperature/microchip,emc1812.yaml         | 223 +++++++++++++++++++++
>  MAINTAINERS                                        |   6 +
>  2 files changed, 229 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/temperature/microchip,emc1812.yaml b/Documentation/devicetree/bindings/iio/temperature/microchip,emc1812.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..898d6d246746e229cb004f447872ee6bd5a65074
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/temperature/microchip,emc1812.yaml
> @@ -0,0 +1,223 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/temperature/microchip,emc1812.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip EMC1812/13/14/15/33 multichannel temperature sensor
> +
> +maintainers:
> +  - Marius Cristea <marius.cristea@microchip.com>
> +
> +description: |
> +  The Microchip EMC1812/13/14/15/33 is a high-accuracy 2-wire multichannel
> +  low-voltage remote diode temperature monitor.
> +
> +  The datasheet can be found here:
> +    https://ww1.microchip.com/downloads/aemDocuments/documents/MSLD/ProductDocuments/DataSheets/EMC1812-3-4-5-33-Data-Sheet-DS20005751.pdf

The pinouts of these chips look nearly identical to MCP998X.
Would it make sense to share a single bindings document for these?
Or maybe there would be too many if: blocks and keeping it separate
is fine.

https://lore.kernel.org/linux-iio/20250829143447.18893-2-victor.duicu@microchip.com/

> +
> +properties:
> +  compatible:
> +    enum:
> +      - microchip,emc1812
> +      - microchip,emc1813
> +      - microchip,emc1814
> +      - microchip,emc1815
> +      - microchip,emc1833
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 2
> +
> +  interrupt-names:
> +    description:
> +      -alert-therm2 asserts when a diode temperature exceeds the ALERT
> +      threshold.
> +      -therm-addr asserts low when the hardware-set THERM limit threshold is
> +      exceeded by one of the temperature sensors.
> +    items:
> +      - const: alert-therm2
> +      - const: therm-addr
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  microchip,beta1:
> +    description:
> +      Set beta compensation value for external channel 1.
> +      <0> 0.050
> +      <1> 0.066
> +      <2> 0.087
> +      <3> 0.114
> +      <4> 0.150
> +      <5> 0.197
> +      <6> 0.260
> +      <7> 0.342
> +      <8> 0.449
> +      <9> 0.591
> +      <10> 0.778
> +      <11> 1.024
> +      <12> 1.348
> +      <13> 1.773
> +      <14> 2.333
> +      <15> Diode_Mode
> +      <16> Auto
> +      - Diode_Mode is used when measuring a discrete thermal diode
> +      or a CPU diode that functions like a discrete thermal diode.
> +      - Auto enables beta auto-detection. The chip monitors
> +      external diode/transistor and determines the optimum
> +      setting.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 16
> +    default: 16
> +
> +  microchip,beta2:
> +    description:
> +      Set beta compensation value for external channel 2.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 16
> +    default: 16

This beta value sounds like something that might not belong in the
devicetree.

The datasheet says that auto is always the best. So that makes me
wonder when would we want to use something else?

Also, it says that in auto mode, that the value is recalculated
on every conversion, so even if manually selecting a value, it
sounds like something that could change at runtime, so having a
fixed value might not cover all use cases.

Having a boolean flag to say this is wired to a discrete thermal diode
makes sense though (the driver would use this info to select diode mode).

And if we can make the case that the beta value should be in the
devicetree, then having the actual value instead of a lookup table
would be preferred. There is a "basis points" standards unit (suffix
"-bp") that can be used for non-integer values like this (assuming it
is a unit-less value). It is 1/10,000 so it would make the property
an enum with 15 values between 500 and 23330.

Both properties would not be allowed at the same time and if both
properties are omitted, the driver would know to use auto mode.

Also, it would make more sense to have these as channel properties
if they only apply to 1 channel each.

> +
> +  microchip,parasitic-res-on-channel1-2:
> +    description:
> +      Indicates that the chip and the diodes/transistors are sufficiently far
> +      apart that a parasitic resistance is added to the wires, which can affect
> +      the measurements. Due to the anti-parallel diode connections, channels
> +      1 and 2 are affected together.
> +    type: boolean
> +
> +  microchip,parasitic-res-on-channel3-4:
> +    description:
> +      Indicates that the chip and the diodes/transistors are sufficiently far
> +      apart that a parasitic resistance is added to the wires, which can affect
> +      the measurements. Due to the anti-parallel diode connections, channels
> +      3 and 4 are affected together.
> +    type: boolean
> +
> +  vdd-supply: true
> +
> +patternProperties:
> +  "^channel@[1-4]$":
> +    description:
> +      Represents the external temperature channels to which
> +      a remote diode is connected.
> +    type: object
> +
> +    properties:
> +      reg:
> +        items:
> +          minimum: 1
> +          maximum: 4
> +

I.e. beta-related properties would go here.

> +      microchip,ideality-factor:
> +        description:
> +          Each channel has an ideality factor.
> +          Beta compensation and resistance error correction automatically
> +          correct for most ideality errors. So ideality factor does not need
> +          to be adjusted in general.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 8
> +        maximum: 55
> +        default: 18
> +

