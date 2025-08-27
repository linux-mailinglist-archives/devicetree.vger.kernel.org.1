Return-Path: <devicetree+bounces-209713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AFCB387C6
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 18:32:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0ADFC4E1058
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 16:32:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00FC820A5EA;
	Wed, 27 Aug 2025 16:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="eLPfFlmk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f227.google.com (mail-qk1-f227.google.com [209.85.222.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2EA1A3172
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 16:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756312341; cv=none; b=bVSuvhnem8YXOQFg+MemSDijnzDlbJK9Ur6HMBZ+fEs3gFvc8JuZxb1uX2Bqf5aZlqaDSIUKQ2NZbH6w9L530/Jiv4Ks0D3KLtdX48y9nnMJ7/D4e0TgZB3jR1T1EpKUrlnZ6n0Mdszvl5AcKOylOSXyJHbU86fEYSVgbRzQtUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756312341; c=relaxed/simple;
	bh=mLpKPATLAipscdT0O9B+4JaAX0nCwFq/LatPYj6QMy0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KRaUntWz+IA0ol/fjg+6/crZ0ZkI6KHdr8utkYEw0k3YZwhJ1Kc3O6/4Dr1GnGaSkCpFOCu6iAN7JW7qAt4WP7V+rcVVh3KOGUsWlVlACJXXuRGIMY5891bR2TABspEUPRqVp+ET4y2HGATFst7l0cIh4KejuPRivp8AIJ/GDao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=eLPfFlmk; arc=none smtp.client-ip=209.85.222.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qk1-f227.google.com with SMTP id af79cd13be357-7f722cb35c6so9458285a.3
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 09:32:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756312339; x=1756917139;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p8dktpCBHOsNkqxhCr4VDQbXXVvhYTbllt04Kcihkl8=;
        b=Keo/WvA8aBGnrvzVgJmGhOuF2O5NSi4am3kyKQdTHWkKowb699Rd/pAH2DYxl1B210
         Dlyp4hSzMM5yvA8lLB1JOmc4kIVFYuSTRWNQQ7651O1jiGVLOsCQx1xTE6mn1vrrmuhx
         +ZSENHep/nkzwQ6bPzq3cO5zOAAoGWi7GfEOjIlrql2GyMBWqRCQPMbWAVkEBws/yL8z
         T+6nfrEBcDRIAMTnhRDaQoDhuPiDY6m80JDsj3mLCo4PgC1lwqRlmFTKqFtseEwIfTw3
         r+YqlQdTtQhOOhdIXvZx+8TQ2OH9PMcTgGnlhzPm+afy/P2O4lFgyQKOlU+LLR/fKmij
         LtmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLM0rRAgcH8JEqDIKSdvTFWBxJuPOHrVk+5ZIahvfrXCTkUTL6H5yRHixPdjvB27v06UVwN3IxI5Cy@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7/j3iLwLWxBLeyzjnbszplhJ3S/PU1eJjI0qCmMM+2zMRpR3Z
	Tgw/3Nh9BNfKPlQbICWRClGSgl75if8T0y0ftgVMB8B2GrJwFDzdsS4gMmv4Vjos1ru6jFfzf3H
	LhWzbpnNK4NZjKTV06hRMU+jBpxaVEpWhjLH4pZv5Hr7tRKPuYEr46FMjB9BpEAQ+zumHhXleB/
	f+O2IX1F53ImscoKuGM3Qvh/CDQfXtGnVMgVFtJW1gPdTfk8hfV84KK6qT623mLfXE78WXSNyZI
	vtpEWGIMuxI/mQ4/+C1yA==
X-Gm-Gg: ASbGnctsJgoHYMO9vUJaOKiOZA3rnz6f3IAyOlpwEbVLHwAhmXT8qv2Je7+8ItkZcnU
	a521oTUuYPAfjJiTPWvaKyNXYPfEg0RWC9w1N+8T3hJG+BQhxsBB2Z/raoG+CLMZ7gErnyk894s
	7GmZJmsNNAY4uiawPT2VbXVtJUEd1XC6iX4pkayOGCvuWnhlssj6DANDt6k4SIgxuK/K9wbRsQ1
	6giHjaC+j2mdOrZctKMKHPiSbyIGdZ+3WONybvboB0cucqUm9vGBlxR0pRO2L3tI6vdwvi2y3i0
	3chKfQMGWWUzW5nIUznFOeM3+SgVkmJH5FkB6BSkXAmD9ZZefMS7ljsOd++/FZMwjThEHa/DYpQ
	ezwQdswk1T665m/tTTtG1kLKr9crj+KJuJrQy5p3K9gFHQ8rr/TAcHyB36hpz3FAQdygBtj2fPG
	zws6Nw14w=
