Return-Path: <devicetree+bounces-239947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFC4C6B0E1
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 18:52:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 64E3A361CAA
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 17:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ED372C2353;
	Tue, 18 Nov 2025 17:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZwzGcwex"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041EF6FBF
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 17:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763487966; cv=none; b=YgkKfRijl8zy4yA4foRmPvjMit0wlecG24dnAWzJ6QuaVS/GXyUjLINcsUrusr8vT79GIiyMGO7UiJb9u5T7Tc2IwYERbxUyQA9+THu4sNWS+N5Cqr4DSX6oic83Aysrw17W0ztT+Ohrnx/4kiBd82dNEW7sgrIOHaLK6lDR7es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763487966; c=relaxed/simple;
	bh=IDXXPntONLtWnQ4H/+mhIZ/CKssmJVfOe9vQjmQEy+4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sXdi+hwsLoagYY3/IOitthdt2MuS5iFxSQzBpiHqbyPQ+8KetmzbOuol7KF4YPqkv7A5fR/FQwi7CzYq1aa3y/VdrEy1AIU/Wtbl0UgbGRlac51BR8MFYEG8gyVQIk6lmGkdu6iXM2LwstCYtbnMavu6an56Itl03o7zkVGnzaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZwzGcwex; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-450063be247so2036985b6e.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763487962; x=1764092762; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tRB3SkR03cIdDSITzGw4J5oXKbUxrRLBIfPvKWW4i4Y=;
        b=ZwzGcwex5++eHc7+B8WWsnstjkfTiYsv1x0bVohUwjmyQkslQ5v+4r8nAV9m9kbu8J
         0P9j8j/U/KGuB2AnNifdK8bYARA1E96bK0kMz3b72dwM+pP50JvDX3JZWKxWulkuzL0q
         oqIS96iQJ/WBdfCltuhLVhW72PEi2hq3xdKz0cOeZOF/NHmdhrhnEAjeEPTOSDEtDzmr
         G/QMcVSuNH48WsHlXD5lUvWaVZFBnWS/glyJyvPKI42BUuRqvea9AV2ydwcDfZNLnLWX
         aoTJo4pMtZQnq0hpTfNO6k5UfdzTy499LkrwCJeZ16rMnBT6FLeoH/ZOHPcgzhIfsO/B
         T08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763487962; x=1764092762;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tRB3SkR03cIdDSITzGw4J5oXKbUxrRLBIfPvKWW4i4Y=;
        b=nplqwnKKuqkaptIj/3JUHg4G0ygnXUHLu8I22qoY6vdoxREx1MiT130R5R4RLDD/oF
         MvnvpRfXQ5wr3WIXmX2fkReZopds88sD9vNtuOZJ0T5oF4M4+qyvzgSZjMMS8GPUSPDP
         etVjCS2BqLqZ3uXUImkKluFf7pFGh8RaOYvUDUCOr2k0II/gvEswqzHOixSDHKPv+zxu
         F975WaLmBC5TaRkbii2MwFzotIbAXofSY5oLGG3FKXmWuI/9Vlo76bIbN2Lq4qE6SZY/
         ZPzfZYX3T9BKsxk+Plj25x/SQk21BLLNgLLZQvKgSOQbYf7kLuHAJuMqabOO8/+Jm/Eg
         yPTg==
X-Forwarded-Encrypted: i=1; AJvYcCXlXT3YrwUDCZl0wpTIC/QjMmSjYB9oiqZVfUxCOW3xnRroR70vVYpW/l1JeH8DLbxpPiRFj79Cy1f4@vger.kernel.org
X-Gm-Message-State: AOJu0Yzal2TdoLzx/bnwADcpTt+VoomWOgkjvBq/VyxxsILUYh8W/jIK
	SAVtMwCZfu5PLTUM26NQMF31FOM5a2bPXS8oiFlfw3y/M0euo1j6UyZcn+9ZbioKbU4=
X-Gm-Gg: ASbGnctMTiul7l7orOGcV0Qn31SHofNTD7q8cdDITjsIuiSf8wZSY8Rvdh+rboq5awF
	m867u7XkNIk9PJoXNtY7hdj/hoyIqvI5OCoie14WUANgzZxTuF4O3tNquweJ0Q6JJ5fQZObqkdm
	Iga+CYY822USWkHP2pRrPKRvMG8O69E/dr1X2Wi6QkvKbMp2fJLJ40UEt8EPDdSmhRpA2BBswNa
	lmof4epJ3GYpDgqPjPxMo/awpNkR4HOUZJ+EFkF9cXqaMDxZ67b5zuh++mYg3n9MTgT5vjygXJc
	3gIxluoVEJfApZMlsSOHees4ygA8Ni7exmVXl85RyNvg7nHJIqZNGSc75NwjWttBtQy61+LRYku
	JYv0ykXbdQjNTOjlQD8JuKpTsei5I2tkkPP6jvbgevU/fyh/gmmb/hdMd7ZbDqWdzzoGuKkZCmL
	pwrQlDKGtuTgaw+msVampMY5/SWwLTnOiigtcJZDbb2+CRWLH++tcAM0G1Tj14
