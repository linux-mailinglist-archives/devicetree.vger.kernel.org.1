Return-Path: <devicetree+bounces-85275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 282F192F81F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 11:41:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A70091F23FC7
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 09:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 023FC157469;
	Fri, 12 Jul 2024 09:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="paLaA0pZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A59155A30
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 09:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720777270; cv=none; b=JugdIiQAICSYyavd0qyTyNwjzW+kJv/trBp4xOalSBN7ffqinKje+viS1msp+Cjdv9FJgl+BQhmUOUTVQhwuBqQv4EpgVs8YPXBHI/ou5fgXUcjDCaLGUAVmQLRuEwnwee11DUG7Bxkoevkx3by9+2PhrDL46STPqFMUYjH5I90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720777270; c=relaxed/simple;
	bh=lP/NXfk3Az1Fxv0p95F6EcTegJ4Jy3/k9NUrssWZaK8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Abl9IoZzKoqmfMXBjqqKFsxQTm/ldbUaqer13h6RGcpCgXWxSFOMOCpNzbnGZ3uRu2aYYTiGBc7aKxR2DF2iPAxd0fs4myRfYSaJL2beLrbRC8CESVbeWWb6pmnMmuPUBTD2jwv2r3k9sYRRKkrTXjtcf+SGEzUqiJyG8OucmKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=paLaA0pZ; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4266b1f1b21so12028995e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 02:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720777266; x=1721382066; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=9cim3kTnG+uAdFS+huiCL6rzqD8JsA5JCt8clCGoh+w=;
        b=paLaA0pZfzod2lMg2NxTN9UykT/Gq7xi7sTEqlIhS/O8LAb9YDkKYFdJGzTzYRiiNZ
         KVvQQ8OcgrEdQDZXJdBPmD2N7iQhxjKqBBcDumq6nXtqafjJU7K20f5p0jfS0+vXUspH
         V0Dp9P/XdSfPuOux32G+MLWrK2hayRBNr5s/IZ1IU2PrR3wTJN9ir7fjGOopUU3G5Jqc
         W1o/kKg1zvKqE9J+cHQl+jT8DBphw92AvyPYq5Y9ayNviq/FvDqBPnri9L/gy1YQK4mI
         O3irwixpaAajVgz5mabONe3AXAW4UcWmQ9QRVtAOlI2d0x1xh+WcLY5i8LQLG7bL2qKm
         2+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720777266; x=1721382066;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9cim3kTnG+uAdFS+huiCL6rzqD8JsA5JCt8clCGoh+w=;
        b=AVpl0mo9IDzqfr3PID4xq9B88gIhQCygn2bhmmikgfzp06G8UmYr7vtPgiMP/PdVHU
         Mj0ldMKdBgqjgQzhP1f0CDxEfxKRx5dJSBzqIZDuLCGxJQpzDIcAaw12sNOGUyGj4qng
         q7vhzVxanDUJr5mq5SozX519ngvLpOx/6o7pM2PVryhS6EvHd/10cY1Ou6IXL3yUW5oX
         V7qtsc3Gyn93z2WLiXZ5RjCsSZoSlaI4/KMZB0W38MDuYyYaY+AZRFWl0T6C5jkHitJ0
         PrP17b7cOMbYPQfGOn6kxxf7Z+cTQkSutWYwE2mNX0EFkHtB9o69hQp1OhwjmaiWQ1h2
         vaTA==
X-Forwarded-Encrypted: i=1; AJvYcCXYEnp8X93Lzyk5z555i4sR14EZ+TJIdprB33YtvrwzeGMkuCAokQ3mWTNfvH7sT9WYhGKuRVYqoYtU9bI+QGQLLE8Ut764CoNywQ==
X-Gm-Message-State: AOJu0YyCbYQecvpmAvGeD6bgHXO6cDY5HibVWthdu1U7bbNFZTl9i74V
	b+Lr02/h926NOMoC3Z3KFKGQmL+v2RMPFfWe8CFscIVvXqQLMwaKI/qg4GDX04M=