X-Google-Smtp-Source: AGHT+IEreW5rZLGi0luqw433ycshDA+N+OL/7F1eXI9cIRc+XH4pbPw4Sj69P0Kur3pHml8H3wLxJnykV7wb
X-Received: by 2002:a05:620a:4725:b0:7e8:bf8:abf7 with SMTP id af79cd13be357-7ea10f72270mr2119516985a.20.1756312339161;
        Wed, 27 Aug 2025 09:32:19 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-101.dlp.protect.broadcom.com. [144.49.247.101])
        by smtp-relay.gmail.com with ESMTPS id 6a1803df08f44-70da725e6b3sm9886816d6.47.2025.08.27.09.32.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Aug 2025 09:32:19 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70d93f57a7bso2162526d6.1
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 09:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1756312338; x=1756917138; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=p8dktpCBHOsNkqxhCr4VDQbXXVvhYTbllt04Kcihkl8=;
        b=eLPfFlmkuxDYmvBSvM8GA95l8BTZdmF/azbCV25KbY5wKziLlm1T6r5yNxegwqK5pb
         MfPhh2qFAmianlf2NmvrFi7GZNfv2FJfNLuZUyMWMpgQEjmD1rA4RncPtNqIdNs7nMMd
         sWkbpl/FF/DZj99BUU+AgYKmvkZZW1zWbpJyo=
X-Forwarded-Encrypted: i=1; AJvYcCUY8yYzllLmYHk6UX4/gFbwUxYLnC3wEK8yc77GZXOnbFUpLnuy8pD9R+rKSF9roPFZeRpYvLeUfNHB@vger.kernel.org
X-Received: by 2002:a05:6214:5344:b0:70d:9819:879a with SMTP id 6a1803df08f44-70d98198d82mr255971696d6.58.1756312338263;
        Wed, 27 Aug 2025 09:32:18 -0700 (PDT)
X-Received: by 2002:a05:6214:5344:b0:70d:9819:879a with SMTP id 6a1803df08f44-70d98198d82mr255971066d6.58.1756312337610;
        Wed, 27 Aug 2025 09:32:17 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70dc969f011sm44700806d6.22.2025.08.27.09.32.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 09:32:16 -0700 (PDT)
Message-ID: <2ff3ec4e-4824-4d03-bab2-a69229764692@broadcom.com>
Date: Wed, 27 Aug 2025 09:32:11 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] pinctrl: bcm: Add STB family pin controller driver
To: Andrea della Porta <andrea.porta@suse.com>,
 Stefan Wahren <wahrenst@gmx.net>
Cc: linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 iivanov@suse.de, svarbanov@suse.de, mbrugger@suse.com,
 Jonathan Bell <jonathan@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>
References: <cover.1754922935.git.andrea.porta@suse.com>
 <bb746d2fd50ecbb9963438fae8601c2e4901a126.1754922935.git.andrea.porta@suse.com>
 <6d812c08-341f-4f7f-a9ed-4545217cb8a8@gmx.net> <aKc9G9owEfYD-_qM@apocalypse>
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
In-Reply-To: <aKc9G9owEfYD-_qM@apocalypse>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 8/21/25 08:36, Andrea della Porta wrote:
> Hi Stefan,
> 
> On 11:18 Tue 19 Aug     , Stefan Wahren wrote:
>> Hi Andrea,
>>
>> Am 11.08.25 um 16:46 schrieb Andrea della Porta:
>>> From: "Ivan T. Ivanov" <iivanov@suse.de>
>>>
>>> This driver provide pin muxing and configuration functionality
>>> for BCM2712 SoC used by RPi5. According to [1] this chip is an
>>> instance of the one used in Broadcom STB  product line.
>> i'm not sure about the whole driver naming. The cover letter describe it as
>> "pin control driver for BCM2712 SoC", but this patch is described as "STB
>> family pin controller driver". So as a reviewer, I'm a little bit confused
>> of the domain of this driver. Is it for a single SoC or really for a whole
>> family of many SoCs?
> 
> It seems that this is indeed a whole family of which BCM2712 is the (first?)
> incarnation. I'm not really aware whether there exist other physical
> implementations but I'll amend the comment accordingly.
> Please also see:
> https://lore.kernel.org/lkml/d6ab66cf-09ac-4f53-9102-11f207d16db5@broadcom.com/

It's not the first, far from it, that pinctrl/pinmux design dates back 
to the first Broadcom STB SoC (BCM7038).
-- 
Florian

