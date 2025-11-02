Return-Path: <devicetree+bounces-234132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C35C291C2
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 17:16:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E122188B7C3
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 16:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BACC1D47B4;
	Sun,  2 Nov 2025 16:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="NmiN6a2/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f227.google.com (mail-qt1-f227.google.com [209.85.160.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F7E51F936
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 16:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762100202; cv=none; b=nGcJ5LjhUpo7m77sAmfr6CNPEY6CYjLqOH1f7eqcist7PoaojyVtQo0JNUnBnlGRIQfYMa56VY39ME5GlgKA/bljce+CZLZ1ajEwxmYNshxoIFN1zSyuHD6kNdKfqUVntpttr8XpACIIAbt1w21Bj32aTZFTymhrgOCZ77qEjTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762100202; c=relaxed/simple;
	bh=slta8ZoMQfumuBSMZvk4yw9MyesiaQ0UUfbRKXLUKm8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bGzenQQnPxSvZWsgxU2xCVBQyNaS2Gs9nM8OU6VwXluXl5XqI0JowfAsE6eEjG09kwhAy4a70gglgkNyn0qJgyA8SCmL5VH6UCP86O2tALo3Wo0wu6Y/HH0AteMuWlXelH3LbSVAcTN/0NQeXfj3+JKGQR4yiHRi+DGYY2RBwIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=NmiN6a2/; arc=none smtp.client-ip=209.85.160.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qt1-f227.google.com with SMTP id d75a77b69052e-4e89de04d62so33794771cf.0
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 08:16:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762100199; x=1762704999;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XZOmGUvVX3hMx9lamvWhLjBZWf9nK1zgBZONOXd3bnA=;
        b=no/R//JUYFsGhfbANt5Uv/kREMfyA2AaJCvFUNirlukTgeGSSDfqvu6F0G6VSdyhiv
         BW72vTir/MjvLU5epid2uF3ta2eJgY97A/esdohwXk04KBawtJ9qgfmuEAv15riwsoD8
         vBbww9DTu+tyfESbKjlREFuDRAiqre7XUeQh9+IGz6BpIQfOMItDXxiE6GyPR1U2rz0Y
         U2UWo58Lz8D1QLj2LuVlSPQhYZ1OYMAaO1326qOjVxZgdgrDk1Cjjv9aVItNaby+dVfb
         zOFhWyfC5zU5fWHsw64RLlLn4RM+Y8ChcdQqoMb2j2yjIw4ZsRmdO/xUDC5etWTdYarD
         BOpw==
X-Forwarded-Encrypted: i=1; AJvYcCXgzqa2elfwb2JKTIz/PEGc4QXzx65UAP9Q2IhNZLwXoIPKDY6UHptugyfKYJ3Be3NxghGunXH9x9yX@vger.kernel.org
X-Gm-Message-State: AOJu0Yyzb8MiK5p6DAoRfZtQx+AprIxj/rybQHtfZgybyENSx1Q4pfDK
	5ABKWB87ZT6ZEWTYCBn8Yrf0/UvwR5b19L7NvQgW1w7Su7DQ2NcA1RmYFJd+IqgBUI3YbpcFtlg
	v73fZqNVS9Yf+naJzMjtl2L7vqLmpmcGphSTDEjGMd54SN73+NfT+exkWWGh/GsUxUdejQnlG28
	aDfMR4TAfzQBz6Dh0r+DDd7lDy8XhnD4KSzthTeEfQG/tUpxYf0u/4zCB/hBHHvUMf1zVMLZ7G+
	q/2ygEhvBVsiqIinmJ1lg==
X-Gm-Gg: ASbGnctZfYXZM1n3uquvtNbnXlf27ztF2GVFhDoyFydhStJslVa9e1B/7OhCOmqYfMU
	6xFLaWMRy+8sWfIerMh4KEYKKVvnFGSAUIVPpL8raAPz9KpwaUsCOb/ubGC+D+N+xJ+yGh8uIsU
	SWpKKvI1fpkY9x9Nz+DS/T3kAgLvRG7l2fUDmhN+2YtM1g9dgGbkbPABFNheRAEOnVOBhFScBFO
	H3ZgW1tDtj29qPc54DxQacBITo2B/pUT1saq0UvMlxGceMuVoCwnYLe083q/FRkms/Gn4he3VMW
	I199V5eAkQdhK440ySIiDiV/SsVhBmMN2jhgHRx6Xsim5N4VNXvUBtwaCZ6BWlGpsGoZHVPkx2w
	yxpbulRrZe9YQG/GcqHxWxtIYft1PWRBgIlT9W+ZsSk7hzD9HgQVdwRf7aI4o3qY55Ue/zZayz7
	VlNTjvnwa/ABkYnyz14GOl1Z/27lJH8wVniRkvVhk=
