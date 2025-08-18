Return-Path: <devicetree+bounces-205964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0A1B2AFDF
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 20:02:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C661B2A4D40
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 18:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63FFF256C89;
	Mon, 18 Aug 2025 18:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="THFyUT9W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f227.google.com (mail-pf1-f227.google.com [209.85.210.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C62246BB0
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 18:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755540144; cv=none; b=lERwgAfJCTDz7oiiOjPBkLT16C4HoucxkUW/KS3SPc2/ayQwWCrIszygAQBb/w+TrdrA2OlkA0/qzE3QKdaL+N2AXiLGsmV6hj/4U37ep57/Pr8wwqquJI+BKbI4VcC5pTOTeyQK/lH0nzq8Hrb6S8KFVZcdzxL77DWqpzelo8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755540144; c=relaxed/simple;
	bh=A83rVwE+E37WuuoawwVfOZ/BQosRnUFciBwS/1+bCyE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UOQgG9ms2beA8pZvu0JnI9Yy4UaSgiRhjlqbQYVlgczIYdBf1uLlH5nxkgWchcedppyIi1AAMqR/wBcvJzKWdnhtG4QiaPCd/1SLp/YCBc/i0u8jWye+TLq0q17EENzHDdHYzRMwGiZbIgxUqGfBqVijmIQmgx4/J8Q/WPPrRGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=THFyUT9W; arc=none smtp.client-ip=209.85.210.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f227.google.com with SMTP id d2e1a72fcca58-76e2eb6d07bso3803653b3a.3
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 11:02:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755540142; x=1756144942;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Igvk6AvqPGpyFLK199vT9ThDTTRRAoLheaWbPVeRxBM=;
        b=HaufhcfpaIVsTZofR40PuJ2mo91CCKvpSsdINrbvlp5ALxX1iDloiZ+/bd0VbZuS9j
         UUasloli/DQbwp4Bbig/P9xIeD46/pPeeYZbQ+7kVtgDvxn50+isee6AL2H0zABEujKl
         5uBqyWkNMcWqSCWW/8LdGlLwHiqLgq2c5jqTwl3UdLGnZ0KRBn89G0xCsT7q5HHIAXxQ
         Bahe8PfVP9EjT012hxohyQ4O4OgzIXrTQDKica87FcYUz3hFhhhA1IkZFg87gjdPHTNU
         0rioIXnSyfTVTypK+evXz92k9mvs25kCMR2rIrfzXbsDncb+RRwvR1cYn5z/ORMl+1JG
         LnlA==
X-Forwarded-Encrypted: i=1; AJvYcCV/DYdT1AOopINsn5QU08JngJKh9IVCig6GSn9WeyKx/RPkSsAS1F+1kTXPS0VzJqrxSZK7xlMCVE8T@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5ZgO1X89ZoI84J9Z/CvAmqFYplQgc7k16km14QSHIBaN3X/Ru
	9f71Bqc9wseqp0BfDz2Wmpv6Jm/ocuLzFydWbXwbC2W3LJFEWr62yEh62pApURqoXElw/ZwK3zD
	TYNXTFMQO3VjIKtNsZbFiz1VX4cd8/cIoTWLWv00gxazyzCv255fJVVEumuhI4xwDD0l8I7gV0D
	OMaYBPX1uE/SCNeBPqypcrgg3+J1pXr78E6K/pKvo1O0pQMzF5nFgZbcpi1Xa1i3LIvqtdw87Rm
	dIxSGRWRnJ5H0tQ7yEfLw==
