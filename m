Return-Path: <devicetree+bounces-8466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ED57C8472
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:34:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 19CC31C20ABF
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16B5913ADC;
	Fri, 13 Oct 2023 11:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="SIzdZrIA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5494C13AD6
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:34:23 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A247B7
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 04:34:20 -0700 (PDT)
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A47E53FA58
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1697196857;
	bh=SF26bU06z58RNVvBz3oe2tJg0/WJgk5E8Toie3X5OJI=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=SIzdZrIAFnq/2eG8TETkKHBP6Q4bVYgaGJAEX2aweIVhw3YKjjPlBKroFKBj2w7qV
	 WeQ5jrP0DFfvA1Ug01NIzssUTp8wZkWZSrCGcUOXezE+3WLPvBvqOUriAW9a6KZeT2
	 DC5IiItRSDliwRHlQfQbUDks0B9xjGAAdYUlqv7TgqMsU8y+lCVqIOxOdQeGt3dOiu
	 i979mjgs2UY3v3V3Uw2sGzK7LXjCCq18q20IW+0tUJB45co5hXHLAtl+r5vqDY2tFR
	 2zmgHENdVoreCtE5pEiW8fwrXDFd53EveFu1l1pHhSSanZQNJhXO5CdxL4J+34vDYl
	 dAJTuiIjYb5Jg==
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-49db653f59cso660915e0c.1
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 04:34:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697196853; x=1697801653;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SF26bU06z58RNVvBz3oe2tJg0/WJgk5E8Toie3X5OJI=;
        b=qB4/jHjrjO8hgNIcdEUNllWrewjRa7wpFLy+pfau5P+Wk3BdIXp1fb4+SnhZkx8MPi
         GjjAinZx/wQiqluyjFJTkYCzuG/f2Y7WLFU9DVHg7Vg+I/Ct17aIeo7FNsaNpBEFX+PQ
         Mzrwq+Invtf0OmelrP4Nr+Z/Q8Z6EQXgG5AQer1yv9d5uTXnvxZYJpNS5TQJIjtbb2dA
         dWU+slM5sEs2aRtkOPoi/sDgBelEuh42OIs7iW0cTpLJh3NiUtUQq1G/U0gG65FcELX2
         kRxJAy8mPjx8DULlOcIVIVwul3C8FFWwpOy8bx6WHIu6JZVjfs/02h1xxPL0gPxEPU+K
         yvwg==
X-Gm-Message-State: AOJu0YzZ1tYW5pCfmyhqGy0WPEWXur/JNpBrhtXkuqCb04+B/8fd81gn
	u1nUS28PGGae+jTv/u14E870f4d0Qmjr+39+R1kY31QZZoqiuaNaIcWr/+Bo+/2vemj0LkHOnQ3
	ITu8c9cpDT47hCQX4rXLxWhKiNaIBc9WlBApttAS0L0H45uDijtMjLwsHSKqsWx4=
X-Received: by 2002:a1f:ec43:0:b0:49a:b9ed:8c1f with SMTP id k64-20020a1fec43000000b0049ab9ed8c1fmr20028535vkh.0.1697196853512;
        Fri, 13 Oct 2023 04:34:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrnPfi9N/gc4lcSwQGWqrxSIyWoQFVs/hNL5GgO5NV4mLQKpWb3O9HsumZU81OlD5I3XS5koXeV52omxaguzQ=
X-Received: by 2002:a1f:ec43:0:b0:49a:b9ed:8c1f with SMTP id
 k64-20020a1fec43000000b0049ab9ed8c1fmr20028502vkh.0.1697196853092; Fri, 13
 Oct 2023 04:34:13 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 13 Oct 2023 04:34:12 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231012081015.33121-3-xingyu.wu@starfivetech.com>
