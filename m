Return-Path: <devicetree+bounces-241291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E10C7C02E
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 01:26:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D2299363417
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 00:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 666DD1F30BB;
	Sat, 22 Nov 2025 00:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RHuEdCGo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6C2B1D618E
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 00:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763771190; cv=none; b=jg/Aj5eqxgB/vDro18D5hoRNyZz6DhEY33UhzahBvXMQlHZuf8goO2UIhJhNfArdVZURjx/Ojf8EmEOZtUELoXVBHqpGhJrSyHp1yuRG5lw4Trt++dcjKcLhfFbHpOma9sgrkVpwoPPdC/1+D0mysnRgFIKnd1Nm1/OelojbMjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763771190; c=relaxed/simple;
	bh=bDC+LxsuLI7dLZ+JKqVXr59YLNIGptoJM8bUsszq5+Q=;
	h=Content-Type:Date:Message-Id:Cc:Subject:From:To:Mime-Version:
	 References:In-Reply-To; b=aIh9IVEsEWOVF8HkSEP+oNjNU3PIk0QXy7wSBVfz/rddEYy/s36S5mi+bbLh3Qz6ghedVSRRPtTi4lu/gr2nLJSIMxmab0y0EDZPJms6RR1vLwIXNvDaCsTpX98RPXXGEHgsIGQq0twUrzYQE9ubCxW5fvUtE8aJ7FxrjUGZJ0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RHuEdCGo; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5dbe6304b79so952298137.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 16:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763771186; x=1764375986; darn=vger.kernel.org;
        h=in-reply-to:references:content-transfer-encoding:mime-version:to
         :from:subject:cc:message-id:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eA3LGvlVMXR3Plz0WCz3iOl+L+AbTQoSVlGUy1TH+so=;
        b=RHuEdCGo+9SaIBHrL8kQ+X3RrA/mG2pS248o4qsnJLpZzXJTRtCZqs0FJ1ZrouWd1m
         T0jryzU0vHqUeV/hfDLEX4mSo+0pSvr8NdLoWe5RdZHuhcdQTFAM1UFjIImtK6HFjzC5
         cMZDgtTv0NUnWfbXrddp/X4zOQn1DBScI1arx+xRoRLL0g6HbHwGKjngjosyxS8g7vZ7
         fyiC/6CKSZFatLLC4o1Fa07JqDmhVips/TE084t3z9OpdLClO6kKBKfzl56ESu5VvTds
         3WTo1qYfp/HBdoQquO1Zoc9Ie0DbLm9VaDIwuoYJWbVa+93r67vl2adARH50p5IQFG+g
         cPSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763771186; x=1764375986;
        h=in-reply-to:references:content-transfer-encoding:mime-version:to
         :from:subject:cc:message-id:date:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eA3LGvlVMXR3Plz0WCz3iOl+L+AbTQoSVlGUy1TH+so=;
        b=jlT/4WAv3bPNbqlBXVoHmEApLH0dlpDLcUZHnK8G2EiDqWpU+uxwQy+R8SbxUMJIAY
         uGost/4lM+tvJD4MhPTM4/ihIdsh8ciGY8gEiFS8swNgqX9YyPC4+SQ56z8j5FSQKuvW
         gMPYM9Wmf2wbAveqofp0iA9LwewGXefyKC1AtjZ98jlflx0wUCL4Y6uhLINOQGfsya4o
         KeKg7lm0Td2PT28OPrgnBMiR7Hf5aDFUw87J9vnBL4tBRAzYl/YCRDUVFZZStlvIR59V
         n//CG3fQBMCkacklQHHWElbVxled1S89VncArkeA4o7k/0hJIhfEjJyi9RSk/X1KAoav
         4b9A==
X-Forwarded-Encrypted: i=1; AJvYcCXocIgfq7mktcai6nPtibmfaUrzYjA0KxTkvqlnSijA/bKc6Z4H9LJNnxZ439GGu67G8FVhsQV7UFiF@vger.kernel.org
X-Gm-Message-State: AOJu0YxypZJidbgsbSA+hWsYzshqJBDWI/WRLhxpRKjbce4D2B6iozl0
	DMJL245XoDteKKEFL2xMmmPCOeU9RU18EWdmzcPKibej2x8xPkEK1vB0
X-Gm-Gg: ASbGncvMkaxsrdrybqKLp59GC+0m2GoNoBM83+qBnMfHr8l81gtcmbN23fhtUctRoDp
	6naq3eisNfPyxllMf0juUG2NMAAPqezkv2LIX5twHiqmh0Q2Og7vlksD3hD+/juYIHZIOwWqD7m
	VJ/inXOHqh0Laa4MVd4CBIkBh+XjKHuJ6e0jV8bGi05i15N8pASPhA6/cmCw9jacpaHCJoZqSNc
	qNjm7xbcrnz5Nzlw8ZTV6AImvERdJFjcf9sZxiyqEaVVwQi0acnISL2ew0ZC8oZ1txk8qC/lC9F
	VD5pCfxOA0UUJKzMWiY+Yz/AdxGZyd6gkG3W4gwigGGm40sSMkPdzlhmH/8iBOsCmwXwO8z1PTl
	0SeZwi4VZqn9OuPeXjCTFpNmOmZij7eXigsmMY3wroDHWTfTnAF8Wi+Ikkh8GwEympadN1SMGAu
	ulrQo=
X-Google-Smtp-Source: AGHT+IFgolZkPHp9RA6XxN56LqJL3IsIaP/ha4/Nx/gmiXo0RsyimYW7lgq5cTmJGYQkc9HbKH4+yA==
X-Received: by 2002:a05:6102:334c:b0:5dd:b69a:cdce with SMTP id ada2fe7eead31-5e1de0eccc9mr1209279137.1.1763771186484;
        Fri, 21 Nov 2025 16:26:26 -0800 (PST)
