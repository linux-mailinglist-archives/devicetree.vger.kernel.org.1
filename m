Return-Path: <devicetree+bounces-66323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F848C26AE
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 16:22:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B94F0B2489B
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:22:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BBBB16E898;
	Fri, 10 May 2024 14:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hYbLpkTA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C4714B08C
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 14:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715350902; cv=none; b=QG7TbAARrBFJ6NUMT9wd4fhtlKZqcMrrehfV8XaRYZPFjdYLE/3N8VyrjmxYtYuxwb9oB258JIcc2d3ZtLvtkdep7Zhc0I6NsFFk9XxsuHdRETYftaN3JYGpd5R+7WXgg7kzlvZcqUTOCR12QMZlCtMF1u2kfpQun35NmyhSC0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715350902; c=relaxed/simple;
	bh=nTDrI9ZttDdbehCGroSRZsTLKzJKE6ZuTvRhbFn7iOU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jikjFILJSoAfVJqPRTll53Zv/zQG5ISVn4szBggO9HkqrRxDHonJkK0Vqz6en878ITQPQncndmnjrhlP8BxlI5sRi5uJ2/FLjQhb1KWK1sKCr0/i014BfnZ78K+c8qTvL42UyLyS9YPnaVQwuObUkkKy9ue05d/c286JW/+6194=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hYbLpkTA; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6f07115e6caso1128753a34.2
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 07:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715350899; x=1715955699; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jh2huEHV1TSt+ycvIgeD7tfbDb1mnbYoWBnX7KKFMAg=;
        b=hYbLpkTAwiLkQJrrcxmaAnPTmEP4RlDYhH5Lwd1dx0kYtXKPi+dl1oj/fD7VO7w7Z+
         8OVxYCO2lFt+1NS67b7sQMONMrodXSb1DSf5fIMPWUcnqV48o5Fmcgrzi3h7KVLTvXhf
         KvHE9jWw1qx+BmZC4eKN68RuhD4uLkd9a/V5ruCq97bxTNIcRX5MM/iCmnctUK4wbS2l
         6R2j3BMDjD+QfF8ME/BOdAR6yEI7iXBmMsnLEV/Zhj0POe7dDJAgTgwYlYJ7OWxwBVvO
         BK7VKIym31VkDxpzougGkN1ZDn6HLjzjBg7wJ+0kxz00PzsKe3ioKYzGYVSZEydLvCvL
         NPLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715350899; x=1715955699;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jh2huEHV1TSt+ycvIgeD7tfbDb1mnbYoWBnX7KKFMAg=;
        b=Nl5pml3qIoOoB/gDzjdqc1+o2XpodAuhU4Sqh8hqVckFqgp+CrJCwnonrVwN25E7co
         CQ3YSSuqYgAezmCCr860C37E0XcdVqR/jIXS6i1kl/tbFWCc9rv6Idzt35B/Vu4LFf/I
         WolTy3eVSKRzMlmfnzGegKqkybygPlIzM7zJgTDnR5jEAhWL+pcI8kvhtw7u8RPwqziU
         1f7lDaIfksrTVRW2heZCaMcu9imq8bKGPFr4WDnDLHX4Qgc1Cr4iimPWvPpZHq80HaxH
         7QrhFFaqfbD/JalFUtsclEKahYd/ny/yMPPwYfVy7ftCmUYExhatu6jSUHMF3uFiUx+7
         7o6g==
X-Forwarded-Encrypted: i=1; AJvYcCWGUK5FKliTsUfdaXdS+QP+417N+0t95hzMH/40LQyC3CoApi+JYumUiguubu0cV35ivROUdmdo/KqLFZfpmjUihNYxVC92L34bQQ==
X-Gm-Message-State: AOJu0YzBs+tujd9fpzOEXv21aI6GRvmvB1Fjcq1KFgFqPOaTtST1nPit
	FhJdF6IYX9Mdb+d6Fpr8tiREKiH0C412/VErr2qv3g5i8yX2gnOMz4lEWnu+R90=
X-Google-Smtp-Source: AGHT+IHRUWfLdGZBGBWD5amiz8GI01hPZG+dwBj5rcK43s5Qsr6Cur03tK/TqVmXb8/54o6pfQJp0g==
X-Received: by 2002:a05:6830:3a09:b0:6f0:88a9:c9e1 with SMTP id 46e09a7af769-6f0e91133admr2726700a34.7.1715350899542;
        Fri, 10 May 2024 07:21:39 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-6f0e259e71dsm667035a34.56.2024.05.10.07.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 May 2024 07:21:38 -0700 (PDT)
Message-ID: <d5b8b193-0694-4e65-9b0a-64fa689ed344@baylibre.com>
Date: Fri, 10 May 2024 09:21:37 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/6] dt-bindings: iio: adc: ad7192: Add AD7194 support
To: Alisa-Dariana Roman <alisadariana@gmail.com>,
 Conor Dooley <conor@kernel.org>
Cc: michael.hennerich@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 alexandru.tachici@analog.com, lars@metafoo.de, jic23@kernel.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 lgirdwood@gmail.com, broonie@kernel.org, andy@kernel.org,
 nuno.sa@analog.com, marcelo.schmitt@analog.com, bigunclemax@gmail.com,
 okan.sahin@analog.com, fr0st61te@gmail.com, alisa.roman@analog.com,
 marcus.folkesson@gmail.com, schnelle@linux.ibm.com, liambeguin@gmail.com
References: <20240430162946.589423-1-alisa.roman@analog.com>
 <20240430162946.589423-6-alisa.roman@analog.com>
 <20240430-winnings-wrongness-32328ccfe3b5@spud>
 <73365049-670b-4068-a159-fbdd0539f5a9@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <73365049-670b-4068-a159-fbdd0539f5a9@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 5/10/24 5:05 AM, Alisa-Dariana Roman wrote:
> On 30.04.2024 20:21, Conor Dooley wrote:
>> On Tue, Apr 30, 2024 at 07:29:45PM +0300, Alisa-Dariana Roman wrote:
>>> +      diff-channels:
>>> +        description:
>>> +          Both inputs can be connected to pins AIN1 to AIN16 by choosing the
>>> +          appropriate value from 1 to 16.
>>> +        items:
>>> +          minimum: 1
>>> +          maximum: 16
>>> +
>>> +      single-channel:
>>> +        description:
>>> +          Positive input can be connected to pins AIN1 to AIN16 by choosing the
>>> +          appropriate value from 1 to 16. Negative input is connected to AINCOM.
>>> +        items:
>>> +          minimum: 1
>>> +          maximum: 16
>>
>> Up to 16 differential channels and 16 single-ended channels, but only 16
>> pins? Would the number of differential channels not max out at 8?
> 
> Hello, Conor! I really appreciate the feedback!
> 
> The way I thought about it, the only thing constraining the number of channels is the reg number (minimum: 0, maximum: 271). 272 channels cover all possible combinations (16*16 differential and 16 single ended) and I thought there is no need for anything stricter. I added items: minimum:1 maximum:16 to make sure the numbers are from 1 to 16, corresponding to AIN1-AIN16.
> 
> Please let me know what should be improved!
> 
> Kind regards,
> Alisa-Dariana Roman.
> 

Having looked at the datasheet for this and other similar chips, I agree
that this reasoning makes sense. Some of the similar chips that have fixed
channel assignments still have, e.g. a channel where + and - are both
AIN2 (I assume for diagnostics). So I think it makes sense to allow for
doing something similar here even if the most common use cases will
probably have at most 16 channels defined in the .dts.

