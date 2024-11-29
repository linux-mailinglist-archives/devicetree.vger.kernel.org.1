Return-Path: <devicetree+bounces-125480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B203E9DC138
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 10:13:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 737C52812ED
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 09:13:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46A4417E46E;
	Fri, 29 Nov 2024 09:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fFkN5daD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71BC17836B
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 09:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732871576; cv=none; b=iluZowvCEITH6n0wsMb0LzhgvlMzsW8/eRBTO2mlJnBnKg2q7F7h81Ca/IYwB4S1Gr3qXUflJHMdeYNNiQExzgQaDP4/dbD8LZu6qG/YVRw8AKiA+KhDPBhVN5uZmxlw8McbVS/UmOQeOzNnAQeN5MONDYRcGWMJgsh39Hjhiwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732871576; c=relaxed/simple;
	bh=1bnVnZ6g/RMKpFN6pROmGByLVFcvNA8/ZgUKEpHMa2Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PpUwQ0e7zp27vgLXJyziW2J1SXtR/J6q7KrLUQ6A+/Uonb+HHFTjmsU8/FPekFecNFWomWf4nzvYhAI41toDpPZB992Il/B03OEd25CDITCUdyhfme/NT4s3EWSs04oyGbNcthWyQP0gCx+Kqcv39FMxXRl6GdV0dw8yalYMxNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fFkN5daD; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-434ab938e37so10068905e9.0
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 01:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732871571; x=1733476371; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sb8gO4uA+vo8kcJyPPhqX5i7haSv+q2JYHt3gAOv4Y0=;
        b=fFkN5daDx5C4IP+M2K9BheZExYOitRDImSD4IClty7KWVw6kGsNlBLBHmbFgRxZiuq
         lweIquyLSvl5YEt0Yn6J3MzsPMlYzothNseGTvwsxjS047fQ509z2gjZt71+/KA+c0hq
         UWkI5C98RxUSzkZTTEkLft223TIdESlYec/5KumR+fEKSo5zSnMsdpCvHihgmzLh+Eds
         em1M+nHzBCS1fWst4ueC7R4gX/BdxlWRHANeGgBKUj3HAxc6XdhiFi2BqxtRcOTbrQXv
         MgSjx3zFg1W5Hpby6+XL0KpqtZt7LMG+9djo6OukFi3NqaXL5hgcgD9ktYQQSQDKhVaD
         b0ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732871571; x=1733476371;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sb8gO4uA+vo8kcJyPPhqX5i7haSv+q2JYHt3gAOv4Y0=;
        b=XBCyjJIo3ywlNETIhluVm3ivnPdRfTKZr2qwV2SOiD8JY8YGQF6Nm507HobdTBE4j8
         Da1E6jyf88ytZiLcY7771N2TXVY2gMN9pRdnm84CWjhzbMT//gg2xFw6lf1CSrYkV84F
         IhTbhsaVQWjsTIOB8i0JU1UMeyHDCx2sqKZo4wvxkY6yB2HYYxMVkgqCSmpKaG33sbx4
         krk3sfCBFB6INg6fZkDxqDZWYi5tTArrboPAqpfdY874LpGHcu3h9QmXLkFZsRiCT0MV
         R4iHMj9Dl8zCOkic/kVfLWdCLpCm38cUZ99BeOmlZdhFAySmif2hEu/s0HctkKhOnG1u
         I6KQ==
X-Forwarded-Encrypted: i=1; AJvYcCUiiR/lvsv6qN045YhUhBUD/iMn+7zfLQPXnQENwad2v76/BD9GS3/eS0xj2MctOTz1FcWlUm8XFb2F@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq8CB7HsjBEq6YcG/MCmHlIe0j1PN1XLf9l5gtzv1curp3bqhx
	6Jntfe2JH/kjLpEiS1MGXaIvHfW/ks1wRfG31RpdxWn1tAozTHDAMwVobtof4q8=
X-Gm-Gg: ASbGncvSLKvBDpOn5Ak4+0an/n+jstoBUXjXAkoW25vVU43datLU3XYjClabynmxOYm
	xBoJjTpBNA9aObLKHiXZED/ZhlOA+osriWBbBr20CtUQjsMy6I3ICGjwrvrBSMa1d7QqWbTKEth
	sBOM3nE3VX9PzTSNDl4bQjcE5td2lRh+gskGDZUq4jbSj+RhUQ3BNu0oCUko5uR5NV6Xxx2kgUK
	LyWxapby1r9nWCsjQZqFqCNFiYef1f1H73F2nYz6a73wFXCFlz/VUMqiQ==
