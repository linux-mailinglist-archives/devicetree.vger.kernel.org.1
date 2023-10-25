Return-Path: <devicetree+bounces-11717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C80A7D6651
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:11:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B34951C20A1D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EBC1208CE;
	Wed, 25 Oct 2023 09:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F94F3D72
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:11:10 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EF13B9;
	Wed, 25 Oct 2023 02:11:08 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id CFD9B24E203;
	Wed, 25 Oct 2023 17:10:59 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 25 Oct
 2023 17:10:59 +0800
Received: from [192.168.125.131] (183.27.99.126) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 25 Oct
 2023 17:10:58 +0800
Message-ID: <bb819333-52d3-49fc-9bb9-1a227bd5ca8f@starfivetech.com>
Date: Wed, 25 Oct 2023 17:04:42 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] clocksource: Add JH7110 timer driver
Content-Language: en-US
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner
	<tglx@linutronix.de>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>, Christophe JAILLET
	<christophe.jaillet@wanadoo.fr>
CC: <linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, Walker Chen
	<walker.chen@starfivetech.com>, Samin Guo <samin.guo@starfivetech.com>,
	<linux-kernel@vger.kernel.org>, Conor Dooley <conor@kernel.org>
References: <20231019053501.46899-1-xingyu.wu@starfivetech.com>
 <20231019053501.46899-3-xingyu.wu@starfivetech.com>
 <3f76f965-7c7b-109e-2ee0-3033e332e84b@linaro.org>
From: Xingyu Wu <xingyu.wu@starfivetech.com>
In-Reply-To: <3f76f965-7c7b-109e-2ee0-3033e332e84b@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [183.27.99.126]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

On 2023/10/24 22:56, Daniel Lezcano wrote:
>=20
> Hi Xingyu,
>=20
>=20
> On 19/10/2023 07:35, Xingyu Wu wrote:
>> Add timer driver for the StarFive JH7110 SoC.
>=20
> As it is a new timer, please add a proper nice description explaining t=
he timer hardware, thanks.

OK. Will add the description in next version.

>=20
>> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
>> ---
>> =C2=A0 MAINTAINERS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 |=C2=A0=C2=A0 7 +
>> =C2=A0 drivers/clocksource/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0 11 +
>> =C2=A0 drivers/clocksource/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 |=C2=A0=C2=A0 1 +
>> =C2=A0 drivers/clocksource/timer-jh7110.c | 380 ++++++++++++++++++++++=
+++++++
>> =C2=A0 4 files changed, 399 insertions(+)
>> =C2=A0 create mode 100644 drivers/clocksource/timer-jh7110.c
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 7a7bd8bd80e9..91c09b399131 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -20473,6 +20473,13 @@ S:=C2=A0=C2=A0=C2=A0 Maintained
>> =C2=A0 F:=C2=A0=C2=A0=C2=A0 Documentation/devicetree/bindings/sound/st=
arfive,jh7110-tdm.yaml
>> =C2=A0 F:=C2=A0=C2=A0=C2=A0 sound/soc/starfive/jh7110_tdm.c
>> =C2=A0 +STARFIVE JH7110 TIMER DRIVER
>> +M:=C2=A0=C2=A0=C2=A0 Samin Guo <samin.guo@starfivetech.com>
>> +M:=C2=A0=C2=A0=C2=A0 Xingyu Wu <xingyu.wu@starfivetech.com>
>> +S:=C2=A0=C2=A0=C2=A0 Supported
>> +F:=C2=A0=C2=A0=C2=A0 Documentation/devicetree/bindings/timer/starfive=
,jh7110-timer.yaml
>> +F:=C2=A0=C2=A0=C2=A0 drivers/clocksource/timer-jh7110.c
>> +
>> =C2=A0 STARFIVE JH71X0 CLOCK DRIVERS
>> =C2=A0 M:=C2=A0=C2=A0=C2=A0 Emil Renner Berthing <kernel@esmil.dk>
>> =C2=A0 M:=C2=A0=C2=A0=C2=A0 Hal Feng <hal.feng@starfivetech.com>
>> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
>> index 0ba0dc4ecf06..821abcc1e517 100644
>> --- a/drivers/clocksource/Kconfig
>> +++ b/drivers/clocksource/Kconfig
>> @@ -641,6 +641,17 @@ config RISCV_TIMER
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 is accessed via both the SB=
I and the rdcycle instruction.=C2=A0 This is
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 required for all RISC-V sys=
tems.
>> =C2=A0 +config STARFIVE_JH7110_TIMER
>> +=C2=A0=C2=A0=C2=A0 bool "Timer for the STARFIVE JH7110 SoC"
>> +=C2=A0=C2=A0=C2=A0 depends on ARCH_STARFIVE || COMPILE_TEST
>=20
> You may want to use ARCH_STARFIVE only if the platform can make this ti=
mer optional. Otherwise, set the option from the platform Kconfig and put=
 the bool "bla bla" if COMPILE_TEST

Yes, this timer only be used on the StarFive SoC. So I intend to modify t=
o this:

bool "Timer for the STARFIVE JH7110 SoC" if COMPILE_TEST
depends on ARCH_STARFIVE

>=20
>> +=C2=A0=C2=A0=C2=A0 select TIMER_OF
>> +=C2=A0=C2=A0=C2=A0 select CLKSRC_MMIO
>> +=C2=A0=C2=A0=C2=A0 default ARCH_STARFIVE
>=20
> no "default"

Will drop it.

