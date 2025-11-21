Return-Path: <devicetree+bounces-241279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFD2C7BDD5
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 23:33:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 979E73496EA
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 22:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F7CC2FD682;
	Fri, 21 Nov 2025 22:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0jtAI4S2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA382BD5BB
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 22:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763764378; cv=none; b=IL0L0P/fGw/xPsGsaJqn2sgjJ4HLuOwQruhDJtYvaAJuG2LD2M8olg3AqAVQ5fJBfdGMI+G+3bHtKPupmXpPtO55wc5Z5fTgfjRpTJNw4ioutlkjgJeACPiw3XvV/cwObgjgi7H8/G5DeixFgzewGBIr1EUhtMdf2TBnuuWDi9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763764378; c=relaxed/simple;
	bh=OV5XXYqUL+sxDYxS7WBVYXoTxfUP94qNqDDhKGS1yw8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sOSddMtKn420Z7XMoRTtkPaMn9g7Ix/oC7Fjhv+kIf8sPEXYI3Af0HtWyP3mcEZgPMu3w9Ovz+pYLJPr4TkXRdpsMN0eCymk79Q4+tGoaVGhR0GkYJtl2wvfg/28xMsYLYRHC3HlCKQ2g0NQ2T0OK5oOBF20cKoQ90JzFOljCGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0jtAI4S2; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7c75178c05fso659563a34.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763764375; x=1764369175; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wkhsAadmvIfs2+/TT2LiP1fAEiIB5/2W37+khHFDLCo=;
        b=0jtAI4S26XkuBlTCEu3uF9fD+3uVmPHi7OTLtyAROyspU5Hsk6faB0CgcC6UPQNMKc
         lRDNVh/2yAYPN/5r51ttsnFgEHZUVIEtak1gIlJOvbJz+Z7vgm0iEDyEjJTr0z/nGEEU
         UJEzgKyFGBPhfGP5FtlJY1CD6d5xOjkrNZ+jldTEGRpiSq3pWZgiGlUPwovh5bmUv+uA
         7xdvfM9mS24o4l1QX+QdyD7UOLhJNMcajbdaRHNH+r7EiP7wSdiw5n10hESfMbjVqMWu
         zzEiwAwl+049G1X55QtBakmZTf/Gda38Ej/5Ca6Wu+brotifwxviLKm1F8cFl4Fx2nEK
         uUnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763764375; x=1764369175;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wkhsAadmvIfs2+/TT2LiP1fAEiIB5/2W37+khHFDLCo=;
        b=Pg7kIXrsMywp67GVkdbjcXnnAxlX0/vVdjoP80A3k0cmaHMKn9aAjyPCMoSqZ18mJS
         E/5aRaE1Cpotn5EeiBDfQb3x5zmCeXeIrEk4/RWO20HdVw9VPcy56vu8mvlx5i7o9WA1
         wrPPjTSRXpJVVz68iCPlX4UKbdwjCQF2RPOQ7+ZJhfoAWdxaomNMM+3jn4OVLqS3gL7v
         dG2E1cOZtmkWnQQ9eRDdW+x2DFuqqJrvj48UHZP4E0aYgVMrl40WzODW3EvyBROkdYM8
         jgLh/e07MGG+y//q7P5Vt6MQph2bt93La4rOtQC+egkIEGlfsoE5UUdDGiyJPUNVM8Iw
         9QYg==
X-Forwarded-Encrypted: i=1; AJvYcCVKaj4ZTl35W2tBND6KmYAfms5v6Yt0NjDiA7pBAu5mY9/aNIpRgS6TH1GVUcVmYaP3BcFLH4H/fm/m@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw8z5sz0j6/VCs1WrDOCFUpJLT8GUVs8Wq2UPO/34qmwiTEMiN
	h26/s23p+zMZ7fs5gycFr0yl4jePD1IaWRu+v/pjU7LnFySq3NBIIIV++Uvijd35LNE=
X-Gm-Gg: ASbGncsZKL9nddPgUMVr8uAGDAs1lVqXi1DXw7emD+gCZ/h6j29Fz7D+7H70Oi3ZUtT
	CgtOn8BX/NxT85QuECEwd48xjjlnnFxRb0fHHFeQb+ImgGHhVPmK7dJzy4TX2KoXyrYF/QBlriI
	KsKTYWk+huFLleUo/gxU+5WhmKISb6a26MJxULqCG75W+CAxJKzd0SZW/1/vukvSpWo4i28r16P
	kQcmKf7Pv7o7ye+OWRV21m+yh2tyk9+EostXk7FTInbhjxolJS28mvTrBTHk5ZDkkcnOqa2C7/5
	rjcWol9o9I/WQbY3XgfYju/OdhEQVhK5p2mSTHEvx7ypiprZ281f1/m10prHlcSlTeD03vBC5w6
	zcflC4v/VMu+YFB9osryrFI6Az08VeH09K3disWVQlOg7UoF/g9RwtzZIU0jdHAZdHQJ1xtFFcw
	fDGB7mmjW3MdwjrOl1saVAjGU4ktvP1db/4JKOSCbcNuns3oU8bdLvHTTmxzJr
