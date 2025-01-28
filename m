Return-Path: <devicetree+bounces-141507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA341A21058
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 19:05:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05321163260
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 18:05:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0CD61E9B1E;
	Tue, 28 Jan 2025 17:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="e80Ewpma"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2921DE8AA
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 17:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738086963; cv=none; b=Lu6tT7KtBFJ3A/Gb8TB/BcY4LrzAn8t3LNm1qKNqmGF1raTrvGTtgKKjv3Pcz2UT/0/r4UXoYTuQov1ZsN+X26k4jvLPGzS/x3CZ9Wv+IUbnKWTeLH8Ho0q272COrDV2Auhq0WkMNdACMgWdj1C5UDgqow1oEw1121hsuXcP3WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738086963; c=relaxed/simple;
	bh=0KIzvD9qn4+fPI0OodAupunvDVg6ki0rugVJSiFUeUw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ls0HW9DJecskFBDKDS+jW3/A62L2R0t9cl1M4lkcZdDXB4kt/6OmMMRasJ8gSqW0KcrFr/p+L8oxa9lyOB/NktSDanwB6xqF+EMJKqcCjJvyKVAhhkkxJ65KYlz0gxYBCplQYMc/QOSc9A6RS+bR38B99XDWqqKRyukMMgOuPOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=e80Ewpma; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-2b1a9cbfc8dso1646716fac.2
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1738086961; x=1738691761; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WFaFXtulxARpixggrH83x42Uo27jjPVjXCZSK7e+S2w=;
        b=e80EwpmaJsa1eU39Gsx+5WJnu/HyPCcFXZ7b/UF06PEY5WvoHUJjHWG8ige8oMZqmj
         t4M8oLvZnMqvhZYegak+w6wamJ9YYy6rizfUk55yHZvdMdRZ22tULTwyy6bvKshWlYIZ
         2LHdr+n1gUOEWSJLreTLRjk24b/Tp7HTb4pWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738086961; x=1738691761;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WFaFXtulxARpixggrH83x42Uo27jjPVjXCZSK7e+S2w=;
        b=dYvf2EUpUCYN16TCPd48eOpE9XEshYf45dSWM4UUcVuo5mOI2nBfFAqXYE8ob1bT2n
         EEuzb0HhedKYMWmMpghsrpAKMo83MQiaK2pns+AdvbmP53uwb9TCxtk0DdnM+DMiLrWC
         bg5c6DSsoQbNPs8FUhl5UVEQL2mgrBYihbpmvW0KeHYqUCFYZxmcUa3CiPs9pHBqQATi
         8Z7vTIVYEL4gvywMa9X6oBg7yPJxEhFolA9tNIPTVaOg4ytHn2TMmvjF1EXZ/a6TDmqd
         aJDnCdB2DURg3RH9IQ7O77MChyf5esT472Do5t3qdnR9TXdraJ+yEmaLX+zL9zuPqcNV
         rNBw==
X-Forwarded-Encrypted: i=1; AJvYcCVh5dnOz8bscmjf8mFaeuBbMSnlciptrk4KFuVuKvjUvRJxlgu1V2dc1VTEq72FpdNC4HaFAbTBqdz5@vger.kernel.org
X-Gm-Message-State: AOJu0YyFngJU/SoCYDTrMtK0KCkEJYRLRyGmUKgLtCS7GZx5/u8z62f2
	gGcY9dB4RiwNKYLzMTP7kkE+1iWji5hCKsiOq8uLJPrNPY+oc2aZv62U0NIedg==
X-Gm-Gg: ASbGncspKBBrSpRjF9K0P3ebp6V0+w7xp1CKAMuzZgxRgaNydIWzlaBu3WA/t81B63f
	YciubITK1ez0/qsEospfUVMC1V8ICWk07yHYBAvXrvm7oleihXSi37iIOHUg+zwK4zjh473iULV
	Vvh+x8pRgVGkWjGUf7BmGzY/CE6AWms/f+5RXiA+4K6BS3lFRE9OSEREgbWopDG6qNIrdPE9UD0
	+FVxPlW+wu15bQ1qoDLL74rTLNDmodcSQGWqnCfn0sj7rXiyiJsjNzt+4Yb2VVFCZPA6S7gDB+j
	Aua5ywtPCjPhWay64Csqr7qQNgt5ws2Er1kpOb0NKauniaURuDqZnFg=
X-Google-Smtp-Source: AGHT+IHonHcVzin7MrMAMt5oJ799fuBp9FUDl5Ft2PJO7WbyjEeyBqzZqyWPnMPg9enCe9wWUd+Yxg==
X-Received: by 2002:a05:6871:a9cc:b0:296:e366:28ea with SMTP id 586e51a60fabf-2b32f3084demr35249fac.33.1738086960734;
        Tue, 28 Jan 2025 09:56:00 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b28f16aa2bsm3683130fac.13.2025.01.28.09.55.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 09:56:00 -0800 (PST)
Message-ID: <b1009877-6749-4bb1-95b9-ae976bef591c@broadcom.com>
Date: Tue, 28 Jan 2025 09:55:57 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 -next 03/11] irqchip: Add Broadcom bcm2712 MSI-X
 interrupt controller
To: Thomas Gleixner <tglx@linutronix.de>,
 Stanimir Varbanov <svarbanov@suse.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Bjorn Helgaas
 <bhelgaas@google.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jim Quinlan <jim2101024@gmail.com>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrea della Porta <andrea.porta@suse.com>,
 Phil Elwell <phil@raspberrypi.com>, Jonathan Bell
 <jonathan@raspberrypi.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>
References: <20250120130119.671119-1-svarbanov@suse.de>
 <20250120130119.671119-4-svarbanov@suse.de> <87bjvs86w8.ffs@tglx>
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
In-Reply-To: <87bjvs86w8.ffs@tglx>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/27/25 10:10, Thomas Gleixner wrote:
> On Mon, Jan 20 2025 at 15:01, Stanimir Varbanov wrote:
> 
>> Add an interrupt controller driver for MSI-X Interrupt Peripheral (MIP)
>> hardware block found in bcm2712. The interrupt controller is used to
>> handle MSI-X interrupts from peripherials behind PCIe endpoints like
>> RP1 south bridge found in RPi5.
>>
>> There are two MIPs on bcm2712, the first has 64 consecutive SPIs
>> assigned to 64 output vectors, and the second has 17 SPIs, but only
>> 8 of them are consecutive starting at the 8th output vector.
>>
>> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
> 
> Reviewed-by: Thomas Gleixner <tglx@linutronix.de>
> 
> As this is a new controller and required for the actual PCI muck, I
> think the best way is to take it through the PCI tree, unless someone
> wants me to pick the whole lot up.

Agreed, the PCI maintainers should take patches 1 through 9 inclusive, 
and I will take patches 10-11 through the Broadcom ARM SoC tree, Bjorn, 
KW, does that work?
-- 
Florian

