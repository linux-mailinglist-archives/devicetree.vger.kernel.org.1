Return-Path: <devicetree+bounces-218647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB91B82B1B
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 04:59:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 437BF1C211DD
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 03:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A799923C51C;
	Thu, 18 Sep 2025 02:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="T5TydTDM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B538423B62C
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758164380; cv=none; b=Qc8hiXxxfBixypnVPmy02seFq+pBgPMog7GUL+D5SJyTpg+VXWYSRE0rRSf6Lui8bFXtwDMedNizLjCQX2uyCfh9RpY0ko9AvD3Z//OUMajOJ91iyvtrb2qv4W6k6b5FMyiROOP9p4YCqYYcxobx6zLcGCp+wofYmj90FSheuhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758164380; c=relaxed/simple;
	bh=hWH39yoGDCQ7N2R4TtE9DDb6608lJvIpDKnTkeelSlI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rdwAEvt8Mlgj4g2BCkQlB7Lp6C6npf/5TLgxloMe67nsOeEigVP+E4fmV5E1KhgU98RcdPcfUeVAvYjelyeR7gUdARiX/PVmy9RidUOL/xiA2HJnI1a2SgqjNYKip+zQZTb9x8GhovhPe+vLt+OwmJGWbBG2HT4AdcCjQWCOdnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=T5TydTDM; arc=none smtp.client-ip=209.85.166.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-88cdb27571eso18111839f.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 19:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1758164377; x=1758769177; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5szgNDrrDfA9r/y/UulQg5Y7n0+PRvqIyjOb+dac47k=;
        b=T5TydTDMrhsOPSG/u+vKp+cSnK6vxqI3uUVQ3kg6kKSxl9PQK4MbdCWaC0eCexID2N
         Bvh3pkhIlo1/QQASAAweajfelnt3AbtAFlb81TSuzn/yRkvIk+1kw+VuPwPDqMyWl0SX
         GbvPJtfkK5BDX8Kxw9OqgJpDv7XP6x1d3eOkTx0B+wEQPLmqIu+dkG2KPJudCL3R63x6
         T+T72qMn7J5N+kvTa30d0tMKcWOXYjq/7pIIKo3sTTvVWj9cZRPF8hvTTjd/Jkj14wmv
         dKNcFfpocLqBuJyC/AhJ5XdNiLNFQN2rk8tuky0AUXu35x8OL0GTe/B5gVd5zeERffW9
         jkMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758164377; x=1758769177;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5szgNDrrDfA9r/y/UulQg5Y7n0+PRvqIyjOb+dac47k=;
        b=StXQzN+gG2IyovxV9s78oeDLvp0HpUM//Ch0iXI2YuA325oHRXjUpHHflM0ExqSMRr
         0e1JuOf881Q2gm53oMSlnLBN7riaceNjZx0AosfGZmO0BI6KSZn/IBfYUm5QkZAMGI0p
         kpud5PFscr4nna4xqb/uWZsWwrgSBVEzFakjlAFYTHjazq2BVpLGAPuM9+STkf+Y+7kN
         DSU5o5Nfqtiz4Bal9YIVJw1Z8pbfZ9x87UTjbJXkCwdoLf2Ua5BchyYVxC6vSBGgDOph
         QVMeif3lcVDzxIIkMc7VAKydyBozabWq0/EK434cfqMEeMTnWCE8Kz7w5UbjlfLkmB1C
         bxdA==
X-Forwarded-Encrypted: i=1; AJvYcCUCTXWIzdlK8WrHLBiu1cMqKJp+v89RZMyxuQzIoDXdKEU3osDhmYjOmLfI0iYY13MXuh6c/ygX8kY/@vger.kernel.org
X-Gm-Message-State: AOJu0YxUl+S7Vtqdt3pfrCwtyUyU6X08PuxE4A9BUn+6xEssq4FxhKjV
	nvMwNxmWjpj0NMuqUWIrxrnUEBlQQOpUZ0otnM5ceJRO8eqb41DIE1LV5G5HoynsmZhFpySlDfM
	ig9C+
