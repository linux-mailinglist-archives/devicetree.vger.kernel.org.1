Return-Path: <devicetree+bounces-6764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CC57BCCBA
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 08:30:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 758861C208D6
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 06:30:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D241E15BA;
	Sun,  8 Oct 2023 06:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8F5747B
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 06:30:01 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80D87E4;
	Sat,  7 Oct 2023 23:29:58 -0700 (PDT)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 6ACEE24E287;
	Sun,  8 Oct 2023 14:29:54 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Sun, 8 Oct
 2023 14:29:54 +0800
Received: from [192.168.125.131] (183.27.97.165) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Sun, 8 Oct
 2023 14:29:53 +0800
Message-ID: <2d96aea9-4f0c-b3b2-bba0-318f75937e67@starfivetech.com>
Date: Sun, 8 Oct 2023 14:23:58 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 2/3] clocksource: Add JH7110 timer driver
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, Daniel Lezcano
	<daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, "Walker
 Chen" <walker.chen@starfivetech.com>
CC: <linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, Samin Guo
	<samin.guo@starfivetech.com>, <linux-kernel@vger.kernel.org>, Conor Dooley
	<conor@kernel.org>
References: <20230907053742.250444-1-xingyu.wu@starfivetech.com>
 <20230907053742.250444-3-xingyu.wu@starfivetech.com>
 <CAJM55Z82vvLgJKRoX6QmUshZ0Ov-QSFtkpwbaYi8=HjmEnz9Sw@mail.gmail.com>
