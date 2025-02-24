Return-Path: <devicetree+bounces-150569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6958A42B56
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 19:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCFF119C4164
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 18:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B616264F88;
	Mon, 24 Feb 2025 18:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="c7B9+Aj6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C64226562F
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 18:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740421647; cv=none; b=m4eNd6wO5AD8b3kvN3sC3ZZt7k/iaOeP8mCAAJCIqPzlcYlFAR4e2uAN4XqNnD61pcPB0u+a30AyFkdjmvDq53RnqUe8lJjAableb2diK6kO/DPdA+39x8uB95bYljqSZ8ym7jA30/qnBMkcDYAC6u4VDGqdVyiPcRAS33iC2Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740421647; c=relaxed/simple;
	bh=m/oH9FUuqrl8MqETJaL+ffGzJYVB99MkD+cqdHDCrJY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s7RoajUWz4mUCxYs6p52EPx+hnrfvX0lwdLu5FoHv/EgizEein7y3eKr/mX3AbsfNuCugFieZMrhscrI9Yonl7zbOc6eE4fsfH5YlUxGCoim2pyBM9b9r1jlG8AdFxP7gAO12GbJSAkkX1667XEzuSEiNLaoU7S6tjrEzNwOx7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=c7B9+Aj6; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-2a8690dcb35so1240426fac.3
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 10:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1740421644; x=1741026444; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=901214bbFIDMlHQ0CsRkyLv/Y3+WM7W7nqphYYL1+FQ=;
        b=c7B9+Aj6Mikrl101iGSH+PoXOALKpdMdptwaXdqYs3ksgK1FFSmP9kMyju3scqQb6V
         caifMuWHLPxzuBlATzQpUcUTlx9CIV246bJ566V3NjkLVIpkGXXRp8xhPZaBOPIy8lkC
         lUWFrrWSBH6at9d3P27+1fUzxo3NpQdVdJu58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740421644; x=1741026444;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=901214bbFIDMlHQ0CsRkyLv/Y3+WM7W7nqphYYL1+FQ=;
        b=Kz46CypJUtzRca7BJw6jWrvLygoPH654YQF+9l3+NLD2PjqoijRdYbyACDA9VRbHes
         JnXecrNzRPFaSCHxrpHt7us1VwyfhpY5z7iqrQvUpM/wv0fN28y+DcLP7z272dbKiBfx
         Xjm2LjWBVa6EKe7YQmopP+Iu647EGaiv/6ns042/aPmBHpBLzsD6UXESMUcRqqWxHEPs
         opB6o+ot8A5v2VUVw2oXYrfrmK+rlBq1CFvahgSg0FQnuyGeRCfZt35yv4c8ukbfwGX7
         hYSU8NeO1ZZ1moRbAZK6CqTu088z7omIki7e79tCw88SexkOu9YvNnU4DZjYgpffVKVK
         nSHg==
X-Forwarded-Encrypted: i=1; AJvYcCVVHHMkVooyfvPWu6lBVRHddG3mBAVrcZGMkY3IS7lWkLc6Ban3wIm6oBXQMVtCTyaeXlBk1G2OSK03@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5xBwIMpQft7Z9K78wUr7Ppjyf8H/2qyi6fT73FvFU/QuBfrSp
	Q76gOefUdEmfSDn14mqBSrWmhhzJ0HEzMCp3UEVl5yKgGHPV6WIxfmp4y2088g==
X-Gm-Gg: ASbGnctD9EVB/TwyrZ5easgQz49yIk59f2MzNXCOcw20OlQsrW2QCAbkeuir/RZHnBz
	J397qZ50HE3vatrkAOHNgvgOg9e5g5hKfCChObYmDzGV4CNe6CkYYElh2NXP9gdhQ1vU2NzGNIO
	TXAD5K6zWFr5xJaFkvcLPWhnUI8f2YiQKXlwaoS3r3+TEXK0T8F9RF8pLxZE9EcRiGxyIfeuY0d
	SGmnedtHPqw+hLgtu9GRdfD4Yhx1/gtTs7Ic1GI+CQ275XeomoFnUD3j/CXpCRgJT+Zdc5hVK5W
	b53ZalfbfypDxAJvKOPEVqtPATq3orlGzHSeW1Ugc/YYzgYkdJ0a9A==
X-Google-Smtp-Source: AGHT+IG+dPB2VlTmr9uc+ewiu/LggnV41sFrCV6tv0+9TMUGG271b6bw+MyTgU/h2yxKq1XzGx8OLg==
X-Received: by 2002:a05:6808:1a27:b0:3f4:9e6:fc4 with SMTP id 5614622812f47-3f540ec21e5mr150728b6e.10.1740421644423;
        Mon, 24 Feb 2025 10:27:24 -0800 (PST)
Received: from [192.168.99.86] ([216.14.52.203])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f40b027906sm2952567b6e.42.2025.02.24.10.27.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 10:27:23 -0800 (PST)
Message-ID: <cb368f1e-4292-4738-a5d8-b716859b4beb@broadcom.com>
Date: Mon, 24 Feb 2025 10:27:22 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ARM: dts: bcm2711: PL011 UARTs are actually r1p5
To: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli
 <f.fainelli@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
 Andrea della Porta <andrea.porta@suse.com>
References: <20250223125614.3592-1-wahrenst@gmx.net>
 <20250223125614.3592-2-wahrenst@gmx.net>
 <fb23aeaf-4e24-484c-a0ee-56781892fdda@gmail.com>
 <1706e1e2-f7fc-4dfc-8189-732ed6c72a2a@gmx.net>
