Return-Path: <devicetree+bounces-163264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C74A7C189
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 18:28:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49E68189AF46
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 16:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06C4720C037;
	Fri,  4 Apr 2025 16:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1RsAGolh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52B92036E8
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 16:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743784129; cv=none; b=F68N3+OFAdFzVjFIrVgbB8ZD54Bj5g2G5m9d3Zo1srKf+GmGYjJ4QaoXDED5ZwEmFmNivw/Yw3cXXjBo3GBNgsAR3qizJQJm+211a3ECGf7ok0w2+yv/7IzxORlk2xN6pNkv4QKddnyMKkr7xyaRNZM+Mb5JfFYr6hur5TohRsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743784129; c=relaxed/simple;
	bh=aPfTlnx79I50LknnGIiLimhrM64NquPvfETcrAuxChk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ofjwYZSpKqtvvIlsdzYwRNYsnB3vfW37Cwv94qbX6K2+5d0UkvuIFjaXraf9mtZ+NFVieNDmylcltUADEqbAtXxFPhw7VqpLO9IABYrjTbd0sPP7sqiGkWUQ8e7VJUcmdx3O1oTBkoQS8+KsNiAs9xJKRwCBT+3XIXw0SepELzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1RsAGolh; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3fefbbc7dd4so1258883b6e.2
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 09:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743784126; x=1744388926; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DaO/i+FkA1AGng8olW1HsvMniOQdjloeUrl7nwcQdAQ=;
        b=1RsAGolhuFAhAqFDte0pGdBos54Fe1G8DHewzlsNyeP/A4dh+YDVNZ7moV4XncyEE0
         vlOa9k6DShVfPgLizKUpnnfTN7O4vSnOyNyFJFTUiQeKbKxAO/0tvmOJ8LwUH6yPhHZo
         KOutQQF01lR6d3SNMaGSUttAdWYJLaOCNk6KkQVR5PE1vo1zCh7HJv5ddjKcRe/YEvNd
         U7aRcJtz5VZIRMJk2noFPnxj9CF6EWvVFvfJDkNliu2zJOzSpX+gvCGEVu1ENPrqnsiZ
         BAWjGIffawi1P9hwdZ6KmC38T8GLJI2DH2DbJP/CQNshUcimVGXuYfWnfPS4rLfTR8+H
         jclw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743784126; x=1744388926;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DaO/i+FkA1AGng8olW1HsvMniOQdjloeUrl7nwcQdAQ=;
        b=nPbbXDYcXGRy0VNpVAbSU3xGymU0/OUEcUlXrmRSE8WQQ1MBwOMWKJr1arQhjkObSZ
         CMR97exEWA09V3bgSvL7Cy8csve9Eq/pDWqSMNJZZ1R399vbEkn94zeVJB8yoUTK9kEP
         MXggera9IJrpGIFyNfg9zhdt98PSB3g6OGWKN7ZTMxKCrfsOle35hnLJBf+CRnjYsrSN
         VVMVySB07dkYMTRCFFoJkMnC53NpHqiSF58PWn+EYyd34osYt96q1UUbfAloW169S0Ud
         VB0ZoTLBcSHqX1aCNBkpUO722YI1jHEabuETYYiQeKGdnIekczqu1CZooQ0r5tEPJ1b/
         UBhg==
X-Forwarded-Encrypted: i=1; AJvYcCU4L18Xeqok1wkL3M77zFpNcs29/kBlSnv/xcp05O7vIceBF9a3/m1/4OJdrbGT6fpc2XdlZ6vow+Iu@vger.kernel.org
X-Gm-Message-State: AOJu0YzpJ5rstkXIk03HDFyiV+Qa9B1TCItgPkX3GhpqEisJQzLWYUb/
	ycqAT5kGiOubO2URay/cFXSqY0G3xBYVRfHhRinckw17kOHkZaNvuuqSOTeOsjI=
X-Gm-Gg: ASbGnctFhpVUxD8Rz/7zQcboXiHEWrMxd1PkQTEaar3agpqYo+4eNw5f9/enL7ETJIG
	T4FtUc4l9oSTpe7wIc0kNunk6qloiMTkkTuWMEAUmRB9gIKG6Nt2i5wL8Z+1TNtSahnlsjIpM3A
	C1T9K4ZmMM35gT/XiW2/zBJ2ZHQ3+wcZPI55gKOXv4oLxFBZTjlkmd1QsNDYu2Bu/5U3CIxI6yh
	4Wnh0lEtJoO+DGf2rB8mZ3Mt4ssfvrEcLZoxjPTDqX7AAUbEyiuOA4T6tayWzCz0ckM3KeGj7ir
	ISRffc1NDPWm0FtuszB4T4urdMhcawppjhPxWPmfQE0XEcBHI8GxDnq9y0ysDPXm0JVrjKEZkTM
	N3lS0Fw==
