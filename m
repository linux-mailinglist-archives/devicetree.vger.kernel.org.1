Return-Path: <devicetree+bounces-183405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AA93EAD0634
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 17:54:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 284997A2F6E
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 15:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 962151B040D;
	Fri,  6 Jun 2025 15:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AYUQyrpJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D6619882B
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 15:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749225245; cv=none; b=HtI1zJm/T1QH2QG+LPbXs3TaT440ZISb46blaDDrg8K776AkAi+0VpT2puShD5FyLQpu2rVbMVUONXuy3aWRsr8TBWGtB5mX5i5Bb0wQldm3NQax9cHZV7iR8sMZ5BZh61viDFAz2ehfnhwqShReVsiLyiEMD3iWve+ptIx/hjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749225245; c=relaxed/simple;
	bh=O2w1aGCd7C7nRuZWq3b6fRfyCi62Sqnl7KSt5CA2X8w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X2IJxBiOpf2g/lUZwd61HM8lvHG95IAHygGRfmkk6MdDO5Q3Cu8cC2tB8obhTsHBunUQOOVc0XDeLFFMyxLp1HYX8SWmHSpIdmCtYcCUqouG0hBuC0zIoQl6IaZA0VAhpLEa5mn7/uWY3ZbHxDSZdytZ/gYb4UsGoL6NXl+Omyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AYUQyrpJ; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-605fda00c30so1375429eaf.1
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 08:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749225242; x=1749830042; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A6luCcbvYtAg5246XTNS1y7oe/JVdrZSN0lM+hMsBHc=;
        b=AYUQyrpJ6qulxlVQnD1JLnpGuwnIh/7UsTChtQcV/q9NeDQt0x9A7BFwiSjBetb9Ov
         ygGOGuhOEWgfMBbYFX7VVU63A8TdFEH1TKWhymZqpP9O4gShv22PVE+AfBS3oPoDmjzx
         DPHWKcZoXw/iPnusIw6ZpQq8+ui/ya6K6r5NFOHC9hW+Qs4rTSsK1UqCwrSgeCH9If9m
         UeZNfNAO/ziM9lj+uG25UAnk5g3g+IZxWeElWyBLoqTU5VeZdRRAYfJgIVZ8oKpuaeHm
         WzxTzYUFmHkV3N6c8pyNVOidms9/+vZFZX8iBYvF4jZ8dAIo6cL8yupYqozEd3P3xNL+
         b+5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749225242; x=1749830042;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A6luCcbvYtAg5246XTNS1y7oe/JVdrZSN0lM+hMsBHc=;
        b=Q0DIDQNAwrnoz0mawHbQz/5CClqPfCMlQbJxt0p5TxA5iO/1fam9+ifZrMYk9FbQKn
         vUmJKC4RvIeopRd3YJNB6G9jD2r46yuldh/fwU38N0UulXHrVi/vVDCVzMh24Bc+la+m
         7/Tb2awsOa+ScKx7QIBVTMxLT9d7+1yRhzkIzHmMhwGoIGagFn22+43S8Vu+5BMIDlHV
         JHAXb1mNRxWe3NXJZfH39pEfgzaQpd5WeAmpwzttRElybVdmfEheFb4HgTA993SYhf18
         awlkE1Ln5UYJl4+gqAt9690ZjpTlfM7PqnaPe9rGrg+prNp9XcBgDQG57ZHau10dWJja
         p8mw==
X-Forwarded-Encrypted: i=1; AJvYcCUGi6PKjfBXxCfrWXuDDgfJJPQMQJsAUdl6PnZO8qqHJ7wH6ouRaTZjbzvKgiZ0uOux4Z1GjfE4zQgu@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn8t+L59em21b28xlEBtGKV08HEtMlR3GIq+RM3pHvaHDW8JiK
	uTn8DEQU/IB+5HGmIRrZGm3ioFEQmR62BJM1PSZWrL5kQ0hWQW3cxf/7NHPxybOU6JA=
