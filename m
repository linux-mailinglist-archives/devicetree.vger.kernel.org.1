Return-Path: <devicetree+bounces-182301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C791ACB935
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 18:02:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D7333B1897
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 15:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48954223327;
	Mon,  2 Jun 2025 15:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="MSPCHRHO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB331EDA0B
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 15:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748879873; cv=none; b=lpl75QYPznj7dxhDqUPpiGqORcwRayA/oSrlA85D+2KiIJfrr9Ms0pgRgrCtvlgFUItNlEoW97V6Hkea24eTssZlpMktiikIrd2JQAlx7Kq+B6FS6+BT/c+gSJBdncyYYLupHLgv1Ekbz/WlKdBqJkDT7pAI0kZ5U6v4V9Q5aOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748879873; c=relaxed/simple;
	bh=r3/KInTIis2b68ucTZICsTDUQM2+trrNFPxqpe7VyhQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Do8yrA/7zP6EVfziY76ik4Z3e0uswLJGwxMMAd7L2cecpmXi0emT/se6ez+b48UCKgnk+rpX3rexDWeBORWAP4Kfj6hwj50NA9oARQQlZ2codU5jauGWYrYCALcPfnjGMNNBc7ZOuloafZywcVv1A5lS29G+iJYhfeI9PJjMYY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=MSPCHRHO; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-234488c2ea6so48393175ad.3
        for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 08:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1748879871; x=1749484671; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=V0HldRLBDlDdaFi1o6vWHUnaZIQg5Lpmr6+tFkz4pQ0=;
        b=MSPCHRHOjwUtdoF6lLuiiWIm8HkWqFCfzaZwWMwFICsXo9Suqo2uG3M3MF6fgbo9as
         izCHBBI5oIbjjxypGLMSr+3jekoh9TvQBKq+HzwiZ1SMk9+8e/0GQ/pWLD2FwF8zVIVC
         3WYXR/TWmhMjxnjx1Wdhhw2QNkTyOq0z89f6w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748879871; x=1749484671;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V0HldRLBDlDdaFi1o6vWHUnaZIQg5Lpmr6+tFkz4pQ0=;
        b=QUoO/EvMb5aOBAlS+FkT+rJQSXZ3XMiLJOP5cj/nMEd1aedgOBNaXpKWaflSoMVLMR
         +sy5Bmnziv43noTW1jb+tnGFJrphIx6WAUauuqIIViz31TsdXpeb381QyPKPLqpT8zsG
         jHaCHbHuigKsc5GYpYclZXkB41duxHzo7YA5x+u4z1R+3J4oefEMQyrTGdwV9DVZ1jh8
         L0tCJUsoUEPxz5s4Pcl/730QkJGeJH7BAw1cEwUjdOFSmH+LGtyDNIsImLp3t9Gfg0IG
         maPnMoy4XKx/+BkXxWRfETJ2EmPSp0ZlFKg/KVGaAiQt1O5n6IBhXS2z0xdKTiyrEp0u
         sJQg==
X-Forwarded-Encrypted: i=1; AJvYcCWLeR37dNi7tKXF9/nlsbmLqN/LwI/HDIVR7K12iZ0Rplk97icLODo1qA/pzM7ShPC4iy7lAPqyXETU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4YOsOSsaZtDEoF0oDR+wCXvvwiJMwadRqMCzNFNjHLEUG+/NX
	kvbdn3VQ1j6eKD6GCMDUj0oQ+YL+NygPCfEGYT8ZWPe6KLV5p5FVUFW6PSjtCDrIAQ==
X-Gm-Gg: ASbGnctviZop4DIS5sYAbWPKunjJQjJXbe0joM+cWNoNZ9vTIjRpHyhAPPGxl62z4NO
	npavKYrV3vuycOZIGSN9OrUQ2Wv5ktGeHEcJIhJ/ZAb5sIczVl3WuDTAgCkgdiyv4r9bB2LTqvK
	ExnpHG7NYpoWJgNhhvfirTmQfsGqnc7TTJXVJk6bofxRj+V74j+IG9eWGaN14qQDzBCLRwIxKG/
	Vbk8lEYTL821ZYWs75T2YBAog/2Q2SvFttnBv2OV0CJ11ane0rystNAusmRzqHwjA4TkSMaXZhv
	uzN7QmV3GwZU1l5CwWmNCeSnLoxGK64zzCAVZJvP2ByEsRjpuDNh51piUe7LbWc7cOyTN5GVpky
	zhAaWae1f1/oRE1s=