Content-Language: en-US
From: Xingyu Wu <xingyu.wu@starfivetech.com>
In-Reply-To: <CAJM55Z82vvLgJKRoX6QmUshZ0Ov-QSFtkpwbaYi8=HjmEnz9Sw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [183.27.97.165]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 2023/9/10 7:19, Emil Renner Berthing wrote:
> Xingyu Wu wrote:
>> Add timer driver for the StarFive JH7110 SoC.
>>
>> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
>> ---
>>  MAINTAINERS                        |   7 +
>>  drivers/clocksource/Kconfig        |  11 +
>>  drivers/clocksource/Makefile       |   1 +
>>  drivers/clocksource/timer-jh7110.c | 400 +++++++++++++++++++++++++++++
>>  4 files changed, 419 insertions(+)
>>  create mode 100644 drivers/clocksource/timer-jh7110.c
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 4cc6bf79fdd8..ddc5dd3a4125 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -20291,6 +20291,13 @@ S:	Maintained
>>  F:	Documentation/devicetree/bindings/sound/starfive,jh7110-tdm.yaml
>>  F:	sound/soc/starfive/jh7110_tdm.c
>>
>> +STARFIVE JH7110 TIMER DRIVER
>> +M:	Samin Guo <samin.guo@starfivetech.com>
>> +M:	Xingyu Wu <xingyu.wu@starfivetech.com>
>> +S:	Supported
>> +F:	Documentation/devicetree/bindings/timer/starfive,jh7110-timer.yaml
>> +F:	drivers/clocksource/timer-jh7110.c
>> +
>>  STARFIVE JH71X0 CLOCK DRIVERS
>>  M:	Emil Renner Berthing <kernel@esmil.dk>
>>  M:	Hal Feng <hal.feng@starfivetech.com>
>> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
>> index c4d671a5a13d..f5696bb52ea4 100644
>> --- a/drivers/clocksource/Kconfig
>> +++ b/drivers/clocksource/Kconfig
>> @@ -648,6 +648,17 @@ config RISCV_TIMER
>>  	  is accessed via both the SBI and the rdcycle instruction.  This is
>>  	  required for all RISC-V systems.
>>
>> +config STARFIVE_JH7110_TIMER
>> +	bool "Timer for the STARFIVE JH7110 SoC"
>> +	depends on ARCH_STARFIVE || COMPILE_TEST
>> +	select TIMER_OF
>> +	select CLKSRC_MMIO
>> +	default ARCH_STARFIVE
>> +	help
>> +	  This enables the timer for StarFive JH7110 SoC. On RISC-V platform,
>> +	  the system has started RISCV_TIMER, but you can also use this timer
>> +	  which can provide four channels to do a lot more things on JH7110 SoC.
>> +
>>  config CLINT_TIMER
>>  	bool "CLINT Timer for the RISC-V platform" if COMPILE_TEST
>>  	depends on GENERIC_SCHED_CLOCK && RISCV
>> diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
>> index 5d93c9e3fc55..56bd6d9ddd87 100644
>> --- a/drivers/clocksource/Makefile
>> +++ b/drivers/clocksource/Makefile
>> @@ -81,6 +81,7 @@ obj-$(CONFIG_INGENIC_TIMER)		+= ingenic-timer.o
>>  obj-$(CONFIG_CLKSRC_ST_LPC)		+= clksrc_st_lpc.o
>>  obj-$(CONFIG_X86_NUMACHIP)		+= numachip.o
>>  obj-$(CONFIG_RISCV_TIMER)		+= timer-riscv.o
>> +obj-$(CONFIG_STARFIVE_JH7110_TIMER)	+= timer-jh7110.o
>>  obj-$(CONFIG_CLINT_TIMER)		+= timer-clint.o
>>  obj-$(CONFIG_CSKY_MP_TIMER)		+= timer-mp-csky.o
>>  obj-$(CONFIG_GX6605S_TIMER)		+= timer-gx6605s.o
>> diff --git a/drivers/clocksource/timer-jh7110.c b/drivers/clocksource/timer-jh7110.c
>> new file mode 100644
>> index 000000000000..db78238ceb72
>> --- /dev/null
>> +++ b/drivers/clocksource/timer-jh7110.c
>> @@ -0,0 +1,400 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Starfive JH7110 Timer driver
>> + *
>> + * Copyright (C) 2022-2023 StarFive Technology Co., Ltd.
>> + *
>> + * Author:
>> + * Xingyu Wu <xingyu.wu@starfivetech.com>
>> + * Samin Guo <samin.guo@starfivetech.com>
>> + */
>> +
>> +#include <linux/clk.h>
>> +#include <linux/clockchips.h>
>> +#include <linux/clocksource.h>
>> +#include <linux/err.h>
>> +#include <linux/interrupt.h>
>> +#include <linux/io.h>
>> +#include <linux/iopoll.h>
>> +#include <linux/irq.h>
>> +#include <linux/kernel.h>
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/of_device.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/reset.h>
>> +#include <linux/sched_clock.h>
>> +
>> +/* Bias: Ch0-0x0, Ch1-0x40, Ch2-0x80, and so on. */
>> +#define JH7110_TIMER_CH_LEN		0x40
>> +#define JH7110_TIMER_CH_BASE(x)		((x) * JH7110_TIMER_CH_LEN)
>> +#define JH7110_TIMER_CH_MAX		4
>> +
>> +#define JH7110_CLOCK_SOURCE_RATING	200
>> +#define JH7110_VALID_BITS		32
>> +#define JH7110_DELAY_US			0
>> +#define JH7110_TIMEOUT_US		10000
>> +#define JH7110_CLOCKEVENT_RATING	300
>> +#define JH7110_TIMER_MAX_TICKS		0xffffffff
>> +#define JH7110_TIMER_MIN_TICKS		0xf
>> +#define JH7110_TIMER_NAME_NUM		20
> 
> Where does 20 come from?

The name of clockevent consists of the device name and the number of channel,
like '13050000.timer.ch0'. And the name of clockevent is already 18 characters,
so it is set to 20. Should I set it to 18?