X-Gm-Gg: ASbGncvlNZskzbIDsm5T4JpTs4blbsDg3Z7FaU8MVbvtTCEeyS3UCYShpD/DYtxrTLI
	bQhAYM7sHU07ObwfdnJzbUj83MMaSm3wzpPNsKf11szd1jwM/tBXv+pr6KxMdxvdUjRiE3QAuAV
	uf/5COpobYk1iwbCzDwkg8WYUC+0Eb/FZlaCBA4V+re+ZKWFCgfg1JvpmT0z3WEPhYyd+YSvIUr
	ZDvPdFTuWQ1q46PJgubMDnUHYz4HJd7D7pXUw9YcDFNQfabsdk9jPkX5Eywv9MnBX/8186PZUUQ
	t6XNsmw1M8r5eoRH9DlRVhJFL/hSLjhG75qeZaXXkbOLPKwYcfi7pllmu58rldv1lQeoc7Szy+o
	R9CrkGeNMjmv3ml9Lt8ciScqh+aqv
X-Google-Smtp-Source: AGHT+IGRDl1iuFLSRQRDz5i+NYDOwmM7to35b2jr13pv5tXn4xtKTNZw7AvPXElLkQBKingqq9hJnQ==
X-Received: by 2002:a05:6820:1992:b0:603:f981:5fe4 with SMTP id 006d021491bc7-60f3ce462d5mr2533571eaf.1.1749225241844;
        Fri, 06 Jun 2025 08:54:01 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:6192:9921:d60e:1609? ([2600:8803:e7e4:1d00:6192:9921:d60e:1609])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60f3e8274c8sm251935eaf.30.2025.06.06.08.53.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jun 2025 08:54:00 -0700 (PDT)
Message-ID: <92c36ad9-5f8e-4ba7-9af4-9cb640f0aa5c@baylibre.com>
Date: Fri, 6 Jun 2025 10:53:59 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: adc: adding support for PAC194X
To: marius.cristea@microchip.com, jic23@kernel.org, nuno.sa@analog.com,
 andy@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 broonie@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250606093929.100118-1-marius.cristea@microchip.com>
 <20250606093929.100118-2-marius.cristea@microchip.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250606093929.100118-2-marius.cristea@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/6/25 4:39 AM, marius.cristea@microchip.com wrote:
> From: Marius Cristea <marius.cristea@microchip.com>
> 
> This is the device tree schema for iio driver for Microchip PAC194X
> and PAC195X series of Power Monitors with Accumulator. The PAC194X
> family supports 9V Full-Scale Range and the PAC195X supports 32V
> Full-Scale Range.
> 
> There are two versions of the PAC194X/5X: the PAC194X/5X-1 devices
> are for high-side current sensing and the PAC194X/5X-2 devices are
> for low-side current sensing or floating VBUS applications.
> 
> The PAC194X/5X-1 is named shortly PAC194X/5X.
> 
> Signed-off-by: Marius Cristea <marius.cristea@microchip.com>
> ---
>  .../bindings/iio/adc/microchip,pac1944.yaml   | 204 ++++++++++++++++++
>  1 file changed, 204 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/microchip,pac1944.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/microchip,pac1944.yaml b/Documentation/devicetree/bindings/iio/adc/microchip,pac1944.yaml
> new file mode 100644
> index 000000000000..4a2cf6b64055
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/microchip,pac1944.yaml
> @@ -0,0 +1,204 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/microchip,pac1944.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip PAC1944 and PAC1954 Power Monitors with Accumulator
> +
> +maintainers:
> +  - Marius Cristea <marius.cristea@microchip.com>
> +
> +description: |
> +  This device is part of the Microchip family of Power Monitors with
> +  Accumulator. The datasheet for PAC1941-1, PAC1941-1, PAC1942-1, PAC1942-2,
> +  PAC1943-1 and PAC1944-1 can be found here:
> +    https://ww1.microchip.com/downloads/aemDocuments/documents/MSLD/ProductDocuments/DataSheets/PAC194X-Family-Data-Sheet-DS20006543.pdf
> +  The datasheet for PAC1951-1, PAC1951-1, PAC1952-1, PAC1952-2, PAC1953-1 and
> +  PAC1954-1 can be found here:
> +    https://ww1.microchip.com/downloads/aemDocuments/documents/MSLD/ProductDocuments/DataSheets/PAC195X-Family-Data-Sheet-DS20006539.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - microchip,pac1941
> +      - microchip,pac19412
> +      - microchip,pac1942
> +      - microchip,pac19422
> +      - microchip,pac1943
> +      - microchip,pac1944
> +      - microchip,pac1951
> +      - microchip,pac19512
> +      - microchip,pac1952
> +      - microchip,pac19522
> +      - microchip,pac1953
> +      - microchip,pac1954
> +
> +  reg:
> +    maxItems: 1
> +
> +  vdd-supply: true
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  interrupts:
> +    maxItems: 2
> +
> +  interrupt-names:

Needs minItems: 1 if we want to allow a single named interrupt.

> +    description:
> +      alert1 indicates a HIGH or LOW limit was exceeded.
> +      alert2 indicates a THERM limit was exceeded.
> +    items:
> +      - const: alert1
> +      - const: alert2
> +

I am having deja vu. I just commented on an identical interrupts binding
in a different series [1]. In this case though, alert1 and alert2 are
the actual pin names, so that is fine. But each pin can be programmed
to indicate lots of different things, so drop descriptions or change
them to describe the pin, not an arbitrary function. I don't even
see THERM in the datasheet, so I'm guessing that was just a copy/
paste from something else anyway.

[1]: https://lore.kernel.org/linux-iio/0f68e3f9-cba5-4df3-8e56-2cccbccf35ce@baylibre.com/


---

Even if the driver doesn't use them (yet), we could consider adding
gpio-controller and #gpio-cells properties since these chips have pins
that can operate as GPIOs.

And we could add a powerdown-gpios property for the /PWRDN pin.

We want to try to make the bindings as complete as possible, if we can [2].

[2]: https://docs.kernel.org/devicetree/bindings/writing-bindings.html

> +patternProperties:
> +  "^channel@[1-4]+$":

Drop the +. Only 1 to 4 are allowed, not 11, 111, etc.

Also, we could further restrict things based on the actual number of
channels on a chip like this:

allOf:
  - if:
      properties:
        compatible:
            pattern: "^pac19[45]1"
    then:
      properties:
      	channel@1:
          reg:
            items:
              maximum: 1
      patternProperties:
        ^channel@[2-4]$": false
  - if:
      properties:
        compatible:
            pattern: "^pac19[45]2"
    then:
      patternProperties:
        ^channel@[1-2]$":
          reg:
            items:
              maximum: 2
      patternProperties:
        ^channel@[3-4]$": false
  - if:
      properties:
        compatible:
            pattern: "^pac19[45]3"
    then:
      patternProperties:
        ^channel@[1-3]$":
          reg:
            items:
              maximum: 3
      properties:
        channel@4: false



> +    type: object
> +    $ref: adc.yaml
> +    description:
> +      Represents the external channels which are connected to the ADC.
> +
> +    properties:
> +      reg:
> +        items:
> +          minimum: 1
> +          maximum: 4
> +
> +      shunt-resistor-micro-ohms:
> +        description:
> +          Value in micro Ohms of the shunt resistor connected between
> +          the SENSE+ and SENSE- inputs, across which the current is measured.
> +          Value is needed to compute the scaling of the measured current.
> +
> +      microchip,vbus-half-range:
> +        $ref: /schemas/types.yaml#/definitions/flag
> +        description: |
> +          In order to increase measurement resolution and keeping the same
> +          number the of bits the device has a configurable VBUS full range scale
> +          (FSR). The range should be set by hardware design and it should not be
> +          changed during runtime. The bipolar capability for VBUS enables
> +          accurate offset measurement and correction.
> +          The VBUS could be configured into the following full scale range:
> +            - VBUS has unipolar 0V to 32V FSR (default) for PAC195X or 0V to 9V
> +              (default) for PAC194X.
> +            - VBUS has bipolar -32V to 32V FSR for PAC195X or -9V to 9V for
> +              PAC194X. The actual range is limited to about -200 mV due to the
> +              impact of the ESD structures.
> +            - VBUS has bipolar -16V to 16V FSR for PAC195X or -4.5V to 4.5V for
> +              PAC194X. The actual range is limited to about -200 mV due to the
> +              impact of the ESD structures.
> +
> +      microchip,vbus-bipolar:
> +        $ref: /schemas/types.yaml#/definitions/flag
> +        description:
> +          If provided, the channel is to be used in bipolar mode. The
> +          actual range is limited to about -200 mV due to the impact of the ESD
> +          structures.
> +

