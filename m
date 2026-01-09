Return-Path: <devicetree+bounces-253105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E69D078DC
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 08:24:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7DD5F305370A
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 07:22:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E08D52EC559;
	Fri,  9 Jan 2026 07:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Dqnce1X0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD71C29B8E0
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 07:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767943350; cv=none; b=JLCXosfnebgOntJH7a4XyTQV3WSEBHVFZa+jIuADaPt39iWUi56fVDV5xaWpDFi+vx4r3DZuq/yUXpPCEzwGJzZuVTPT7yACrc6QKmZsX3E4yH4Z2a4OPVoanWLoohfxuIjZaJOsFYft4nst2HOyGHqrxH2E2HC1B2VAggGm124=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767943350; c=relaxed/simple;
	bh=m2wz1lctkuXxONV+LwBiNBgqkMAeAHcaybVa1xu1pi4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OKTLFQi65pw+FuTYrY/UBhogwKLMmgwvRzu20FfqP3WRDRT5FJo4iSetG2OA7WBM5VZ3vs6OFscp9OledIHpHjg9t1CoYDscF1GI7XGR3WSTVkPB/F4u8+f/id/0wL5EPks2qgy791v+bKDyyoA8Zo5sznv2SObtfzEgwtBUJsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Dqnce1X0; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-432d256c2e6so989978f8f.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 23:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1767943347; x=1768548147; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sRdipr7aeHoIxEX2vKQujSCZ90MZhOGqhcCSnr+qqyI=;
        b=Dqnce1X0vtVMjESyefbYMf4OrB3zfay5BuN1xto1ajRjByz3ScVtxH0k7SV/3SBmE9
         8SDiE8ePX88JBRUxE+Ul1GhJycAS0zo5vhyAC3eOidXukB5X2Yh6b4UBBit7K8kpabTw
         RJcfLzt9X01wm+UM46j7qDywvTttacGE8n4vab71/UMgCLg/wwdv2ZbnRvc7+vWp0yq6
         2n75Xt4H8g1jS/DOyEXq9mAMfwUwHmZLVALoqgJ7yoaR9AbKchZCk3+luNRG50QorQ2Y
         FiKKSC0zJFp9PduZqEFe6G2qPpI/6zgOI8PQEFg6FlECs2B2l+cduxX6HDnSg2E1EZcA
         PCNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767943347; x=1768548147;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sRdipr7aeHoIxEX2vKQujSCZ90MZhOGqhcCSnr+qqyI=;
        b=HcOBEDUwh6ogR4wQGmO7YE9jZaRkIK48MkS4I1C+4Dpwe4xWDDJ1CzeLvdv5sRv0xe
         GRHV0msjpE951tN9ngth9TgUTs0RSAltIBdH3CgDLIi8AEIaFyfk9w6+iyBIsa+MuyHv
         EzBs8GkczVHJm6Gzgq30iykCYoGpDkiSzu1A4kPLR5bSHHwpRYrriHEeq2mMfmHEy9Zc
         7xuo8tFKdCYA0A6ctGiQ9VLPalbVFiOlPXlPFasxh4YfWiip++ww4o4t1VKYJT7UreNM
         Ga5JHdYxokvS8fVULm1yFWGMaPqbHWtsQZH754xnKA0L+pdh/AyA4Udxk2lNZ1Y4Tydk
         YPEw==
X-Forwarded-Encrypted: i=1; AJvYcCV3XCMafEPV9+trDW+h9WSLtYkNNDlkUzKsst7CUS3ZdqT02JfgFF0qLcJ/hxANoKdeuurZhOk9dTaF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7uBd4IBkEMMtxAFMFDBuInpfLGEoWO74vu9VIUkYm2P4vHoKs
	6JMMOvB6jF3A6XzTqCS9xMsNTBedTg3ff/UnNwBXo0v9EC45pBnf9KgxN8RlGR3jjs8=
