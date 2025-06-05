Return-Path: <devicetree+bounces-183164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 726CBACF92E
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 23:15:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33730165A92
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 21:15:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35C4727D77B;
	Thu,  5 Jun 2025 21:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="iFJFLW03"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B2A1E7C03
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 21:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749158152; cv=none; b=DpsH9aJOkNEJfFVcdyHTETIR7aw0D1UN9D9sYUOYuWHmQeEYmgGRQzIgMawfSy+fk3gRdiliTIMPqQQaxh0pMTADZWmkkGGJ27LWqEircwB+JgprQ2vO/NBVUkWSR4CtJGVKgUvEdI44/k+7YAYdbK/1XxjZ32xiIhZIFKmI+ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749158152; c=relaxed/simple;
	bh=6HjkeaWthINU5HcCHrCcRlHjiO0Vi8/7MMZ5Nn6LK/M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cTqTS1HFXrGIPMp44dqO0dmpWhx/qa9LGc2EqkG8kA2g/ANGYd2pArRzg8qZ1gg4CIESRXr+JJU9+cunW+N8QiEUHo3zQ+umjB5EYxX6Fefk+PYfaewVje5WkctM22UxlYcAXnv48aTtR+FS/WTsSqUc+YYSui/26SxOc3gH+v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=iFJFLW03; arc=none smtp.client-ip=209.85.215.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-b26f5f47ba1so962325a12.1
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 14:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1749158149; x=1749762949; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=n4S19kvQPTgsV4nv+XvYaG+Ak9HdIxhdbirqQIiEN6Y=;
        b=iFJFLW037sSL2ZEWEK3OBS60rdUudUGLII3hGOykNjNYCvvR+wtBVMuxsoVBLcl4aQ
         bo0xlE1IICkKzH0tKWjYtBZevLXHaDPQMadMiEJYXuh+F0CfZJ82rq0XLFf8/du5DDW2
         m8zq4ym8pSjAXIyfCWqs12Q9Lf5XKsbH9BKHI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749158149; x=1749762949;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n4S19kvQPTgsV4nv+XvYaG+Ak9HdIxhdbirqQIiEN6Y=;
        b=R1Heg2OeikruZ0EQH3ic06EMKVlar/C1fAdRFhb6ZjUmyjC0xT5Y3e5y62u6yC6c8R
         LPWaMDbk/CFnmwgjfK+b79FIAfxePdwm6/f32W+6zs4rKKWeGmOkr8NdhijOgTy9LteJ
         FGwI7soCgTXoNdlm7g2YKv+50np9XH8T7xURvvP+fc5Up+tRwpu5NaWvGXJ/BvPBNfeM
         pAEn4dqtCjjlr1MQB04UfRTHHAIXlQ3b6uyk+wqYbenqX7V1RO31dz4re3yjeax8yRnW
         pUIvQXnJmdn/pydBKQ5A6OdfNEQmf6VbEF8+ETx8SbykyzaBsT2NbtRl6Bta7mqm6suE
         jGJA==
X-Forwarded-Encrypted: i=1; AJvYcCUZHLLVlLwroisLho9mAf1GNjMHOzprh79VhftTa4lQQCnCHgoQA889DtrqJH+Ze3bZAMHUT4qlAXL+@vger.kernel.org
X-Gm-Message-State: AOJu0YxDrWNDDXTaoUlOUABBclZoFwL+90z6QXOVnnw2rUzqq/kE6xV4
	Au4PIDpla5io8AobUVGsgocHMa9ve961fKwBeOTOi7+zf22BW1Xw0yeuhjUErvaNUQ==
X-Gm-Gg: ASbGncvEeOFiNTz/yfHNTHmr1VcZIVvImMiEAlCVGRBs7YXKo1lFC0nOtPHcqCytchw
	llGUlbv4UC3xLDYhsIFIHWYPhL7XNq9spGnDcJZ2bbENDDcWPFZ+XevPajri4Ofn5j2EXXozhdR
	L+4vhmo6M8mmPSetdwMXfyCsyLxxEVrIu7Fba3QAI3AFrV6i3G8fKYNUQEZMbw22sjash9l0Hbj
	vGD5rgADdeuY9/uFp7nErIDgcufJtelceCrKrqpCCWdhZLswYtiXaRuHppBCXR+dlGdjZL1/d1F
	l2ijUPLSGgG0bBTQiKGB+kMjgh5teA6uVlKVbvdGCQuYATyTgdXBCLqVpYyElEn8hdAF2pIMbsC
	pxJin9dnQobFJCvVhqO/YlENFKg==