Using Jonathan's suggestion from v2 to just have a single property with 3 different
ranges to chose from seems simpler that this. It would only require one property
and would be self-documenting. The description could be shortened to just a couple
of lines.

Otherwise, we also need to add:

- if:
    required:
      microchip,vbus-half-range
  then:
    required:
      microchip,vbus-bipolar

to validate that that there are only 3 possibilities.

Also, swapping the word order to range-half would be more consistent with
the existing adi,range-double property that serves a similar purpose.

Same applies to vsense.

> +      microchip,vsense-half-range:
> +        $ref: /schemas/types.yaml#/definitions/flag
> +        description: |
> +          In order to decrease the power dissipation on the shunt resistor and
> +          in the same time to increase measurement resolution by keeping the
> +          same number the of bits the device has a configurable VSENSE full
> +          range scale (FSR). The range should be set by hardware design and it
> +          should not be changed during runtime.
> +          The VSENSE could be configured into the following full scale range:
> +            - VSENSE has unipolar 0V to 100 mV FSR (default)
> +            - VSENSE has bipolar -100 mV to 100 mV FSR
> +            - VSENSE has bipolar -50 mV to 50 mV FSR
> +
> +      microchip,vsense-bipolar:
> +        $ref: /schemas/types.yaml#/definitions/flag
> +        description:
> +          If provided, the channel is to be used in bipolar mode.
> +
> +      microchip,accumulation-mode:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          The Hardware Accumulator may be used to accumulate VPOWER, VSENSE or
> +          VBUS values for any channel. By setting the accumulator for a channel
> +          to accumulate the VPOWER values gives a measure of accumulated power
> +          into a time period, which is equivalent to energy. Setting the
> +          accumulator for a channel to accumulate VSENSE values gives a measure
> +          of accumulated current, which is equivalent to charge. This allows the
> +          accumulator to be used as a coulomb counter. For either VSENSE or
> +          VBUS, many samples may be accumulated on chip and the result collected
> +          by the host and divided by the accumulator counter count value to
> +          yield an average value with a very long integration time to reduce
> +          noise. This feature is also very useful for system calibration,
> +          allowing many averages to be accumulated for fast averaging/noise
> +          reduction.
> +          This functionality needs to be setup once and must not be changed
> +          during the runtime,

Why not? The datasheet says there is a REFRESH command to allow changing it
at runtime.

> just in case the user wants to measure the charge
> +          or the energy consumed from board power up till the user has control
> +          or during a reboot of the system.
> +          The Hardware Accumulator could be configured to accumulate
> +          VPOWER, VSENSE or VBUS
> +            <0>  -  Accumulator accumulates VPOWER (default)
> +            <1>  -  Accumulator accumulates VSENSE
> +            <2>  -  Accumulator accumulates VBUS
> +        maximum: 2
> +        default: 0
> +
> +    required:
> +      - reg
> +      - shunt-resistor-micro-ohms
> +
> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        power-monitor@10 {
> +            compatible = "microchip,pac1954";
> +            reg = <0x10>;
> +            vdd-supply = <&vdd>;
> +
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            channel@1 {
> +                reg = <0x1>;
> +                shunt-resistor-micro-ohms = <24900>;
> +                label = "CPU";
> +                microchip,vsense-half-range;
> +                microchip,vsense-bipolar;
> +            };

Seems odd to leave a channel unconfigured since the shunt resistor
value is required and there is a 3 channel version of the chip that
could be used if only 3 channels were wired up.

> +
> +            channel@3 {
> +                reg = <0x3>;
> +                shunt-resistor-micro-ohms = <75000>;
> +                label = "MEM";
> +                microchip,vbus-half-range;
> +                microchip,vbus-bipolar;
> +                microchip,vsense-half-range;
> +            };
> +
> +            channel@4 {
> +                reg = <0x4>;
> +                shunt-resistor-micro-ohms = <100000>;
> +                label = "NET";
> +                microchip,vbus-bipolar;
> +            };
> +        };
> +    };
> +
> +...


