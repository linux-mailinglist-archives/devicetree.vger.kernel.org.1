Return-Path: <devicetree+bounces-178022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DC9ABA030
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 17:45:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0471417204E
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 15:45:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23B861632DD;
	Fri, 16 May 2025 15:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vZmzqCd4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF111C84D7
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 15:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747410315; cv=none; b=P6bmFTqjMGHm2cS+RvLM56iIh+Vj8VaMn6wFtDtov5uqKXGKy2wwx6iLq+TJCztA+iCWgbCC9vxXcBShDKDAN457c4LYHIs6gS5B6l4iWEIU0WT/+Jqb0xeYJ/R3EhI8vLawvhz2Ae6z5VdWG0y/xqh8loh17kTqhuW++Bf+000=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747410315; c=relaxed/simple;
	bh=GPqjEiXfvgpVyzD7MfRLrA0RhaihGYpKr3DGczzpvTA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DdgGZZdShB5DpPizP0dJfmHEpRJ43g7Hwg8bE6pWd6umcJu1e2P854tiFvIouX3mlxL6xx3QtuWpPlDWpVJ0iFMHE10d/P4vJI74TbP6georn/5ZYO8jHsoQHUlfTH0G32vuQE7U3OeE3GFzrlfoKFXO9OBPaQUWr+5sapD6U8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vZmzqCd4; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-72ec58e45baso1911970a34.2
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 08:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747410311; x=1748015111; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7Ec1M58FKkAOe/rNmBRU5GFp7ntrZHiowIyOOzinjDk=;
        b=vZmzqCd4B1S9g7Y1eUe58JAxpVOfMLRS/EfrN48K8nT9Ckz/17kb/TKZzxmQDYDBLB
         sqgvdl+4xf/RpwTAfWTChaLgx/r5Okk64g/5n8FMNe7vIezENo/ToHO6kop3EHzJrgu3
         W00ztlXGJfLDBoNLos5bJGbzoa+7Ly8X47A8KaUf5uJQ1zlwokuwqiM8EZzqVroRRklz
         MYeCGDnsKd9nSCBeucvQjpHTCZHG96nLUkiaQCRK5dtw8rUveHsE+rHcZo2Nk7jxJsJQ
         s2sTnONuCAHD3psk8Ek52I8x3sc7+2tHjE7BFi1IJ65bPdYhs351YwUeP8/USfWeWbrD
         yehA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747410311; x=1748015111;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Ec1M58FKkAOe/rNmBRU5GFp7ntrZHiowIyOOzinjDk=;
        b=qRH9WWV/i6YyeJzKLhOVk2/NdOrryT4QASnOGFynFJi6SL2NBtOD/Kqj8lJ6ZJ28Cj
         JkUQs+24wSCJUwqN4+DguZ67rcp6VAj2E76uoGg/MqdMQkWHw/AfxrSPqr6fmVKZYvIq
         dyeR6WTBjoQK9B/f9+/RY/JOdWxZv0KQliKM8n4AM9xcT4onpquPBNHs986shWsObXkR
         fiQlt5U8d10GroBzUiilpvgd21/3Z9FCcTlNx3SP+W0sRTEsxuXz8tuwpeyC6p85/3JQ
         W2taOgrSji/6d2knQfL6ewVAGX28X3TmskDoKHWrp/GhGNT3fWAlLpxA/6uBG0TfPFM1
         0wxg==
X-Forwarded-Encrypted: i=1; AJvYcCXtBN4is1wuypZtkIEDpeUvuDFfoHyrKbSP0a1fCC1/zNCtQ2GSjjwuXfkSkAdSRMURw+/IABr2998w@vger.kernel.org
X-Gm-Message-State: AOJu0YzL7FkbEUQ0DzJ3Q+okulBE55timPWn4eSGlG41vhbbUCircGo9
	xGQeFBfzgv+6xIRik6Hl47CGZUc4k1AwT8e0H+tRX1pQXxekwXebHoYBGOyTmNYsEGE=
X-Gm-Gg: ASbGnctrEUISQ2zf8GrYM240MFnBhjv5I/MeoPqqc0qIGNw8CiPxxi4R3FOygMBJew1
	XgDOa7dhuLCsBHbxvuh/iNd3tnVjgh5fbpW47qy3tWBUP9ocA8EEffsurgRZNkrLlwxnfDLi2c1
	sJpCMKZ141gZfm3uxvqqHNRkemlffQP22F/LxbiLYMdtA0oixN9dUt2Nzhw9YAcfRB9mwxMlL7D
	Uzwl0+l+2B2k/UxRAh1zWHjUAElnXtLvIgE/Hz0kiBViRBMt8n0YacJBXV3bTiIJtECaNlr7IHo
	Qf6lhTmMWJNg1Uwn1Q+iORAMT0CxWm3vH4ilkORZClZrs1Pa37zh3WozhYbmvgFryXU5kESdV1A
	jZP7sxzBDMjevMc5f7Jrc4fZpNA==
