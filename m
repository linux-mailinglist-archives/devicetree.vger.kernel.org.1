Return-Path: <devicetree+bounces-154174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1636AA4F118
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 00:02:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF7C93B077A
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 23:01:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 801FA1FF1D2;
	Tue,  4 Mar 2025 23:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="MhKLozmH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A3F1FF60A
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 23:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741129309; cv=none; b=QXGb+j1v3NKsgyW360lc80dThJcz6pm43jOLwgxdvjchsy3wZGBg92Y9XW+5PQ/NVgNub9v1ZrcAFvKaIxfzosHTk8MxWvk1cYQRu9XU5h7EAiSidxpc86tmaJq+1mgREemlX1zwZ/yg5e2Zx/xjBISMyPJTBTLKPrO2k+xwfCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741129309; c=relaxed/simple;
	bh=pz7Xcy2s1G01bGPyo60xMbXviZXfgdVcaLnTIVtLEiI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CaT/o82fJ9dK3/+M9QJbMnSCnIpHPn/JLwwDq6alhVkrYlSG5U4zyMfeowD69EbJjsETusUo/SobTbPEkpMINpCrxcfBEnfNPLUhLLEliqOk1XQVPCb7lUBE3irFQFWtGjZhxwSFs0jag3tClummN8MxQ8CdPTNIQv4Cvx8rdNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=MhKLozmH; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-22356471820so100189285ad.0
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 15:01:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1741129307; x=1741734107; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=jv+vfhFM5x+H+wKvE7Tyeh9gs1SZ0jcQcgCrZLmaD60=;
        b=MhKLozmHFyxcnM4SjN9l8Rl0Sy0Vw9vFROlih2aRPU7ybwYtLTu+tt5czcMdyye5Sm
         riNccAZiBgSHCERF9/wFaLdwk3Y+XJI1dxHcl5wy7mAZmpxNwaTr3OtyvIdu1LTC0Lzz
         J6Qt73pTxiP4Irm/F+uvaHMHo/SY4xHHOtXns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741129307; x=1741734107;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jv+vfhFM5x+H+wKvE7Tyeh9gs1SZ0jcQcgCrZLmaD60=;
        b=rUNSh7/36nJ9MjHsFXuCWbEJoUSOQtUG9kwjdQqPVeowRjGbZv7j0VP/XWfg7eVD7w
         vFFEZo3mbXAD+lCAfdsInuFWYtsx/aYbVIpWL6I5ByK+3O9v2z0/tz8y2y3W4/lxLndv
         zA21IarGshdcUGIOXVF9o8y0mM18bsv2vnbQDgLAskmpboCGFicFfZ4hfGekvq7D5vKr
         oXTttiQGfR8M14d0sqnVjzkik8+sjGWUh7lxp/ev9eV2BWSh0HhpqohqPYw37VhnnBqo
         iTW+Sf0ejBLR6WOQHkm/EwF6YbVdP8Y9Vr8r/AX2YNL5Cl6Ad2R9XzXb0JUQGZt3t+zD
         7Uxw==
X-Forwarded-Encrypted: i=1; AJvYcCXQP8kk9BGQYkVT3x82BjJcpuQ6vEhKW4Jo3VC2NTfnXUhPdeR7kdSDorVaCD+0JHlYX8Gly/zKVXP+@vger.kernel.org
X-Gm-Message-State: AOJu0YxIQeVDO1JLrLHFGv9C1Pcic2/iYnQOVg6QLjt+a2CcUtbJswCx
	foP1OH64UUta5ZvZ9Sk3h55w/easOFIms2TmsQLoYs3JHybFvepmKvYfTyFT9g==
X-Gm-Gg: ASbGnctU2MyAQwrPe5QGdlTE4d8B1K5fBWBaWGMEVIaglSPmVE5cDCqRbM6ICX+cBG9
	JjtRnqg9xd8QxYwwqwI7aAtP65VXJsKrhm0TeRKh4/pF56dbPOPCO4flRVJfnv9ron1IubZjF5q
	v4Qs/Etp6iSFzjENXt4Yio9+jwIlIv/LwG65HG1pHSH6ZqtOiH603VS7nd4Qim/PMjXovgldKOM
	vNhyVeQySb339sh3d4tj8PmloC7lqAty5d/XR9m0bu5ep4UDls+lo8OH4h1kmXALyMxxkAxWDMo
	lRtOwEZYd0Oinkk/6lnWK7HB/RPYVX3Cgs/3s3rVvJCl34F6gquBjPdx4scXte9GGl8nrjWgo7U
	31ir6Hrb0
X-Google-Smtp-Source: AGHT+IHNn+vjIDK9mrUob0jsHtMuQg5cWXZnp74724DjWY9A6ekiwkcRojQCHzA59kgShLLOIYsYAA==
X-Received: by 2002:a17:903:41cb:b0:216:3466:7414 with SMTP id d9443c01a7336-223f1d397ecmr18376645ad.44.1741129306995;
        Tue, 04 Mar 2025 15:01:46 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-223504c5cf4sm99912355ad.130.2025.03.04.15.01.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 15:01:46 -0800 (PST)
Message-ID: <cb5e3a1e-39a5-4502-b99b-b7183dfaea02@broadcom.com>
Date: Tue, 4 Mar 2025 15:01:42 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: BCM5301X: Fix switch port labels of ASUS
 RT-AC5300
To: chester.a.unal@arinc9.com, Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Tom Brautaset <tbrautaset@gmail.com>,
 =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
 Linus Walleij <linus.walleij@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250303-for-broadcom-fix-rt-ac5300-switch-ports-v1-1-e058856ef4d3@arinc9.com>
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
In-Reply-To: <20250303-for-broadcom-fix-rt-ac5300-switch-ports-v1-1-e058856ef4d3@arinc9.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/3/25 05:06, Chester A. Unal via B4 Relay wrote:
> From: "Chester A. Unal" <chester.a.unal@arinc9.com>
> 
> After using the device for a while, Tom reports that he initially described
> the switch port labels incorrectly. Correct them.
> 
> Reported-by: Tom Brautaset <tbrautaset@gmail.com>
> Fixes: 961dedc6b4e4 ("ARM: dts: BCM5301X: Add DT for ASUS RT-AC5300")
> Signed-off-by: Chester A. Unal <chester.a.unal@arinc9.com>

Applied to devicetree/fixes, thanks!
-- 
Florian