References: <20231012081015.33121-1-xingyu.wu@starfivetech.com> <20231012081015.33121-3-xingyu.wu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 13 Oct 2023 04:34:12 -0700
Message-ID: <CAJM55Z8_AwYdgBLcAs=C9W2UtZ0CVecGMS_D198A8j4DYFFxBw@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] clocksource: Add JH7110 timer driver
To: Xingyu Wu <xingyu.wu@starfivetech.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Walker Chen <walker.chen@starfivetech.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Samin Guo <samin.guo@starfivetech.com>, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Xingyu Wu wrote:
> Add timer driver for the StarFive JH7110 SoC.
>
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> ---
>  MAINTAINERS                        |   7 +
>  drivers/clocksource/Kconfig        |  11 +
>  drivers/clocksource/Makefile       |   1 +
>  drivers/clocksource/timer-jh7110.c | 387 +++++++++++++++++++++++++++++
>  4 files changed, 406 insertions(+)
>  create mode 100644 drivers/clocksource/timer-jh7110.c
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 6c4cce45a09d..1525f031d4a2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20472,6 +20472,13 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/sound/starfive,jh7110-tdm.yaml
>  F:	sound/soc/starfive/jh7110_tdm.c
>
> +STARFIVE JH7110 TIMER DRIVER
> +M:	Samin Guo <samin.guo@starfivetech.com>
> +M:	Xingyu Wu <xingyu.wu@starfivetech.com>
> +S:	Supported
> +F:	Documentation/devicetree/bindings/timer/starfive,jh7110-timer.yaml
> +F:	drivers/clocksource/timer-jh7110.c
> +
>  STARFIVE JH71X0 CLOCK DRIVERS
>  M:	Emil Renner Berthing <kernel@esmil.dk>
>  M:	Hal Feng <hal.feng@starfivetech.com>
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 0ba0dc4ecf06..821abcc1e517 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -641,6 +641,17 @@ config RISCV_TIMER
>  	  is accessed via both the SBI and the rdcycle instruction.  This is
>  	  required for all RISC-V systems.
>
> +config STARFIVE_JH7110_TIMER
> +	bool "Timer for the STARFIVE JH7110 SoC"
> +	depends on ARCH_STARFIVE || COMPILE_TEST
> +	select TIMER_OF
> +	select CLKSRC_MMIO
> +	default ARCH_STARFIVE
> +	help
> +	  This enables the timer for StarFive JH7110 SoC. On RISC-V platform,
> +	  the system has started RISCV_TIMER, but you can also use this timer
> +	  which can provide four channels to do a lot more things on JH7110 SoC.
> +
>  config CLINT_TIMER
>  	bool "CLINT Timer for the RISC-V platform" if COMPILE_TEST
>  	depends on GENERIC_SCHED_CLOCK && RISCV
> diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
> index 368c3461dab8..b66ac05ec086 100644
> --- a/drivers/clocksource/Makefile
> +++ b/drivers/clocksource/Makefile
> @@ -80,6 +80,7 @@ obj-$(CONFIG_INGENIC_TIMER)		+= ingenic-timer.o
>  obj-$(CONFIG_CLKSRC_ST_LPC)		+= clksrc_st_lpc.o
>  obj-$(CONFIG_X86_NUMACHIP)		+= numachip.o
>  obj-$(CONFIG_RISCV_TIMER)		+= timer-riscv.o
> +obj-$(CONFIG_STARFIVE_JH7110_TIMER)	+= timer-jh7110.o
>  obj-$(CONFIG_CLINT_TIMER)		+= timer-clint.o
>  obj-$(CONFIG_CSKY_MP_TIMER)		+= timer-mp-csky.o
>  obj-$(CONFIG_GX6605S_TIMER)		+= timer-gx6605s.o
> diff --git a/drivers/clocksource/timer-jh7110.c b/drivers/clocksource/timer-jh7110.c
> new file mode 100644
> index 000000000000..914424368290
> --- /dev/null
> +++ b/drivers/clocksource/timer-jh7110.c
> @@ -0,0 +1,387 @@
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
> +
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
> +#define JH7110_TIMER_NAME_NUM		19
> +
> +#define JH7110_TIMER_INT_STATUS		0x00 /* RO[0:4]: Interrupt Status for channel0~4 */
> +#define JH7110_TIMER_CTL		0x04 /* RW[0]: 0-continuous run, 1-single run */
> +#define JH7110_TIMER_LOAD		0x08 /* RW: load value to counter */
> +#define JH7110_TIMER_ENABLE		0x10 /* RW[0]: timer enable register */
> +#define JH7110_TIMER_RELOAD		0x14 /* RW: write 1 or 0 both reload counter */
> +#define JH7110_TIMER_VALUE		0x18 /* RO: timer value register */
> +#define JH7110_TIMER_INT_CLR		0x20 /* RW: timer interrupt clear register */
> +#define JH7110_TIMER_INT_MASK		0x24 /* RW[0]: timer interrupt mask register */
> +#define JH7110_TIMER_INT_CLR_AVA_MASK	BIT(1)
> +
> +struct jh7110_clkevt {
> +	struct clock_event_device evt;
> +	struct clocksource cs;
> +	struct clk *clk;
> +	char name[JH7110_TIMER_NAME_NUM];

Instead of this define maybe just use something like

	char name[sizeof("jh7110-timer.chX")];

> +	int irq;

You wrote that you "dropped the extra copy of irq", but here you didn't.

> +	u32 rate;
> +	u32 reload_val;
> +	void __iomem *base;
> +};
> +
> +static inline struct jh7110_clkevt *to_jh7110_clkevt(struct clock_event_device *evt)
> +{
> +	return container_of(evt, struct jh7110_clkevt, evt);
> +}
> +
> +/* 0:continuous-run mode, 1:single-run mode */
> +static inline void jh7110_timer_set_continuous_mod(struct jh7110_clkevt *clkevt)
> +{
> +	writel(0, clkevt->base + JH7110_TIMER_CTL);
> +}
> +
> +static inline void jh7110_timer_set_single_mod(struct jh7110_clkevt *clkevt)
> +{
> +	writel(1, clkevt->base + JH7110_TIMER_CTL);
> +}
> +
> +/* Interrupt Mask Register, 0:Unmask, 1:Mask */
> +static inline void jh7110_timer_int_enable(struct jh7110_clkevt *clkevt)
> +{
> +	writel(0, clkevt->base + JH7110_TIMER_INT_MASK);
> +}
> +
> +static inline void jh7110_timer_int_disable(struct jh7110_clkevt *clkevt)
> +{
> +	writel(1, clkevt->base + JH7110_TIMER_INT_MASK);
> +}