X-Google-Smtp-Source: AGHT+IH5u7+y/Ujns0WaBEww7h9U2iQg5fsnYl8PksZ3jV9B7TcLyMdGIvpZLWb/L74jzl0SC6GRSoOL9gUJ
X-Received: by 2002:a05:622a:5e15:b0:4ed:18dd:fd4 with SMTP id d75a77b69052e-4ed30dd65a7mr129191321cf.19.1762100199438;
        Sun, 02 Nov 2025 08:16:39 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-14.dlp.protect.broadcom.com. [144.49.247.14])
        by smtp-relay.gmail.com with ESMTPS id d75a77b69052e-4ed352b9801sm4577661cf.11.2025.11.02.08.16.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Nov 2025 08:16:39 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-294df925293so37645165ad.2
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 08:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1762100197; x=1762704997; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=XZOmGUvVX3hMx9lamvWhLjBZWf9nK1zgBZONOXd3bnA=;
        b=NmiN6a2/bpOr2KWbRJeslEOzwa9UdC1Qfcrt2J9V1lP4Vq3co02e8EHEYkas080Zid
         g9EqWvy8Q9ZVwpe05rfrSddIgv7aku85n5cZWUPBxpCT2XdYJnVHrXYB5cMef8FO0+XH
         NUGhUOYZAbVshC3uJyVziUTUBOZq6zf9bcp+g=
X-Forwarded-Encrypted: i=1; AJvYcCVVlK2WaAkGMjkcovynFpwyjOUN8wpfMQXw0EO1uSVNfnwh6OX2SDaWkm4RDDtwTcd/ewV+2dq3g9Sy@vger.kernel.org
X-Received: by 2002:a17:903:185:b0:290:9a31:26da with SMTP id d9443c01a7336-2951a37a3d6mr139836835ad.16.1762100197314;
        Sun, 02 Nov 2025 08:16:37 -0800 (PST)
X-Received: by 2002:a17:903:185:b0:290:9a31:26da with SMTP id d9443c01a7336-2951a37a3d6mr139836665ad.16.1762100196962;
        Sun, 02 Nov 2025 08:16:36 -0800 (PST)
Received: from ?IPV6:2600:8802:b00:ba1:a836:3070:f827:ce5b? ([2600:8802:b00:ba1:a836:3070:f827:ce5b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295268cb73dsm89476675ad.44.2025.11.02.08.16.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Nov 2025 08:16:36 -0800 (PST)
Message-ID: <dafd904e-1216-4211-846b-5ad2b07f9111@broadcom.com>
Date: Sun, 2 Nov 2025 08:16:34 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: rpi-5: Add ethernet0
 alias
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrew Lunn <andrew@lunn.ch>
Cc: Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Andrea della Porta <andrea.porta@suse.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 "Ivan T. Ivanov" <iivanov@suse.de>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Phil Elwell <phil@raspberrypi.com>,
 Rob Herring <robh@kernel.org>, Stanimir Varbanov <svarbanov@suse.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
References: <20251102111443.18206-1-laurent.pinchart@ideasonboard.com>
 <bfc2be91-dcf9-4b38-a3f3-a1cad6c6aef2@lunn.ch>
 <20251102154834.GB27255@pendragon.ideasonboard.com>
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
In-Reply-To: <20251102154834.GB27255@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e



On 11/2/2025 7:48 AM, Laurent Pinchart wrote:
> On Sun, Nov 02, 2025 at 04:35:30PM +0100, Andrew Lunn wrote:
>> On Sun, Nov 02, 2025 at 01:14:42PM +0200, Laurent Pinchart wrote:
>>> The RP1 ethernet controller DT node contains a local-mac-address
>>> property to pass the MAC address from the boot loader to the kernel. The
>>> boot loader does not fill the MAC address as the ethernet0 alias is
>>> missing. Add it.
>>>
>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>> ---
>>
>> Should this have a Fixes: tag?
> 
> I can add
> 
> Fixes: 43456fdfc014 ("arm64: dts: broadcom: Enable RP1 ethernet for Raspberry Pi 5")
> 
> (or maybe Florian can when picking up this patch, if a v3 is not
> needed).

Yes I will add the tag while applying, thanks!

> 
>> What MAC address does it currently get?  Random?
> 
> The local-mac-address property is not currently filled by the boot
> loader, so it's all 0's. The kernel then assigns a random MAC address.
> 

Definitively a fix.
-- 
Florian