X-Gm-Gg: ASbGncsLZs87SZttijmZrWBK66ye2rMrWeZh0hQOVhusH2v/Cz41oif/E5ldxuZ5mjX
	uUKNqzLo4stWsVXjGUQf6FOY+JFJFOLOAYfQ2HIdNBiwWPwsLd0tL4Ptt5JgjMyLVotls6PCSpV
	z5wJvGAEdzVKUwAYzr/5BNj33qORnOuNPKPvHY2+8mNpP+PepwX9/e6JQdTeRHXmkL3hdxdxQK/
	9YcFBfG94BXXZxMB5ANh7ZphTdSWXZuSQ0924gqdafZwzdkQYgDAisbRbPdOIxoghTd0II+ink3
	RXWTfJXf8gsouuuE0taZiWOa6SuqyeUAIVT1s1/6wUO8VYot+n69f5RNXPnuncjZ2UVn2J7MLA9
	2oo+VCvOICRSKHL2394RnQu/ydm9HlMOe3tR4Cb+mmGbYBv44QImWD7UPXA09UpoC93YKdkwE4i
	Aubfm9
X-Google-Smtp-Source: AGHT+IEQLSK+9pHMwlUU8ixZlncSUSA8tIOFByfMAjDBZy5wDSD6GkAsXBMax/RAtzqwjY2ctqPlRA==
X-Received: by 2002:a05:6e02:380e:b0:423:fdc4:4e39 with SMTP id e9e14a558f8ab-4241a5784damr64016625ab.27.1758164377462;
        Wed, 17 Sep 2025 19:59:37 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-53d3b017664sm448915173.17.2025.09.17.19.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 19:59:36 -0700 (PDT)
Message-ID: <f7e12797-ea17-4e92-bd25-cc562c66d2a7@riscstar.com>
Date: Wed, 17 Sep 2025 21:59:35 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: spi: add SpacemiT K1 SPI support
To: Yixun Lan <dlan@gentoo.org>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, p.zabel@pengutronix.de, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250917220724.288127-1-elder@riscstar.com>
 <20250917220724.288127-2-elder@riscstar.com>
 <20250917231520-GYA1269891@gentoo.org>
 <3b815302-21f2-4ee2-bf83-c1dba77ce3d1@riscstar.com>
 <20250918001632-GYA1270371@gentoo.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250918001632-GYA1270371@gentoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/17/25 7:16 PM, Yixun Lan wrote:
> Hi Alex,
> 
> On 18:40 Wed 17 Sep     , Alex Elder wrote:
>> On 9/17/25 6:15 PM, Yixun Lan wrote:
>>> Hi Alex,
>>>
>>> On 17:07 Wed 17 Sep     , Alex Elder wrote:
>>>> Add support for the SPI controller implemented by the SpacemiT K1 SoC.
>>>>
>>>> Signed-off-by: Alex Elder <elder@riscstar.com>
>>>> ---
>>>>    .../bindings/spi/spacemit,k1-spi.yaml         | 94 +++++++++++++++++++
>>>>    1 file changed, 94 insertions(+)
>>>>    create mode 100644 Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml b/Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml
>>>> new file mode 100644
>>>> index 0000000000000..5abd4fe268da9
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml
> ..
>>>> +
>>>> +  spacemit,k1-ssp-id:
>>>> +    description: SPI controller number
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> could you explain a little bit why this vendor specific property should
>>> be introduced? I took a look at the code, and didn't get the reason
>>> behind.. or what's the problem of simply using "pdev->id"?
>>
>> This property was carried over from the vendor code.  It is
> inherit from vendor code isn't a valid reason
> 
>> optional, and if it isn't specified, the platform device ID (-1)
>> will be used.  It's just intended to provide a well-defined ID
>> for a particular SPI controller.
>>
> while looking at the code, it seems you can use alias to map specific id
> to the spi controller, it even can do non-linear map, something like
> 	spi0 = &spi3;
I've never used this before, but yes, it looks like it's exactly
what I want.  I'll just get rid of the "spacemit,k1-ssp-id" DT
property entirely.  Easy.

> plese check of_alias_get_id()
> 
> note, I haven't actually verified on board, just look through the code
> 
>>> we should really be careful to introduce vendor specific property..
>>
>> If there were a standard way of doing this I'd love to use it.

Looks like you have told me the standard way of doing this.

Thank you.

					-Alex

>>
>> And if it isn't necessary, please just explain to me why.  I
>> have no problem removing it.
>>
> on the opposite, please have explicit good reason to introduce vendor
> speifici property, and if there is generic way, then we shouldn't do it
> 