X-Google-Smtp-Source: AGHT+IG41/cUWWFH60QXrnFgYOhb3mS6IQfWyMP/e6KJ2vD98NIDINkh+l1XAFN4MUuyg3E3huUWQQ==
X-Received: by 2002:a05:600c:460a:b0:426:51d1:63c3 with SMTP id 5b1f17b1804b1-426708fa8e2mr70579945e9.38.1720777266022;
        Fri, 12 Jul 2024 02:41:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f268295sm17098945e9.20.2024.07.12.02.41.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jul 2024 02:41:05 -0700 (PDT)
Message-ID: <73038a80-ce58-4967-a258-d6befe23c777@linaro.org>
Date: Fri, 12 Jul 2024 11:41:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: incomplete-devices: document devices
 without bindings
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marek Vasut <marex@denx.de>,
 Jonathan Cameron <jic23@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20240711085930.26252-1-krzysztof.kozlowski@linaro.org>
 <CAL_Jsq+WdctoTMNoakiY5kh4nDoNx5h522s76LoHyD_yKYvvSg@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAL_Jsq+WdctoTMNoakiY5kh4nDoNx5h522s76LoHyD_yKYvvSg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/07/2024 15:01, Rob Herring wrote:
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - description:
>> +          Rejected compatibles in Devicetree, but used in ACPI-based devices
>> +          with non-updatable firmware/ACPI tables (via ACPI PRP0001)
>> +        enum:
>> +          - broadcom,bcm5241
>> +          - ltr,ltrf216a
>> +
>> +      - description: Incorrect compatibles used on Macintosh devices
> 
> They were correct at the time. Rules/standards evolve though. I would
> just say 'Legacy" rather than "Incorrect".

ack

> 
>> +        enum:
>> +          - adm1030
>> +          - bmac+
>> +          - heathrow-media-bay
>> +          - keylargo-media-bay
>> +          - lm87cimt
>> +          - MAC,adm1030
>> +          - MAC,ds1775
>> +          - max6690
>> +          - ohare-media-bay
>> +          - ohare-swim3
>> +          - smu-sat
>> +          - swim3
>> +
>> +      - description: Incorrect compatibles used on other PowerPC devices
>> +        enum:
>> +          - 1682m-rng
>> +          - IBM,lhca
>> +          - IBM,lhea
>> +          - IBM,lhea-ethernet
> 
>> +          - mpc5200b-fec-phy
>> +          - mpc5200-serial
>> +          - mpc5200-sram
> 
> Tell Grant he needs to document these. ;) JK
> 
>> +          - ohci-bigendian
>> +          - ohci-le
>> +          - ohci-littledian
> 
> Given the typo, I think we can just drop this one from the driver.

Sure, I'll send a patch. It could affect some ancient user, though...
Although I really wonder if any of these PowerPC boxes are still alive.

> 
>> +
>> +      - description: Incorrect compatibles used on SPARC devices
>> +        enum:
>> +          - bq4802
>> +          - ds1287
>> +          - isa-m5819p
>> +          - isa-m5823p
>> +          - m5819
>> +          - sab82532
>> +          - SUNW,bbc-beep
>> +          - SUNW,bbc-i2c
>> +          - SUNW,CS4231
>> +          - SUNW,ebus-pic16f747-env
>> +          - SUNW,kt-cwq
>> +          - SUNW,kt-mau
>> +          - SUNW,n2-cwq
>> +          - SUNW,n2-mau
>> +          - SUNW,niusl
>> +          - SUNW,smbus-beep
>> +          - SUNW,sun4v-console
>> +          - SUNW,sun4v-pci
>> +          - SUNW,vf-cwq
>> +          - SUNW,vf-mau
>> +
>> +      - description: Incomplete and incorrect compatibles for unknown devices
>> +        enum:
>> +          - electra-cf
>> +          - i2cpcf,8584
>> +          - virtio,uml
>> +
>> +      - description: Linux kernel unit tests and sample code
>> +        enum:
>> +          - audio-graph-card2-custom-sample
>> +          - compat1
>> +          - compat2
>> +          - compat3
>> +          - linux,spi-loopback-test
>> +          - mailbox-test
>> +          - regulator-virtual-consumer
>> +          - unittest-gpio
>> +          - unittest-pci
> 
> We recently added "test" as a vendor prefix and don't complain if
> "test,.*" compatible is not documented. It's on my todo to change
> these. So I'd drop the unittest ones.

Ack

Best regards,
Krzysztof