X-Gm-Gg: AY/fxX4pAisMXpgQMGBLuHcOOeFrzMmx/Yi1xULCU4Y5k9U5G7Hjkn6fz0p4a4KRirS
	BZw1llkBUYvPHXw1qgsI8YEmKihQdFDndWidfB1PUlyACKBGlFBd9nfFQpHhnZKdLvSuHhHnYFH
	iJlDxExjh4OmyNS162Cs4QOFhhKbxMFPXoDJyg7PP1cZuV17WFpPKvTRMK7+ENYj8/OVLgLXEEA
	2FWg33uAXjccJHZWt6svw9Omv0TyNAnUFnIlVYp8/Di+4v4uujKzCcczWbPtZ3Slwvm6kv1zd1J
	wwPcZnbLz+Lf2ofEEN332C5HW+GCg0PEqihIlMfsr6Vn3u6fpx97XDm04D2BojTxhLnhyF53AU5
	4MEoBYoMGarwaQpUhbotGtDm5Z4cSrwlS5nfM7Y4PgWUvru4MtkBIRlu21QiQcL8OxTullDk2Rm
	jMeDHNBW1qBOcQ6J3hOg==
X-Google-Smtp-Source: AGHT+IE2w6FBykX8O9VP91rZPx4SMD5MYP+siiUCDk4NBBI8RnGVXjy6MSR8IirXqwWDEZtmmeIing==
X-Received: by 2002:a05:6000:290e:b0:430:f704:4da with SMTP id ffacd0b85a97d-432c37a74dfmr9227189f8f.58.1767943347109;
        Thu, 08 Jan 2026 23:22:27 -0800 (PST)
Received: from [10.31.13.216] ([82.77.28.160])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ee243sm20575451f8f.31.2026.01.08.23.22.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 23:22:26 -0800 (PST)
Message-ID: <af02ffd7-4876-4bce-8a79-2b34114d6ccc@tuxon.dev>
Date: Fri, 9 Jan 2026 09:22:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] clk: microchip: drop POLARFIRE from
 ARCH_MICROCHIP_POLARFIRE
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org
References: <20251121-tartar-drew-ba31c5ec9192@spud>
 <20251121-prude-dilation-79d275fec296@spud>
 <86bd75e7-1191-458d-b71e-c3cecb960700@tuxon.dev>
 <20251208-flatten-devious-56abcfecd510@spud>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20251208-flatten-devious-56abcfecd510@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/8/25 20:02, Conor Dooley wrote:
> On Sat, Dec 06, 2025 at 01:18:30PM +0200, Claudiu Beznea wrote:
>>
>>
>> On 11/21/25 15:44, Conor Dooley wrote:
>>> From: Conor Dooley <conor.dooley@microchip.com>
>>>
>>> This driver is used by non-polarfire devices now, and the ARCH_MICROCHIP
>>> symbol has been defined for some time on RISCV so drop it without any
>>> functional change.
>>>
>>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>>> ---
>>>   drivers/clk/microchip/Kconfig | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/clk/microchip/Kconfig b/drivers/clk/microchip/Kconfig
>>> index cab9a909893b..a0ef14310417 100644
>>> --- a/drivers/clk/microchip/Kconfig
>>> +++ b/drivers/clk/microchip/Kconfig
>>> @@ -5,8 +5,8 @@ config COMMON_CLK_PIC32
>>>   
>>>   config MCHP_CLK_MPFS
>>>   	bool "Clk driver for PolarFire SoC"
>>> -	depends on ARCH_MICROCHIP_POLARFIRE || COMPILE_TEST
>>> -	default ARCH_MICROCHIP_POLARFIRE
>>> +	depends on ARCH_MICROCHIP || COMPILE_TEST
>>> +	default y
>>>   	depends on MFD_SYSCON
>>>   	select AUXILIARY_BUS
>>>   	select COMMON_CLK_DIVIDER_REGMAP
>>
>> OK, I found v2 in my inbox. Same symptom here. It doesn't apply on top of
>> the current at91-next either.
> 
> I think this should sort itself out after -rc1, but I'll resend if it
> doesn't.

Still doesn't apply. It conflicts at least with
commit c6f2dddfa7f9 ("clk: microchip: mpfs: use regmap for clocks")

Thank you,
Claudiu

