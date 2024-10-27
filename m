Return-Path: <devicetree+bounces-116054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0432E9B1B7A
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 02:20:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEDF8282327
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 00:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FE5323BE;
	Sun, 27 Oct 2024 00:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kMPQ7/4v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DABEE1362
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 00:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729988431; cv=none; b=JKWczEEsltQc3vUSWJf7ET0mYmgqp61vNAwUHqZtMwVHrfkcljB8g7pD6AooUU8zG+1uhjoJy4Mf3fHEJyBnloqtxvx5kyEVKFZqoQaWGHM7ckbmLRKsrcP2E+PvOQjzwSWMyD2CFcRLt7Z+mn1HaDJSvrrrPy9jtEqni6e1xGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729988431; c=relaxed/simple;
	bh=2m7qUxHWEfN8Q+t3kuiUvZE7GGoJLejjm+XHtfVBQVo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VfO/CZ4BCr3LMsbhZ9op6jdKsL532fUvQlanp+/uNpqt6vAQ5lNkueUXXhItOQ3i2QFArGdCTE8s9tnr0QYjcJGXjkfZCUFEPA027A90fWwr2ljQ61GnxSicSsAOtJBTU1Dv8CinrSErGD1C+oOQcMpCNHVld7h0nxRGgOA9qsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kMPQ7/4v; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3e6075cba82so1678243b6e.0
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 17:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729988428; x=1730593228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gC/B3ePh173CzPyAaHugirfX1pGB4UZuGgWIDFmLpTo=;
        b=kMPQ7/4vkKP2irw4SPMbkIyqHURlf3C3aG0fN5AlDTuopVf15rTDA0AZzsBrwzjA+S
         cuDBybYckuBogPpHjUbbDuxIO5Ex5wBWl8hNso4dnz9I1pl9Kyo0TYi/cORnB1+d54x6
         9El/fbsvddlCwgP5v6RIVPWxAK57nWI3NZZGZq+VryETQORzVs65El9Ze8INNedf9oCc
         dOfnRv6O93rtaxUZAn2njALZyeadUSUhSp/Q4Px56cGLUq20B9no7YGf6G1vApxv/WLL
         HN2W/al/mr350xgLB6g0SF2RgqbMzcPKhgZuBHzAAFlJgSdtmn9ZkTVE2JusrQUuLn96
         OHOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729988428; x=1730593228;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gC/B3ePh173CzPyAaHugirfX1pGB4UZuGgWIDFmLpTo=;
        b=FTE/xUDOvyD8qSBKfytqlNlk9ncR/lghEhAR+fe8E2AWFDzNC/c0iIr8Mf+2TJSAkm
         EvpNVBUSVurUNwGhSAAVJjUcCsWjWBsuUPw1Hh1mzaysxfmVzFRdqBagbe5Gft64oe27
         9/fnXsl6lzlo+3QXJ6wF3WqPGftaMkMDseH/WyujuYK+raUXN8Vc55bgfHBUdmih/oGv
         1hYBRh6VUyQU4mVCkkt533WE706+i0e9RRC40QYbo3QZ2YbzzwIs8Ietj57vNoHn5JQl
         g000+9cwaFUSV2hheu4z1+TRCsnguE5+plefqRroGSE+dpFcdiqzY7FTRgrlRgVJdoNw
         lzFw==
X-Forwarded-Encrypted: i=1; AJvYcCVdQxNuVrgl7FQd8x2tHjsebsd96Es2lFmVJdvUzwngdEIQ6rU1B7HJs26X80xMHJFv6/ttJnk7RLJl@vger.kernel.org
X-Gm-Message-State: AOJu0YxqnV5KXGopBSsn2wq1p7PmdEooCWptotLn7wLSxhl2v2YBRCsF
	hlH81wjc9XUyeiBfi4cZwrRSy8/ORXOwjCSA2vNCdw0cp/x4tZjZBKpPHDTVtdLQqP4Hkt8rMBn
	n
X-Google-Smtp-Source: AGHT+IG68kaonmbkL5dJ3DQuXHXhIQkLnDUW/ccB5u22eusFKceb3+B9YIC2/XLBHEhZz5NOUlJRMg==
X-Received: by 2002:a05:6808:3384:b0:3e6:b46:4f76 with SMTP id 5614622812f47-3e63823e06cmr2500343b6e.1.1729988427879;
        Sat, 26 Oct 2024 17:20:27 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e6325b8623sm915906b6e.49.2024.10.26.17.20.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2024 17:20:26 -0700 (PDT)
Message-ID: <9669117f-667e-4a2b-b815-c49bf0731eec@baylibre.com>
Date: Sat, 26 Oct 2024 19:20:24 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 05/15] spi: dt-bindings: add PWM SPI offload
 trigger
To: Jonathan Cameron <jic23@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>,
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20241023-dlech-mainline-spi-engine-offload-2-v4-0-f8125b99f5a1@baylibre.com>
 <20241023-dlech-mainline-spi-engine-offload-2-v4-5-f8125b99f5a1@baylibre.com>
 <20241026161837.30a56ae1@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241026161837.30a56ae1@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/26/24 10:18 AM, Jonathan Cameron wrote:
> On Wed, 23 Oct 2024 15:59:12 -0500
> David Lechner <dlechner@baylibre.com> wrote:
> 
>> Add a new binding for using a PWM signal as a trigger for SPI offloads.
> 
> I don't have a better suggestion for this, but it does smell rather like
> other bridge binding (iio-hwmon for example) where we have had push back on
> representing something that doesn't really exist but is just a way to
> tie two bits of hardware together. Those kind of exist because we snuck
> them in a long time back when no one was paying attention.
> 
> So this one may need more explanation and justification and I'd definitely
> like some DT maintainer review on this at a fairly early stage!
> (might have happened in earlier reviews but it has been a while so I've
> forgotten if it did)
> 
> Jonathan
> 
We could probably make it work like the leds version of this
binding where the trigger-sources property can have phandles
to anything, not just a dedicated class of device. It just
gets messy to implement because every subsystem needs to have
core code modified to be able to handle using a device or
one channel/gpio/etc. of a device as a trigger instead of
whatever it normally is.

> 
>>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>> ---
>>
>> v4 changes: new patch in v4
>> ---
>>  .../devicetree/bindings/spi/trigger-pwm.yaml       | 39 ++++++++++++++++++++++
>>  1 file changed, 39 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/spi/trigger-pwm.yaml b/Documentation/devicetree/bindings/spi/trigger-pwm.yaml
>> new file mode 100644
>> index 000000000000..987638aa4732
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/spi/trigger-pwm.yaml
>> @@ -0,0 +1,39 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/spi/trigger-pwm.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Generic SPI offload trigger using PWM
>> +
>> +description: Remaps a PWM channel as a trigger source.
>> +
>> +maintainers:
>> +  - David Lechner <dlechner@baylibre.com>
>> +
>> +$ref: /schemas/spi/trigger-source.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    const: trigger-pwm
>> +
>> +  '#trigger-source-cells':
>> +    const: 0
>> +
>> +  pwms:
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - '#trigger-source-cells'
>> +  - pwms
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    trigger {
>> +        compatible = "trigger-pwm";
>> +        #trigger-source-cells = <0>;
>> +        pwms = <&pwm 0 1000000 0>;
>> +    };
>>
> 


