Return-Path: <devicetree+bounces-256282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB49D388E6
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:50:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF0C3302B75F
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63E9F2FE05B;
	Fri, 16 Jan 2026 21:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="E1GEno8q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f226.google.com (mail-pf1-f226.google.com [209.85.210.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBDA3093C3
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768600184; cv=none; b=sCyzzKZzUPcD6ORCyMQlYtHb/NXDcVrY9WCINJec3AiOr36sMNjNxiEzQJdDajXs69Ugvil8YCelDY71Cr+PCXvYwnI3OqBLL7RYYgUMgbPOG4rA9e79xfuTm1AlYTMD7OBK3jZYcCkhPYBxV26+bDMvVYNVlxqUZJ6bmRLncYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768600184; c=relaxed/simple;
	bh=+O/kjJ3MdnYKyPkNq52IqDyci8sym5+h+W+0tu6KPlU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tIGZbOYmO0j0smLPk7/DK0k46f4NMMQftSrjCr+fHf4iqqTU3bm4LQyBOm2OS7RocNKWI5sEt04Cw4JBL3xjpt9SnN2LyFcrutVKB3gbqbNUH5uMBic/uM4fVDHpT2hbl09n7W+u4Q7/N8VNIZ+Grww2rnVLW3ZKyc+Ff13RAl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=E1GEno8q; arc=none smtp.client-ip=209.85.210.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f226.google.com with SMTP id d2e1a72fcca58-81f42a49437so1354396b3a.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:49:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768600173; x=1769204973;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1vCA+R5fcMfO5sPq0PNAkA7jYgGsq1t74maw1JK+ZqY=;
        b=MrGseED7wRRhg5fLsrzq+M6rMze0ES/7Tdw6LwFro2Fw9l+73gXWmILDuZQClvOBaD
         63pURIp6fv3kYmeNJRkAEBMBdiuCMVE+wIJ8u67k4jghihreVSFyRQ9e89FthENzvLBd
         EQTFfylsXEUry6QNpse1E0V2OkGMxaL64A9660VNLaDIOTLue3p5FlWjGjWqNCjCWld0
         +Btqed8hB2nN6d5HAAPN7RLu0h3oJB+7ExQATmzEM8tgHTstyYMUx50MO3kZd3Thd17r
         w8WrdQnT5t+ZHh5nbP7r8ZGG4K11zwbBLLF4PqmjDsJHR5kV6KPFPngOTJERTWbxlsav
         4YDA==
X-Forwarded-Encrypted: i=1; AJvYcCX3RH30mzCpekgB8JztZLL+8hf16FToKCh2gt/jp7xB09eOubpSo1eVBUr1efv7p14rR3qBm3HEk+uW@vger.kernel.org
X-Gm-Message-State: AOJu0Ywtg3KLB4eTmXzvKobjxjqqyG4HQAdoo+zR3QQYze09kh1xkVB9
	uewBPUoYzfKD9xfkqpFrayN34R34md2u6fkNqTYih5/1u4V2JrAWIVt7OZ+1kPvzYwVuZXBYvgJ
	QMs4gjH168noGndpwvCR+BzrczbqUC07qtLzj023wwsq1DnQJjJ7F+WzjUupr7LLNKqN2VyB61Q
	UjFnAqovCefmvnoOlQD4EVULtAA5G3eKtKNw6sDkuIkqW95Sd7f6gp9rNrSpxWofFTruAfmwGfT
	fSP1VlJGiQWduHSnri4aQ==
X-Gm-Gg: AY/fxX6fLIkf5SwyrSDFU20Z2BKkiHXpQXU6xdAd2QPN9XIDqSnhrBnnwRygA1DZKDV
	QIHA5PoTNnpljOGjSCSkedq/A9qomYXXxeumhwjwVop5B72feX6fJw4Dg5dJNKVEnCBpi4GBfoj
	zjxB43sIacf1wq6J/3lVX+1f/P0aahroyq5lAPMJxNtjqG97mF96MHl6u1Ps44Err6Rjt4MlW46
	gFJXXKkSFypMCmF9hr6I9ARU1lAhxy9Y9AB07YRtuW2lbYtQg8iyWhkG5qKgKEx273BqesMZgFZ
	774vI3QF6SIAGEjbeH96UhrS34F1p4dwEb67TrWcMhsOOSfuXQLZUkEjpUQF63i4Mo+02uk+hoc
	mr1dG+yVQIVuQP4eyieAvy+DEiWVp+va60yqJ0cWTv5dPn4mctD0r9A/UUno4l7HTWhMpU8Dexh
	p/17ZDBTwW4WN6yeN3A83KBBxvF0ypemQKkIOxa4SsrlDOnU4=
