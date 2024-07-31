Return-Path: <devicetree+bounces-89918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 106E794331F
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 17:24:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75DF51F27C83
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 15:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBEFF1B3F1A;
	Wed, 31 Jul 2024 15:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XQ16RPLO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92ED1642B
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 15:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722439357; cv=none; b=pUD7bcjjeXntAlc0EOxXHcYx+sIMpol5RavOMu20j9Iv9uWGF59Z+9uGLeiJUHemxRuczG3phQadscNmZyrrKavLFkx9o+sedB1N0H+RZlNNA0PjlCPz2+mjuEdEZydZbZe2cnL64xzf+3dBrSnOEr3M5nRHWqWtc4Y68I9/GBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722439357; c=relaxed/simple;
	bh=uDpv75h2E02EL5TWuYfgvQzfHdGD5Tm25hAZWXN2vXM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ObJgGDd/Jgp1XpN3x3cyBPM5+1i0s39pa6QU2PXLbUM6eCFF/YPQPFKsuMNg4g2MqwMfHahdlaK3sO5Yb7xcj0XuoYF3mHclDBiQVXLisCV2sfZaNT0YdkQ2uKTlSK7thEG1LU1tQoIWEzV7CX6aupc3Qn2VwpjRiFwqoFTY7xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XQ16RPLO; arc=none smtp.client-ip=209.85.166.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-3993f5d75bbso31400385ab.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 08:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722439354; x=1723044154; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jma3alKusTw0u0m+ky85rt3SWiRL7Mtmlu66CPTTA6Q=;
        b=XQ16RPLOfpJTEy3vFr6p1mcX8wkn+UAnpoei630sBYQLIMh80uqHRrZmIZ2brgDYAG
         8M4RBWUrmCDFJjpXBc1b6F5qgsZh4MDbosf2riwz+grRcWTEoFFkeNsCwJIsSQahraUJ
         Kfb/k2mwUebLpfowPLpryGnO0J2VDNCzOHIYoQ7wKaXmUUM/0XYlkYcQTeBmgvBpA21u
         7owvRyD8s4tcvhuR784SxxXoNJn9rvmCSYz4M7SoNee7/bAgnWmFs0Okldc/T2R8aaxR
         YdgTwVjANTIO0CSX1V+/QqNirViDMyf/ktWhF/7XT+PhXt2SwJGsAeeDndDHtts3CWdA
         /V8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722439354; x=1723044154;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jma3alKusTw0u0m+ky85rt3SWiRL7Mtmlu66CPTTA6Q=;
        b=GlWftXZVmOX4ULQ9SPyweuaI/K81lXVHcdq7t5G0FltGsS48e9E2PwaXktmPc0EWtC
         PjxyzCBI0WdKTuWfYLaFIomrDzMy1i0jIA0CCE21cJMiH7OYf2U/gA3RGWLqxkVc5Mzt
         jQbKWQFpv7gG+rftL6g5+jFwnxFbtIMnGbkEcECbWDeWk1ce98LsCY7ea4tLEi3EdVuZ
         cIq9OPHRfZWPZX6tMHiwFsDqcWvzpcAdpgUxxlwFCK3BwUTqaYvCtnIYDKyKXzq3hqrD
         jrrDogiW3YAUSjGBkfpF1hk9vsWqKGfwA5a3+jnQ9ojyMEI1wHIKfqi6sNuD5iSXZu+M
         wBWA==
X-Forwarded-Encrypted: i=1; AJvYcCValLcGkjVeYHTUjW2vHbTsM3onz75Yd/S0Z2LASNaTXPDCL3Gxd1iNINwtZ1BzABtZPjHbxgsZ7i4vD4MDI4cLhiQhc1vOiT04ew==
X-Gm-Message-State: AOJu0YxFaUWfnBGpHwEWpw4c4r4WNFa5B82TCX/gBGKTu3XyfpdXH/ob
	NdkGrfPkzTBPNV6rM/ToV7mLUKF5uB0CClh7PTZJuPEUkoicpTP3Guw0IvGVpps=
X-Google-Smtp-Source: AGHT+IHDob5MC7pBoXRQvVOvejr0UPr0ELjRxvZKwYBiigYwfpQvHiq6x0mY9FhLGZt2S+um0fqiTg==
X-Received: by 2002:a05:6e02:1aa6:b0:374:5300:88ac with SMTP id e9e14a558f8ab-39aec4020damr190027675ab.18.1722439353776;
        Wed, 31 Jul 2024 08:22:33 -0700 (PDT)
Received: from [192.168.40.12] (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39a22e7e6a4sm56215305ab.12.2024.07.31.08.22.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 08:22:33 -0700 (PDT)
Message-ID: <996e975f-89ad-413e-b051-b55899d4f20f@baylibre.com>
Date: Wed, 31 Jul 2024 11:22:32 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/3] dt-bindings: iio: adc: add AD762x/AD796x ADCs
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 David Lechner <dlechner@baylibre.com>,
 Uwe Kleine-Konig <u.kleine-koenig@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
References: <20240731-ad7625_r1-v1-0-a1efef5a2ab9@baylibre.com>
 <20240731-ad7625_r1-v1-1-a1efef5a2ab9@baylibre.com>
 <387b4028-7f8a-46df-a7f1-168d1700074d@kernel.org>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <387b4028-7f8a-46df-a7f1-168d1700074d@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2024-07-31 10:11 a.m., Krzysztof Kozlowski wrote:
> On 31/07/2024 15:48, Trevor Gamblin wrote:
>> This adds a binding specification for the Analog Devices Inc. AD7625,
>> AD7626, AD7960, and AD7961 ADCs.
> Please do not use "This commit/patch/change", but imperative mood. See
> longer explanation here:
> https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95
Will do.
>
> Why this is not ready, but RFC? What exactly needs to be commented here?
There's one outstanding question about whether or not there should be a 
DT property for specifying whether DCO+/- lines are connected (mentioned 
in the cover letter but not here). I guess it doesn't need to be an RFC 
just for that.
>
>> Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
>> ---
>>   .../devicetree/bindings/iio/adc/adi,ad7625.yaml    | 176 +++++++++++++++++++++
>>   MAINTAINERS                                        |   9 ++
>>   2 files changed, 185 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7625.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7625.yaml
>> new file mode 100644
>> index 000000000000..e88db0ac2534
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7625.yaml
>> @@ -0,0 +1,176 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/iio/adc/adi,ad7625.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Analog Devices Fast PulSAR Analog to Digital Converters
>> +
>> +maintainers:
>> +  - Michael Hennerich <Michael.Hennerich@analog.com>
>> +  - Nuno Sá <nuno.sa@analog.com>
>> +
>> +description: |
>> +  A family of single channel differential analog to digital converters
>> +  in a LFCSP package. Note that these bindings are for the device when
>> +  used with the PulSAR LVDS project:
>> +  http://analogdevicesinc.github.io/hdl/projects/pulsar_lvds/index.html.
> Eh? And what could be other case - used for what? What are the
> differences? Why mentioning it?
Poor wording on my part - I'm not aware of another configuration. Will 
fix on the resend.
>
>> +
>> +  * https://www.analog.com/en/products/ad7625.html
>> +  * https://www.analog.com/en/products/ad7626.html
>> +  * https://www.analog.com/en/products/ad7960.html
>> +  * https://www.analog.com/en/products/ad7961.html
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - adi,ad7625
>> +      - adi,ad7626
>> +      - adi,ad7960
>> +      - adi,ad7961
>> +
>> +  vdd1-supply:
>> +    description: A supply that powers the analog and digital circuitry.
>> +
>> +  vdd2-supply:
>> +    description: A supply that powers the analog and digital circuitry.
>> +
>> +  vio-supply:
>> +    description: A supply for the inputs and outputs.
>> +
>> +  ref-supply:
>> +    description:
>> +      Voltage regulator for the external reference voltage (REF).
>> +
>> +  refin-supply:
>> +    description:
>> +      Voltage regulator for the reference buffer input (REFIN).
>> +
>> +  clocks:
>> +    description:
>> +      The clock connected to the CLK pins, gated by the clk_gate PWM.
>> +    maxItems: 1
>> +
>> +  pwms:
>> +    maxItems: 2
>> +
>> +  pwm-names:
>> +    maxItems: 2
>> +    items:
>> +      - const: cnv
>> +        description: PWM connected to the CNV input on the ADC.
>> +      - const: clk_gate
>> +        description: PWM that gates the clock connected to the ADC's CLK input.
>> +
>> +  io-backends:
>> +    description:
>> +      The AXI ADC IP block connected to the D+/- and DCO+/- lines of the ADC.
>> +    maxItems: 1
>> +
>> +  adi,en0-always-on:
>> +    $ref: /schemas/types.yaml#/definitions/flag
>> +    description:
>> +      Indicates if EN0 is hard-wired to the high state. If neither this
>> +      nor en0-gpios are present, then EN0 is hard-wired low.
>> +
>> +  adi,en1-always-on:
>> +    $ref: /schemas/types.yaml#/definitions/flag
>> +    description:
>> +      Indicates if EN1 is hard-wired to the high state. If neither this
>> +      nor en1-gpios are present, then EN1 is hard-wired low.
>> +
>> +  adi,en2-always-on:
>> +    $ref: /schemas/types.yaml#/definitions/flag
>> +    description:
>> +      Indicates if EN2 is hard-wired to the high state. If neither this
>> +      nor en2-gpios are present, then EN2 is hard-wired low.
>> +
>> +  adi,en3-always-on:
>> +    $ref: /schemas/types.yaml#/definitions/flag
>> +    description:
>> +      Indicates if EN3 is hard-wired to the high state. If neither this
>> +      nor en3-gpios are present, then EN3 is hard-wired low.
>> +
>> +  en0-gpios:
>> +    description:
>> +      Configurable EN0 pin.
>> +
>> +  en1-gpios:
>> +    description:
>> +      Configurable EN1 pin.
>> +
>> +  en2-gpios:
>> +    description:
>> +      Configurable EN2 pin.
>> +
>> +  en3-gpios:
>> +    description:
>> +      Configurable EN3 pin.
>> +
>> +required:
>> +  - compatible
>> +  - vdd1-supply
>> +  - vdd2-supply
>> +  - vio-supply
>> +  - clocks
>> +  - pwms
>> +  - pwm-names
>> +  - io-backends
>> +
>> +- if:
>> +  properties:
> I don't think this was ever tested. Please use existing bindings or
> example-schema as template.

Ok, I'll look into it.

Thanks!

>
>> +    compatible:
>> +      contains:
>> +        enum:
>> +	  - adi,ad7625
>> +	  - adi,ad7626
>
> Best regards,
> Krzysztof
>

