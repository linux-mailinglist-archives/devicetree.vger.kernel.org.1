Return-Path: <devicetree+bounces-170595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C68A9B8FC
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 22:20:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 32E4F4C52C0
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 20:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99C4F223DC9;
	Thu, 24 Apr 2025 20:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="cwsfoOPF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0900521CA07
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745525940; cv=none; b=e/Rmu+LUi0rSAuJBH6vjTvqt77FYHwraZlLSiOk9ImPWmybI8vjolLkWDLtyxcoddNT0DP26IEz9ZyKTl0lSAXbUVjz0e7wBJzl85a5rMYw0qqAzT35+XxlZ6YxuS+ANeP5eGnpRNX2ZXNnMqbq1Cgrd3vRh3qwmc690dq6Dm2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745525940; c=relaxed/simple;
	bh=rxZKhx8TsXmgZB6THrS8ri601D6uZVXOdGQzwg1laDU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iM540DNwK8q/iqtFvvTDcnKUN63NhEnTprW4ZqKCaiCF6csZ6evEsI6kDckc6q2Mg3hUjNcbhx1Azl/YV3HGVP8mJRkzwKhTbIr6IWHEUAPxKhkz/2vrEPG+vq+i4dajRzq5mkmAY2uCJGnfxrNazOBzdOkDw2lNuQzDldNwMJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=cwsfoOPF; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-72bceb93f2fso1490226a34.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 13:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1745525938; x=1746130738; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fsBPmi5pPaqSKfCinwouG2FkRpkKC2fumVCLBW64feI=;
        b=cwsfoOPF9mUTSXa3VA6S577xoiM038oJcCEXSvja0HRCaPt8Bd+UznP4KD2VpnJ6WE
         Yr2xKXVa8/Ug7VEB7kfpIsgznoEVYLfkyrBLQlluJNUvV2hrCJPufcIVZqfbBvtmY0IC
         2HtAV0Q/JfSm7MkdcULZtt1G1FLq16Qsl6xko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745525938; x=1746130738;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fsBPmi5pPaqSKfCinwouG2FkRpkKC2fumVCLBW64feI=;
        b=XMT1Gr1A6oYwPTdwYJLmEg1lg+J9IvtG1ettNFK2HsyZjfkY/ELDuxZqhAp/gcNvsX
         D0U0wgtTewoqbIpSOnbDPwjUkMgZTObqGdZMz/oUR43hBH/VnFN62RhkuPw9zx7ZFZZn
         C1MXlodlZUdCSD7OXBAltucUCfONBB9PjAz4P3AeR7SH9G+GPVHsxa2MdjwTbHdvSusO
         DGNNlX9zc/puJke5syL3FqP6YQKHiD9iX+abVuTLMZor2l32M+IW0FM1sZkgNmMI4K7E
         R8k8MnrKV4vd4l+2e07A/BmIRpnZB04qrPk40fOUkSZtQ6DIJVEM2SjTZNABE6GO/aDJ
         1duQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5iUCfU4muc3Eszc7cEFXuLaGvBWh0JYyM3JnTGBsAtAVMh7OUJB8jTkzSFzmTjNZ28+5jGGepinJc@vger.kernel.org
X-Gm-Message-State: AOJu0YwE8qhOWlhsc/JQ14fhJ7g24SwxSaiiQBwZIMR8aRfnsHx4m+5p
	Sx9nfPBpl/3CoBvG/cs3aJbGfHg0S2qD9YdrWkci7M+NyPaHPsLabjBCGbM1gQ==
X-Gm-Gg: ASbGnctdxb7plWYp0+iJzh1AQqSAyjY8ltY+RDlIRihw0q0p0W4h+78qZK7T7K9IN3q
	PrLD/ZTx/zR0kIGgohdCQTMLYZqTHBtdwW4QsTI6daqJptpNPz9unKM6J5gaFlGOxJD6URUHaJa
	dQvnEAll2EDc3WIXR1WvKOeAOJNYJ30c4/OcRktgCU044OYcSY94k4jdXtm9Hm0HOyJfsu7YRvr
	47Mg2cO9VedqtYB1z2CfX+7GOfPYE5I6JcEuX1eok+nVX/EEy8qU2tzkQBZY6qJN/h9AUYrhJC2
	ir+9gzPJdiUZHJJgfVwU9tRL4gVsm0Q9C4efzwT3TDX9X+jtjzOQPbftFwCqYHZZRetdZVQkP3l
	0h/Xiy76IS5vt2vo0YDbEfaw=
X-Google-Smtp-Source: AGHT+IHsOJvCEZ9FewargAde1R1OYTru0OLROwfvLZfytCWHUhUeMnGRx6mIMHGS3NPRwbyTR33g1w==
X-Received: by 2002:a05:6830:4109:b0:72b:9140:f6d9 with SMTP id 46e09a7af769-7304fa8546emr2259303a34.4.1745525937944;
        Thu, 24 Apr 2025 13:18:57 -0700 (PDT)
Received: from [192.168.1.105] (88-187-52-200.subs.proxad.net. [88.187.52.200])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7304f2ac2besm363165a34.30.2025.04.24.13.18.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 13:18:57 -0700 (PDT)
Message-ID: <00277504-2fd9-4bde-afbe-0bbdb038c74e@broadcom.com>
Date: Thu, 24 Apr 2025 22:18:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 3/8] net: bcmasp: Remove support for asp-v2.0
To: Justin Chen <justin.chen@broadcom.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org
Cc: rafal@milecki.pl, linux@armlinux.org.uk, hkallweit1@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, opendmb@gmail.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, pabeni@redhat.com,
 kuba@kernel.org, edumazet@google.com, davem@davemloft.net,
 andrew+netdev@lunn.ch
References: <20250422233645.1931036-1-justin.chen@broadcom.com>
 <20250422233645.1931036-4-justin.chen@broadcom.com>
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
In-Reply-To: <20250422233645.1931036-4-justin.chen@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/23/2025 1:36 AM, Justin Chen wrote:
> The SoC that supported asp-v2.0 never saw the light of day. asp-v2.0 has
> quirks that makes the logic overly complicated. For example, asp-v2.0 is
> the only revision that has a different wake up IRQ hook up. Remove asp-v2.0
> support to make supporting future HW revisions cleaner.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