I really don't think all these wrappers make the code any clearer. Please just
inline the writel() calls. What you can do to make it a bit clearer is
something like

enum {
	JH7110_TIMER_MODE_CONTINUOUS,
	JH7110_TIMER_MODE_SINGLE,
};

so you can write

	writel(JH7110_TIMER_MODE_CONTINUOUS, clkevt->base + JH7110_TIMER_CTL);

> +
> +/*
> + * BIT(0): Read value represent channel intr status.
> + * Write 1 to this bit to clear interrupt. Write 0 has no effects.
> + * BIT(1): "1" means that it is clearing interrupt. BIT(0) can not be written.
> + */
> +static inline int jh7110_timer_int_clear(struct jh7110_clkevt *clkevt)
> +{
> +	u32 value;
> +	int ret;
> +
> +	/* waiting interrupt can be to clearing */
> +	ret = readl_poll_timeout_atomic(clkevt->base + JH7110_TIMER_INT_CLR, value,
> +					!(value & JH7110_TIMER_INT_CLR_AVA_MASK),
> +					JH7110_DELAY_US, JH7110_TIMEOUT_US);
> +	if (!ret)
> +		writel(0x1, clkevt->base + JH7110_TIMER_INT_CLR);
> +
> +	return ret;
> +}
> +
> +/*
> + * The initial value to be loaded into the
> + * counter and is also used as the reload value.
> + * val = clock rate --> 1s
> + */
> +static inline void jh7110_timer_set_load(struct jh7110_clkevt *clkevt, u32 val)
> +{
> +	writel(val, clkevt->base + JH7110_TIMER_LOAD);
> +}
> +
> +static inline u32 jh7110_timer_get_val(struct jh7110_clkevt *clkevt)
> +{
> +	return readl(clkevt->base + JH7110_TIMER_VALUE);
> +}
> +
> +/*
> + * Write RELOAD register to reload preset value to counter.
> + * Write 0 and write 1 are both ok.
> + */
> +static inline void jh7110_timer_set_reload(struct jh7110_clkevt *clkevt)
> +{
> +	writel(0, clkevt->base + JH7110_TIMER_RELOAD);
> +}
> +
> +static inline void jh7110_timer_enable(struct jh7110_clkevt *clkevt)
> +{
> +	writel(1, clkevt->base + JH7110_TIMER_ENABLE);
> +}
> +
> +static inline void jh7110_timer_disable(struct jh7110_clkevt *clkevt)
> +{
> +	writel(0, clkevt->base + JH7110_TIMER_ENABLE);
> +}

The same thing goes for all these wrappers. If you do insist on having these
wrappers then at least group them all together so you can quickly scroll past
them to get to the "real" code.

