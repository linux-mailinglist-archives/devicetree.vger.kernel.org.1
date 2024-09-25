Return-Path: <devicetree+bounces-105169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1222D98548B
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 09:50:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C32B01F228E1
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 07:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09183158524;
	Wed, 25 Sep 2024 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="qTaOKFwu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C770B155301
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 07:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727250633; cv=none; b=ZUfH8TCkBjVZpE7bGId1YvSNgsHkVI3BCtu1JS/oZdvnu5XjB2U8BmQdoVyDIvgppRPkH24w1pPMVYWFlVYADdvy8XLDAxNbNZdCJKDzvMRci0LVWHQwgLmjCbkhGCNLBa0+11ITbB5seKFnf4Hn+1rq7gN8ZtsqIZ/GihKmuPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727250633; c=relaxed/simple;
	bh=LQJL9XnZ7aqpWYvsQHqnHYPGaY781b2/pcH4k8tMXf0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S6YkkGDXk4Ijlupf4UL1vZSQWTo3Mn7w+/zBM8ejqDpOCUbXdvwEb+YztvCSjJVezVJ8bWwy4orkE0gAwG3cMAzEduHRfLhyD4AyFuFynuPHvMDB1xAgMx0/A5BTqJysQt0BMMfQYtD7z5jhfSk0jIOFViGZjje4kb+8OJ+G7Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=qTaOKFwu; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42cacabd2e0so55614285e9.3
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 00:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1727250629; x=1727855429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YFiXClqbPRW4CJclRDKGkw40xsL++a9HxAmJhaouAR4=;
        b=qTaOKFwur8NWzwTTOKUrLm2/lHaFRxfR3ELJKonQIhw+faVILbQrhWbbHFlQgiRd+4
         o6pLBn+8gKElH5zchy3DKzfCY7waSwihtH1rOyWFkOv1i7Bl8MqLzaIKwaBHS4Mok+/m
         SBTcQF6DT1edztz9ppNB8L4bTaem7rhnL5ooU6NV/39Oz+21dGxY2om7OhSlqzK+7VHu
         qUBtovz2P508UiV0Odjs+yNPwKRYCWp7oaAXMC+txQ/Jzxvn5aDDC0R4dXetWNV+F+Ns
         OhYMZLEpKunfm6ct24sL3wHb7Ud/u9ql5C98gadYlpIQO95GLGJCkTq99XI1FCm9f+70
         9Adw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727250629; x=1727855429;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YFiXClqbPRW4CJclRDKGkw40xsL++a9HxAmJhaouAR4=;
        b=iy4nvMZ8kLAYuGo2/ZbkFdQvSFttzudOCu1u7JL9PS8qpKA8jnSBmvC2MgHsN1GZQO
         CtgF/Ht7OBcX/InQdWyLm7lMeJZgZ7cH47vlEakiHjDy0uHYKspzwedKz8v060d76NYl
         7KozNjucyaQdLeZI682MNDZXS/bJ3+z+JJhDPcdDqRqYy+9B7f8TIVABZX8exyMHquIo
         jXYNkGsNjS0H2JiImyXfajb0dN4H21yrlYl2KwaZVOXOWrCDdZmzgrUALSzYk1sev+2q
         YjLFCIwyq85OFiyZ6wf9EAVqfHk5C4nKQjRxcoMD89rfExJcVeFTEhkX7l4Avj6eR/QA
         RdJg==
X-Forwarded-Encrypted: i=1; AJvYcCUBaVWRXsSGioIQs17FVsRZWmNUZyWuHinN/Vyqt4AYXoqblNepMzt3bQnvoREa+Kfvo3M4cNOKBq0+@vger.kernel.org
X-Gm-Message-State: AOJu0YyNE7ZfHIFiGK+lX90JHiSs3z3frpkWusIYRtOb/nKFc7neifCZ
	tHEUDyKplgoc2bRFfu11+9BtRJaB/GchB5dVkGQCPh6y8yEIXsZzydUTqvPa0nA=
X-Google-Smtp-Source: AGHT+IFSqrWOgvLYloNvVXm1vEQkjP+JD1QteKQEPhT8fVsIjwexzPr+xFJfYUTXmrkXaAxZ4I2zWw==
X-Received: by 2002:adf:f58e:0:b0:36d:2984:ef6b with SMTP id ffacd0b85a97d-37cc2466ff9mr1203849f8f.11.1727250629008;
        Wed, 25 Sep 2024 00:50:29 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.115])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e969feb45sm10046135e9.20.2024.09.25.00.50.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2024 00:50:27 -0700 (PDT)
Message-ID: <23531a70-cf50-4b32-a9fd-81e6cfcbcf9d@tuxon.dev>
Date: Wed, 25 Sep 2024 10:50:24 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/16] soc: renesas: Add SYSC driver for Renesas RZ/G3S
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com,
 sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-5-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVQsHx0nC3xwQWVRWyWMnbXd1=RokNn8rkJv3bfG_0p-A@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdVQsHx0nC3xwQWVRWyWMnbXd1=RokNn8rkJv3bfG_0p-A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 24.09.2024 14:32, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, Aug 22, 2024 at 5:28 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The RZ/G3S SYS Controller has 2 registers (one for PCIE one for USB) that
>> need to be configured before/after powering off/on the PCI or USB
>> ares. The bits in these registers control signals to PCIE and USB that
>> need to be de-asserted/asserted after/before power on/off event. For this
>> add SYSC controller driver that registers a reset controller driver on
>> auxiliary bus which allows USB, PCIE drivers to control these signals.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- /dev/null
>> +++ b/drivers/reset/reset-rzg3s-sysc.c
>> @@ -0,0 +1,140 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Renesas RZ/G3S SYSC reset driver
>> + *
>> + * Copyright (C) 2024 Renesas Electronics Corp.
>> + */
>> +
>> +#include <linux/auxiliary_bus.h>
> 
> Using the Auxiliary Bus requires selecting AUXILIARY_BUS.

Thank you for pointing it. I'll adjust it in the next version, if it will
be one.


> Elsse you might run into build failures:
> 
> aarch64-linux-gnu-ld: drivers/soc/renesas/rzg3s-sysc.o: in function
> `rzg3s_sysc_probe':
> rzg3s-sysc.c:(.text+0x21c): undefined reference to `auxiliary_device_init'
> aarch64-linux-gnu-ld: rzg3s-sysc.c:(.text+0x264): undefined reference
> to `__auxiliary_device_add'
> aarch64-linux-gnu-ld: drivers/reset/reset-rzg3s-sysc.o: in function
> `rzg3s_sysc_reset_driver_init':
> reset-rzg3s-sysc.c:(.init.text+0x1c): undefined reference to
> `__auxiliary_driver_register'
> aarch64-linux-gnu-ld: drivers/reset/reset-rzg3s-sysc.o: in function
> `rzg3s_sysc_reset_driver_exit':
> reset-rzg3s-sysc.c:(.exit.text+0x10): undefined reference to
> `auxiliary_driver_unregister'
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

