Return-Path: <devicetree+bounces-253062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F37D06D70
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 03:19:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3BB4B300CB4C
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 02:19:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 901FB30BB80;
	Fri,  9 Jan 2026 02:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="GJ9POdf4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f226.google.com (mail-pl1-f226.google.com [209.85.214.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B8330AAD8
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 02:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767925142; cv=none; b=LG2TUitzhNW/Vn26QUj2thfPyQV8yhwfpZTTh1d8QUOC6mpCd3W9sWB6J31VGErEWPrX4DyBKSktS2c8PYiLKZnl6EGj4/jgph1rvEW25791bdSVTt6j6PJCgAEp7xdHeXAT3ofsiTeOin5qYpo/cw22vyvm0yi8ylpekz60VBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767925142; c=relaxed/simple;
	bh=KNT3S4G2ceZ6gLbTB698dlqPgKV2Gu7UydoBfXF6+KY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CDcpuCH2aA+cM/3zyV02YJRf/nJI5sR9slRb4GGiqCOZo9dgtQWbKyaUOqP+qpSkCoURhtC9cV36BImbkkwoBqERXrFbeJlFL+W3SzaqFKQHnWnj0XTM8SPHQyjFJVUTeeN5R1aIc8H2zLRCprMxHM/70pdT4oklKAzCWFtiWn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=GJ9POdf4; arc=none smtp.client-ip=209.85.214.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f226.google.com with SMTP id d9443c01a7336-2a12ebe4b74so38522845ad.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 18:19:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767925139; x=1768529939;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WtzZ96Fs0FxeUrUvuO6Tpqlup0fsxdHQlmZgiRttQVc=;
        b=qsKUaUBTUMz3eX1cb72aqIzBEghxdl8vIjy+CFmT3VsQ+CxEXCuayzTd0sLEyiDjxC
         2y+llxLCdPEZh1P50gBtSqhDnt8/PUkyYMMqXtP+l8aKVijXxaHK1HbcEFxoFKa4RHhJ
         NPhtQ11TLUALRj/qN51DqL8RWcV6BVd0+Y1QIdIuCyzPPMguWnqffchzZQ+JGyVuBMyz
         EAjO3zS/rq0qSfSd1yc6kYbaMHjEwPnol1At/QCzH2YcDY1yY8VN0idoouM9SIjG2HKd
         ZL1uCbjjps/hxMBdF9JVGMHjouHMP8xX/ZTVH91vqLiTgceUUTWNdD6A2DWyUlpNZAly
         +QgA==
X-Gm-Message-State: AOJu0YzPw/YEU97PApfNnhXwTTorXwX4U7KnzgePcu0zaQfJhVgApRlB
	aolcIOxWsCzT5CsWKFFtisxTpzd0m2ycsSWHJhO6JLpYQd3ZIvY4v99+ikIgubmmQwKLrvQqYz9
	BeGi5P4pyLrUkwTY103Sd2tc8rynowJTHctthkKHC1IlGuJEhT9qpbVrwDtERluZhZtapLMhTE7
	3pB1gl+ukil+1iwBJJHdCxHk9AHKVeVl3206OxdBxYW+UAel4BrkC2TGlD+S+6oI/ihs4yGHYjQ
	HSiRoERElxCFPZkD5Lf9w==
X-Gm-Gg: AY/fxX59UJnlBnGFtyOYsRI47JxzFaTtf8+W5ACNrXb4wmxM20vqX91rv5/SE5dDDo6
	AolpVpEgV+hjxcqc2E4XjEcE0aETvuA2yDAUpqodslJeX0uWKXQ0hWXNdfulVSF1lHPWpINv9CD
	QVvm2vbmAmLY9ZPw75Ry6w0n9WWOAZL8OaMt3ahxLvoQzRueqUcA4295fGNoSt13bDl2ZocD7xe
	M20loUMCgmeVlpf3Edz/iU1yLcyMHpVXfuM5wxX+hoQGdEDcctI8Auve7M+KKFWHbTJOu0bEDgx
	9oSqcG+uWKo7fytECGnKkvLO9gpO1+up8ROa0+/C5rLAi79bKxSLohJWROz5MmCutFFht5Pj9tY
	3opVw9rE0F62C12iqbCW7rBPkOKG58Zb3+Z3wVoaEdtKIFb9GWWXCwdoo3L1VBZA3Dq4QnLy6NK
	5pjb49Uf0dhV2r7xpclYzovG3rOPcWgIX5xa81mL08l2N2MMo=
X-Google-Smtp-Source: AGHT+IGd8cANF6ZkmGflsc1NvTGha/QA/pLihJR+OFf6IExQk0+qEFKFBALzqZNOIGBw2CXmsX+RBqD66Ntd
X-Received: by 2002:a17:902:d4c9:b0:297:e59c:63cc with SMTP id d9443c01a7336-2a3ee484c61mr70422815ad.35.1767925139325;
        Thu, 08 Jan 2026 18:18:59 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-2.dlp.protect.broadcom.com. [144.49.247.2])
        by smtp-relay.gmail.com with ESMTPS id d2e1a72fcca58-819c59e91c0sm1062108b3a.9.2026.01.08.18.18.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Jan 2026 18:18:59 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2ae32686ed0so1818500eec.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 18:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1767925138; x=1768529938; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WtzZ96Fs0FxeUrUvuO6Tpqlup0fsxdHQlmZgiRttQVc=;
        b=GJ9POdf4D2PZuLZTJm7oyCPJmhrpY0BViIGOUxZTwtFvCuW9HGijhFPhj6L6qBng9V
         BY0IzJ9UGxoFlmBguh/VJkoebOW9pzzYXRLEi8/Hf5Qqw/U4e8/3CsbR9Z0NWJwhDoEV
         7PWh9PjfcVpwhkphSGfKXq6cT696dg5nmfAN8=
X-Received: by 2002:a05:7301:3f99:b0:2a4:3592:cf75 with SMTP id 5a478bee46e88-2b17d2959a3mr6296937eec.25.1767925137650;
        Thu, 08 Jan 2026 18:18:57 -0800 (PST)
X-Received: by 2002:a05:7301:3f99:b0:2a4:3592:cf75 with SMTP id 5a478bee46e88-2b17d2959a3mr6296917eec.25.1767925137135;
        Thu, 08 Jan 2026 18:18:57 -0800 (PST)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b17078cddasm10073775eec.22.2026.01.08.18.18.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 18:18:56 -0800 (PST)
Message-ID: <2472bd6e-9afb-402f-9bfb-3c364fd38da1@broadcom.com>
Date: Thu, 8 Jan 2026 18:18:53 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4906-netgear-r8000p: Drop
 unnecessary "ranges" in partition node
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, William Zhang <william.zhang@broadcom.com>,
 Anand Gore <anand.gore@broadcom.com>, Kursad Oney
 <kursad.oney@broadcom.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260108231558.1422454-2-robh@kernel.org>
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
In-Reply-To: <20260108231558.1422454-2-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e



On 1/8/2026 3:15 PM, Rob Herring (Arm) wrote:
> "ranges" is only valid for MMIO addresses as it is used for translating
> addresses to CPU address. Even if a partial translation was supported,
> the DT is incorrect here as the nvmem-layout node would also need
> "ranges". So drop "ranges" and the associated cell size properties.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Applied to 
https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
-- 
Florian