X-Received: by 2002:a05:6a00:bc90:b0:7f6:4922:89cc with SMTP id d2e1a72fcca58-81fa030f782mr4226024b3a.57.1768600172909;
        Fri, 16 Jan 2026 13:49:32 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-2.dlp.protect.broadcom.com. [144.49.247.2])
        by smtp-relay.gmail.com with ESMTPS id d2e1a72fcca58-81fa10be1cesm411653b3a.4.2026.01.16.13.49.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Jan 2026 13:49:32 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-502a341e108so28289641cf.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:49:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1768600171; x=1769204971; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1vCA+R5fcMfO5sPq0PNAkA7jYgGsq1t74maw1JK+ZqY=;
        b=E1GEno8q0Q+1qRA3/vA1WPCE8NoI3h5VIbrwpd7tT4GX5Gb0zO5WG9ZEE+0+KBK3iX
         YH6/iW0n4ZMgkNADP/s/vWRMumU4Nl/AlPg8OMQ8b9hFJJ8tEFbykge2D8P6nYX9/fvV
         VVYhiHgkR1kScCAxhlaDpsC4aF6wZtF/7oizQ=
X-Forwarded-Encrypted: i=1; AJvYcCWCPSoq1QStoMz5+BbFJqqcH8pI1SOpAHRPwv8+c2CljuaZfwp0W+/ik64cgZHzd5ed3emp1GxPppkT@vger.kernel.org
X-Received: by 2002:ac8:7dc7:0:b0:501:3d25:18e3 with SMTP id d75a77b69052e-502a1714fc5mr74271141cf.46.1768600171664;
        Fri, 16 Jan 2026 13:49:31 -0800 (PST)
X-Received: by 2002:ac8:7dc7:0:b0:501:3d25:18e3 with SMTP id d75a77b69052e-502a1714fc5mr74270911cf.46.1768600171268;
        Fri, 16 Jan 2026 13:49:31 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1ed1de6sm29437481cf.17.2026.01.16.13.49.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 13:49:30 -0800 (PST)
Message-ID: <ded7193d-ab5e-4f91-9b64-142a886fd792@broadcom.com>
Date: Fri, 16 Jan 2026 13:49:27 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/13] ARM: dts: broadcom: bcm2835-rpi: Move non
 simple-bus nodes to root level
To: Rob Herring <robh@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
 <CGME20260109120137eucas1p221b9dd341c2319c0f9d0da1fbd48d1b3@eucas1p2.samsung.com>
 <20260106-dt-dtbs-broadcom-fixes-v1-2-ba45874e4553@kernel.org>
 <e98ad883-7ba2-417b-8cd3-19f5f863b03d@samsung.com>
 <CAL_JsqKNKCOWj_eSTtDwsex3pUhgc+7QwAwLZn4MWVzOkOOHcg@mail.gmail.com>
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
In-Reply-To: <CAL_JsqKNKCOWj_eSTtDwsex3pUhgc+7QwAwLZn4MWVzOkOOHcg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 1/12/26 10:09, Rob Herring wrote:
> On Fri, Jan 9, 2026 at 6:01 AM Marek Szyprowski
> <m.szyprowski@samsung.com> wrote:
>>
>> On 07.01.2026 03:09, Rob Herring (Arm) wrote:
>>> The 'gpu' and 'firmware' nodes are not MMIO devices, so they should not be
>>> under a 'simple-bus'. Additionally, the "raspberrypi,bcm2835-power" node
>>> is part of the firmware, so move it under the /firmware node.
>>>
>>> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
>>
>> This breaks operation of all drivers under the firmware node. I'm not
>> exactly sure why, but they are not properly instantiated. It must be
>> something specific to "firmware" name, but I didn't dig enough to find
>> exactly where and why.
>>
>> After changing the "/firmware" node name "xfirmware" everything works again:
>>
>>
>> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
>> b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
>> index 9ab70b519a63..464f032ccb71 100644
>> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
>> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
>> @@ -1,7 +1,7 @@
>>    #include <dt-bindings/power/raspberrypi-power.h>
>>
>>    / {
>> -       firmware: firmware {
>> +       firmware: xfirmware {
>>                   compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
>>                   mboxes = <&mailbox>;
>>
>>
>> Same issue occurs with bcm2712 change (patch 3/13).
> 
> The issue is how /firmware is handled in drivers/of/platform.c and it
> doesn't create a device for the /firmware node. I think the fix here
> is /firmware needs to be just a container node and move
> "raspberrypi,bcm2835-firmware" down a level. That also allows for
> different types of firmware such as a TEE or SCMI should those or
> something similar ever be needed.
> 
> I'll see if I can get kernelci to test that change. I don't think my
> branch boots all boards though...

Dropped this patch for now, until your of_platform.c fix lands and I can 
apply your two other patches.
-- 
Florian

