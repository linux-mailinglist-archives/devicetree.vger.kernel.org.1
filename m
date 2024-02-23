Return-Path: <devicetree+bounces-45343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F38B986189F
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 18:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C399B24293
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 17:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84A4D12AAD7;
	Fri, 23 Feb 2024 17:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dBe5dN4X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DAC3129A8E
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 17:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708707656; cv=none; b=jB495a4PvSTmhonwzC8rMdVpQBRQCJuh57sDhFw9nxMUGK5EAQSwniy4T3V4oyKxd6D/AXcpdLxeeQmxl8qhCXifISOGQ0Xa8y2kbxyianJYtFai2BH5XBF4jX2Vb1KSa1QvgwXzKTK2SRNYAFgf+nr8Kbo+k4oyoQ2bbb9ZeSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708707656; c=relaxed/simple;
	bh=WN2bG3nCVqeM1eDrPKPQX194fXUESkJ6B0Mpu+5XvvY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rvww3407hDikizvYw9b4YXLZkfbYdIGhzfknlL0GrEpcNtMMz4+fuug0KKM2dSFI1fayqNKj03kn48UQdwU24AYudmmjWejXDJu2xrIGmgTuBG490vHFFg4P0gGmFItJCTNN2+DCd03tVRaPkAwYvt04t8HbfyvmxGwT0nbuCjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dBe5dN4X; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2d0a4e1789cso13483641fa.3
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 09:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708707653; x=1709312453; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DY7UmmEc7sXW1EbKMuMMWf03j2XNSqh0LujDND7ixMg=;
        b=dBe5dN4XhcW2hXNbAAYGA14KEf2V+LZuBf3CrEA6mU9AVyohv9c6ZnDQWJCWaizv6Z
         hIj9oBwg3EQZ1vFOEqiAkb/7yuanaCMlIouhPrH9qF5/i37mAuEXNgrRdtofjS8bKkRH
         CV6I/QE6FfVjK+F71ujhfzJrPwh6ItRBK4CqJX5jWUCzmUoKACNjfA6bkjawd9YAI1h8
         kJpHPFlxrPChGl+/5HopemPY9sv/SyeEJAJjXuoUt1kOu5v7PqdUqbGAmiM9iy8oPBQD
         Trrv8rf302owH9EqmgS6dY9/G/Bn27J264iZoqfqYyD4o2MY5CE44+bOEby1BFoAA7Mm
         G07Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708707653; x=1709312453;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DY7UmmEc7sXW1EbKMuMMWf03j2XNSqh0LujDND7ixMg=;
        b=cyWacs1xYFzBduisxOMZPZv1NKGyRw7GUQwUyWtkgAoqRA5yXFWSNgPRe4doXlQ5aq
         5FolemD00sZGN0Hbrn6TSM3ShySBxKN+nhpbeq66XtyJV455Pim9mNxx8XsLBihNwb0U
         yeF7YzEFuyEw95hTqhbRQoDi0vFp3TMFgkh1+0Vsh5W3mtekLFa+/OKs1R4lV+a4P1eO
         uyrwnvmuKQAKIB6E/D46X8mPCJ+mD2GSx4SH8jYXweviXM9tNAbmR5+gpLF/avU1yvZd
         1D/AJAQ3mr5vOlm6nMQsVGeq4a4OYMBCl7t+3SfjhZWD/6rxkEMN6Ay2XXlja3HcbhRY
         JYPw==
X-Forwarded-Encrypted: i=1; AJvYcCWXUqEL/878Gw7NcO9nyaLyoNnhbHlErXmO6RhuOtXEpBdahU0w/vf5xCeDUCfpmLEMPxS6xuAY1dzVKBdfqcI3Ey5CZJXGwHekBw==
X-Gm-Message-State: AOJu0YykdrVMeCaqSBoD6Z88kWwGPVA9vjTse4HCsAx5ew7LY2fG7Xb4
	dlp0xX2errsR3MSYC9hznpYpvDPxSPlQa+7QTY3P/C4CQZrp48Cp/Pus1dhqyys=
