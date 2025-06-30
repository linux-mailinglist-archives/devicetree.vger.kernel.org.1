Return-Path: <devicetree+bounces-191211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 903D6AEE72B
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 21:06:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B38F189A1B4
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 19:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7C1F28A73C;
	Mon, 30 Jun 2025 19:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="AzqMndmt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B091FBCB1
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 19:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751310389; cv=none; b=AHfbI6+x22K22jrxiMLiBscp3RnC4h6nDsxKB9RjY6wxedz0lWDRCU59rCTh1HIdM266TZpW48dNtSMYbuQ6tZkX2hc2bmiLgYaFNC97FGuxTPY1BhHRXRTwbl+EcB8ECzbHpZU23Dt+UkLUzuKvN+wSWJTAphSwjjjJ3ZBnU+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751310389; c=relaxed/simple;
	bh=/CB611I8QUzospzLZMcGKKZNDa9b4jsHw04tVNUsc/0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BvtFB5Jje5nIdw0vaMn/N1iCnW5vK0Gx4uqEEVVvywUTePds/r7Sw93eUVK/IYVQxPjl9af23lyxJXZ4jqW5COkkBHxc2jsCOw8nPhEnDAa84xtmocoNpq69Va3bFuwihnrWLZ2KVWOF27giyuJ7byf1JKEadJ8hFW8L7sbfefg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=AzqMndmt; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-23649faf69fso20999715ad.0
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 12:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1751310388; x=1751915188; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1ifqxTBeQ+hR1fKmYKfMtsbKbYA3naoBciBfh4zZv5Y=;
        b=AzqMndmtPxP3aWaiRD1Rv6Sx1O/p7d31daK2yjKaN33AeCkPgMG96IVTkI5562RWOX
         ebxqi0Z3agQadBfejGdM3gVbFh0fG7FUwbQYlXjB+keUhF8BRimpiym5p4aMDSX3ez//
         G7mSjSqgT2fGm1TbIpKPo4euXPthOIms/qKwA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751310388; x=1751915188;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ifqxTBeQ+hR1fKmYKfMtsbKbYA3naoBciBfh4zZv5Y=;
        b=R1gYliuK5LO5bDQHpQOj0G5TerJVJZ1Oo+yHQlW1ygaat61j8dCZ5ESzYGodktPsKZ
         w+IV+ngbmRkOi1UE/gbTRcrrPrIeNimWNbUD5jWIuO4Nq1oIcrNjQqX8iBvbKu/zSz1X
         BBEy0TnikMZSnSZjs0aHdJHPvRNdZZd80/L7L7Uf4qzIn6AL27pQDHwgXUq4OmSdW2rE
         FBfWQdWfxbfDXQ5mHv6ZX9KSb+51RgpRCAAGtlnBw+sVnZmuzpqTtOdw/8KbegOXeAfy
         aBrBzZ+187GzzGD0TbTVhB7iAAMMzJuZ4UqQeuQ8DI7Qfi2OnGIfsGQH25thoOCNrcVn
         6t1A==
X-Forwarded-Encrypted: i=1; AJvYcCVA7aTwcch/aAHib7gplXqawkPBgXInAXOQqK71uis9RhxdRHcF1TgvAj8sxRZQgzDSM6Ba/hNUcczZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzNWLHTnesxm0OqgkLgzuSkJ7mR2jN++Cy5y6eCLPsUqqj7VDmw
	35c7TSKT3KgD771XG9QVEEXG4wl1Mw8WsgYpip2B0PUOvPtGNrJlO7oBTJAJBbQksw==
X-Gm-Gg: ASbGncuSWemGOd7qY+dxq8LP3agPi95Aq4a/RIdotEk+WDSum+M0ueYWt9x0RQcEvzR
	C0DanzIw24pLXL9ih+XgYRu/OcyfU3FF6d7m11h30r5cMTQ9CYuA020JhqznR8S4oOVfeRaO94H
	1PKdXn3oS+LqmKz6QMf5NU8YJS5q+NwX6xrgVYG0KMd3NueTF6NEqPkaNQ7PQN1fDsI9gWqyrnR
	Nk0y1zc5zcSL54x0eruNi3PVlOT/xUWemMNl3B1XU1G27pvCv1UYCDGgVC8+qH9ZjMmgjIQBQo2
	vTVzISZvQ3Fdv2E0S9YEtd+8ao1isa2jtbhD3hJF2E8OMwATPL/l8XDUggQ6dQBK1snEF4cz6m4
	tZWunc49u/NU4T4HPJ3TD8AQm1g==
X-Google-Smtp-Source: AGHT+IGrr+s2yHRofWEifQmJDsOPRoZeaxvkG2kjOYNFEpJTQ0qMZgmXnhWfnA7mYAH2pHmMqgczjw==
X-Received: by 2002:a17:902:f606:b0:237:cc75:77b0 with SMTP id d9443c01a7336-23ac4633f4cmr184335375ad.30.1751310387627;
        Mon, 30 Jun 2025 12:06:27 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb3ba530sm85783255ad.200.2025.06.30.12.06.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 12:06:26 -0700 (PDT)
Message-ID: <5a374bbf-8f2e-49fb-9e9f-a55a8362e134@broadcom.com>
Date: Mon, 30 Jun 2025 12:06:25 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: phy: Convert brcm,sr-usb-combo-phy to DT
 schema
To: "Rob Herring (Arm)" <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250627220126.214577-1-robh@kernel.org>
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
In-Reply-To: <20250627220126.214577-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/27/25 15:01, 'Rob Herring (Arm)' via BCM-KERNEL-FEEDBACK-LIST,PDL 
wrote:
> Convert the Broadcom Stingray USB PHY binding to DT schema format. It's
> a straight forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

