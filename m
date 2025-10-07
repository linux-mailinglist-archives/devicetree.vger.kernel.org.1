Return-Path: <devicetree+bounces-224272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CA607BC2616
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 20:26:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1C4E1885CE3
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 18:26:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A690D21ABDC;
	Tue,  7 Oct 2025 18:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="F+mu4+Ik"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f227.google.com (mail-vk1-f227.google.com [209.85.221.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D112C9D
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 18:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759861570; cv=none; b=uyBPuw4t1YSCwBwehUMudDj6x/z2hphK5aVUH0GAl6zd1f4Uuncxr1vNGp3BMMjwmbvzyRRe+LkpYcxzZYcGbTl0KYKAJyLEqYDekPHX/GQMHHzfCa5cfitAKskPv9YgJd0HFgGiw7reLZabiiUTBJpHE2tinqjYwQbWdShwev8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759861570; c=relaxed/simple;
	bh=lgxPmQeUgDdBYByZONZ7GXCsvf6RdzHyLvwZHMau6sc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=SaV5APO8HTvEatT6m1aC2Fy4XIl5Mi1ayEzE7sGulhqeRIBE9DKtcuztPoELx63rU8QoZIUixymt2eXVzL6u3OWqteMsNOVZT74+403Cth0xqVFVHt/ppnksEXexY++eKgi/B/ViCIShj8sFSrlsdmT2WbCUjWbPCexxWVSdmr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=F+mu4+Ik; arc=none smtp.client-ip=209.85.221.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-vk1-f227.google.com with SMTP id 71dfb90a1353d-54aa0792200so4873859e0c.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 11:26:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759861568; x=1760466368;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:to:subject:from:user-agent:mime-version:date:message-id
         :dkim-signature:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6g+XCuA2ZoLfUqXFlcoNx1Oae85JVvQnsRhb0x3YAZQ=;
        b=Pocihpxctk+UxJX5WSE6ExzVxhpO6V3jeunG0ei02SIuVEl6JUM+A8uZbdt5fQnib0
         hzPHtSj0fspcQKQftXG/vaMDA1sysKcyw5Rk8oc48qWsLEAJod0zASHziuDckSW7c8yc
         jFMRykKs/MAbDek75MBVenssZXrfhtzPVUIsUEKdmD13XVhmYiRqTD341haaKHHzqSPE
         11wBYfAFC02EQ8Uk6rxa8B7fjFXxWgEhGINCfstFdO6WLPvd+Yrh7wvF3Qw1tAkvGiao
         O4zintVvMGx+LqvIFZSbsMs/ARsvaEAoeTShkHnQ6kNBV7auj5QvztFYGASj6Lt02O5m
         oqkA==
X-Forwarded-Encrypted: i=1; AJvYcCX+bvxN9cgoxv8xtBt3x3pp8mc9fi591CWLOSPsNJMZS9hkjJhcexRmzgzI6OoYfZP/1FbSlc1GbERk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9Z8ug+i9QkvZQlp17G2jee9hUqWDOLk32WaJHLiFGbA8obiIc
	kFvp8QKggnlTTgNn9bBWzaaRyeWfgORs7TxkLEMh0Il220ksW86gD1NEQkl/gV2+j1qXXDIv9rs
	aijXGmvi1D72rHqNLgjLgB15YShLqcK4soNNFqXGfKPRmochZ7EGO9zex9a/FTXnmzN9lfTVyNN
	qh2HD7LznZ2NTWlebOhB9NcLiZQ7hBKbOAwD6DIiqbwIU4rWiED5P6Uib2AlC2jbyvyp1nOWK1l
	gw4N8vQoW5BUd/ckl6Jpg==
X-Gm-Gg: ASbGncsDEMtROq0UFOtOMFtKJo6PV3onkTyDuqT9yeNU1wF8GjKQx8y9qakbxWOxpTA
	qS0GDQrG0WzmfXWJf1sm0sl2v9V/RtS2OydRMZsgfV91GNx3I6oT7vqnsKDt3SvrkV/TMyBr2tW
	ClInYJ1jqmMrrNFty7Epm+vPuqyfRUWLdEJNXcJ3yGc/0eM5achnaPkeuotQIvsXl0AN0usnlyM
	bxrCr6CF8DfLCef/kNXDmQItJKYz4YJ3jwtFITy68iGScOUvhyXlcMHqEwa1/Vo8QIFSvtsvgPA
	FBZOe0B3DQ+vXzfYvXM0ahQBpNBUUv8gCQFVscH3iNJDXHMi1glTKVGYsq6LLxyyJjS5Tn/Q74K
	BDgDrWTmBkJiGCe14J5Ig1qx6XR7SjbGuV39ACVgUKe91zofqxCT5iPB9h3kEjlphB8ZwPEOOPC
	f7NSmxiB06RXMF
X-Google-Smtp-Source: AGHT+IH/e4bPdxhrAM4T5hKXCl5T8w1sZ5Cg/ygPX6ROyFNeU/BejJeZtDgMbGI3aIZIIhNOonNMYgSBh8gb
X-Received: by 2002:a05:6122:4592:b0:549:f04a:6eb3 with SMTP id 71dfb90a1353d-554b8b95420mr294660e0c.9.1759861567912;
        Tue, 07 Oct 2025 11:26:07 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-118.dlp.protect.broadcom.com. [144.49.247.118])
        by smtp-relay.gmail.com with ESMTPS id 71dfb90a1353d-5523d06a33fsm1711557e0c.8.2025.10.07.11.26.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Oct 2025 11:26:07 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-27ee41e062cso80825675ad.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 11:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759861567; x=1760466367; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:to:subject:from:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6g+XCuA2ZoLfUqXFlcoNx1Oae85JVvQnsRhb0x3YAZQ=;
        b=F+mu4+IkuGhxWQWgENSzXMnuAd7EgExQ8OF4SxY7NZ/f5AkfAgjfSenxcEXi9Ppjjm
         /h87T9NqPROCiQXoYl1kdWFNmtWmu+xc7ZMtzMbKmiyGn7F06Ce1hGUrgRDnMhUatmYX
         9ChVwwJ/zTSH0ihxZ45AH/rku8VifuRAdcO68=
X-Forwarded-Encrypted: i=1; AJvYcCWRV8VhnNhDXG596ZykUhFU/+Ah02MP/EfzIAiA2+sxP1UAJwbvcv+hACazUBZz/QQrgNPhKPA8fv18@vger.kernel.org
X-Received: by 2002:a17:903:37c7:b0:27c:3a0f:f066 with SMTP id d9443c01a7336-290272af173mr6676835ad.22.1759861566813;
        Tue, 07 Oct 2025 11:26:06 -0700 (PDT)
X-Received: by 2002:a17:903:37c7:b0:27c:3a0f:f066 with SMTP id d9443c01a7336-290272af173mr6676655ad.22.1759861566388;
        Tue, 07 Oct 2025 11:26:06 -0700 (PDT)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1d564csm171830275ad.98.2025.10.07.11.26.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 11:26:04 -0700 (PDT)
Message-ID: <69e38689-4779-49df-9ec4-e26391493e72@broadcom.com>
Date: Tue, 7 Oct 2025 11:26:04 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Florian Fainelli <florian.fainelli@broadcom.com>
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: Enable RNG
To: Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stefan Wahren <wahrenst@gmx.net>, Phil Elwell <phil@raspberrypi.com>,
 Andrea della Porta <andrea.porta@suse.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20250927075643.716179-1-pbrobinson@gmail.com>
Content-Language: en-US
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
In-Reply-To: <20250927075643.716179-1-pbrobinson@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e



On 9/27/2025 12:56 AM, Peter Robinson wrote:
> The RNG is the same IP as in the bcm2711 so add the
> device tree block to enable the device.
> 
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Applied to 
https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
-- 
Florian



