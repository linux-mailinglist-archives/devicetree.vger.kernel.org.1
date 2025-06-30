Return-Path: <devicetree+bounces-191190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C11AEE534
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 19:04:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48BD817B27F
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 17:04:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68EDD2571C7;
	Mon, 30 Jun 2025 17:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="E8JYDHZH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135FACA4E
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 17:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751303053; cv=none; b=Tih4rvO38G/n9ii6dXa7Si8OLcfB1ec8h1wc1MUJsi3gHhHzS4Gpe8fSFszARH7S50QJe16p7vcuwwe+zzRoktahby5EjSUXRcR+EMchg6aZGodMDzYzzpzeNfCLsepZAx1IM/fHYiHplUVxJ/lQ3SEpemGhnNKe4Zalft2XoKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751303053; c=relaxed/simple;
	bh=bMSrfEbzshUwKl0DMN3ILKLxONAaba+f7YSvI1MF/mA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FExZ4XbrWfBTlqwQj0jFVG3GJHRCGyzpoW0tfUTpuAB+hdPuErkEs/7uG6cTzLzAy7zOkB/6XochftOxswp5iQS+JYN3pUuEWeXgyePhHemBqJ2+Q08yeK9UsziDlMRSgIhpBZmsN+uecI5iDP7s22L/7JePHebPI/R1y6ikV3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=E8JYDHZH; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-747fc7506d4so2088674b3a.0
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 10:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1751303051; x=1751907851; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zcjGdijCc9GaQbRF5oMFB34NBYTSfScMxsZw7GjZKq4=;
        b=E8JYDHZHcBHjiuDvlHTSEYtluArsC8+j68+Pm8C+F/D7shr2KWueMaf1f8zYXZeN6C
         wbpXZyMFU/CX0DertkeLJ+oC7whAJHO96P88FwiV7lxgGXpsg11eHjEREubt9z3nKuPe
         E6nBuEmDWXjtmZOiNy+gUqaMHdAtMO4ORcbO8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751303051; x=1751907851;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zcjGdijCc9GaQbRF5oMFB34NBYTSfScMxsZw7GjZKq4=;
        b=T+KjJ5vFTbgUo2mL8o0TkpVL3oWOig3WnpiRkK11qZ1xJ0TYJB1ZQ5Hj30/ybZgoAR
         BVqh9rHoqGoIVF7D+lFUCiqvPb9Bd8GyoSihhZ4EXKT3zUXpOtp9GCRRwFBFmX3POuH8
         hlytmcoq00/Ra0ZSHVBR9smJVcyOUCOZSKLqVkXWOC7ZCNk9AFY7h4VfEwrndK6aTT6W
         /gp20P5lSv0wtb0Cn4kBp0RmQF4cQQWqjx9ALeQG6gAQ7UUVG1P9yu9tcPtb8iP1xivI
         bKgpmoUAnZK7AAAhem8BkPthZfHQt9EJzn8fN9GQ/m84kxN65NJVUpb3e2X+Bg5z7s7I
         2sVw==
X-Forwarded-Encrypted: i=1; AJvYcCVV0i1UBEirQ2GAejOmmYkEaOQnQ+2RjSQB2oMrQ03F7tw0Y2DxQjm8ByGiiSG+wZupa9Cpd5a/4pe5@vger.kernel.org
X-Gm-Message-State: AOJu0YzkBZD3ROKoxofzWPgPH2HT5T2GGdGc4SyPGHqNZFmG0W8aiOiF
	CGxJO78Nm2ooWJ+MbNjUSi4ka/q1YgtB5zt9crHIe8DROfEp4OfHydRyhuKkekMuMg==
X-Gm-Gg: ASbGncv9MmNf045ZmO7/xJpq7vLe3dDudNM72GEiL+3CM9vuqGPTzziEEWeQS4ObwrW
	b/5rAmPgRzva3IXUlsRQ4oggvyOoXmTIquR5OK2tQVKN+O0nj+pyegD1wTc1pzcusPSUpKQ0g5J
	5MfEhTr+c3zj0RrPlKcnTMwAfaN1BFzTRVl416F4ZDtIERoxfT1ximaUsEgXpkwBnNgRCzjYSOk
	736jyVLaqNuOxlYP0GqNkwSL8Fp3inwOx2cepm5lcuuvMEk/s2X6oHEEcH2wGI+7jxTTDv3++EV
	Vo9UJ/X+s/uLHLK0knQy+YAuDyni87jFj4Ply6I3tF0R/PHvjyCv/aN0kPfxrnOkilJ9iVS7XXp
	35yc1kX6z51vu82bhpM5OBlscBg==
X-Google-Smtp-Source: AGHT+IFr4xxd4Fmrt8X0Mg9Broz58djINFulFwW5k59ZgLBYqG195gvQtlxtbb/njLtyf+jo4Dpnug==
X-Received: by 2002:a05:6a20:c906:b0:216:5f67:98f7 with SMTP id adf61e73a8af0-220a16e4776mr22818360637.33.1751303051249;
        Mon, 30 Jun 2025 10:04:11 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af57f0e62sm9123040b3a.162.2025.06.30.10.04.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 10:04:08 -0700 (PDT)
Message-ID: <55108ad4-c210-4c55-beec-8114fe40c51a@broadcom.com>
Date: Mon, 30 Jun 2025 10:04:06 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net v3 4/4] net: phy: bcm54811: Fix the PHY initialization
To: =?UTF-8?Q?Kamil_Hor=C3=A1k_-_2N?= <kamilh@axis.com>,
 bcm-kernel-feedback-list@broadcom.com, andrew@lunn.ch, hkallweit1@gmail.com,
 linux@armlinux.org.uk, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, f.fainelli@gmail.com, robh@kernel.org,
 andrew+netdev@lunn.ch
References: <20250630113033.978455-1-kamilh@axis.com>
 <20250630113033.978455-5-kamilh@axis.com>
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
In-Reply-To: <20250630113033.978455-5-kamilh@axis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 6/30/25 04:30, Kamil Horák - 2N wrote:
> Reset the bit 12 in PHY's LRE Control register upon initialization.
> According to the datasheet, this bit must be written to zero after
> every device reset.
> 
> Signed-off-by: Kamil Horák - 2N <kamilh@axis.com>
> ---

[snip]

> diff --git a/include/linux/brcmphy.h b/include/linux/brcmphy.h
> index 15c35655f482..115a964f3006 100644
> --- a/include/linux/brcmphy.h
> +++ b/include/linux/brcmphy.h
> @@ -137,6 +137,7 @@
>   
>   #define MII_BCM54XX_AUXCTL_SHDWSEL_MISC			0x07
>   #define MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN	0x0010
> +#define MII_BCM54XX_AUXCTL_SHDWSEL_MISC_RSVD		0x0060

This hunk does not belong in this patch but the previous one. With that 
addressed:

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