> +
> +static int jh7110_timer_int_init_enable(struct jh7110_clkevt *clkevt)
> +{
> +	int ret;
> +
> +	jh7110_timer_int_disable(clkevt);
> +	ret = jh7110_timer_int_clear(clkevt);
> +	if (ret)
> +		return ret;
> +
> +	jh7110_timer_int_enable(clkevt);
> +	jh7110_timer_enable(clkevt);
> +
> +	return 0;
> +}
> +
> +static int jh7110_timer_shutdown(struct clock_event_device *evt)
> +{
> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
> +
> +	jh7110_timer_disable(clkevt);
> +	return jh7110_timer_int_clear(clkevt);
> +}
> +
> +static void jh7110_timer_suspend(struct clock_event_device *evt)
> +{
> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
> +
> +	clkevt->reload_val = jh7110_timer_get_val(clkevt);
> +	jh7110_timer_shutdown(evt);
> +}
> +
> +static void jh7110_timer_resume(struct clock_event_device *evt)
> +{
> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
> +
> +	jh7110_timer_set_load(clkevt, clkevt->reload_val);
> +	jh7110_timer_set_reload(clkevt);
> +	jh7110_timer_int_enable(clkevt);
> +	jh7110_timer_enable(clkevt);
> +}
> +
> +static int jh7110_timer_tick_resume(struct clock_event_device *evt)
> +{
> +	jh7110_timer_resume(evt);
> +
> +	return 0;
> +}
> +
> +/* IRQ handler for the timer */
> +static irqreturn_t jh7110_timer_interrupt(int irq, void *priv)
> +{
> +	struct clock_event_device *evt = (struct clock_event_device *)priv;
> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
> +
> +	if (jh7110_timer_int_clear(clkevt))
> +		return IRQ_NONE;
> +
> +	if (evt->event_handler)
> +		evt->event_handler(evt);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int jh7110_timer_set_periodic(struct clock_event_device *evt)
> +{
> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
> +	u32 periodic = DIV_ROUND_CLOSEST(clkevt->rate, HZ);
> +
> +	jh7110_timer_disable(clkevt);
> +	jh7110_timer_set_continuous_mod(clkevt);
> +	jh7110_timer_set_load(clkevt, periodic);
> +
> +	return jh7110_timer_int_init_enable(clkevt);
> +}
> +
> +static int jh7110_timer_set_oneshot(struct clock_event_device *evt)
> +{
> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
> +
> +	jh7110_timer_disable(clkevt);
> +	jh7110_timer_set_single_mod(clkevt);
> +	jh7110_timer_set_load(clkevt, JH7110_TIMER_MAX_TICKS);
> +
> +	return jh7110_timer_int_init_enable(clkevt);
> +}
> +
> +static int jh7110_timer_set_next_event(unsigned long next,
> +				       struct clock_event_device *evt)
> +{
> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
> +
> +	jh7110_timer_disable(clkevt);
> +	jh7110_timer_set_single_mod(clkevt);
> +	jh7110_timer_set_load(clkevt, next);
> +	jh7110_timer_enable(clkevt);
> +
> +	return 0;
> +}
> +
> +static void jh7110_set_clockevent(struct clock_event_device *evt)
> +{
> +	evt->features = CLOCK_EVT_FEAT_PERIODIC |
> +			CLOCK_EVT_FEAT_ONESHOT |
> +			CLOCK_EVT_FEAT_DYNIRQ;
> +	evt->set_state_shutdown = jh7110_timer_shutdown;
> +	evt->set_state_periodic = jh7110_timer_set_periodic;
> +	evt->set_state_oneshot = jh7110_timer_set_oneshot;
> +	evt->set_state_oneshot_stopped = jh7110_timer_shutdown;
> +	evt->tick_resume = jh7110_timer_tick_resume;
> +	evt->set_next_event = jh7110_timer_set_next_event;
> +	evt->suspend = jh7110_timer_suspend;
> +	evt->resume = jh7110_timer_resume;
> +	evt->rating = JH7110_CLOCKEVENT_RATING;
> +}
> +
> +static u64 jh7110_timer_clocksource_read(struct clocksource *cs)
> +{
> +	struct jh7110_clkevt *clkevt = container_of(cs, struct jh7110_clkevt, cs);
> +
> +	return (u64)jh7110_timer_get_val(clkevt);
> +}
> +
> +static int jh7110_clocksource_init(struct jh7110_clkevt *clkevt)
> +{
> +	int ret;
> +
> +	jh7110_timer_set_continuous_mod(clkevt);
> +	jh7110_timer_set_load(clkevt, JH7110_TIMER_MAX_TICKS);
> +
> +	ret = jh7110_timer_int_init_enable(clkevt);
> +	if (ret)
> +		return ret;
> +
> +	clkevt->cs.name = clkevt->name;
> +	clkevt->cs.rating = JH7110_CLOCK_SOURCE_RATING;
> +	clkevt->cs.read = jh7110_timer_clocksource_read;
> +	clkevt->cs.mask = CLOCKSOURCE_MASK(JH7110_VALID_BITS);
> +	clkevt->cs.flags = CLOCK_SOURCE_IS_CONTINUOUS;
> +
> +	return clocksource_register_hz(&clkevt->cs, clkevt->rate);
> +}
> +
> +static void jh7110_clockevents_register(struct jh7110_clkevt *clkevt)
> +{
> +	clkevt->rate = clk_get_rate(clkevt->clk);
> +
> +	jh7110_set_clockevent(&clkevt->evt);
> +	clkevt->evt.name = clkevt->name;
> +	clkevt->evt.cpumask = cpu_possible_mask;
> +
> +	clockevents_config_and_register(&clkevt->evt, clkevt->rate,
> +					JH7110_TIMER_MIN_TICKS, JH7110_TIMER_MAX_TICKS);
> +}
> +
> +static int jh7110_timer_probe(struct platform_device *pdev)
> +{
> +	struct jh7110_clkevt *clkevt[JH7110_TIMER_CH_MAX];
> +	char name[4];
> +	struct clk *pclk;
> +	struct reset_control *rst;
> +	int ch;
> +	int ret;
> +	void __iomem *base;
> +
> +	base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(base),
> +				     "failed to map registers\n");
> +
> +	rst = devm_reset_control_get_exclusive(&pdev->dev, "apb");
> +	if (IS_ERR(rst))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(rst), "failed to get apb reset\n");
> +
> +	pclk = devm_clk_get_enabled(&pdev->dev, "apb");
> +	if (IS_ERR(pclk))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(pclk),
> +				     "failed to get & enable apb clock\n");
> +
> +	ret = reset_control_deassert(rst);
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret, "failed to deassert apb reset\n");
> +
> +	for (ch = 0; ch < JH7110_TIMER_CH_MAX; ch++) {
> +		clkevt[ch] = devm_kzalloc(&pdev->dev, sizeof(*clkevt[ch]), GFP_KERNEL);
> +		if (!clkevt[ch])
> +			return -ENOMEM;
> +
> +		snprintf(name, sizeof(name), "ch%d", ch);
> +
> +		clkevt[ch]->base = base + JH7110_TIMER_CH_BASE(ch);
> +		/* Ensure timer is disabled */
> +		jh7110_timer_disable(clkevt[ch]);
> +
> +		rst = devm_reset_control_get_exclusive(&pdev->dev, name);
> +		if (IS_ERR(rst))
> +			return PTR_ERR(rst);
> +
> +		clkevt[ch]->clk = devm_clk_get_enabled(&pdev->dev, name);
> +		if (IS_ERR(clkevt[ch]->clk))
> +			return PTR_ERR(clkevt[ch]->clk);
> +
> +		ret = reset_control_deassert(rst);
> +		if (ret)
> +			return ret;
> +
> +		clkevt[ch]->evt.irq = platform_get_irq(pdev, ch);
> +		if (clkevt[ch]->evt.irq < 0)
> +			return clkevt[ch]->evt.irq;
> +
> +		snprintf(clkevt[ch]->name, sizeof(clkevt[ch]->name), "%s.ch%d", pdev->name, ch);
> +		jh7110_clockevents_register(clkevt[ch]);
> +
> +		ret = devm_request_irq(&pdev->dev, clkevt[ch]->evt.irq, jh7110_timer_interrupt,
> +				       IRQF_TIMER | IRQF_IRQPOLL,
> +				       clkevt[ch]->name, &clkevt[ch]->evt);
> +		if (ret)
> +			return ret;
> +
> +		ret = jh7110_clocksource_init(clkevt[ch]);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id jh7110_timer_match[] = {
> +	{ .compatible = "starfive,jh7110-timer", },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, jh7110_timer_match);
> +
> +static struct platform_driver jh7110_timer_driver = {
> +	.probe = jh7110_timer_probe,
> +	.driver = {
> +		.name = "jh7110-timer",
> +		.of_match_table = jh7110_timer_match,
> +	},
> +};
> +module_platform_driver(jh7110_timer_driver);
> +
> +MODULE_AUTHOR("Xingyu Wu <xingyu.wu@starfivetech.com>");
> +MODULE_DESCRIPTION("StarFive JH7110 timer driver");
> +MODULE_LICENSE("GPL");
> --
> 2.25.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