Content-Language: en-US
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 xsBNBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAHNMEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPsLB
 IQQQAQgAywUCZWl41AUJI+Jo+hcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFr
 ZXktdXNhZ2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2Rp
 bmdAcGdwLmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29t
 Lm5ldAUbAwAAAAMWAgEFHgEAAAAEFQgJChYhBNXZKpfnkVze1+R8aIExtcQpvGagAAoJEIEx
 tcQpvGagWPEH/2l0DNr9QkTwJUxOoP9wgHfmVhqc0ZlDsBFv91I3BbhGKI5UATbipKNqG13Z
 TsBrJHcrnCqnTRS+8n9/myOF0ng2A4YT0EJnayzHugXm+hrkO5O9UEPJ8a+0553VqyoFhHqA
 zjxj8fUu1px5cbb4R9G4UAySqyeLLeqnYLCKb4+GklGSBGsLMYvLmIDNYlkhMdnnzsSUAS61
 WJYW6jjnzMwuKJ0ZHv7xZvSHyhIsFRiYiEs44kiYjbUUMcXor/uLEuTIazGrE3MahuGdjpT2
 IOjoMiTsbMc0yfhHp6G/2E769oDXMVxCCbMVpA+LUtVIQEA+8Zr6mX0Yk4nDS7OiBlvOwE0E
 U8AbwQEIAKxr71oqe+0+MYCc7WafWEcpQHFUwvYLcdBoOnmJPxDwDRpvU5LhqSPvk/yJdh9k
 4xUDQu3rm1qIW2I9Puk5n/Jz/lZsqGw8T13DKyu8eMcvaA/irm9lX9El27DPHy/0qsxmxVmU
 pu9y9S+BmaMb2CM9IuyxMWEl9ruWFS2jAWh/R8CrdnL6+zLk60R7XGzmSJqF09vYNlJ6Bdbs
 MWDXkYWWP5Ub1ZJGNJQ4qT7g8IN0qXxzLQsmz6tbgLMEHYBGx80bBF8AkdThd6SLhreCN7Uh
 IR/5NXGqotAZao2xlDpJLuOMQtoH9WVNuuxQQZHVd8if+yp6yRJ5DAmIUt5CCPcAEQEAAcLB
 gQQYAQIBKwUCU8AbwgUbDAAAAMBdIAQZAQgABgUCU8AbwQAKCRCTYAaomC8PVQ0VCACWk3n+
 obFABEp5Rg6Qvspi9kWXcwCcfZV41OIYWhXMoc57ssjCand5noZi8bKg0bxw4qsg+9cNgZ3P
 N/DFWcNKcAT3Z2/4fTnJqdJS//YcEhlr8uGs+ZWFcqAPbteFCM4dGDRruo69IrHfyyQGx16s
 CcFlrN8vD066RKevFepb/ml7eYEdN5SRALyEdQMKeCSf3mectdoECEqdF/MWpfWIYQ1hEfdm
 C2Kztm+h3Nkt9ZQLqc3wsPJZmbD9T0c9Rphfypgw/SfTf2/CHoYVkKqwUIzI59itl5Lze+R5
 wDByhWHx2Ud2R7SudmT9XK1e0x7W7a5z11Q6vrzuED5nQvkhAAoJEIExtcQpvGagugcIAJd5
 EYe6KM6Y6RvI6TvHp+QgbU5dxvjqSiSvam0Ms3QrLidCtantcGT2Wz/2PlbZqkoJxMQc40rb
 fXa4xQSvJYj0GWpadrDJUvUu3LEsunDCxdWrmbmwGRKqZraV2oG7YEddmDqOe0Xm/NxeSobc
 MIlnaE6V0U8f5zNHB7Y46yJjjYT/Ds1TJo3pvwevDWPvv6rdBeV07D9s43frUS6xYd1uFxHC
 7dZYWJjZmyUf5evr1W1gCgwLXG0PEi9n3qmz1lelQ8lSocmvxBKtMbX/OKhAfuP/iIwnTsww
 95A2SaPiQZA51NywV8OFgsN0ITl2PlZ4Tp9hHERDe6nQCsNI/Us=
In-Reply-To: <1706e1e2-f7fc-4dfc-8189-732ed6c72a2a@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/23/2025 1:17 PM, Stefan Wahren wrote:
> Am 23.02.25 um 17:58 schrieb Florian Fainelli:
>>
>>
>> On 23/02/2025 04:56, Stefan Wahren wrote:
>>> From: Phil Elwell <phil@raspberrypi.com>
>>>
>>> The ARM PL011 UART instances in BCM2711 are r1p5 spec, which means they
>>> have 32-entry FIFOs. The correct periphid value for this is 0x00341011.
>>> Thanks to N Buchwitz for pointing this out.
>>
>> Should not that require warrant a Reported-by here?
> I tried to find the original discussion, but i couldn't find it. Also I
> don't know if this person wants their mail address published.

That seems fair enough.

>>
>>>
>>> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
>>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>>
>> Some people might consider this to be a bug fix, mind adding a Fixes tag?
> tbh, i'm not aware of any (real) negative impact, but yes i'm fine to
> add it.

The negative impact would that you would be more prone to see RX FIFO 
overflows under workloads where interrupts get disabled for too long. We 
have seen some of those happen in our test rack so the larger FIFOs the 
better usually:

https://lore.kernel.org/r/1692643978-16570-1-git-send-email-justin.chen@broadcom.com

I don't mind adding the fixes tag while applying, no need to re-submit. 
Thanks Stefan!
-- 
Florian


