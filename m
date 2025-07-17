Return-Path: <devicetree+bounces-197440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AA1B0943A
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 20:45:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0090E5A44EE
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 18:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0317E211276;
	Thu, 17 Jul 2025 18:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="ZgvUNF2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FAF72080E8
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 18:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752777879; cv=none; b=T+8aZgOtBGGkOTxFfSDbsPuEcqBnVq1lXm3b+cjgTO0cIPzDKobyEDOd8HxyRVseAIUaqMXwlQXTW1HXDLzjZKAjMzgQQ2N4VdZWiQAtzcb/R97zXtYI6c/ZtrEtTXyeuUGnsi8i6AezHnh6mg5RF3Lu4finx4vCP6GbZHt6bxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752777879; c=relaxed/simple;
	bh=xGlI3e6pYE1mMv4bY32T8HCjhpVmnuuxq0VaZqhvhHY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FkGdJcU/7NbpoofutKIJJ1rrpIfsmWCpfHIs3gslJXlmh7Ji/MQLL3zf+6Lz+OgAL119A8NhREasojR+q2H6S34muvrwACl8z8R5ak2SOontSjuNIPj1piapS6dDA1StAr+Fz9YPslzQAt/xdSKka2hgdH2F2713vNQBTPFtVr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=ZgvUNF2i; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b3220c39cffso1248036a12.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 11:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1752777878; x=1753382678; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=dz0RcE6tj1fnhqir0JS8lXH0arU4ZBm5l2MKTUgD1rw=;
        b=ZgvUNF2i72jJtsnwm62fLLIc44g0qSU0ZgkrjGTf1PDXfTp2ZDuAsTaOLnkF01eATE
         9szy28U+PPPIBcOwvkDABwufMaKB0SX2mUbsMCwtNPwMQU3NBmhtteQ74ejJ+wf1n4zN
         s5FGK/pOpbztXPYMHuwxLEvC6LPFgLKgq4Hk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752777878; x=1753382678;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dz0RcE6tj1fnhqir0JS8lXH0arU4ZBm5l2MKTUgD1rw=;
        b=fg8kUoSWr4n8hrKXSJRs8WdW+2sups6kwxOJ9/G3Pk1aJYBGYD7Q1AaVEgHUt3bshZ
         /k8jZ8QuDZT0mWa+kP8gffWBP7gnN0xga0EvUc5YD6NT3JQ7pL2kFqgclgA+qrGEx7Xr
         lODrOB0TRvk7uOkdWX+ANhHBj2SeIM/qwhgzHYfBGO306xaMTubAAQLy6Ulcdbqpo9Jq
         gCPLM2qhO2WXt6EVROlyvTMnetTVcKwsf/8fbbI5vQ3Y86XFsBLJde0cfUAFyS1l13WV
         h90cEVa+IQ6+n6TR2dUG68H6s6PrcYuMSC0Lf7PXSvaIRiG1Gh9X3bWD/CGzRFgoToOu
         MwQw==
X-Forwarded-Encrypted: i=1; AJvYcCVyf96Xfk5Y9qO7LhtsBB499NApbmqJq4rD4B2GWgle+Bldeoa97kvsRFDEv1aGdtyKS+m9zu5YPEHX@vger.kernel.org
X-Gm-Message-State: AOJu0YxKbzrhP9fi5GT0FlDURI8bJIQEay4zTCEurgfM0uFHz2mn9ASw
	eEzOP1lafPVpcFzDGMhdbgxDOBVlrrtX5aPmjxyAw1KK4LPkmKqERGsCfJSTwOZxJg==
X-Gm-Gg: ASbGncs/qaRKusHVebUI4+U63BgsmPv5yDVFGpdj6nAbisGu3ViyTsIPKC0bsY+I65y
	Z/aqg8XM96z/nUL8pWrN633VT6qkbHYmtugfIVqIi577Ch9cNkKV1fxswUyhx4hjoVrKg+QWeJ1
	9ix1X8Y/qINcqHsYMQhSFqZlmOMfAfgpjr0W506r6DSsLk3nEGQnNr+kFpSttq8U+wsvMA+RN6D
	SkZav432fM2FKEBujgJLnrEqwLZw6JVErypm6kDPh3EP5mychUqAZ2aI/YHX+BqntOa8k4IwfPK
	MUiBLE7zKfDAYZdwaNm5rryCuVrOfHbUhFvcyONnelGlObFbpDlWC5a3izqIf2ebCOhjf+1rjHL
	9J1J18jjSV3efX6AryAp4TFzbiZfrwcT0MvwoXpAZFz5orMyQPfDeYQxbiLAwZw==
X-Google-Smtp-Source: AGHT+IEBhQt2uujaZwROZPPGQbP5DBLdcsR9yUQ45ddDaqZHkBe+5MHAvMIZHW+xy3ygWi5X9KnRcg==
X-Received: by 2002:a17:90b:1b06:b0:311:f2f6:44ff with SMTP id 98e67ed59e1d1-31c9f42400cmr12159870a91.17.1752777877881;
        Thu, 17 Jul 2025 11:44:37 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31caf82be98sm1934461a91.40.2025.07.17.11.44.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 11:44:37 -0700 (PDT)
Message-ID: <c1622302-4fde-4e4e-a77d-2c912edde3a6@broadcom.com>
Date: Thu, 17 Jul 2025 11:44:29 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 1/8] net: dsa: b53: Add phy_enable(),
 phy_disable() methods
To: Kyle Hendry <kylehendrydev@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>
Cc: noltari@gmail.com, jonas.gorski@gmail.com,
 Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250716002922.230807-1-kylehendrydev@gmail.com>
 <20250716002922.230807-2-kylehendrydev@gmail.com>
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
In-Reply-To: <20250716002922.230807-2-kylehendrydev@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/15/25 17:29, Kyle Hendry wrote:
> Add phy enable/disable to b53 ops to be called when
> enabling/disabling ports.
> 
> Signed-off-by: Kyle Hendry <kylehendrydev@gmail.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