> 
>> +
>> +#define JH7110_TIMER_INT_STATUS		0x00 /* RO[0:4]: Interrupt Status for channel0~4 */
>> +#define JH7110_TIMER_CTL		0x04 /* RW[0]: 0-continuous run, 1-single run */
>> +#define JH7110_TIMER_LOAD		0x08 /* RW: load value to counter */
>> +#define JH7110_TIMER_ENABLE		0x10 /* RW[0]: timer enable register */
>> +#define JH7110_TIMER_RELOAD		0x14 /* RW: write 1 or 0 both reload counter */
>> +#define JH7110_TIMER_VALUE		0x18 /* RO: timer value register */
>> +#define JH7110_TIMER_INT_CLR		0x20 /* RW: timer interrupt clear register */
>> +#define JH7110_TIMER_INT_MASK		0x24 /* RW[0]: timer interrupt mask register */
>> +#define JH7110_TIMER_INT_CLR_AVA_MASK	BIT(1)
>> +
>> +struct jh7110_clkevt {
>> +	struct clock_event_device evt;
>> +	struct clocksource cs;
>> +	struct clk *clk;
>> +	char name[JH7110_TIMER_NAME_NUM];
>> +	int irq;
>> +	u32 periodic;
>> +	u32 rate;
>> +	u32 reload_val;
>> +	void __iomem *base;
>> +};
>> +
>> +struct jh7110_timer_priv {
>> +	struct device *dev;
>> +	void __iomem *base;
>> +	struct jh7110_clkevt clkevt[JH7110_TIMER_CH_MAX];
>> +};
>> +
>> +static inline struct jh7110_clkevt *to_jh7110_clkevt(struct clock_event_device *evt)
>> +{
>> +	return container_of(evt, struct jh7110_clkevt, evt);
>> +}
>> +
>> +/* 0:continuous-run mode, 1:single-run mode */
>> +static inline void jh7110_timer_set_continuous_mod(struct jh7110_clkevt *clkevt)
>> +{
>> +	writel(0, clkevt->base + JH7110_TIMER_CTL);
>> +}
>> +
>> +static inline void jh7110_timer_set_single_mod(struct jh7110_clkevt *clkevt)
>> +{
>> +	writel(1, clkevt->base + JH7110_TIMER_CTL);
>> +}
>> +
>> +/* Interrupt Mask Register, 0:Unmask, 1:Mask */
>> +static inline void jh7110_timer_int_enable(struct jh7110_clkevt *clkevt)
>> +{
>> +	writel(0, clkevt->base + JH7110_TIMER_INT_MASK);
>> +}
>> +
>> +static inline void jh7110_timer_int_disable(struct jh7110_clkevt *clkevt)
>> +{
>> +	writel(1, clkevt->base + JH7110_TIMER_INT_MASK);
>> +}
>> +
>> +/*
>> + * BIT(0): Read value represent channel intr status.
>> + * Write 1 to this bit to clear interrupt. Write 0 has no effects.
>> + * BIT(1): "1" means that it is clearing interrupt. BIT(0) can not be written.
>> + */
>> +static inline int jh7110_timer_int_clear(struct jh7110_clkevt *clkevt)
>> +{
>> +	u32 value;
>> +	int ret;
>> +
>> +	/* waiting interrupt can be to clearing */
>> +	ret = readl_poll_timeout_atomic(clkevt->base + JH7110_TIMER_INT_CLR, value,
>> +					!(value & JH7110_TIMER_INT_CLR_AVA_MASK),
>> +					JH7110_DELAY_US, JH7110_TIMEOUT_US);
>> +	if (!ret)
>> +		writel(0x1, clkevt->base + JH7110_TIMER_INT_CLR);
>> +
>> +	return ret;
>> +}
>> +
>> +/*
>> + * The initial value to be loaded into the
>> + * counter and is also used as the reload value.
>> + * val = clock rate --> 1s
>> + */
>> +static inline void jh7110_timer_set_load(struct jh7110_clkevt *clkevt, u32 val)
>> +{
>> +	writel(val, clkevt->base + JH7110_TIMER_LOAD);
>> +}
>> +
>> +static inline u32 jh7110_timer_get_val(struct jh7110_clkevt *clkevt)
>> +{
>> +	return readl(clkevt->base + JH7110_TIMER_VALUE);
>> +}
>> +
>> +/*
>> + * Write RELOAD register to reload preset value to counter.
>> + * Write 0 and write 1 are both ok.
>> + */
>> +static inline void jh7110_timer_set_reload(struct jh7110_clkevt *clkevt)
>> +{
>> +	writel(0, clkevt->base + JH7110_TIMER_RELOAD);
>> +}
>> +
>> +static inline void jh7110_timer_enable(struct jh7110_clkevt *clkevt)
>> +{
>> +	writel(1, clkevt->base + JH7110_TIMER_ENABLE);
>> +}
>> +
>> +static inline void jh7110_timer_disable(struct jh7110_clkevt *clkevt)
>> +{
>> +	writel(0, clkevt->base + JH7110_TIMER_ENABLE);
>> +}
>> +
>> +static int jh7110_timer_int_init_enable(struct jh7110_clkevt *clkevt)
>> +{
>> +	int ret;
>> +
>> +	jh7110_timer_int_disable(clkevt);
>> +	ret = jh7110_timer_int_clear(clkevt);
>> +	if (ret)
>> +		return ret;
>> +
>> +	jh7110_timer_int_enable(clkevt);
>> +	jh7110_timer_enable(clkevt);
>> +
>> +	return 0;
>> +}
>> +
>> +static int jh7110_timer_shutdown(struct clock_event_device *evt)
>> +{
>> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
>> +
>> +	jh7110_timer_disable(clkevt);
>> +	return jh7110_timer_int_clear(clkevt);
>> +}
>> +
>> +static void jh7110_timer_suspend(struct clock_event_device *evt)
>> +{
>> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
>> +
>> +	clkevt->reload_val = jh7110_timer_get_val(clkevt);
>> +	jh7110_timer_shutdown(evt);
>> +}
>> +
>> +static void jh7110_timer_resume(struct clock_event_device *evt)
>> +{
>> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
>> +
>> +	jh7110_timer_set_load(clkevt, clkevt->reload_val);
>> +	jh7110_timer_set_reload(clkevt);
>> +	jh7110_timer_int_enable(clkevt);
>> +	jh7110_timer_enable(clkevt);
>> +}
>> +
>> +static int jh7110_timer_tick_resume(struct clock_event_device *evt)
>> +{
>> +	jh7110_timer_resume(evt);
>> +
>> +	return 0;
>> +}
>> +
>> +/* IRQ handler for the timer */
>> +static irqreturn_t jh7110_timer_interrupt(int irq, void *priv)
>> +{
>> +	struct clock_event_device *evt = (struct clock_event_device *)priv;
>> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
>> +
>> +	if (jh7110_timer_int_clear(clkevt))
>> +		return IRQ_NONE;
>> +
>> +	if (evt->event_handler)
>> +		evt->event_handler(evt);
>> +
>> +	return IRQ_HANDLED;
>> +}
>> +
>> +static int jh7110_timer_set_periodic(struct clock_event_device *evt)
>> +{
>> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
>> +
>> +	clkevt->periodic = DIV_ROUND_CLOSEST(clkevt->rate, HZ);
> 
> This seems to be the only place clkevt->periodic is used, so why can't it just
> be a local variable in this function?

Yeah, you are right and I will modify it.

> 
>> +	jh7110_timer_disable(clkevt);
>> +	jh7110_timer_set_continuous_mod(clkevt);
>> +	jh7110_timer_set_load(clkevt, clkevt->periodic);
>> +
>> +	return jh7110_timer_int_init_enable(clkevt);
>> +}
>> +
>> +static int jh7110_timer_set_oneshot(struct clock_event_device *evt)
>> +{
>> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
>> +
>> +	jh7110_timer_disable(clkevt);
>> +	jh7110_timer_set_single_mod(clkevt);
>> +	jh7110_timer_set_load(clkevt, JH7110_TIMER_MAX_TICKS);
>> +
>> +	return jh7110_timer_int_init_enable(clkevt);
>> +}
>> +
>> +static int jh7110_timer_set_next_event(unsigned long next,
>> +				       struct clock_event_device *evt)
>> +{
>> +	struct jh7110_clkevt *clkevt = to_jh7110_clkevt(evt);
>> +
>> +	jh7110_timer_disable(clkevt);
>> +	jh7110_timer_set_single_mod(clkevt);
>> +	jh7110_timer_set_load(clkevt, next);
>> +	jh7110_timer_enable(clkevt);
>> +
>> +	return 0;
>> +}
>> +
>> +static void jh7110_set_clockevent(struct clock_event_device *evt)
>> +{
>> +	evt->features = CLOCK_EVT_FEAT_PERIODIC |
>> +			CLOCK_EVT_FEAT_ONESHOT |
>> +			CLOCK_EVT_FEAT_DYNIRQ;
>> +	evt->set_state_shutdown = jh7110_timer_shutdown;
>> +	evt->set_state_periodic = jh7110_timer_set_periodic;
>> +	evt->set_state_oneshot = jh7110_timer_set_oneshot;
>> +	evt->set_state_oneshot_stopped = jh7110_timer_shutdown;
>> +	evt->tick_resume = jh7110_timer_tick_resume;
>> +	evt->set_next_event = jh7110_timer_set_next_event;
>> +	evt->suspend = jh7110_timer_suspend;
>> +	evt->resume = jh7110_timer_resume;
>> +	evt->rating = JH7110_CLOCKEVENT_RATING;
>> +}
>> +
>> +static u64 jh7110_timer_clocksource_read(struct clocksource *cs)
>> +{
>> +	struct jh7110_clkevt *clkevt = container_of(cs, struct jh7110_clkevt, cs);
>> +
>> +	return (u64)jh7110_timer_get_val(clkevt);
>> +}
>> +
>> +static int jh7110_clocksource_init(struct jh7110_clkevt *clkevt)
>> +{
>> +	int ret;
>> +
>> +	jh7110_timer_set_continuous_mod(clkevt);
>> +	jh7110_timer_set_load(clkevt, JH7110_TIMER_MAX_TICKS);
>> +
>> +	ret = jh7110_timer_int_init_enable(clkevt);
>> +	if (ret)
>> +		return ret;
>> +
>> +	clkevt->cs.name = clkevt->name;
>> +	clkevt->cs.rating = JH7110_CLOCK_SOURCE_RATING;
>> +	clkevt->cs.read = jh7110_timer_clocksource_read;
>> +	clkevt->cs.mask = CLOCKSOURCE_MASK(JH7110_VALID_BITS);
>> +	clkevt->cs.flags = CLOCK_SOURCE_IS_CONTINUOUS;
>> +
>> +	return clocksource_register_hz(&clkevt->cs, clkevt->rate);
>> +}
>> +
>> +static void jh7110_clockevents_register(struct jh7110_clkevt *clkevt)
>> +{
>> +	clkevt->rate = clk_get_rate(clkevt->clk);
>> +
>> +	jh7110_set_clockevent(&clkevt->evt);
>> +	clkevt->evt.name = clkevt->name;
>> +	clkevt->evt.irq = clkevt->irq;
>> +	clkevt->evt.cpumask = cpu_possible_mask;
>> +
>> +	clockevents_config_and_register(&clkevt->evt, clkevt->rate,
>> +					JH7110_TIMER_MIN_TICKS, JH7110_TIMER_MAX_TICKS);
>> +}
>> +
>> +static int jh7110_timer_probe(struct platform_device *pdev)
>> +{
>> +	char name[JH7110_TIMER_NAME_NUM];
> 
> This buffer is only used to hold the "chN" string, so why JH7110_TIMER_NAME_NUM
> aka 20 characters?

Will change to 3 characters.

> 
>> +	struct jh7110_timer_priv *priv;
>> +	struct jh7110_clkevt *clkevt;
>> +	struct clk *pclk;
>> +	struct reset_control *rst;
>> +	int ch;
>> +	int ret;
>> +
>> +	priv = devm_kzalloc(&pdev->dev, struct_size(priv, clkevt, JH7110_TIMER_CH_MAX),
>> +			    GFP_KERNEL);
>> +	if (!priv)
>> +		return -ENOMEM;
>> +
>> +	priv->base = devm_platform_ioremap_resource(pdev, 0);
>> +	if (IS_ERR(priv->base))
>> +		return dev_err_probe(&pdev->dev, PTR_ERR(priv->base),
>> +				     "failed to map registers\n");
>> +
>> +	rst = devm_reset_control_get_exclusive(&pdev->dev, "apb");
>> +	if (IS_ERR(rst))
>> +		return dev_err_probe(&pdev->dev, PTR_ERR(rst), "failed to get apb reset\n");
>> +
>> +	pclk = devm_clk_get_enabled(&pdev->dev, "apb");
>> +	if (IS_ERR(pclk))
>> +		return dev_err_probe(&pdev->dev, PTR_ERR(pclk),
>> +				     "failed to get & enable apb clock\n");
>> +
>> +	ret = reset_control_deassert(rst);
>> +	if (ret)
>> +		return dev_err_probe(&pdev->dev, ret, "failed to deassert apb reset\n");
>> +
>> +	priv->dev = &pdev->dev;
>> +	platform_set_drvdata(pdev, priv);
> 
> I don't see any matching *_get_drvdata() call, so where is struct
> jh7110_timer_priv actually used? If it's only used to allocate a clkevt
> structure for each channel then why does it need the .dev and .base fields?

Will drop.

> 
>> +
>> +	for (ch = 0; ch < JH7110_TIMER_CH_MAX; ch++) {
>> +		clkevt = &priv->clkevt[ch];
>> +		snprintf(name, sizeof(name), "ch%d", ch);
>> +
>> +		clkevt->base = priv->base + JH7110_TIMER_CH_BASE(ch);
>> +		/* Ensure timer is disabled */
>> +		jh7110_timer_disable(clkevt);
>> +
>> +		rst = devm_reset_control_get_exclusive(&pdev->dev, name);
>> +		if (IS_ERR(rst))
>> +			return PTR_ERR(rst);
>> +
>> +		clkevt->clk = devm_clk_get_enabled(&pdev->dev, name);
>> +		if (IS_ERR(clkevt->clk))
>> +			return PTR_ERR(clkevt->clk);
>> +
>> +		ret = reset_control_deassert(rst);
>> +		if (ret)
>> +			return ret;
>> +
>> +		clkevt->irq = platform_get_irq(pdev, ch);
>> +		if (clkevt->irq < 0)
>> +			return clkevt->irq;
> 
> Just use clkevt->evt.irq here, then you don't need the extra copy of the irq
> number in struct jh7110_clkevt.

Will drop.

> 
>> +
>> +		snprintf(clkevt->name, sizeof(clkevt->name), "%s.ch%d", pdev->name, ch);
>> +		jh7110_clockevents_register(clkevt);
>> +
>> +		ret = devm_request_irq(&pdev->dev, clkevt->irq, jh7110_timer_interrupt,
>> +				       IRQF_TIMER | IRQF_IRQPOLL,
>> +				       clkevt->name, &clkevt->evt);
>> +		if (ret)
>> +			return ret;
>> +
>> +		ret = jh7110_clocksource_init(clkevt);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct of_device_id jh7110_timer_match[] = {
>> +	{ .compatible = "starfive,jh7110-timer", },
>> +	{ /* sentinel */ }
>> +};
>> +MODULE_DEVICE_TABLE(of, jh7110_timer_match);
>> +
>> +static struct platform_driver jh7110_timer_driver = {
>> +	.probe = jh7110_timer_probe,
>> +	.driver = {
>> +		.name = "jh7110-timer",
>> +		.of_match_table = jh7110_timer_match,
>> +	},
>> +};
>> +module_platform_driver(jh7110_timer_driver);
>> +
>> +MODULE_AUTHOR("Xingyu Wu <xingyu.wu@starfivetech.com>");
>> +MODULE_DESCRIPTION("StarFive JH7110 timer driver");
>> +MODULE_LICENSE("GPL");
>> --
>> 2.25.1
>>

Thanks,
Xingyu Wu