>=20
>> +=C2=A0=C2=A0=C2=A0 help
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 This enables the timer for StarFive JH=
7110 SoC. On RISC-V platform,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 the system has started RISCV_TIMER, bu=
t you can also use this timer
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 which can provide four channels to do =
a lot more things on JH7110 SoC.
>> +
>> =C2=A0 config CLINT_TIMER
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool "CLINT Timer for the RISC-V platfo=
rm" if COMPILE_TEST
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 depends on GENERIC_SCHED_CLOCK && RISCV
>> diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefi=
le
>> index 368c3461dab8..b66ac05ec086 100644
>> --- a/drivers/clocksource/Makefile
>> +++ b/drivers/clocksource/Makefile
>> @@ -80,6 +80,7 @@ obj-$(CONFIG_INGENIC_TIMER)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 +=3D ingenic-timer.o
>> =C2=A0 obj-$(CONFIG_CLKSRC_ST_LPC)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 +=3D clksrc_st_lpc.o
>> =C2=A0 obj-$(CONFIG_X86_NUMACHIP)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 +=3D numachip.o
>> =C2=A0 obj-$(CONFIG_RISCV_TIMER)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 +=3D timer-riscv.o
>> +obj-$(CONFIG_STARFIVE_JH7110_TIMER)=C2=A0=C2=A0=C2=A0 +=3D timer-jh71=
10.o
>> =C2=A0 obj-$(CONFIG_CLINT_TIMER)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 +=3D timer-clint.o
>> =C2=A0 obj-$(CONFIG_CSKY_MP_TIMER)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 +=3D timer-mp-csky.o
>> =C2=A0 obj-$(CONFIG_GX6605S_TIMER)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 +=3D timer-gx6605s.o
>> diff --git a/drivers/clocksource/timer-jh7110.c b/drivers/clocksource/=
timer-jh7110.c
>> new file mode 100644
>> index 000000000000..71de29a3ec91
>> --- /dev/null
>> +++ b/drivers/clocksource/timer-jh7110.c
>> @@ -0,0 +1,380 @@
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
>=20
> Please double check the headers and remove the pointless ones.

Will fix.

>=20
>=20
>> +/* Bias: Ch0-0x0, Ch1-0x40, Ch2-0x80, and so on. */
>> +#define JH7110_TIMER_CH_LEN=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 0x40
>> +#define JH7110_TIMER_CH_BASE(x)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ((x) * JH7110_TIMER_CH_LEN)
>> +#define JH7110_TIMER_CH_MAX=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 4
>> +
>> +#define JH7110_CLOCK_SOURCE_RATING=C2=A0=C2=A0=C2=A0 200
>> +#define JH7110_VALID_BITS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3=
2
>> +#define JH7110_DELAY_US=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 0
>> +#define JH7110_TIMEOUT_US=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1=
0000
>> +#define JH7110_CLOCKEVENT_RATING=C2=A0=C2=A0=C2=A0 300
>> +#define JH7110_TIMER_MAX_TICKS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 0xffffffff
>> +#define JH7110_TIMER_MIN_TICKS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 0xf
>> +#define JH7110_TIMER_RELOAD_VALUE=C2=A0=C2=A0=C2=A0 0
>> +
>> +#define JH7110_TIMER_INT_STATUS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 0x00 /* RO[0:4]: Interrupt Status for channel0~4 */
>> +#define JH7110_TIMER_CTL=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x=
04 /* RW[0]: 0-continuous run, 1-single run */
>> +#define JH7110_TIMER_LOAD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=
x08 /* RW: load value to counter */
>> +#define JH7110_TIMER_ENABLE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 0x10 /* RW[0]: timer enable register */
>> +#define JH7110_TIMER_RELOAD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 0x14 /* RW: write 1 or 0 both reload counter */
>> +#define JH7110_TIMER_VALUE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
0x18 /* RO: timer value register */
>> +#define JH7110_TIMER_INT_CLR=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 0x20 /* RW: timer interrupt clear register */
>> +#define JH7110_TIMER_INT_MASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 0x24 /* RW[0]: timer interrupt mask register */
>> +
>> +#define JH7110_TIMER_INT_CLR_ENA=C2=A0=C2=A0=C2=A0 BIT(0)
>> +#define JH7110_TIMER_INT_CLR_AVA_MASK=C2=A0=C2=A0=C2=A0 BIT(1)
>> +
>> +struct jh7110_clkevt {
>> +=C2=A0=C2=A0=C2=A0 struct clock_event_device evt;
>> +=C2=A0=C2=A0=C2=A0 struct clocksource cs;
>> +=C2=A0=C2=A0=C2=A0 bool cs_is_valid;
>> +=C2=A0=C2=A0=C2=A0 struct clk *clk;
>> +=C2=A0=C2=A0=C2=A0 struct reset_control *rst;
>> +=C2=A0=C2=A0=C2=A0 u32 rate;
>> +=C2=A0=C2=A0=C2=A0 u32 reload_val;
>> +=C2=A0=C2=A0=C2=A0 void __iomem *base;
>> +=C2=A0=C2=A0=C2=A0 char name[sizeof("jh7110-timer.chX")];
>> +};
>> +
>> +struct jh7110_timer_priv {
>> +=C2=A0=C2=A0=C2=A0 struct clk *pclk;
>> +=C2=A0=C2=A0=C2=A0 struct reset_control *prst;
>> +=C2=A0=C2=A0=C2=A0 struct jh7110_clkevt clkevt[JH7110_TIMER_CH_MAX];
>=20
> Why do you need several clock events and clock sources ?

This timer has four counters (channels) which run independently. So each =
counter can have its own clock event and clock source to configure differ=
ent settings.

>=20
> [ ... ]
>=20
>=20

Thanks,
Xingyu Wu