X-Google-Smtp-Source: AGHT+IEkqUFuTsF9DpWKUAtQj8c+kb6zBiRbPxTHELYMYo/Mt6uOX2gp4gqviwKs1uyy7BfnRAertw==
X-Received: by 2002:a05:6808:1246:b0:3f6:abbf:bb88 with SMTP id 5614622812f47-4004563ad1amr1867597b6e.29.1743784125715;
        Fri, 04 Apr 2025 09:28:45 -0700 (PDT)
Received: from [192.168.0.113] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4003ff6c255sm670214b6e.18.2025.04.04.09.28.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Apr 2025 09:28:45 -0700 (PDT)
Message-ID: <dcb9c90f-480d-456e-ab01-d68171356050@baylibre.com>
Date: Fri, 4 Apr 2025 11:28:43 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: iio: dac: Add adi,ad3530r.yaml
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Kim Seer Paller <kimseer.paller@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250403-togreg-v3-0-d4b06a4af5a9@analog.com>
 <20250403-togreg-v3-2-d4b06a4af5a9@analog.com>
 <b2082b59fcbffe9f546bb681eb33276a3c5896c5.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <b2082b59fcbffe9f546bb681eb33276a3c5896c5.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 4/3/25 6:15 AM, Nuno Sá wrote:
> 
> Hi Kim,
> 
> On Thu, 2025-04-03 at 13:33 +0800, Kim Seer Paller wrote:
>> Document the AD3530/AD3530R (8-channel) and AD3531/AD3531R (4-channel)
>> low-power, 16-bit, buffered voltage output DACs with software-
>> programmable gain controls. They provide full-scale output spans of 2.5V
>> or 5V for reference voltages of 2.5V. These devices operate on a single
>> 2.7V to 5.5V supply and are guaranteed to be monotonic by design.
>> The "R" variants include a 2.5V, 5ppm/°C internal reference, which is
>> disabled by default.
>>
>> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
>> ---
>>  .../devicetree/bindings/iio/dac/adi,ad3530r.yaml   | 99
>> ++++++++++++++++++++++
>>  MAINTAINERS                                        |  7 ++
>>  2 files changed, 106 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad3530r.yaml
>> b/Documentation/devicetree/bindings/iio/dac/adi,ad3530r.yaml
>> new file mode 100644
>> index
>> 0000000000000000000000000000000000000000..cf4a3eb98f1fa30afdeb0740bba7f052d8ec
>> 2cd4
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad3530r.yaml
>> @@ -0,0 +1,99 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/iio/dac/adi,ad3530r.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Analog Devices AD3530R and Similar DACs
>> +
>> +maintainers:
>> +  - Kim Seer Paller <kimseer.paller@analog.com>
>> +
>> +description: |
>> +  The AD3530/AD3530R (8-channel) and AD3531/AD3531R (4-channel) are low-
>> power,
>> +  16-bit, buffered voltage output digital-to-analog converters (DACs) with
>> +  software-programmable gain controls, providing full-scale output spans of
>> 2.5V
>> +  or 5V for reference voltages of 2.5V. These devices operate from a single
>> 2.7V
>> +  to 5.5V supply and are guaranteed monotonic by design. The "R" variants
>> +  include a 2.5V, 5ppm/°C internal reference, which is disabled by default.
>> +  Datasheet can be found here:
>> + 
>> https://www.analog.com/media/en/technical-documentation/data-sheets/ad3530_ad530r.pdf
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - adi,ad3530
>> +      - adi,ad3530r
>> +      - adi,ad3531
>> +      - adi,ad3531r
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  spi-max-frequency:
>> +    maximum: 50000000
>> +
>> +  vdd-supply:
>> +    description: Power Supply Input.
>> +
>> +  iovdd-supply:
>> +    description: Digital Power Supply Input.
>> +
>> +  io-channels:
>> +    description:
>> +      ADC channel used to monitor internal die temperature, output voltages,
>> and
>> +      current of a selected channel via the MUXOUT pin.
>> +    maxItems: 1
>>
> 
> I'm a bit puzzled... Isn't this device the provider of such a channel?
> Therefore, I believe we should have #io-channel-cells, right?

Nope. :-)

The MUXOUT is an analog output pin, so this property is to read back from
an external ADC what the analog value of MUXOUT is. The DAC doesn't have an
internal ADC for measuring these values.

Comes from Jonathan's suggestion on a similar chip:
https://lore.kernel.org/linux-iio/20240413160610.4cec010b@jic23-huawei/

> 
> - Nuno Sá
> 
> 