X-Google-Smtp-Source: AGHT+IHmwDZAWFKDepsiDLw8yd17aIS/lp5WnEmXUs3bmN9CBmiHsuGbPOMSIZoIaRXxGX02f7LuEg==
X-Received: by 2002:a05:600c:3b1a:b0:434:a968:89b5 with SMTP id 5b1f17b1804b1-434a9dc35f7mr102361905e9.9.1732871571093;
        Fri, 29 Nov 2024 01:12:51 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ccd36a02sm3890362f8f.37.2024.11.29.01.12.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 01:12:50 -0800 (PST)
Message-ID: <4d2a4d8b-9951-4454-b662-0a14d73e61a0@tuxon.dev>
Date: Fri, 29 Nov 2024 11:12:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/15] soc: renesas: Add SYSC driver for Renesas RZ
 family
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com,
 christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-3-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdUvmTQeQXxhsXtj23-OS=aL3UgsyOtnawdmnusrEJ2JQw@mail.gmail.com>
 <32fa7eb8-2139-454c-8866-cb264d060616@tuxon.dev>
 <CAMuHMdXPQnCPjKRxoSceYabWPHF9Z_A7qVN85yaUZjPG7-o7tg@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdXPQnCPjKRxoSceYabWPHF9Z_A7qVN85yaUZjPG7-o7tg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 29.11.2024 10:54, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Fri, Nov 29, 2024 at 9:48 AM Claudiu Beznea <claudiu.beznea@tuxon.dev> wrote:
>> On 28.11.2024 17:24, Geert Uytterhoeven wrote:
>>> On Tue, Nov 26, 2024 at 10:21 AM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> The RZ/G3S system controller (SYSC) has various registers that control
>>>> signals specific to individual IPs. IP drivers must control these signals
>>>> at different configuration phases.
>>>>
>>>> Add SYSC driver that allows individual SYSC consumers to control these
>>>> signals. The SYSC driver exports a syscon regmap enabling IP drivers to
>>>> use a specific SYSC offset and mask from the device tree, which can then be
>>>> accessed through regmap_update_bits().
>>>>
>>>> Currently, the SYSC driver provides control to the USB PWRRDY signal, which
>>>> is routed to the USB PHY. This signal needs to be managed before or after
>>>> powering the USB PHY off or on.
>>>>
>>>> Other SYSC signals candidates (as exposed in the the hardware manual of the
>>>>
>>>> * PCIe:
>>>> - ALLOW_ENTER_L1 signal controlled through the SYS_PCIE_CFG register
>>>> - PCIE_RST_RSM_B signal controlled through the SYS_PCIE_RST_RSM_B
>>>>   register
>>>> - MODE_RXTERMINATION signal controlled through SYS_PCIE_PHY register
>>>>
>>>> * SPI:
>>>> - SEL_SPI_OCTA signal controlled through SYS_IPCONT_SEL_SPI_OCTA
>>>>   register
>>>>
>>>> * I2C/I3C:
>>>> - af_bypass I2C signals controlled through SYS_I2Cx_CFG registers
>>>>   (x=0..3)
>>>> - af_bypass I3C signal controlled through SYS_I3C_CFG register
>>>>
>>>> * Ethernet:
>>>> - FEC_GIGA_ENABLE Ethernet signals controlled through SYS_GETHx_CFG
>>>>   registers (x=0..1)
>>>>
>>>> As different Renesas RZ SoC shares most of the SYSC functionalities
>>>> available on the RZ/G3S SoC, the driver if formed of a SYSC core
>>>> part and a SoC specific part allowing individual SYSC SoC to provide
>>>> functionalities to the SYSC core.
>>>>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>
>>>> --- /dev/null
>>>> +++ b/drivers/soc/renesas/r9a08g045-sysc.c
>>>> @@ -0,0 +1,31 @@
>>>> +// SPDX-License-Identifier: GPL-2.0
>>>> +/*
>>>> + * RZ/G3S System controller driver
>>>> + *
>>>> + * Copyright (C) 2024 Renesas Electronics Corp.
>>>> + */
>>>> +
>>>> +#include <linux/array_size.h>
>>>> +#include <linux/bits.h>
>>>> +#include <linux/init.h>
>>>> +
>>>> +#include "rz-sysc.h"
>>>> +
>>>> +#define SYS_USB_PWRRDY         0xd70
>>>> +#define SYS_USB_PWRRDY_PWRRDY_N        BIT(0)
>>>> +#define SYS_MAX_REG            0xe20
>>>> +
>>>> +static const struct rz_sysc_signal_init_data rzg3s_sysc_signals_init_data[] __initconst = {
>>>
>>> This is marked __initconst...
>>>
>>>> +       {
>>>> +               .name = "usb-pwrrdy",
>>>> +               .offset = SYS_USB_PWRRDY,
>>>> +               .mask = SYS_USB_PWRRDY_PWRRDY_N,
>>>> +               .refcnt_incr_val = 0
>>>> +       }
>>>> +};
>>>> +
>>>> +const struct rz_sysc_init_data rzg3s_sysc_init_data = {
>>>
>>> ... but this is not __init, causing a section mismatch.
>>
>> Do you know if there is a way to detect this?
> 
> The kernel should tell you during the build...

I'll look carefully, I haven't noticed it. Thank you!

> 
>>
>>>
>>>> +       .signals_init_data = rzg3s_sysc_signals_init_data,
>>>> +       .num_signals = ARRAY_SIZE(rzg3s_sysc_signals_init_data),
>>>> +       .max_register_offset = SYS_MAX_REG,
>>>> +};
>>>
>>>> --- /dev/null
>>>> +++ b/drivers/soc/renesas/rz-sysc.c
>>>
>>>> +/**
>>>> + * struct rz_sysc - RZ SYSC private data structure
>>>> + * @base: SYSC base address
>>>> + * @dev: SYSC device pointer
>>>> + * @signals: SYSC signals
>>>> + * @num_signals: number of SYSC signals
>>>> + */
>>>> +struct rz_sysc {
>>>> +       void __iomem *base;
>>>> +       struct device *dev;
>>>> +       struct rz_sysc_signal *signals;
>>>> +       u8 num_signals;
>>>
>>> You could change signals to a flexible array at the end, tag it with
>>> __counted_by(num_signals), and allocate space for both struct rz_sysc
>>> and the signals array using struct_size(), reducing the number of
>>> allocations.
>>
>> I'll look into this.
> 
>>>> --- /dev/null
>>>> +++ b/drivers/soc/renesas/rz-sysc.h
>>>> @@ -0,0 +1,52 @@
>>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>>> +/*
>>>> + * Renesas RZ System Controller
>>>> + *
>>>> + * Copyright (C) 2024 Renesas Electronics Corp.
>>>> + */
>>>> +
>>>> +#ifndef __SOC_RENESAS_RZ_SYSC_H__
>>>> +#define __SOC_RENESAS_RZ_SYSC_H__
>>>> +
>>>> +#include <linux/refcount.h>
>>>> +#include <linux/types.h>
>>>> +
>>>> +/**
>>>> + * struct rz_sysc_signal_init_data - RZ SYSC signals init data
>>>> + * @name: signal name
>>>> + * @offset: register offset controling this signal
>>>> + * @mask: bitmask in register specific to this signal
>>>> + * @refcnt_incr_val: increment refcnt when setting this value
>>>> + */
>>>> +struct rz_sysc_signal_init_data {
>>>> +       const char *name;
>>>> +       u32 offset;
>>>> +       u32 mask;
>>>> +       u32 refcnt_incr_val;
>>>> +};
>>>> +
>>>> +/**
>>>> + * struct rz_sysc_signal - RZ SYSC signals
>>>> + * @init_data: signals initialization data
>>>> + * @refcnt: reference counter
>>>> + */
>>>> +struct rz_sysc_signal {
>>>> +       const struct rz_sysc_signal_init_data *init_data;
>>>
>>> Can't you just embed struct rz_sysc_signal_init_data?
>>
>> Meaning to have directly the members of struct rz_sysc_signal_init_data
>> here or to drop the const qualifier along with __initconst on
>> rzg3s_sysc_signals_init_data[]  and re-use the platfom data w/o allocate
>> new memory?
> 
> I mean
> 
>     struct rz_sysc_signal {
>           struct rz_sysc_signal_init_data init_data;
>           ...
>     };
> 
> Currently you allocate rz_sysc_signal_init_data separately.
> When embedded, it will be part of rz_sysc, cfr. above.

Ah, your right. I initially had this as a pointer and re-used the init data
(rzg3s_sysc_signals_init_data[], w/o having __initconst qualifier for it).
I dropped that approach but missed to drop the pointer here.

Thank you,
Claudiu

> 
>>> That way you could allocate the rz_sysc_signal and
>>> rz_sysc_signal_init_data structures in a single allocation.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