X-Google-Smtp-Source: AGHT+IFTiBMCmlFr4Xr0IwvjcWT2W9Ff39GtxaqewQ9MPpe3zVgv86xbspnneLI+BuJWWeAsX6ukEg==
X-Received: by 2002:a05:6830:d82:b0:72b:7e3c:7284 with SMTP id 46e09a7af769-734f994c4f5mr1927613a34.18.1747410310861;
        Fri, 16 May 2025 08:45:10 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:d2f:9b08:7c22:3090? ([2600:8803:e7e4:1d00:d2f:9b08:7c22:3090])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-734f6a4b101sm389197a34.9.2025.05.16.08.45.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 May 2025 08:45:10 -0700 (PDT)
Message-ID: <5318e6be-5299-47bf-8c6d-1d30a1765b9b@baylibre.com>
Date: Fri, 16 May 2025 10:45:09 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] dt-bindings: iio: adc: add ad7405
To: Conor Dooley <conor@kernel.org>,
 Pop Ioan Daniel <pop.ioan-daniel@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sergiu Cuciurean <sergiu.cuciurean@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Trevor Gamblin <tgamblin@baylibre.com>,
 Matteo Martelli <matteomartelli3@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250516105810.3028541-1-pop.ioan-daniel@analog.com>
 <20250516105810.3028541-4-pop.ioan-daniel@analog.com>
 <20250516-moonshine-engine-006e72665702@spud>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250516-moonshine-engine-006e72665702@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 5/16/25 9:18 AM, Conor Dooley wrote:
> On Fri, May 16, 2025 at 01:58:03PM +0300, Pop Ioan Daniel wrote:
>> Add devicetree bindings for ad7405/adum770x family.
>>
>> Signed-off-by: Pop Ioan Daniel <pop.ioan-daniel@analog.com>
>> ---
>> changes in v2:
>>  - fix properties: clocks issue
>>  .../bindings/iio/adc/adi,ad7405.yaml          | 60 +++++++++++++++++++
>>  1 file changed, 60 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7405.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7405.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7405.yaml
>> new file mode 100644
>> index 000000000000..939de3bd6f26
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7405.yaml
>> @@ -0,0 +1,60 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +# Copyright 2025 Analog Devices Inc.
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/iio/adc/adi,ad7405.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Analog Devices AD7405 family
>> +
>> +maintainers:
>> +  - Dragos Bogdan <dragos.bogdan@analog.com>
>> +  - Pop Ioan Daniel <pop.ioan-daniel@analog.com>
>> +
>> +description: |
>> +  Analog Devices AD7405 is a high performance isolated ADC, 1-channel,
>> +  16-bit with a second-order Σ-Δ modulator that converts an analog input signal
>> +  into a high speed, single-bit data stream.
>> +
>> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ad7405.pdf
>> +  https://www.analog.com/media/en/technical-documentation/data-sheets/adum7701.pdf
>> +  https://www.analog.com/media/en/technical-documentation/data-sheets/adum7702.pdf
>> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ADuM7703.pdf
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - adi,ad7405
>> +      - adi,adum7701
>> +      - adi,adum7702
>> +      - adi,adum7703
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  vdd1-supply: true
>> +
>> +  vdd2-supply: true
>> +
>> +  io-backends:
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - clocks
>> +  - vdd1-supply
>> +  - vdd2-supply
>> +  - io-backends
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    adc {
>> +        compatible = "adi,ad7405";
>> +        clocks = <&axi_clk_gen 0>;
> 
> No reg here, how do you actually access this device?
> Is it entirely via the backend?

Yeah, it is just a high speed serial bus (not SPI) that reads data
and there are no programmable registers.

It would probably make sense to have this as a child node of the
backend rather than a random platform device. We had a similar
discussion about a similar case a while back [1].

However, the conclusion in that case was different because that
device had both configuration registers and non-SPI compatible
data stream on the same lines. So we concluded that even though
this was the same line on the DAC, it was two different buses.
We ended up with the AXI ADC node as a parent SPI controller node
that also used the io-backends binding to represent the separate
data bus.

In this case though, we only have one bus, so instead of using the
io-backend binding, we could just have the AXI ADC node be the
parent of the ADC node as was suggested in [2].

[1]: https://lore.kernel.org/linux-iio/f9a2b74f371fb4b02486ad7426c57b75739438f3.camel@gmail.com/
[2]: https://lore.kernel.org/linux-iio/e8af0f3f-a09c-42d7-b8ca-dd633539af73@kernel.org/

> 
>> +        vdd1-supply = <&vdd1>;
>> +        vdd2-supply = <&vdd2>;
>> +        io-backends = <&iio_backend>;
>> +    };
>> +...
>> -- 
>> 2.34.1
>>


