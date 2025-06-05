Return-Path: <devicetree+bounces-183147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFDAACF7A4
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 21:10:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 420EB3AFD1C
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 19:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9ABB27BF6C;
	Thu,  5 Jun 2025 19:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="CvjQVrj0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAC62798EA
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 19:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749150628; cv=none; b=ub6aaah0VLtHuwadP8EyWrjdPKbMsDLvljwj8vzIvcZ2LU5CwVocbhS8RGax+Ka0UnDA5JP9W6gVZQ1jEaEdehh0Qxfq7rC32Vn1homkRokqiGsoyPAhIUBCp6hnkkq/qlYNYSZgr9X8zeQ+uXEkbLZc3jaf/j/QC6U/saZom0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749150628; c=relaxed/simple;
	bh=BzhDXvO+fo6vdDlGvPLhFLjNB66knyQPyVH22yq04h4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FIvVdNBO2Z/w88yJMROsdO6hOeF4aYUhLyKPXESNkOCKFqKODRY0wkXrhw+lEl6iIpLtF3PSj8Q3lUy0TV4mO8yZgDVtq+W/xzQIe9rzWj356axRvXhOhDFqaxiVSTVY+oJPOB5GkApA3yHDpPpGkFqvmnKXTV8qp1W714G0xIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=CvjQVrj0; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-234b440afa7so14391445ad.0
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 12:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1749150626; x=1749755426; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=S8Q01zwWnDH2jcws9vUi105eGLMi3lYwKgILJyKyZOU=;
        b=CvjQVrj0GQ+7D+6il8tY5VFKMtQd35LjQywutk4BFTQY91swbXtxl+EEPcLxSFmR05
         CRZJGv2XwcuNcpHiaAKzEJ67Sy3WvN02DCNhw8KPF1OKvhAWIOpOP36vDwoMSh+0jw//
         OFAvyodqdKGkkYheOYgGMFAN9RY1urgMB+NdI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749150626; x=1749755426;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S8Q01zwWnDH2jcws9vUi105eGLMi3lYwKgILJyKyZOU=;
        b=f+D1JQwFTLqGwtIBcjSB57dj7SQw+DLmQB7rsFgyDaDVhekhX+gV9koK5+pQA00RGY
         3RQA8UJqccC9w+d+2vI1K220ib7s03gjLFCRmS5kQUEgHyQpMK0J5ylB72xQj78Ol9ss
         ho20qKGPxVGOwPBoE5ToPXmvTrdKHhlc1QV/p3g8y3spYuphN7UNTMPUo4nALmu8Dk57
         YpsHLVAOVXNFxJEiycp+OioQguGVVFq9V+K9its0wdpyp+RLJDGEW6WwpIN5ZkfNX+ZK
         E6vIXoT7EDhXFNi5TJn3xDg5nOL4rA/eOUptB2nLVo4mRj7gap/+Ig3Tfwh33F48Nkk6
         ztsw==
X-Forwarded-Encrypted: i=1; AJvYcCX9wEgniuZAZmUw4glrI1dbH0VcgF0aW4N0YjS+oak1lcCJx5BrmWe6Su9oKLqRzb7pYPbf4Wmg/pMy@vger.kernel.org
X-Gm-Message-State: AOJu0YwwFvNyA+KzG1cfVvUSNl40ArfPKlbCmGuM6IgtKvHSlFaqvLnv
	H7p1B2zoNhtnc+zuCsBTdkvSzFJkqejwDKHDMBGU9+DgoiLZoLyIL71mmWgvBTo1rQ==
X-Gm-Gg: ASbGnctoy4IYi+G5YSAV53tZDmKZXFNM4n9+6aOe7hLDaX8hHNKMMxp09IJB9L1nYBr
	l0FnhyPnUz+yLdHsqMZqSQ2MX4h9G9Y1Muy6O0afxawdzAqYMeAaemi4OoWMZ/2d1b8r5AbqUm8
	HKzPZhwlv3To8mBXkcRr54dgkj5KwXCgJwY8guLHfX3UNeogIKtycV2Pivnm7BwCnBOiaaKdhuw
	idVD+Px0j1vDl4Uq7PbIx2RNmX/le5gDbHedeD0ETRVRpr8KYgPC2ligzj3gm2Oh0GR11pXYcP4
	I5rp9AyahmMcMekZLGYf49b6d8yoMZ9+6feUskm2JNttzL9Jv2FQFQEc+DJjvh4peSx8evmJ8D9
	2aD7gXRFbPjoOHeM=
X-Google-Smtp-Source: AGHT+IH8uMPfDU2hWPBfSee1riTDDvC6J/TIxbPRoKG9On+pgfWIdYZeF7y84NvovZbhYEH2dSNdRA==
X-Received: by 2002:a17:902:b205:b0:234:cb4a:bc48 with SMTP id d9443c01a7336-23601d1993cmr5856905ad.31.1749150626567;
        Thu, 05 Jun 2025 12:10:26 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2f5f66a87fsm37744a12.39.2025.06.05.12.10.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jun 2025 12:10:25 -0700 (PDT)
Message-ID: <ac57663b-3bcc-42ae-898e-06592d417715@broadcom.com>
Date: Thu, 5 Jun 2025 12:10:24 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] memory: brcmstb_memc: Simplify compatible matching
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, justin.chen@broadcom.com,
 Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
References: <20250523184354.1249577-1-florian.fainelli@broadcom.com>
 <20250523184354.1249577-3-florian.fainelli@broadcom.com>
 <20250605185557.GA3023589-robh@kernel.org>
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
In-Reply-To: <20250605185557.GA3023589-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/5/25 11:55, Rob Herring wrote:
> On Fri, May 23, 2025 at 11:43:54AM -0700, Florian Fainelli wrote:
>> Now that a "brcm,brcmstb-memc-ddr-rev-b.2.x" fallback compatible string
>> has been defined, we can greatly simplify the matching within the driver
>> to only look for that compatible string and nothing else.
>>
>> The fallback "brcm,brcmstb-memc-ddr" is also updated to assume the V21
>> register layout since that is the most common nowadays.
>>
>> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
>> ---
>>   drivers/memory/brcmstb_memc.c | 58 ++---------------------------------
>>   1 file changed, 3 insertions(+), 55 deletions(-)
>>
>> diff --git a/drivers/memory/brcmstb_memc.c b/drivers/memory/brcmstb_memc.c
>> index c87b37e2c1f0..ec4c198ddc49 100644
>> --- a/drivers/memory/brcmstb_memc.c
>> +++ b/drivers/memory/brcmstb_memc.c
>> @@ -181,65 +181,13 @@ static const struct of_device_id brcmstb_memc_of_match[] = {
>>   		.data = &brcmstb_memc_versions[BRCMSTB_MEMC_V20]
>>   	},
>>   	{
>> -		.compatible = "brcm,brcmstb-memc-ddr-rev-b.2.1",
>> +		.compatible = "brcm,brcmstb-memc-ddr-rev-b.2.x",
>>   		.data = &brcmstb_memc_versions[BRCMSTB_MEMC_V21]
> 
> This entry is pointless because the default will get V21.
> 
> In fact, I don't think you need the new compatible string at all. It
> doesn't work to add fallbacks after the fact.

I agree and would prefer to keep adding new compatible strings which is 
what I initially did here:

https://lore.kernel.org/all/20241217194439.929040-2-florian.fainelli@broadcom.com/

but the feedback was that this should not be done, and hence this 
attempt at defining a compatible string that would avoid needless churn.

So which way should I go now?
-- 
Florian