X-Google-Smtp-Source: AGHT+IG98CKY2od5QUSFteoFRsrEzwNRuiDKKRZ2JlQaoFHA61/03NUiaEBVjfZ0IGkZ8M2ZJlMkRQ==
X-Received: by 2002:a2e:9e05:0:b0:2d2:3a89:b97b with SMTP id e5-20020a2e9e05000000b002d23a89b97bmr254947ljk.24.1708707652635;
        Fri, 23 Feb 2024 09:00:52 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id bp4-20020a5d5a84000000b0033d47c6073esm4002922wrb.12.2024.02.23.09.00.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Feb 2024 09:00:51 -0800 (PST)
Message-ID: <469e83f3-57ef-492b-8f27-5a052b064106@linaro.org>
Date: Fri, 23 Feb 2024 18:00:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/7] soc: sunxi: sram: export register 0 for THS on
 H616
Content-Language: en-US
To: Andre Przywara <andre.przywara@arm.com>
Cc: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Yangtao Li <tiny.windzz@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Martin Botka <martin.botka@somainline.org>,
 Maksim Kiselev <bigunclemax@gmail.com>, Bob McChesney
 <bob@electricworry.net>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20240219153639.179814-1-andre.przywara@arm.com>
 <20240219153639.179814-2-andre.przywara@arm.com>
 <2717467.mvXUDI8C0e@jernej-laptop>
 <dcd115fd-dc38-4f48-8485-9e4d64f53b4a@linaro.org>
 <20240223160258.504a1577@donnerap.manchester.arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240223160258.504a1577@donnerap.manchester.arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 23/02/2024 17:02, Andre Przywara wrote:
> On Thu, 22 Feb 2024 19:44:12 +0100
> Daniel Lezcano <daniel.lezcano@linaro.org> wrote:
> 
> Hi Daniel,
> 
>> On 22/02/2024 19:26, Jernej Škrabec wrote:
>>> Dne ponedeljek, 19. februar 2024 ob 16:36:33 CET je Andre Przywara napisal(a):
>>>> The Allwinner H616 SoC contains a mysterious bit at register offset 0x0
>>>> in the SRAM control block. If bit 16 is set (the reset value), the
>>>> temperature readings of the THS are way off, leading to reports about
>>>> 200C, at normal ambient temperatures. Clearing this bits brings the
>>>> reported values down to the expected values.
>>>> The BSP code clears this bit in firmware (U-Boot), and has an explicit
>>>> comment about this, but offers no real explanation.
>>>>
>>>> Experiments in U-Boot show that register 0x0 has no effect on the SRAM C
>>>> visibility: all tested bit settings still allow full read and write
>>>> access by the CPU to the whole of SRAM C. Only bit 24 of the register at
>>>> offset 0x4 makes all of SRAM C inaccessible by the CPU. So modelling
>>>> the THS switch functionality as an SRAM region would not reflect reality.
>>>>
>>>> Since we should not rely on firmware settings, allow other code (the THS
>>>> driver) to access this register, by exporting it through the already
>>>> existing regmap. This mimics what we already do for the LDO control and
>>>> the EMAC register.
>>>>
>>>> To avoid concurrent accesses to the same register at the same time, by
>>>> the SRAM switch code and the regmap code, use the same lock to protect
>>>> the access. The regmap subsystem allows to use an existing lock, so we
>>>> just need to hook in there.
>>>>
>>>> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>>>
>>> Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>
>>>
>>> I guess this one goes through sunxi tree, right?
>>
>> I'll pick this patch along with the patch 2-6, so through the thermal
>> tree. The patch 7/7 will go indeed via the sunxi tree
> 
> many thanks for picking those up! I see them in your bleeding-edge branch,
> but are they on route for 6.9, so will you put them in -next soon? Or are
> you waiting for more ACKs?

I've enough ack. The bleeding-edge is merged with the linux-pm tree. If 
everything is going well, I will move it to the linux-next branch 
probably today or Monday



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