Received: from localhost ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c5658147fsm3082065241.15.2025.11.21.16.26.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 16:26:26 -0800 (PST)
Content-Type: text/plain; charset=UTF-8
Date: Fri, 21 Nov 2025 19:26:24 -0500
Message-Id: <DEESPC8XZSXI.3G1JISSNEBC3Q@gmail.com>
Cc: =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy Shevchenko"
 <andy@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Jonathan
 Cameron" <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: Add TI ADS1018/ADS1118
From: "Kurt Borja" <kuurtb@gmail.com>
To: "David Lechner" <dlechner@baylibre.com>, "Kurt Borja"
 <kuurtb@gmail.com>, "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Tobias Sperling"
 <tobias.sperling@softing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251121-ads1x18-v1-0-86db080fc9a4@gmail.com>
 <20251121-ads1x18-v1-1-86db080fc9a4@gmail.com>
 <09d8aa0c-8713-4673-8d70-ff5d59392c12@baylibre.com>
In-Reply-To: <09d8aa0c-8713-4673-8d70-ff5d59392c12@baylibre.com>

On Fri Nov 21, 2025 at 5:32 PM -05, David Lechner wrote:
> On 11/21/25 11:16 AM, Kurt Borja wrote:
>> Add documentation for Texas Instruments ADS1018 and ADS1118
>> analog-to-digital converters.
>>=20
>> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
>> ---
>>  .../devicetree/bindings/iio/adc/ti,ads1118.yaml    | 132 ++++++++++++++=
+++++++
>>  1 file changed, 132 insertions(+)
>>=20
>> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1118.yaml b=
/Documentation/devicetree/bindings/iio/adc/ti,ads1118.yaml
>> new file mode 100644
>> index 000000000000..eb7228ed6ddb
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1118.yaml
>
> I like to make the file name match the lowest number. That way it matches
> the first item in the compatible list.
>
>> @@ -0,0 +1,132 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>
> Better to be specific with GPL-2.0-only or GPL-2.0-or-later (your choice)=
.

I will go for GPL-2.0-only on both files.

>
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/iio/adc/ti,ads1118.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI ADS1018/ADS1118 SPI analog to digital converter
>> +
>> +maintainers:
>> +  - Kurt Borja <kuurtb@gmail.com>
>> +
>> +description: |
>> +  The ADS1018/ADS1118 is a precision, low-power, 12-bit or 16-bit, nois=
e-free,
>> +  analog-to-digital converter (ADC). It integrates a programmable gain =
amplifier
>> +  (PGA), voltage reference, oscillator and high-accuracy temperature se=
nsor.
>> +
>> +  Datasheets:
>> +    - ADS1018: https://www.ti.com/lit/ds/symlink/ads1018.pdf
>> +    - ADS1118: https://www.ti.com/lit/ds/symlink/ads1118.pdf
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - ti,ads1018
>> +      - ti,ads1118
>> +
>> +  reg:
>> +    maxitems: 1
>
> We know the max SCLK rate from the datasheet, so we can add:
>
> spi-max-frequency:
>   maximum: 4000000
>
> And we need to explicitly mention this one (it isn't part of
> spi-peripheral-props.yaml but rather comes from spi-controller.yaml):
>
> spi-cpha: true
>
>> +
>> +  interrupts:
>> +    description: DOUT/DRDY (Data Out/Data Ready) line.
>> +    maxitems: 1
>> +
>> +  drdy-gpios:
>> +    description:
>> +      Extra GPIO line connected to DOUT/DRDY (Data Out/Data Ready). Thi=
s allows
>> +      distinguishing between latched and real DRDY IRQs.
>> +    maxitems: 1
>> +
>> +  '#address-cells':
>> +    const: 1
>> +
>> +  '#size-cells':
>> +    const: 0
>> +
>> +  '#io-channel-cells':
>> +    const: 1
>> +
>
> All chips need power, so we should have:
>
> vdd-supply: true
>
> and make it required.
>
>> +required:
>> +  - compatible
>> +  - reg
>> +  - drdy-gpios
>
> The chip can be used without needing the DRDY signal, so drdy-gpios and
> interrupts should not be required.
>
>> +  - '#address-cells'
>> +  - '#size-cells'
>> +
>> +patternProperties:
>> +  "^channel@[0-7]$":
>> +    type: object
>> +    $ref: /schemas/iio/adc/adc.yaml#
>> +    description: Properties for a single ADC channel.
>> +
>> +    properties:
>> +      reg:
>> +        minimum: 0
>> +        maximum: 7
>> +        description: The channel index (0-7).
>> +
>> +      ti,gain:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        minimum: 0
>> +        maximum: 5
>> +        description:
>> +          Programmable gain amplifier configuration, as described in th=
e PGA
>> +          Config Register Field description. If not present, the defaul=
t is
>> +          used.
>
> The gain is programmable, so normally, we would set that by writing
> to the in_voltageY_scale attribute rather than hard-coding it in the
> devicetree.
>
>> +
>> +      ti,datarate:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        minimum: 0
>> +        maximum: 7
>> +        description:
>> +          Data rate configuration, as described in the DR Config Regist=
er Field
>> +          description. If not present, the default is used.
>
> Likewise, the data rate should be set at runtime using a
> sampling_frequency attribute rather than being hard-coded
> in the devicetree.

I actually took this approach from ti-ads1015. I was debating this
myself.

I'll gladly drop these.

>
>> +
>> +    required:
>> +      - reg
>> +
>> +    additionalProperties: false
>> +
> So we shouldn't need explicit channel properties at this time.

Ack for the rest of comments.


--=20
 ~ Kurt