X-Google-Smtp-Source: AGHT+IFvheyXX9YWNnObK37zZQL3qKzOZ4htPgE+mvHDHQudg3DGxXMZG4UMivdjw61rVrUdSmiMZg==
X-Received: by 2002:a17:90a:d64e:b0:313:2754:5910 with SMTP id 98e67ed59e1d1-31346b46defmr1808720a91.15.1749158149085;
        Thu, 05 Jun 2025 14:15:49 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31349fdf554sm188351a91.35.2025.06.05.14.15.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jun 2025 14:15:48 -0700 (PDT)
Message-ID: <52fb02f0-eef5-4bce-822e-140eb8769cd0@broadcom.com>
Date: Thu, 5 Jun 2025 14:15:46 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] memory: brcmstb_memc: Simplify compatible matching
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, justin.chen@broadcom.com,
 Conor Dooley <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
References: <20250523184354.1249577-1-florian.fainelli@broadcom.com>
 <20250523184354.1249577-3-florian.fainelli@broadcom.com>
 <20250605185557.GA3023589-robh@kernel.org>
 <ac57663b-3bcc-42ae-898e-06592d417715@broadcom.com>
 <86b6c9a8-5ecf-4aa5-a6cf-afee64d28efa@kernel.org>
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
In-Reply-To: <86b6c9a8-5ecf-4aa5-a6cf-afee64d28efa@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/5/25 13:30, Krzysztof Kozlowski wrote:
> On 05/06/2025 21:10, Florian Fainelli wrote:
>> On 6/5/25 11:55, Rob Herring wrote:
>>> On Fri, May 23, 2025 at 11:43:54AM -0700, Florian Fainelli wrote:
>>>> Now that a "brcm,brcmstb-memc-ddr-rev-b.2.x" fallback compatible string
>>>> has been defined, we can greatly simplify the matching within the driver
>>>> to only look for that compatible string and nothing else.
>>>>
>>>> The fallback "brcm,brcmstb-memc-ddr" is also updated to assume the V21
>>>> register layout since that is the most common nowadays.
>>>>
>>>> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
>>>> ---
>>>>    drivers/memory/brcmstb_memc.c | 58 ++---------------------------------
>>>>    1 file changed, 3 insertions(+), 55 deletions(-)
>>>>
>>>> diff --git a/drivers/memory/brcmstb_memc.c b/drivers/memory/brcmstb_memc.c
>>>> index c87b37e2c1f0..ec4c198ddc49 100644
>>>> --- a/drivers/memory/brcmstb_memc.c
>>>> +++ b/drivers/memory/brcmstb_memc.c
>>>> @@ -181,65 +181,13 @@ static const struct of_device_id brcmstb_memc_of_match[] = {
>>>>    		.data = &brcmstb_memc_versions[BRCMSTB_MEMC_V20]
>>>>    	},
>>>>    	{
>>>> -		.compatible = "brcm,brcmstb-memc-ddr-rev-b.2.1",
>>>> +		.compatible = "brcm,brcmstb-memc-ddr-rev-b.2.x",
>>>>    		.data = &brcmstb_memc_versions[BRCMSTB_MEMC_V21]
>>>
>>> This entry is pointless because the default will get V21.
>>>
>>> In fact, I don't think you need the new compatible string at all. It
>>> doesn't work to add fallbacks after the fact.
>>
>> I agree and would prefer to keep adding new compatible strings which is
> 
> So you agree that adding such entries is pointless?

I don't think it is pointless, it's overly descriptive and we don't key 
off of it for now.

> 
>> what I initially did here:
>>
>> https://lore.kernel.org/all/20241217194439.929040-2-florian.fainelli@broadcom.com/
>>
>> but the feedback was that this should not be done, and hence this
>> attempt at defining a compatible string that would avoid needless churn.
>>
>> So which way should I go now?
> 
> And the advice was to use v2.1 fallback, not replace v2.1 with something
> else or keep adding pointless entries:
> https://lore.kernel.org/all/2e33t7ft5ermsfr7c4ympxrn6l5sqdef3wml4hlbnhdupoouwj@gfjpbmowjadi/

Fair enough then, I will re-spin accordingly. Thank you both.
-- 
Florian