X-Google-Smtp-Source: AGHT+IEyXv7o8silWSWiXUwK16E7SzqW9ae9uZ2yQok+gwbaS1AMF/9TQObjEohC0ILlJFcIzyAJfQ==
X-Received: by 2002:a05:6808:8955:b0:450:c877:fd5e with SMTP id 5614622812f47-450c878022cmr4423732b6e.19.1763487962096;
        Tue, 18 Nov 2025 09:46:02 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:8e86:179b:44b8:cc2b? ([2600:8803:e7e4:500:8e86:179b:44b8:cc2b])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-65724cb873dsm5554288eaf.4.2025.11.18.09.46.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 09:46:01 -0800 (PST)
Message-ID: <97c6b55d-9505-4091-8f0b-317dcbd70838@baylibre.com>
Date: Tue, 18 Nov 2025 11:46:00 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] dt-bindings: iio: adc: adi,ad7380: add spi-buses
 property
To: Rob Herring <robh@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20251107-spi-add-multi-bus-support-v2-0-8a92693314d9@baylibre.com>
 <20251107-spi-add-multi-bus-support-v2-5-8a92693314d9@baylibre.com>
 <20251118155905.GB3236324-robh@kernel.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251118155905.GB3236324-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/18/25 9:59 AM, Rob Herring wrote:
> On Fri, Nov 07, 2025 at 02:52:51PM -0600, David Lechner wrote:
>> Add spi-buses property to describe how many SDO lines are wired up on
>> the ADC. These chips are simultaneous sampling ADCs and have one SDO
>> line per channel, either 2 or 4 total depending on the part number.
>>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>> ---
>>  .../devicetree/bindings/iio/adc/adi,ad7380.yaml    | 22 ++++++++++++++++++++++
>>  1 file changed, 22 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
>> index b91bfb16ed6bc6c605880f81050250d1ed9c307a..9ef46cdb047d45d088e0fbc345f58c5b09083385 100644
>> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
>> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
>> @@ -62,6 +62,10 @@ properties:
>>    spi-cpol: true
>>    spi-cpha: true
>>  
>> +  spi-data-buses:
>> +    minItems: 1
>> +    maxItems: 4
>> +
> 
> As the property is not required, what's the default?

spi-perepheral-props.yaml defines:

	default: [0]

Do I need to repeat that here?

> 
>>    vcc-supply:
>>      description: A 3V to 3.6V supply that powers the chip.
>>  
>> @@ -245,6 +249,22 @@ allOf:
>>        patternProperties:
>>          "^channel@[0-3]$": false
>>  
>> +  # 2-channel chip can only have up to 2 buses
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          enum:
>> +            - adi,ad7380
>> +            - adi,ad7381
>> +            - adi,ad7386
>> +            - adi,ad7387
>> +            - adi,ad7388
>> +            - adi,ad7389
>> +    then:
>> +      properties:
>> +        spi-data-buses:
>> +          maxItems: 2
>> +
>>  examples:
>>    - |
>>      #include <dt-bindings/interrupt-controller/irq.h>
>> @@ -260,6 +280,7 @@ examples:
>>              spi-cpol;
>>              spi-cpha;
>>              spi-max-frequency = <80000000>;
>> +            spi-data-buses = <0>, <1>;
>>  
>>              interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
>>              interrupt-parent = <&gpio0>;
>> @@ -284,6 +305,7 @@ examples:
>>              spi-cpol;
>>              spi-cpha;
>>              spi-max-frequency = <80000000>;
>> +            spi-data-buses = <0>, <1>, <2>, <3>;
> 
> An example that doesn't look like a 1 to 1 mapping would be better. 
> Otherwise, it still looks to me like you could just define the bus 
> width.

I'm not sure we could do that on this chip since it doesn't have
the possibility of more than one line per channel. I can add a
patch with a binding for a different chip though that can have
such an example.

> 
>>  
>>              interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
>>              interrupt-parent = <&gpio0>;
>>
>> -- 
>> 2.43.0
>>


