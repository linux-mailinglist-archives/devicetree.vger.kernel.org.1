Return-Path: <devicetree+bounces-11339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C197D5484
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:57:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68AD5280F28
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 14:57:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66EA7262B2;
	Tue, 24 Oct 2023 14:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BVMbDOkK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5F530F80
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:57:04 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AB92CC
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 07:57:02 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4083f613272so39097485e9.1
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 07:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698159421; x=1698764221; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+PoNElajP8sJ7epQkLSnQ3gBazZcGctrrMBsHdY35wo=;
        b=BVMbDOkKxSXJwSDQMMwnOecw3VQaDiz0r1+pxm0gWIDE4wIZWHhbgFn27zm9BUJpmv
         TQVzgh4TLjyHPujXeK/KAgAFyoXSZfNfFAkTiF59PaP33Rm7LKyUQDIJizHV6jY8uVsL
         kfvg233jjMEQFdW5QaJYWk6NmzfkA3qBN8DjQ8JCRhOr5n7MM2aptOfjzhNAKX3N5n27
         V9i1fKnVBZauJ0z2HZKR+rD1nG05pV4gzIGtEdiKqqOT7iNd+BOBKaeAq6tqTnhvSBo2
         D/HLzzL0oT6BHqwTeLspuXfMYncOi5dgp6K3a4W7OqQRoZqbwPd5J9OCaySscq7zmPTA
         wZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698159421; x=1698764221;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+PoNElajP8sJ7epQkLSnQ3gBazZcGctrrMBsHdY35wo=;
        b=uc0bvyFei7czRESb9Eb/PPa6w+/F6OWyIdg32xDQutH31qjDU3++Nk6D5+cEMt9l5Q
         AePQ4ZRQ73weQ33eKwvtM3RgavvdL+r1PnJiximJxhv4KllK+3Eunbyozwy4nFDmTxcq
         08Cd99d462TIFh4/g8efTJQUmhfDk3KB2Xj23wrF5qfi0o5/5x+gLD402HkB1LL+zf6M
         +5I47kO/IoTUk74wC3Qka2tcp+TGPBFQ/sMel9Cgo87jDzIZmrgRcnl8pCM4W6N2x7qb
         JO5wxcJg+2zWVfJkmeRHDmOGHiQHddoxSTA7JfIFoYP8R3+HzQBWvDSkpja7vrOMJ1d8
         GHRA==
X-Gm-Message-State: AOJu0YwL/GhrqHbmXhq+Ia9vfIe9oR9Bc6Ly2l3wkCUZFrxWlgbsnpwa
	BacT/Vtuio4LiaJ2A/xa5Ph6mg==
X-Google-Smtp-Source: AGHT+IFdw010oLNVepkIReEFPUIX06g7zCHhwwihKO4C480GsZZ9JoH1qy3uCS4da8zpBdBpPsrJkg==
X-Received: by 2002:a05:600c:46c8:b0:409:295:9c44 with SMTP id q8-20020a05600c46c800b0040902959c44mr4489796wmo.14.1698159420856;
        Tue, 24 Oct 2023 07:57:00 -0700 (PDT)
Received: from [192.168.2.1] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id p5-20020a05600c358500b004053a6b8c41sm12225994wmq.12.2023.10.24.07.56.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 07:57:00 -0700 (PDT)
Message-ID: <3f76f965-7c7b-109e-2ee0-3033e332e84b@linaro.org>
Date: Tue, 24 Oct 2023 16:56:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 2/3] clocksource: Add JH7110 timer driver
Content-Language: en-US
To: Xingyu Wu <xingyu.wu@starfivetech.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Walker Chen <walker.chen@starfivetech.com>,
 Samin Guo <samin.guo@starfivetech.com>, linux-kernel@vger.kernel.org,
 Conor Dooley <conor@kernel.org>
References: <20231019053501.46899-1-xingyu.wu@starfivetech.com>
 <20231019053501.46899-3-xingyu.wu@starfivetech.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20231019053501.46899-3-xingyu.wu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Xingyu,


On 19/10/2023 07:35, Xingyu Wu wrote:
> Add timer driver for the StarFive JH7110 SoC.

As it is a new timer, please add a proper nice description explaining 
the timer hardware, thanks.

> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> ---
>   MAINTAINERS                        |   7 +
>   drivers/clocksource/Kconfig        |  11 +
>   drivers/clocksource/Makefile       |   1 +
>   drivers/clocksource/timer-jh7110.c | 380 +++++++++++++++++++++++++++++
>   4 files changed, 399 insertions(+)
>   create mode 100644 drivers/clocksource/timer-jh7110.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 7a7bd8bd80e9..91c09b399131 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20473,6 +20473,13 @@ S:	Maintained
>   F:	Documentation/devicetree/bindings/sound/starfive,jh7110-tdm.yaml
>   F:	sound/soc/starfive/jh7110_tdm.c
>   
> +STARFIVE JH7110 TIMER DRIVER
> +M:	Samin Guo <samin.guo@starfivetech.com>
> +M:	Xingyu Wu <xingyu.wu@starfivetech.com>
> +S:	Supported
> +F:	Documentation/devicetree/bindings/timer/starfive,jh7110-timer.yaml
> +F:	drivers/clocksource/timer-jh7110.c
> +
>   STARFIVE JH71X0 CLOCK DRIVERS
>   M:	Emil Renner Berthing <kernel@esmil.dk>
>   M:	Hal Feng <hal.feng@starfivetech.com>
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 0ba0dc4ecf06..821abcc1e517 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -641,6 +641,17 @@ config RISCV_TIMER
>   	  is accessed via both the SBI and the rdcycle instruction.  This is
>   	  required for all RISC-V systems.
>   
> +config STARFIVE_JH7110_TIMER
> +	bool "Timer for the STARFIVE JH7110 SoC"
> +	depends on ARCH_STARFIVE || COMPILE_TEST

