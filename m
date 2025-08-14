Return-Path: <devicetree+bounces-204846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 634E8B2709D
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 23:13:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4482D7BC971
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 21:11:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E24742741BC;
	Thu, 14 Aug 2025 21:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="VsQEKxSM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74788273810
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 21:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755206006; cv=none; b=OTCEKuWFtPAMTDnowOuZ9f5kLPp0m4T3DkIrdIZsr66jBf28EwCQxcbTShFPO4Isig+X55wj6+fIbKTH693FB16Y2YM4DZRdabcir3xaIBbBTZGGGiWTUOdlyKfmbZI0BDJmeblFbaPITG9hXkJA8gipGmU+8SF+v3+slUcqg5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755206006; c=relaxed/simple;
	bh=yIWeVEtVa0Wu0jnhXLjgz/TKefowYj9eEvtQdTyE3WA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q2Vd36QHG3r7/dfreNof0XKEDgnjWuJBssQXL0FgYBEMeI9MdVbC2/7FypFnViUMewQhoYGzviq7l3GdzbZXgn/u9j5kxCTPYXTZ6G25lh1W8dmFrgd4c75IVIgLBvqnTzF+08KcCWGxX9UmtDNUcndBBDwVh56pPJFGcVtEJow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=VsQEKxSM; arc=none smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-70a9f5dfa62so14617096d6.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 14:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1755206004; x=1755810804; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=go6eRriSop6jyDbpiKAFbPrUEOvNEwILI+MgN3l7jpc=;
        b=VsQEKxSM3Bmii1pnj/04wDOH9y4LzHd1Nrl0/NgCbw11liXHp/g4WmlxR86Sb87Le+
         Lwvn8XTjkNYZn71rROe4IuR3K+/O18wrdQ2+0FyGjR61aachJaytCPi54R5DoqoB+tce
         ImJNhtjdtbhxhdwcz+uxaLq5DetM1HN2BhI1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755206004; x=1755810804;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=go6eRriSop6jyDbpiKAFbPrUEOvNEwILI+MgN3l7jpc=;
        b=C7ybfD6GpScxbb/SpjIAbg2K2lhHy06qlHF/0dXvHe1JLQd3Pc9VItfpaoOXW+6Hrn
         aK4FkQ/ULcaXi0ic4zsMxnuOBpUZTEfsPN5XOHGsyhNVcAF/jJur16EAm5FquvyOBCo7
         0ELt4JaUFGr5CF06//TkEbTmVNs+Yu8yf5o7s1McK79Ua+wSIo7nduzoW8UvGcJSwLvt
         4C6i30Ov911FdWxxkGYqVUwKPeV0U6YKuhrioh3EfSGHysA9uktKpx0Nn5CMpVNiXj5H
         n8KefrkhYEfkzums06k/HpsdBOZDTSLKFAjIw1thKt1NuQr1JXhObZ7nrvvCy7FFlOXO
         vLaA==
X-Gm-Message-State: AOJu0Yw+1FH3h2gQWx9dsUSuh1JHY7wdVkz9sDJBeW180gR48VN2AX8U
	qXZElHxDORu2tl1gJtlYy3LkI9H9aNfM/rKVjVJY1LR9k/pHsufaojshrazHaTSq1Q==
X-Gm-Gg: ASbGncsD5YqeQoXCtsccqWzuefhsyYYklTmHwjj5tq7XBY5zgF4OLv+lb+kHy5rmX3l
	dsbKaoZ9CnB3/p1kIjfFtlBfK5R4zefKC6wFVG5a9vkOHqoJNaifwrce0L4qXuz8MB1PpnoqprM
	qn5eGFNWuRkVNAZ6L4caF0FETxoJcxgzpE8B5LRN17PR0sqY1MMnsIraKisZiMD2Vz7Kk5/UHJ/
	7ozUOnzU0EsI/XfzyzFDTFWhWkZboUs93sBw70aEgznXldczKeDDAC5PPE8HmtDYBHCSOnUoKIN
	gpEXYbdi2LyNFjzer4+RjVqpoT0m6yTt0RR1sl5DHO2+glGjfe3upnNyG64uSB276uN8jfHK/jO
	heF/P6w8GitE3Ot2cvnqTvFqxruz2tK2vtjNMGLgfVgK39YkJO3TTfLaVAe9vd8VaETJUTyISiA
	ZF
X-Google-Smtp-Source: AGHT+IGnKX0P+cBhDx+oEOh1GjhckkG5v4P91VAJ7M+Ugrd13JqlOpMfeaiPErfl8Hjebws/7LpLpA==
X-Received: by 2002:a05:6214:508f:b0:707:7e60:ef4b with SMTP id 6a1803df08f44-70ba482e504mr5406426d6.49.1755206004164;
        Thu, 14 Aug 2025 14:13:24 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70adc1cbf81sm18572876d6.7.2025.08.14.14.13.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 14:13:23 -0700 (PDT)
Message-ID: <f8529fab-d455-470e-b05b-9b5069091dc2@broadcom.com>
Date: Thu, 14 Aug 2025 14:13:21 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] ARM: dts: Add ixp4xx Actiontec MI424WR device trees
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>,
 Imre Kaloz <kaloz@openwrt.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org>
 <20250814-ixp4xx-mi424wr-dts-v1-3-b7c10f3c4193@linaro.org>
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
In-Reply-To: <20250814-ixp4xx-mi424wr-dts-v1-3-b7c10f3c4193@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/14/25 09:40, Linus Walleij wrote:
> The Actiontex MI424WR is a pretty widespread home router, made
> in many different revisions.
> 
> Revisions A, C and D are based on IXP42x. We add a device tree
> for the A/C variant and one for the D variant as these differ in
> the location of the WAN PHY on the MDIO bus, and the ethernet
> interfaces for the WAN PHY and the DSA switch are switched around.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

[snip]

> +			gpio1: gpio@1,0 {
> +				/* MMIO GPIO at CS1 */
> +				compatible = "brcm,bcm6345-gpio";

Is that really the compatible string we want to use here?
-- 
Florian


