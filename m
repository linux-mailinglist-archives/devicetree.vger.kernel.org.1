Return-Path: <devicetree+bounces-226281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CC0BD6A51
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 00:40:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7BDE3BF6FD
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 22:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD1F730ACEB;
	Mon, 13 Oct 2025 22:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="T+OUDctn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f227.google.com (mail-yw1-f227.google.com [209.85.128.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338DD30ACE8
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 22:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760394942; cv=none; b=qMKpkH3nSDbz+Q1FwPwduR1jGSPgEfftlpug/6JC7Vc6hPTFsWH256YJv0sui7DeXX5VUE9toulq/X02JVbxRkQXr5Y+1GSc6843BObaCJaBUc0K/Q5BRL64K2OP6anHDl94qBPsFURBlIy8yz736GyKIF3PjfhRU9ybvIJtHSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760394942; c=relaxed/simple;
	bh=F2BFN9g+8keAGBnbMxs7JX9V/+6FXdWN8w+RYxt3zEU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=egHcIxSlSmO2hcALK4HJOLcmmNudltXAMA+0RkNYscNdSPlXAgsxYsGpMfHZT6D7lfQMb19z8DVjtzxqgyGAvAETvBd/w9OcoT8hxLvTZ+Pr5UD6PFmrTopfCuyX1uNMCZHtpNaTdMxmyvVojidMjMdPXGixVl/1JSh4U/tuWbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=T+OUDctn; arc=none smtp.client-ip=209.85.128.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yw1-f227.google.com with SMTP id 00721157ae682-71d5fb5e34cso65537527b3.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 15:35:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760394940; x=1760999740;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Eyb/umL56dPGqEY4VTwLOjKTdYu1sJFdxZUnFgjKhI=;
        b=b4RppJhx5z79u6EiANKMc2/EGem6xXd1eDQ4LEc4Qz+Q0j4CS/9dy23sYvhG+3mOYF
         /mXaN+BosSIbqT3yTVSPrL9dHtfhkS/UBcalS5zvAuqd34bNsFk3Tzy3Gd99sle3U1bR
         puNQjGKhZELb0QMYuDF1/5pxjGsYf4xZPwR9Wg3pUF1aFKOS/ptgNczZWkLkH4sXsk9G
         om5hHCu5z/68uy+uJwmZ+yI5LGnusTW8G4x54yAGwWgkUQZcWkaCFUV3l2XQVSHoRdeH
         BTPWH3+YV7ngphffzrQZrHS2DJ+ZYCs1V4YaJ+XU9RQip8ghFEMrjub2t3svee5pGWd8
         rg/w==
X-Forwarded-Encrypted: i=1; AJvYcCWc20eLib5B/qFRO0uliqbKkboBBlF0UmOyfF2HzsGWPupzr/drSgIukSLp0dYu7oPGQwtVPQU1jID8@vger.kernel.org
X-Gm-Message-State: AOJu0YwQjXDJ0Qlvfc7ihXrpYXqNIYViuayC4kvUIXOOowQ13BVo2Sks
	qHoK1iwjBz2RBgwp0m/X/GvzZwFByq1n0Q4WVHPY4GPcZqnh8Rp0x38kKIR39W+6YMcUldMFQZ9
	6AosCSVkV+agHG7VYLJTIqxNsSh6zlLBxw9AGJbiVtDr+zp6lnrC6JQX8j//VPAG/o+pofYeVCz
	MujcPdKuSoXck8sQiHwyu6rhxXVOJvYxwnGE2oi5kD2CmMlSkMtHkAYJc9YRKehisTl/IgxzAui
	aDJFRHvg4Z+ejPQP1zLtg==
X-Gm-Gg: ASbGncsIuUjEp5TYmKjhhjws14nhjgLzQmZL8j5tdy8EEyvRTIyZGqsYNOYVX4HJgro
	Br65N4RkMj1FBStvtKtVvKIuG7HQ3JAmQh0zJHpOsuhE/VDOKs1Qjrxs8ynpa9zgLbP9G81G2gf
	++mvyhjcttUT9glVRxt6gB9CYbj4UoCIEu7rX2ecMLoZ/gtjVa9dEzCiuEdq6fcY4S6yh1ljvsu
	rzOMpjJvPuzGuB4AzEZt5ul+qsG78kNwCT6um+wdkREZwCWXZHLzPYPOkloM6+2DQRh8WYb9CM4
	DX3DzpeGe8ySaCVI8RYDfI/6rWxOszxlLxTMpbYa6ExF9CLQIwQ5SoK/PRFwysG/JSVp84bzf4+
	jo9trX1EeJfb+IrGGQ+LiDlbTx+zfVSfxFyG41w6wYxeKHMR/nEkjmHUW6mNbAQfD1LLJdjqX1c
	MsDwfNayo=