X-Gm-Gg: ASbGncuG1Y+AiM7ZvBMtdA8yY6yMTTIy6xARFPb3EWR7bWFi3CbOhE+lWyT/kMHQmiN
	LDxaJMLjrqU6yhkPo+jShdhJiEO/26WyhCJ2m4KEg8JL472FznuA5SxfK3XYJu/xDDZbi47BwQZ
	ON4q8PId2piluee3nkSlQ/R5zeVWsczCoKVqSV1I9ZxaELtTiPmJ2maazfktnmAN6XGvPTVeyWb
	iT53/TcvlxuoiaxGwCYgPLxnbqmi87kIzjOP6sYXu1xu+m1XZlnRfn72z8XWzz969uIC0S93KQo
	oeAROryHZtI3utU9Js2llAkioXPuxG8B8o8bD12tOqI/abHDKIRm2ZM9e4MGqL3NtUw83fKawWh
	uExO2rPu+aPuM55mFSXiaMAbcTdcyTBdKjzLQnYppd/HP95RMomTZ+gN5XIsP7rNK/1SOi+Cqp4
	oejw7vkG4=
X-Google-Smtp-Source: AGHT+IGZL0njFY9qCDFDR2jAkPzvfzhSt0I6UpKhnnScq1sFmdA3JPeuHqi9stNbP4R988THHiYOs2NswiAn
X-Received: by 2002:a17:902:e544:b0:237:cadf:9aac with SMTP id d9443c01a7336-2447900cf68mr134302535ad.29.1755540141944;
        Mon, 18 Aug 2025 11:02:21 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-123.dlp.protect.broadcom.com. [144.49.247.123])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-2446d4a7272sm7998185ad.61.2025.08.18.11.02.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Aug 2025 11:02:21 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b109be525eso122209391cf.2
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 11:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1755540140; x=1756144940; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Igvk6AvqPGpyFLK199vT9ThDTTRRAoLheaWbPVeRxBM=;
        b=THFyUT9WytKw9vv8XZXjHu+Omr9CdgXhBnbjT57taxIVZsnE5Ma+yAAysvUuObceYm
         FKd2bbc6NGt4rvArsqFfoo/tkIEXbgzde0xh/dr5/fui4LZ3+w2cGNfQ6G2GKdF5S/3u
         bmukFN/hFJxlyAvGws4RgHwKa4X77VXyJu8XY=
X-Forwarded-Encrypted: i=1; AJvYcCXBzRmDnRa1svuXTaX+lgro6MkF1SD7v5OV44alKAd97SXnx4zU/WHdbVMN8RQeqBFLpD/bbjFn2s6U@vger.kernel.org
X-Received: by 2002:a05:622a:d0:b0:4b0:6965:dd97 with SMTP id d75a77b69052e-4b12a75d90bmr125817881cf.44.1755540140372;
        Mon, 18 Aug 2025 11:02:20 -0700 (PDT)
X-Received: by 2002:a05:622a:d0:b0:4b0:6965:dd97 with SMTP id d75a77b69052e-4b12a75d90bmr125816951cf.44.1755540139671;
        Mon, 18 Aug 2025 11:02:19 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b120b96b1asm52522561cf.26.2025.08.18.11.02.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 11:02:18 -0700 (PDT)
Message-ID: <4c454b3c-f62c-4086-a665-282aa2f4a0e1@broadcom.com>
Date: Mon, 18 Aug 2025 11:02:15 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add ethernet support for RPi5
To: Stanimir Varbanov <svarbanov@suse.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Andrea della Porta <andrea.porta@suse.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, Phil Elwell
 <phil@raspberrypi.com>, Jonathan Bell <jonathan@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>
References: <20250815135911.1383385-1-svarbanov@suse.de>
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
In-Reply-To: <20250815135911.1383385-1-svarbanov@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 8/15/25 06:59, Stanimir Varbanov wrote:
> Hello,
> 
> Few patches to enable support of ethernet on RPi5.
> 
>   - first patch is setting upper 32bits of DMA RX ring buffer in case of
>     RX queue corruption.
>   - second patch is adding a new compatible in cdns,macb yaml document
>   - third patch adds compatible and configuration for raspberrypi,rp1-gem
>   - forth and fifth patches are adding and enabling ethernet DT node on
>     RPi5.
> 
> Comments are welcome!

netdev maintainers, do you mind if I take patches 2, 4 and 5 via the 
Broadcom ARM SoC tree to avoid generating conflicts down the road? You 
can take patches 1 and 3. Thanks
-- 
Florian


