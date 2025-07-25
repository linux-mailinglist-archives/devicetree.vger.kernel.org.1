Return-Path: <devicetree+bounces-199827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 858C0B125E7
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 22:58:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DD761CC6760
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 20:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BEE525B69F;
	Fri, 25 Jul 2025 20:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="KCcunNg2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBF2257451
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 20:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753477069; cv=none; b=f5iM3WkHf/CztfdFxXhGiWWv9cVBYu1mSk8N6ZA/1VJlos/PKHauEds/OKVxXzADwJetzfC9RfurL3AWhjM8B22oS8dTew0Uf2HjrCDGB8Hyf/R6c1u0tezcr3xPzoNGp/yLezOTasAky2vO1PJkFnS9zSHrHS7i7B+BxF9f8IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753477069; c=relaxed/simple;
	bh=yE4vx/RHsoTYADhjNptchvsBxuhnhSheE9kySCt8r28=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fLOZu1/xsotUd0jhtXydvhMiO3o/lvwwuU5bXvTqNMG5EdPupoQslqEqhVij6T36sleYDx7BELpr3Bs9gQjbP52ktwgO8ESk9lTfW7IJTeZsHevO8B2XAgD4/0Ig7kjQYgjXqicanYx2TjBSIWd+smcQxJkknsZkm5jK2KeLdrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=KCcunNg2; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7e2c1dc6567so155857885a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 13:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1753477067; x=1754081867; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=dCUl2OeSo2FBp6mlr6u4shYUkzWkOJCCVZrPDlP+ZMM=;
        b=KCcunNg2qBffjNZ+FLuaHFp2qjuaAXbSuWcMPTTAMzTO4NvnZdX4nlPniEzhw79Bqk
         t/K+5KnEgna45qxmWH9BIGNBLxlTs4bOCocVMj7zFF3EhT1h8oconXcbSAMTO21OWV40
         g2LHsxfBVYUr7WCIC1j1R775Qocua3GuzLXyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753477067; x=1754081867;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dCUl2OeSo2FBp6mlr6u4shYUkzWkOJCCVZrPDlP+ZMM=;
        b=LQqSWqFBgYb3zWu5FAE1a8d9F/pGk0BxIwK6Xw5HPiH3+Q/dvsG5G86ZOtVzPNCXXz
         a7Hcs2TwY+i1gbJfTtPyrsx5BxF/MPCAH5NEi2ag7YtBWBv8s0C7Xy2xLbcMkaqZUwM7
         a/x3kJvOoX37t6mNHwVYrEEbua25TlpyNQX6T2pv/Tt65JBPWZ7R7XIcxbW83C3/L1fY
         UPRb2Nyti3Ba09P/qeaAnJfgUwJqebc3KkOu7ymO2WzNVmpB2bnRp5E0qrudB1zDfW2P
         pQ0sy7D6w+dldIcD1q+8pWybOp3CqWFnqG8dNcYK4MhuDj+cDvTJsCT5iCad2fZmzScc
         whJw==
X-Forwarded-Encrypted: i=1; AJvYcCXh5Bm1gANczJMxdXndiL37ZoGlijPZkHoXIjFHsgjBw96YsxmsLVXXOEyq4dB/YtiTCZjS89aav5NY@vger.kernel.org
X-Gm-Message-State: AOJu0YyDc0mLZtgBHWkV1Vpme9CFvQgpYFTvbxEg265fonSsQarkyOa5
	zdl0yWfbHNnfN5gwkup/HV/mdUpEtz50LgDRoas3vSiaFuh1pMZNSBQszbIK/qHz3A==
X-Gm-Gg: ASbGncvwuAvAIj5LGNtcAbK0+OdwQtAoN3YUfYsxT7F2KMhO53NRVjq9T3kZjQOaBQK
	3QU1IlRMDdMxnTSz8kCRzmMv7HnLvEg2fxvEz80jlBuGPyErJg3T+PuNzCRgy9lAx3K/gQcZIZW
	jpvMXipR6pig8dGtkgEa+qN1wNfEsh3yTP50tazFxtkvlZvt0fN+yhEJsqqWXop4WcK9oChkq6H
	EcswoAYVjVQjwZaaErbwvxK4a01vesWZEdaV+dDUQ9DYufEl/VgynetmcFCzMhnopQq496gbBJA
	6xDd+94eNCEsW+ZRfEfZonpG3xJ0bTeqL5iQ35s+shGfGxbUjFL4nhgZ6Z6itACt0Asl5ZY2pce
	pFyXe6c7vlAJV8CLaMFK1srSckNBVCyOOkI2njJJaspBabVZid7UGKhCrXsIVDc8MfXWjaMbo
X-Google-Smtp-Source: AGHT+IFlj41IYP4at/QfmJ3pwqZRPEQKh3+Nwren9X6bMmON5faRgKnIQuwij84mUGwE9W1dgTXJbw==
X-Received: by 2002:a05:620a:951e:b0:7e3:363f:2c19 with SMTP id af79cd13be357-7e63c1b6747mr347152785a.50.1753477066636;
        Fri, 25 Jul 2025 13:57:46 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7e643879396sm39834785a.64.2025.07.25.13.57.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 13:57:45 -0700 (PDT)
Message-ID: <44971e62-8bf3-4f8b-b07c-071eee3318a5@broadcom.com>
Date: Fri, 25 Jul 2025 13:57:43 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 6/7] net: dsa: b53: mmap: Add register layout
 for bcm6368
To: Kyle Hendry <kylehendrydev@gmail.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>
Cc: noltari@gmail.com, jonas.gorski@gmail.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250724035300.20497-1-kylehendrydev@gmail.com>
 <20250724035300.20497-7-kylehendrydev@gmail.com>
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
In-Reply-To: <20250724035300.20497-7-kylehendrydev@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/23/25 20:52, Kyle Hendry wrote:
> Add ephy register info for bcm6368.
> 
> Signed-off-by: Kyle Hendry <kylehendrydev@gmail.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