You may want to use ARCH_STARFIVE only if the platform can make this 
timer optional. Otherwise, set the option from the platform Kconfig and 
put the bool "bla bla" if COMPILE_TEST

> +	select TIMER_OF
> +	select CLKSRC_MMIO
> +	default ARCH_STARFIVE

no "default"

> +	help
> +	  This enables the timer for StarFive JH7110 SoC. On RISC-V platform,
> +	  the system has started RISCV_TIMER, but you can also use this timer
> +	  which can provide four channels to do a lot more things on JH7110 SoC.
> +
>   config CLINT_TIMER
>   	bool "CLINT Timer for the RISC-V platform" if COMPILE_TEST
>   	depends on GENERIC_SCHED_CLOCK && RISCV
> diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
> index 368c3461dab8..b66ac05ec086 100644
> --- a/drivers/clocksource/Makefile
> +++ b/drivers/clocksource/Makefile
> @@ -80,6 +80,7 @@ obj-$(CONFIG_INGENIC_TIMER)		+= ingenic-timer.o
>   obj-$(CONFIG_CLKSRC_ST_LPC)		+= clksrc_st_lpc.o
>   obj-$(CONFIG_X86_NUMACHIP)		+= numachip.o
>   obj-$(CONFIG_RISCV_TIMER)		+= timer-riscv.o
> +obj-$(CONFIG_STARFIVE_JH7110_TIMER)	+= timer-jh7110.o
>   obj-$(CONFIG_CLINT_TIMER)		+= timer-clint.o
>   obj-$(CONFIG_CSKY_MP_TIMER)		+= timer-mp-csky.o
>   obj-$(CONFIG_GX6605S_TIMER)		+= timer-gx6605s.o
> diff --git a/drivers/clocksource/timer-jh7110.c b/drivers/clocksource/timer-jh7110.c
> new file mode 100644
> index 000000000000..71de29a3ec91
> --- /dev/null
> +++ b/drivers/clocksource/timer-jh7110.c
> @@ -0,0 +1,380 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Starfive JH7110 Timer driver
> + *
> + * Copyright (C) 2022-2023 StarFive Technology Co., Ltd.
> + *
> + * Author:
> + * Xingyu Wu <xingyu.wu@starfivetech.com>
> + * Samin Guo <samin.guo@starfivetech.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/clockchips.h>
> +#include <linux/clocksource.h>
> +#include <linux/err.h>
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/irq.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset.h>
> +#include <linux/sched_clock.h>

Please double check the headers and remove the pointless ones.


> +/* Bias: Ch0-0x0, Ch1-0x40, Ch2-0x80, and so on. */
> +#define JH7110_TIMER_CH_LEN		0x40
> +#define JH7110_TIMER_CH_BASE(x)		((x) * JH7110_TIMER_CH_LEN)
> +#define JH7110_TIMER_CH_MAX		4
> +
> +#define JH7110_CLOCK_SOURCE_RATING	200
> +#define JH7110_VALID_BITS		32
> +#define JH7110_DELAY_US			0
> +#define JH7110_TIMEOUT_US		10000
> +#define JH7110_CLOCKEVENT_RATING	300
> +#define JH7110_TIMER_MAX_TICKS		0xffffffff
> +#define JH7110_TIMER_MIN_TICKS		0xf
> +#define JH7110_TIMER_RELOAD_VALUE	0
> +
> +#define JH7110_TIMER_INT_STATUS		0x00 /* RO[0:4]: Interrupt Status for channel0~4 */
> +#define JH7110_TIMER_CTL		0x04 /* RW[0]: 0-continuous run, 1-single run */
> +#define JH7110_TIMER_LOAD		0x08 /* RW: load value to counter */
> +#define JH7110_TIMER_ENABLE		0x10 /* RW[0]: timer enable register */
> +#define JH7110_TIMER_RELOAD		0x14 /* RW: write 1 or 0 both reload counter */
> +#define JH7110_TIMER_VALUE		0x18 /* RO: timer value register */
> +#define JH7110_TIMER_INT_CLR		0x20 /* RW: timer interrupt clear register */
> +#define JH7110_TIMER_INT_MASK		0x24 /* RW[0]: timer interrupt mask register */
> +
> +#define JH7110_TIMER_INT_CLR_ENA	BIT(0)
> +#define JH7110_TIMER_INT_CLR_AVA_MASK	BIT(1)
> +
> +struct jh7110_clkevt {
> +	struct clock_event_device evt;
> +	struct clocksource cs;
> +	bool cs_is_valid;
> +	struct clk *clk;
> +	struct reset_control *rst;
> +	u32 rate;
> +	u32 reload_val;
> +	void __iomem *base;
> +	char name[sizeof("jh7110-timer.chX")];
> +};
> +
> +struct jh7110_timer_priv {
> +	struct clk *pclk;
> +	struct reset_control *prst;
> +	struct jh7110_clkevt clkevt[JH7110_TIMER_CH_MAX];

Why do you need several clock events and clock sources ?

[ ... ]


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


