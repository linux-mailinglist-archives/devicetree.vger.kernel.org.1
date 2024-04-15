Return-Path: <devicetree+bounces-59403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2978A5264
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 15:55:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B3B9C1F22D09
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 13:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BB0E7350C;
	Mon, 15 Apr 2024 13:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Vq1M0w/G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD677317D
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 13:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713189324; cv=none; b=RVAPtPc2aMe/xWmuCkf6ILVgwGhw0N1Q5iYFcPZuGgexAV8OIJOKPp/BaksozjLqr0bh1wlJxyRAVCZZYtwdfQB5WxM94WaFoUORDSF4T8nkmqdRv8Zn7QZRc8ZHhX+HXmTBiI1xFCuIK69VyZnCqI0a9iM8kyyx7P5/zdaJM1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713189324; c=relaxed/simple;
	bh=/KqtpQiX1Bts9vzHpMoMbXJoUvqDULdQ15ObKyQGkQ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N+85IMiLbfqTk+iWfeqptprI+m2bHqNwElV6oOohmV8ZrAq2/elnMdETc5RDWeNHL4Z0wE8fqJbiKh6NLD7Wt/Mrn5HrnLIDNk5fqaeAcRgBy0RW7UTVFOVFF7KAJSJiQzao/yE+Yf0opm0lPggwyn/FqKpfKW8F6Aqexl4CF3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Vq1M0w/G; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6eb7b6f92d4so736220a34.0
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 06:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713189322; x=1713794122; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FDybaBLDv2wiDu+VluN3PgOq81UE8XZcMt1MU2BUL6M=;
        b=Vq1M0w/GpnnE/tCK6gq04CvjneEpphicmA4ufDVVoOYQ0msR7w9nKFuXTlW6N9oyQB
         uRmXz7zMPt/NIHro5UNULn4pxYoPRAM8WYl01ZEPEBzSUSr5/Cy22/pseUBQ88OPz2SZ
         3/4EeOey5C7CANFfaeUe9HppRtQvRHMuXaYbTNrBfFp+IaRCVZvQNlQ3ZPeJQPXmgOi6
         5RiPxdiPalmZINvbrHqpkF+sq+G91KyRdAormX2Vg6o4VbeJBduUnO6tmNVJ7dH50bu9
         JkqUuNFqxusKVUc9lVf/v6AJRFPd3uU5ZNkIQWHUc9Md0x+sfy+ObSect1zCw0zZA7GI
         Ybdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713189322; x=1713794122;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FDybaBLDv2wiDu+VluN3PgOq81UE8XZcMt1MU2BUL6M=;
        b=qcYFPUilIt+A/qTBHL1J9tdxqfuzFQMdIV2MkL9S4N3h2LU1jagJOK4Rg+LiT0dLnO
         c53Ty3vX6JCk90T/1zCch36AIaoq1DFb3u4/2TUPZnLOMyPBHU5PNJTlV8cDBeeIrZau
         etcRXGeJnmgBzkOO7wDhcviyVBDS86XVUKI8ddXYbCy/YG0EBgdz9fb8Vo0XZlT/YeL9
         sHbTqQLJ8cn1dmXfI2IkXJ7YM5kPlprBN4kclcpivyzsjjjn6tA50IAsqcky2Wudhkbk
         fTBrr+CiLJVIg+KJURHMxaSNoO6cS6laK7utyGif3yvOjLyJCtt9NQbuUa48BRd7WQan
         +PMw==
X-Forwarded-Encrypted: i=1; AJvYcCUVmdks8J6KJBAf4WInXPowAD5sFjXOW9m90UtVFTaeRnmDjrRZjgKLLmwa9lCQqe2YIfZCPIqafkHEm84+t9CTrfhJXFtjb41k1g==
X-Gm-Message-State: AOJu0YxX/IfEckxWxm2AARs0zNQVXie4B1qLf+DhwyOuAG11e0CSpsyX
	5R++c5Jd387JdEiidIWwsVfSYrM/aClKJnKRvInjAdYDEcHCrdbMdmtzwFfIt8k=
X-Google-Smtp-Source: AGHT+IFASyl13hC9uptACMxhhHeBMOBOY+sePtjxfpf//vvHEOFGYAvbdA85itseafAEj76cF6dB4Q==
X-Received: by 2002:a05:6830:1619:b0:6eb:7d34:e1d7 with SMTP id g25-20020a056830161900b006eb7d34e1d7mr3280527otr.15.1713189321521;
        Mon, 15 Apr 2024 06:55:21 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id h13-20020a9d600d000000b006ea23d8fcaasm1836074otj.32.2024.04.15.06.55.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Apr 2024 06:55:20 -0700 (PDT)
Message-ID: <c9c33784-d047-42d1-934e-d9e10cf47a65@baylibre.com>
Date: Mon, 15 Apr 2024 08:55:19 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/5] dt-bindings: iio: adc: ad7192: Add AD7194 support
To: Alisa-Dariana Roman <alisadariana@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 michael.hennerich@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: alexandru.tachici@analog.com, lars@metafoo.de, jic23@kernel.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 lgirdwood@gmail.com, broonie@kernel.org, andy@kernel.org,
 nuno.sa@analog.com, marcelo.schmitt@analog.com, bigunclemax@gmail.com,
 okan.sahin@analog.com, fr0st61te@gmail.com, alisa.roman@analog.com,
 marcus.folkesson@gmail.com, schnelle@linux.ibm.com, liambeguin@gmail.com
References: <20240413151152.165682-1-alisa.roman@analog.com>
 <20240413151152.165682-5-alisa.roman@analog.com>
 <2ad06ea8-220f-4d09-bbe7-c4dd12d0d8bd@linaro.org>
 <105bd25b-e5ea-4649-b9b2-2547e94b103e@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <105bd25b-e5ea-4649-b9b2-2547e94b103e@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 4/15/24 8:08 AM, Alisa-Dariana Roman wrote:
> On 14.04.2024 00:19, Krzysztof Kozlowski wrote:
>> On 13/04/2024 17:11, Alisa-Dariana Roman wrote:
>>> Unlike the other AD719Xs, AD7194 has configurable differential
>>> channels. The user can dynamically configure them in the devicetree.
>>>
>>> Also add an example for AD7194 devicetree.
>>>
>>> Signed-off-by: Alisa-Dariana Roman <alisa.roman@analog.com>
>>> ---
>>>   .../bindings/iio/adc/adi,ad7192.yaml          | 74 +++++++++++++++++++
>>>   1 file changed, 74 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
>>> index ba506af3b73e..855f0a2d7d75 100644
>>> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
>>> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
> 
> ...
> 
>>
>>> +  "^channel@[0-9]+$":
>>
>> Why restricting the pattern? If you have 256 channels, how are you going
>> to encode it?
> 
> Hi Krzysztof,
> 
> Thank you for your feedback! I applied the rest, but as for this one isn't channel@1 -> channel@256 encoding sufficient?
> 
> Kind regards,
> Alisa-Dariana Roman
> 
> 

The number after @ is hexidecimal (without leading 0x), so it should be
[0-9a-f]. channel@0 to channel@ff.