X-Google-Smtp-Source: AGHT+IGQX/TTR/ORwQelCPj6foZ1YTf+Vd3yQv9rufQDqmNgYezZEjz7F6ipV2r7WIOBa7TL5zP2TA==
X-Received: by 2002:a17:903:40c8:b0:235:15f3:ef16 with SMTP id d9443c01a7336-235390e0fd9mr158050305ad.13.1748879870804;
        Mon, 02 Jun 2025 08:57:50 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506bd96f9sm72629995ad.98.2025.06.02.08.57.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jun 2025 08:57:49 -0700 (PDT)
Message-ID: <891ac4ee-7c98-4035-9ac9-3c17d9dc6d4d@broadcom.com>
Date: Mon, 2 Jun 2025 08:57:46 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 0/13] Add support for RaspberryPi RP1 PCI device using
 a DT overlay
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Linus Walleij
 <linus.walleij@linaro.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 "derek.kiernan@amd.com" <derek.kiernan@amd.com>,
 "dragan.cvetic@amd.com" <dragan.cvetic@amd.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Stefan Wahren <wahrenst@gmx.net>,
 Herve Codina <herve.codina@bootlin.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Andrew Lunn
 <andrew@lunn.ch>, Phil Elwell <phil@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 kernel-list@raspberrypi.com, Matthias Brugger <mbrugger@suse.com>
References: <cover.1748526284.git.andrea.porta@suse.com>
 <0580b026-5139-4079-b1a7-464224a7d239@kernel.org>
 <aDholLnKwql-jHm1@apocalypse>
 <7934ae2a-3fc5-4ea2-b79a-ecbe668fd032@app.fastmail.com>
 <0e154ae3-e0ab-4a4e-aa39-999ea1c720ed@broadcom.com>
 <aD1ZNAeB4tpMNTGZ@apocalypse>
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
In-Reply-To: <aD1ZNAeB4tpMNTGZ@apocalypse>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/2/25 00:56, Andrea della Porta wrote:
> Hi Florian,
> 
> On 16:46 Fri 30 May     , Florian Fainelli wrote:
>> On 5/29/25 23:03, Arnd Bergmann wrote:
>>> On Thu, May 29, 2025, at 16:00, Andrea della Porta wrote:
>>>> Hi Krzysztof,
>>>>
>>>> On 15:50 Thu 29 May     , Krzysztof Kozlowski wrote:
>>>>> On 29/05/2025 15:50, Andrea della Porta wrote:
>>>>>> *** RESENDING PATCHSET AS V12 SINCE LAST ONE HAS CLOBBERED EMAIL Message-Id ***
>>>>>>
>>>>> Can you slow down please? It's merge window and you keep sending the
>>>>> same big patchset third time today.
>>>>
>>>> Sorry for that, I was sending it so Florian can pick it up for this
>>>> merge window, and I had some trouble with formatting. Hopefully
>>>> this was the last one.
>>>
>>> That's not how the merge window works, you missed 6.16 long ago:
>>>
>>> Florian sent his pull requests for 6.16 in early may, see
>>> https://lore.kernel.org/linux-arm-kernel/20250505165810.1948927-1-florian.fainelli@broadcom.com/
>>>
>>> and he needed time to test the contents before sending them to me.
>>>
>>> If the driver is ready to be merged now, Florian can pick it up
>>> after -rc1 is out, and then include it in the 6.17 pull requests
>>> so I can include them in the next merge window.
>>
>> I have applied all of the patches in the respective branch as we had
>> discussed with Andrea and also merged all of the branches into my "next"
>> branch so we can give this some proper soak testing. Once 6.16-rc1 is
>> available, all those branches (devicetree/next, defconfig-arm64/next,
>> drivers/next, etc.) will be rebased against that tag such that the patches
>> that are already included will be dropped, and only this patch set plus what
>> I have accumulated will be applied on top (if that makes sense).
>>
>> As Arnd says though, this is too late for 6.16 so this would be included in
>> 6.17. Andrea, thank you very much for your persistence working on this patch
>> series, and sorry that the request to merge those patches came in during a
>> time where I was away. The good news is that I am not doing that again
>> anytime soon.
> 
> It was a pleasure, and many thanks for your patience too.

As a heads up, the kernel robot reported a build failure for 
devicetree/next due to the missing pcie1 label, I have moved the DT 
patches from devicetree/next to devicetree-arm64/next where Stanimir's 
patches adding 2712 PCIe are already present.

Thanks!
-- 
Florian

