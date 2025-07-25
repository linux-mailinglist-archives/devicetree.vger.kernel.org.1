Return-Path: <devicetree+bounces-199826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E84B125E4
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 22:57:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E6C81CC64BD
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 20:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFE8225B2FF;
	Fri, 25 Jul 2025 20:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="U7EZOvUu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487E02561D1
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 20:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753477062; cv=none; b=Gpa/xCSeKlVCPZ6v+jEeR3lbC0EuKoSVZhoKJOZwFbrMZ6LDRS5A74O0/Z2hnmC9lCudNOO5YcujvrhvY7HrhhrHpVcxPK6AxodqzprB1sbyX61RctMhS5v/x9KoJBlqLJIjY/3C02OtMTobLohi7sQIzW+im+h1n+HBs3RsR8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753477062; c=relaxed/simple;
	bh=i1SInZSZ3Aij1TOax4En7Zb70JBvQcgJ2i1sAnCTRQs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IDDe2s8S6EAbB8Ayo8Lr99zzAfsEuW65OnpYhlqH7bbDhUF052m2t9eI0Gk9ssxDIWUCnfV5+63IN/RX16twqE5hMgtzWWIFrEqfyHND3rvHTPt072fQZulZ76BautsEUyhTJqfJlRgqMDA/0p610+UtGgZSSD6fV2Fqa1rHf7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=U7EZOvUu; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-7e62a1cbf83so248847485a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 13:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1753477060; x=1754081860; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=BhcAKc/lFnecwQoRDpNFK+j24zTiKcV1kJ67oFCXCNQ=;
        b=U7EZOvUunmqchs4Bih1J4IqnGimYDuWuJKz9gcMxsKKvme4EGK+zmejM2AS/DuIts6
         niJCU4imrIjJ//yGgrQ1hcXHYXG4jQ9mQESoWImxP308yRYmOO6rDiG1o2jEHLVNoibe
         hOvVzb1eusQkWU4Wxj+wiad/DWN5FZ/soU1/k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753477060; x=1754081860;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BhcAKc/lFnecwQoRDpNFK+j24zTiKcV1kJ67oFCXCNQ=;
        b=ISU7CnKE+Jmv/NWbHFpcW37j0EpZIB1jkQHFx+DV/fh6cSy4584FPpSH6pGLHURNUK
         1Ov+mQ7hCsX2kHqAEr0OgwMdklcPA/s+YLEL2KpkSZy2jbFlxYWVIuPcSDkxJ9kB9KD2
         3tvPVn3GVovruz78F7n6FZo2iXmmNEZPrD3GJYzcuVeJzf4enTNzMGhidApuWiDBQCUT
         6a5s3KNQujLcRna65HlWufJ4zPYCGBbxuoLswpHn2jWvLJ1B0WqCUtG1fbN7jwLuiIFA
         AbfXyakQc2n+ErXYfNA3oI2zvvTTLqkbEkG1rdN9yHneX6hqGuZPGKtu2UyBx/VYp6By
         KBLQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEpHZv9NSdHvS0tZ4RqiHsc8gLUWwtC2+q/VdJ+7Y0bksKxWGLgap0hr6MHY2YR1pT45qa6helg5sp@vger.kernel.org
X-Gm-Message-State: AOJu0YxMSTeR+fu2AG++QZOpBexBk7UkbBP/+IvAhgflXX84Lkh7aBFQ
	biT5K3tPsYM9IQ5fNbEIvEC5xiQ9+qYW+qTAlrgIu77mSup0SiqJUEWX0RCctk6OOg==
X-Gm-Gg: ASbGnctng4qAuiVDwLYJjbjG8yD2Lh4FxlCL4f/Xp79eo5do/nfBqTtwFKx19+MENgG
	iYI7TD0wLUt5eQv7R4tYPZu3G1K7CBnNjsRQjDzIyKaTWJ7IO2McKDxcP3qoYkjAFJy9O/c7R90
	ZZyx3VEUYR+OXcfJ9GdFmNzOuvH70Uz9ZLgHHd7XdxPZc/UAppgWW1AQH65JBHnA0kvbmVvKaIM
	JZgAQBwhAvB2YQyaFdnmHeo5+VJaozUiEJx2Kl/U5Hqf72pDcjCcQQMJ6LPtCrB/RedxNMgiree
	jGa7GCJEn83qYAWr0IvA6YBtDJnDLm+WmHCBJBNCUcYKXnuamhv/ej6uw2lPqSPTnlhDtFPlVe0
	NQtiiI+MLfDKFTxzy5r8TK4BMM4/UDDMZ0Eo0eGHo29rKLlFp5BoGDjuSp7J9NQ==
X-Google-Smtp-Source: AGHT+IGSk+fQagwNXlIgc5cyTCUAgxARHoH3svbzqgtp+j3+Fj5S/N0766hheU5jCRWrCy0v6lE8iA==
X-Received: by 2002:a05:620a:4115:b0:7e0:cb93:6fb1 with SMTP id af79cd13be357-7e63be38459mr458299085a.9.1753477060154;
        Fri, 25 Jul 2025 13:57:40 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7e643879396sm39834785a.64.2025.07.25.13.57.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 13:57:39 -0700 (PDT)
Message-ID: <18831882-80cf-4414-ade4-cf02a943155b@broadcom.com>
Date: Fri, 25 Jul 2025 13:57:36 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 5/7] net: dsa: b53: mmap: Add register layout
 for bcm6318
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
 <20250724035300.20497-6-kylehendrydev@gmail.com>
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
In-Reply-To: <20250724035300.20497-6-kylehendrydev@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/23/25 20:52, Kyle Hendry wrote:
> Add ephy register info for bcm6318, which also applies to
> bcm6328 and bcm6362.
> 
> Signed-off-by: Kyle Hendry <kylehendrydev@gmail.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