X-Google-Smtp-Source: AGHT+IHdF3Q5ZwTzVxH/ur2OwvDcDV5ZDJniBelsYDIb0+WzWBE1+l5+/fmJbpWMqL2Me3ruOxASH1K8Qimd
X-Received: by 2002:a05:690c:6f12:b0:772:495e:56de with SMTP id 00721157ae682-781465e04b7mr19227727b3.0.1760394940105;
        Mon, 13 Oct 2025 15:35:40 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-103.dlp.protect.broadcom.com. [144.49.247.103])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-7810706f9aesm7417297b3.36.2025.10.13.15.35.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Oct 2025 15:35:40 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-856c1aa079bso2424276385a.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 15:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1760394939; x=1760999739; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+Eyb/umL56dPGqEY4VTwLOjKTdYu1sJFdxZUnFgjKhI=;
        b=T+OUDctnrqOrf3dTEVfLKga9urqjXtVHfivO18wMllBBxmeAclHzWQ7SETZE4iWxtP
         a388iXN7oB/egTJmuy0xDZ8u/m1lyO+DeC0Q7n69cCRfcCSWNhtO4d6E9ihzRDFrQUst
         Lz6vnI32hWGS8Oxgis6djyu5vh+F+l6X/yk78=
X-Forwarded-Encrypted: i=1; AJvYcCWbWXdqNm+wpF7sKwW8fe+nXpjodhX+GlcB3jMnX09FdZeJWpld8UpveYqkFbK74dnONS0OSNU9PNeW@vger.kernel.org
X-Received: by 2002:a05:620a:1a04:b0:82b:33c1:69e3 with SMTP id af79cd13be357-8820b47b828mr3694939785a.10.1760394939494;
        Mon, 13 Oct 2025 15:35:39 -0700 (PDT)
X-Received: by 2002:a05:620a:1a04:b0:82b:33c1:69e3 with SMTP id af79cd13be357-8820b47b828mr3694937385a.10.1760394939087;
        Mon, 13 Oct 2025 15:35:39 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8849f9ac935sm1072961585a.15.2025.10.13.15.35.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 15:35:38 -0700 (PDT)
Message-ID: <0b6f0503-865e-455a-a43b-e9a53c673d92@broadcom.com>
Date: Mon, 13 Oct 2025 15:35:36 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: BCM53573: Fix address of Luxul XAP-1440's
 Ethernet PHY
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20251002194852.13929-1-zajec5@gmail.com>
 <4fcba9c1-ff83-40b5-b7eb-758fd43ea978@lunn.ch>
 <8f0b1ea5-6c38-4b7b-a8a0-724f7e317d65@gmail.com>
Content-Language: en-US, fr-FR
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
In-Reply-To: <8f0b1ea5-6c38-4b7b-a8a0-724f7e317d65@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 10/6/25 13:34, Rafał Miłecki wrote:
> W dniu 6.10.2025 o 18:09, Andrew Lunn pisze:
>> On Thu, Oct 02, 2025 at 09:48:52PM +0200, Rafał Miłecki wrote:
>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>
>>> Luxul XAP-1440 has BCM54210E PHY at address 25.
>>>
>>> Fixes: 44ad82078069 ("ARM: dts: BCM53573: Fix Ethernet info for Luxul 
>>> devices")
>>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>>> ---
>>>   arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts 
>>> b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
>>> index ac44c745bdf8..a39a021a3910 100644
>>> --- a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
>>> +++ b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
>>> @@ -55,8 +55,8 @@ &gmac0 {
>>>       mdio {
>>>           /delete-node/ switch@1e;
>>> -        bcm54210e: ethernet-phy@0 {
>>> -            reg = <0>;
>>> +        bcm54210e: ethernet-phy@25 {
>>> +            reg = <25>;
>>
>> Does this really not work, or is it relying on the PHY responding to 0
>> as a broadcast address?
> 
> Invalid PHY address was breaking Linux's support for Ethernet device.
> 
> Before this change:
> [    0.986560] bgmac_bcma bcma0:5: Found PHY addr: 25
> [    0.991913] mdio_bus bcma_mdio-0-0: MDIO device at address 0 is missing.
> [    1.024512] libphy: PHY bcma_mdio-0-0:19 not found
> [    1.029358] bgmac_bcma bcma0:5: PHY connection failed
> [    1.034514] bgmac_bcma bcma0:5: Cannot connect to phy

OK, so the SPROM told us the PHY was at address 25, but when we went on 
to identify the PHY at address 0, there was none, and so we could not 
connect to the PHY, that makes sense to me. Applied!
-- 
Florian