X-Google-Smtp-Source: AGHT+IHmg4dqwQGnhKWN6tRZpOeDBvXT8EQMAzJ9QptgwgzSRibm2Uvl1r/LVHz9MDFAlt0Wl0+hJA==
X-Received: by 2002:a05:6830:4420:b0:7c7:68d8:f711 with SMTP id 46e09a7af769-7c798c4df0bmr1660734a34.18.1763764374831;
        Fri, 21 Nov 2025 14:32:54 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:e782:93d8:7c2f:f9df? ([2600:8803:e7e4:500:e782:93d8:7c2f:f9df])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c78d32c89esm2807155a34.7.2025.11.21.14.32.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 14:32:53 -0800 (PST)
Message-ID: <09d8aa0c-8713-4673-8d70-ff5d59392c12@baylibre.com>
Date: Fri, 21 Nov 2025 16:32:52 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: Add TI ADS1018/ADS1118
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Tobias Sperling <tobias.sperling@softing.com>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20251121-ads1x18-v1-0-86db080fc9a4@gmail.com>
 <20251121-ads1x18-v1-1-86db080fc9a4@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251121-ads1x18-v1-1-86db080fc9a4@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/21/25 11:16 AM, Kurt Borja wrote:
> Add documentation for Texas Instruments ADS1018 and ADS1118
> analog-to-digital converters.
> 
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
> ---
>  .../devicetree/bindings/iio/adc/ti,ads1118.yaml    | 132 +++++++++++++++++++++
>  1 file changed, 132 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1118.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1118.yaml
> new file mode 100644
> index 000000000000..eb7228ed6ddb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1118.yaml

I like to make the file name match the lowest number. That way it matches
the first item in the compatible list.

> @@ -0,0 +1,132 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)

Better to be specific with GPL-2.0-only or GPL-2.0-or-later (your choice).

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/ti,ads1118.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI ADS1018/ADS1118 SPI analog to digital converter
> +
> +maintainers:
> +  - Kurt Borja <kuurtb@gmail.com>
> +
> +description: |
> +  The ADS1018/ADS1118 is a precision, low-power, 12-bit or 16-bit, noise-free,
> +  analog-to-digital converter (ADC). It integrates a programmable gain amplifier
> +  (PGA), voltage reference, oscillator and high-accuracy temperature sensor.
> +
> +  Datasheets:
> +    - ADS1018: https://www.ti.com/lit/ds/symlink/ads1018.pdf
> +    - ADS1118: https://www.ti.com/lit/ds/symlink/ads1118.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,ads1018
> +      - ti,ads1118
> +
> +  reg:
> +    maxitems: 1

We know the max SCLK rate from the datasheet, so we can add:

spi-max-frequency:
  maximum: 4000000

And we need to explicitly mention this one (it isn't part of
spi-peripheral-props.yaml but rather comes from spi-controller.yaml):

spi-cpha: true

> +
> +  interrupts:
> +    description: DOUT/DRDY (Data Out/Data Ready) line.
> +    maxitems: 1
> +
> +  drdy-gpios:
> +    description:
> +      Extra GPIO line connected to DOUT/DRDY (Data Out/Data Ready). This allows
> +      distinguishing between latched and real DRDY IRQs.
> +    maxitems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  '#io-channel-cells':
> +    const: 1
> +

All chips need power, so we should have:

vdd-supply: true

and make it required.

> +required:
> +  - compatible
> +  - reg
> +  - drdy-gpios

The chip can be used without needing the DRDY signal, so drdy-gpios and
interrupts should not be required.

> +  - '#address-cells'
> +  - '#size-cells'
> +
> +patternProperties:
> +  "^channel@[0-7]$":
> +    type: object
> +    $ref: /schemas/iio/adc/adc.yaml#
> +    description: Properties for a single ADC channel.
> +
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 7
> +        description: The channel index (0-7).
> +
> +      ti,gain:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 0
> +        maximum: 5
> +        description:
> +          Programmable gain amplifier configuration, as described in the PGA
> +          Config Register Field description. If not present, the default is
> +          used.

The gain is programmable, so normally, we would set that by writing
to the in_voltageY_scale attribute rather than hard-coding it in the
devicetree.

> +
> +      ti,datarate:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 0
> +        maximum: 7
> +        description:
> +          Data rate configuration, as described in the DR Config Register Field
> +          description. If not present, the default is used.

Likewise, the data rate should be set at runtime using a
sampling_frequency attribute rather than being hard-coded
in the devicetree.

> +
> +    required:
> +      - reg
> +
> +    additionalProperties: false
> +
So we shouldn't need explicit channel properties at this time.


