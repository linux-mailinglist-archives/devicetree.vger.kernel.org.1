Return-Path: <devicetree+bounces-205984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 78977B2B0E4
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 20:54:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5CF63B89FE
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 18:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCC952727ED;
	Mon, 18 Aug 2025 18:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="TmgviUdk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f226.google.com (mail-qk1-f226.google.com [209.85.222.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE351D9663
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 18:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755543156; cv=none; b=NOf+WMsIe95ql4eD7Rd9hlpkBWG8j2ry5Iw/oQMHDpTgeP6gh8wNxLLq8+ZsbEJ5aRZL4dxyxfYEquLMxoSGfpqE3vpAn0lI8vtNMxw7C5BoIBIHxT9wG7CcKqTBxogzxtxNmIKPEu3OPKcHlWsQ0xv9xaCQuCIVCpcyJyqIS0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755543156; c=relaxed/simple;
	bh=uma2hH363G2DuT+FU+idQMU4/fO0/WsIEnGE+uIcltk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lsNOykhy/G9up1nsYSp+dVMGeoyVLKJ33hN0pvqcaVQvvMctGKgpRjnmVSgiMInTtTSBXdpRCpFBHOuoXr/BEZnexpEpd0FPft6hxnEi4wgjAdZoIPwIDC2ZQdvou8BveJ8JcF/ig+7g494IuMteUfOsxOTtbFraMxRRFlgIito=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=TmgviUdk; arc=none smtp.client-ip=209.85.222.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qk1-f226.google.com with SMTP id af79cd13be357-7e8706c880eso517951385a.3
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 11:52:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755543154; x=1756147954;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=71UA1WWX1hhVkvrWyqtzDNWMkAC/enCB7vGXFmfaVDQ=;
        b=rznkvPpLQu34tcbEYsW+uggbvHhT5H50S/Wh5L91VE1yAdrR+BNm1PR+llDjrn/5Bx
         cnt1oMgdVqyh6PNXx+D7jIKOU3t0POe8Oy8Gb0gmYo2Rk0K3g0AEuaufiWT+2E98XT1F
         44jekgq5UJWFPc4ZUM0nDH0zBxZd0P+kikW4B9wq8x1UkaGy1sTOcbHWooxoJZ7aXI2J
         SORJux/9dkiGe8mE7TedRzD5p56jJuzKkdYJUscBW1XdrSPndkASSMvcJW13hTpoluP9
         Zdgsp1MNWRDWTNyh0wJjo0JMyc2gge8m5EWN62BL+ThkLd/JOjHc8sKNQPL2NMJtQu4z
         Lywg==
X-Forwarded-Encrypted: i=1; AJvYcCWywqGtATNpLSHnbexQeeoZ5l774cWhxrfZSmHPcuFMAP4unlMTktsKssIzoYd4ZhdrTbUTSElOKk7H@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3PFahNDd+uKxi06/+f6+FtWEh9WvAsLnecMM38nQTKvKUu5rC
	SmKGf3jcxE11MNRaVWmIc7BAMyoxeosHkEj3exB+mGm7ZhbqgDMM0aT6rLPjW46AUFTcjBgrpoj
	CXoTBl/BXnzAVsl+OMmRFY+mTgBTUhEBqGr7pwoa1cSqOi2mXhZpxC6mjCvE4810YGZRsnvT3Z4
	EpLHg3zcpsv9jaFAkRXI/PRWt/wb7ldNQPHJt11bSvs8ygiA9Yz0dJWg6p0jX2dlZ1cDIh5vkM2
	0LHvJ0DAo4QjtTpzLOXTQ==
X-Gm-Gg: ASbGncvmEPvIW+Iwj8/EKepQSxI4R4yFN763rA6pNPg0v75mCJ1pF349syNB5Iv+Lwj
	FIuQmz4js2pGsxl5d5SYbv0o6fPpiuC2GHEdj2vXGT/c2SvUeMU88iBaCb3zOU7D8zyqsLqEqdO
	x5Av6Sy4MSqjzKy9PylMsYubNWatPdhFeGbUKAN8edU+d0DBq5rcx0vuh9CUNaB3IRC5BQu57lF
	fBlviD+uCr93OxUhDUdS0wyl95e+NmzoFCM8BeO5p3Kc8vq57jE2wBjOl7CuINwqf0dD51zSwmT
	fPXwzvd865rYBJxag46p3ZtzeSH+fYzR5+KNA7Ida0rn0pHcwlfwRuM2ACxh95cFgvclw8CH+JE
	QZkrnyrw4AS81994aL4ulZXH30oU8EINinRawymeGwAUXeYfVddAGdIst7BHjH6idaCZtHagaSz
	Wyvw==
