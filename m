Return-Path: <devicetree+bounces-85723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E02931382
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 13:54:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 258101F212C7
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 11:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F036B18A93B;
	Mon, 15 Jul 2024 11:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jw+hlYfD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CDD18787F
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 11:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721044459; cv=none; b=PjnIVTuQ9TYrqnnjayzX5nfyCLqNFpVqxpqVD2ES7MJrfb11HxOhEbKQjRcxnuszrUKyhQHZFfHJVhkjIrqWJgekTaODZ1N0N80Z0AIxsJcdWtNFwBZnH3QE+7AlpAVKHTTuoA8WDR5ZBzDs6yiMKZ6kxiSrCDrItD76gzsgq/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721044459; c=relaxed/simple;
	bh=uMfZZNLK1lHYndwOG8OhprfLmSY/gQQPkCrDxKESTwk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hUc10+6tXasCdLEtPtCaZw1A1guXqVMxF03kSr6Upmg0Xy4RUCcdGDdfxAHleAKEGOZdGmRsrBhciySPt9oTX1Rx15XNzjx3oPwIZoUjHB4cgUNGTfOrtw0KJl1xRS+kMnGauEc+2hXnhLAgkp0fROv9gOx5ytKB5BDPBjw35zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jw+hlYfD; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52ea5765e75so5061753e87.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 04:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721044456; x=1721649256; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=VIqrY8+9z5EG2eLfIXNG/R5/qMxkMkudRKLGXnbqo2k=;
        b=jw+hlYfDAkJXTaq3DOoe1WyVXGiT5qDbG0Goz4EHd0itWg/G6O9f9NjdFY7Z34YY9Z
         HcVYVOMMprV5LJNcV0GOcp+8yPiRz1PkWD6wQjUdqTEwL1YPSsbrbAci9t1mJFQe3exu
         tAmKYGu4Lb7fXrLgyrHQOdYJydvpPthmaJQY3HKLtZp3wl3addL7afEvi3Y3k/T4J2UB
         QxiMN8XwHUiYYBK04nP+C2pNVsUQR+c0VbYLKxFREPgXdtxT8NDyYXS2AK65Bny13EOd
         nwLekTbWm7sulwOrK+f8dCRgYsOQ9ppfPpbqDQMMNtWZG1LjOQxKjPE9VvyVQSNlgq0i
         VvIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721044456; x=1721649256;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VIqrY8+9z5EG2eLfIXNG/R5/qMxkMkudRKLGXnbqo2k=;
        b=eIvhyjlonJFjUPlg89GiH/JYB9YKU8bVOcvZV4+JRju6xxlqK7GxGaspmClcSrQLNI
         oxjYKDpg+2Hxz0zuzdheX5qGg4VH8Z89DkaNmUXKUFfZMSb7b8b0ZMIXcEDJ+vI6+eNr
         +ucUNP4AKUfqpJPOdrbHpKOqZ5x9Uf8uPrZJKTWVwvpCyppAXxZOH58gOEfXy4vUs5dc
         e/vQM7cSFCMUgZrDkL0M2lhWusZSityPuJX2wzhf7ednqTJ6EeK/XzWz4RxWGH9f+R+G
         /VtGeb9maP65jnJObCsfj+dvHWEyzCoTapPdSd0+Z1b0hHkSsaf1wKoV60JIl4WzqRYV
         YZZg==
X-Forwarded-Encrypted: i=1; AJvYcCXACc2o9zGnTeZs52ofuiBGXv9/uuqhno/3Vn5gwiKeo8T/4nZvXsROWnYNbv6jgmqLuobVqezC4Act3Kz5DUENDbNbwyP+jGj+mQ==
X-Gm-Message-State: AOJu0Yyy51Dzk6rNumPrvQAjjKN8AXx39ATUhYD5DUX5M9kh4gOH1rhO
	7HuTGRVT4L9+O7B+3x0sCXZuYp1AN1VIPSJRVwd9WLlR18OMbTn+zQMaoxeWtgTghQbhytLwThI
	j
X-Google-Smtp-Source: AGHT+IEllKnCKTBYOkaVe7zkCdMy55krw6mOzeQmOakp7mliuUtq5JTVahpkWUuny/ivFLwUiYP+rg==
X-Received: by 2002:a05:6512:2349:b0:52e:6d71:e8f1 with SMTP id 2adb3069b0e04-52eb99d20f1mr13572593e87.53.1721044456232;
        Mon, 15 Jul 2024 04:54:16 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f276b14sm119728945e9.23.2024.07.15.04.54.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jul 2024 04:54:15 -0700 (PDT)
Message-ID: <bcfb1e79-9e9d-43d2-bd4e-02e795e5f570@linaro.org>
Date: Mon, 15 Jul 2024 13:54:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: incomplete-devices: document devices
 without bindings
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marek Vasut <marex@denx.de>,
 Jonathan Cameron <jic23@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20240711085930.26252-1-krzysztof.kozlowski@linaro.org>
 <CAL_Jsq+WdctoTMNoakiY5kh4nDoNx5h522s76LoHyD_yKYvvSg@mail.gmail.com>
 <73038a80-ce58-4967-a258-d6befe23c777@linaro.org>
 <CAMuHMdWkGD1gcwrLhd_fSdJLV2SzCVJ=yo+ekhOAfjUp=5Hh3A@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAMuHMdWkGD1gcwrLhd_fSdJLV2SzCVJ=yo+ekhOAfjUp=5Hh3A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/07/2024 11:57, Geert Uytterhoeven wrote:
>>>
>>>> +          - mpc5200b-fec-phy
>>>> +          - mpc5200-serial
>>>> +          - mpc5200-sram
>>>
>>> Tell Grant he needs to document these. ;) JK
>>>
>>>> +          - ohci-bigendian
>>>> +          - ohci-le
>>>> +          - ohci-littledian
>>>
>>> Given the typo, I think we can just drop this one from the driver.
>>
>> Sure, I'll send a patch. It could affect some ancient user, though...
>> Although I really wonder if any of these PowerPC boxes are still alive.
> 
> Looks like you forgot various "chrp,*" and "pnpPNP,*" ;-)

chrp is documented in the vendor-prefixes, so I assume it is reasonable
compatible. You think it will never get a DT schema bindings? It indeed
looks like ancient PowerPC stuff.

pnpPNP probably falls to the same category but without documented vendor
prefix. I guess no one is going to add proper bindings for AmigOne?


> 
> You can scavenge a few from my old LongTrail DTS
> http://g33rt.be/migrated/Linux/PPC/DeviceTree.html
> Note that my actual machine died 20 years ago...

Yeah... that's convincing :)

Best regards,
Krzysztof