X-Google-Smtp-Source: AGHT+IE1YScfLsJ7p4G+gFafavJRFwzw+TWZHd+/JLoyR8SU9bTYbImISK53Q/ckwQ9cURbbjILjzgwVNB5k
X-Received: by 2002:ad4:5945:0:b0:707:77be:fc76 with SMTP id 6a1803df08f44-70ba7cae369mr183353096d6.51.1755543153843;
        Mon, 18 Aug 2025 11:52:33 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-0.dlp.protect.broadcom.com. [144.49.247.0])
        by smtp-relay.gmail.com with ESMTPS id 6a1803df08f44-70ba909eb1bsm5661556d6.22.2025.08.18.11.52.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Aug 2025 11:52:33 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e8706202deso1191569985a.2
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 11:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1755543153; x=1756147953; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=71UA1WWX1hhVkvrWyqtzDNWMkAC/enCB7vGXFmfaVDQ=;
        b=TmgviUdkkZNxMb79JG30bz8RYkhAHD04DSGZu+MBRrVYip7IgEJ4QGN7PdR5mi2fc3
         eVfh8DjrO6uY39QhXo09OeVB+sh5uBZjVWSdQi06wks8Bb7GJny5deaL5RPUasjekU6z
         0iQRnDt+9xZkW4uWhUWzb0VvV+zOjcNiGxGMo=
X-Forwarded-Encrypted: i=1; AJvYcCURA/vi6FGR766UxxIq3ulPp+s4niS4+r/fOSevSCG8dbhfw0ZYzLzwqrPkMKWjSwAagIZpif567vjt@vger.kernel.org
X-Received: by 2002:a05:620a:31a2:b0:7cc:8a39:29df with SMTP id af79cd13be357-7e87df67ef3mr1518461985a.9.1755543153113;
        Mon, 18 Aug 2025 11:52:33 -0700 (PDT)
X-Received: by 2002:a05:620a:31a2:b0:7cc:8a39:29df with SMTP id af79cd13be357-7e87df67ef3mr1518458785a.9.1755543152694;
        Mon, 18 Aug 2025 11:52:32 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7e87e19b14dsm632355585a.39.2025.08.18.11.52.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 11:52:31 -0700 (PDT)
Message-ID: <68c3db9d-daf5-40ed-91a7-1d08b9c8cb52@broadcom.com>
Date: Mon, 18 Aug 2025 11:52:28 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add ethernet support for RPi5
To: Jakub Kicinski <kuba@kernel.org>
Cc: Stanimir Varbanov <svarbanov@suse.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Andrea della Porta <andrea.porta@suse.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, Phil Elwell
 <phil@raspberrypi.com>, Jonathan Bell <jonathan@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>
References: <20250815135911.1383385-1-svarbanov@suse.de>
 <4c454b3c-f62c-4086-a665-282aa2f4a0e1@broadcom.com>
 <20250818115041.71041ad6@kernel.org>
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
In-Reply-To: <20250818115041.71041ad6@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 8/18/25 11:50, Jakub Kicinski wrote:
> On Mon, 18 Aug 2025 11:02:15 -0700 Florian Fainelli wrote:
>>> Few patches to enable support of ethernet on RPi5.
>>>
>>>    - first patch is setting upper 32bits of DMA RX ring buffer in case of
>>>      RX queue corruption.
>>>    - second patch is adding a new compatible in cdns,macb yaml document
>>>    - third patch adds compatible and configuration for raspberrypi,rp1-gem
>>>    - forth and fifth patches are adding and enabling ethernet DT node on
>>>      RPi5.
>>>
>>> Comments are welcome!
>>
>> netdev maintainers, do you mind if I take patches 2, 4 and 5 via the
>> Broadcom ARM SoC tree to avoid generating conflicts down the road? You
>> can take patches 1 and 3. Thanks
> 
> 4, 5 make perfect sense, why patch 2? We usually take bindings.

Because that way when CI runs against the ARM SoC tree, we don't get 
errors that the bindings are undocumented.
-- 
Florian

