Return-Path: <devicetree+bounces-13604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3FE7DF398
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 14:22:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 158281C20B0A
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01D013AF9;
	Thu,  2 Nov 2023 13:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2ECA12B87
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 13:22:39 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD4A5D7;
	Thu,  2 Nov 2023 06:22:35 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 73D7F24E3F6;
	Thu,  2 Nov 2023 21:22:24 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 2 Nov
 2023 21:22:24 +0800
Received: from [192.168.125.131] (113.72.146.247) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 2 Nov
 2023 21:22:23 +0800
Message-ID: <72ad5029-42b2-481a-887f-8f6079d8859b@starfivetech.com>
Date: Thu, 2 Nov 2023 21:15:56 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] clocksource: Add JH7110 timer driver
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
 <bb819333-52d3-49fc-9bb9-1a227bd5ca8f@starfivetech.com>
 <d0e70434-e273-4799-c5ec-bbee1b3f5cc7@linaro.org>
 <540136d4-6f8f-49a6-80ff-cc621f2f462b@starfivetech.com>
 <65c38717-3e0c-46d3-a124-29cae48f1a2e@linaro.org>
Content-Language: en-US
From: Xingyu Wu <xingyu.wu@starfivetech.com>
In-Reply-To: <65c38717-3e0c-46d3-a124-29cae48f1a2e@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [113.72.146.247]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

On 2023/10/27 21:34, Daniel Lezcano wrote:
>=20
> On 27/10/2023 11:17, Xingyu Wu wrote:
>> On 2023/10/25 22:39, Daniel Lezcano wrote:
>>>
>>> Hi Xingyu,
>>>
>>>
>>> On 25/10/2023 11:04, Xingyu Wu wrote:
>>>> On 2023/10/24 22:56, Daniel Lezcano wrote:
>>>>>
>>>>> Hi Xingyu,
>>>>>
>>>>>
>>>>> On 19/10/2023 07:35, Xingyu Wu wrote:
>>>>>> Add timer driver for the StarFive JH7110 SoC.
>>>>>
>>>>> As it is a new timer, please add a proper nice description
>>>>> explaining the timer hardware, thanks.
>>>>
>>>> OK. Will add the description in next version.
>>>>
>>>>>
>>>>>> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com> --- MAINTAIN=
ERS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=
=C2=A0 7 + drivers/clocksource/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0 11 + drivers/clocksource/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 |=C2=A0=C2=A0 1 + drivers/clocksource/timer-jh7110.c | 380
>>>>>> +++++++++++++++++++++++++++++ 4 files changed, 399
>>>>>> insertions(+) create mode 100644
>>>>>> drivers/clocksource/timer-jh7110.c
>>>>>>
>>>>>> diff --git a/MAINTAINERS b/MAINTAINERS index
>>>>>> 7a7bd8bd80e9..91c09b399131 100644 --- a/MAINTAINERS +++
>>>>>> b/MAINTAINERS @@ -20473,6 +20473,13 @@ S:=C2=A0=C2=A0=C2=A0 Mainta=
ined F:
>>>>>> Documentation/devicetree/bindings/sound/starfive,jh7110-tdm.yaml
>>>>>>
>>>>>>
> F:=C2=A0=C2=A0=C2=A0 sound/soc/starfive/jh7110_tdm.c
>>>>>> +STARFIVE JH7110 TIMER DRIVER +M:=C2=A0=C2=A0=C2=A0 Samin Guo
>>>>>> <samin.guo@starfivetech.com> +M:=C2=A0=C2=A0=C2=A0 Xingyu Wu
>>>>>> <xingyu.wu@starfivetech.com> +S:=C2=A0=C2=A0=C2=A0 Supported +F:
>>>>>> Documentation/devicetree/bindings/timer/starfive,jh7110-timer.yaml
>>>>>>
>>>>>>
> +F:=C2=A0=C2=A0=C2=A0 drivers/clocksource/timer-jh7110.c
>>>>>> + STARFIVE JH71X0 CLOCK DRIVERS M:=C2=A0=C2=A0=C2=A0 Emil Renner B=
erthing
>>>>>> <kernel@esmil.dk> M:=C2=A0=C2=A0=C2=A0 Hal Feng <hal.feng@starfive=
tech.com> diff --git a/drivers/clocksource/Kconfig
>>>>>> b/drivers/clocksource/Kconfig index
>>>>>> 0ba0dc4ecf06..821abcc1e517 100644 ---
>>>>>> a/drivers/clocksource/Kconfig +++
>>>>>> b/drivers/clocksource/Kconfig @@ -641,6 +641,17 @@ config
>>>>>> RISCV_TIMER is accessed via both the SBI and the rdcycle
>>>>>> instruction.=C2=A0 This is required for all RISC-V systems. +confi=
g STARFIVE_JH7110_TIMER +=C2=A0=C2=A0=C2=A0 bool "Timer for the
>>>>>> STARFIVE JH7110 SoC" +=C2=A0=C2=A0=C2=A0 depends on ARCH_STARFIVE =
||
>>>>>> COMPILE_TEST
>>>>>
>>>>> You may want to use ARCH_STARFIVE only if the platform can make
>>>>> this timer optional. Otherwise, set the option from the
>>>>> platform Kconfig and put the bool "bla bla" if COMPILE_TEST
>>>>
>>>> Yes, this timer only be used on the StarFive SoC. So I intend to
>>>> modify to this:
>>>>
>>>> bool "Timer for the STARFIVE JH7110 SoC" if COMPILE_TEST depends
>>>> on ARCH_STARFIVE
>>>
>>> In this case, you should change the platform config and select the
>>> timer from there. Remove the depends on ARCH_STARFIVE so it is
>>> possible enable cross test compilation. Otherwise COMPILE_TEST will
>>> not work on other platforms.
>>>
>>> [ ... ]
>>>
>>
>> It is not a kernel timer or clocksource. It will not work on other
>> platforms and is just used on the JH7110 SoC. I think I needn't
>> remove it. Maybe I modify to this:
>>
>> bool "Timer for the STARFIVE JH7110 SoC" if COMPILE_TEST depends on
>> ARCH_STARFIVE || COMPILE_TEST
>=20
> I think there is a misunderstanding.
>=20
> If we want to compile on x86 drivers for other platforms, we select COM=
PILE_TEST so we can enable the timer and do compilation testing.
>=20
> In this case, we may want to compile the STARFIVE JH7110 on x86 just to=
 double check it is correctly compiling (eg. we do changes impacting all =
the drivers). If the ARCH_STARFIVE dependency is set, then that won't be =
possible.
>=20
> So it should be:
>=20
> bool "Timer for the STARFIVE JH7110 SoC" if COMPILE_TEST
> ...
>=20
> And in arch/riscv/Kconfig.socs
>=20
> config SOC_STARFIVE
> =C2=A0=C2=A0=C2=A0 ...
> =C2=A0=C2=A0=C2=A0 select STARFIVE_JH7110_TIMER
> =C2=A0=C2=A0=C2=A0 ...
>=20
>>>>>> +struct jh7110_clkevt { +=C2=A0=C2=A0=C2=A0 struct clock_event_dev=
ice evt; +
>>>>>> struct clocksource cs; +=C2=A0=C2=A0=C2=A0 bool cs_is_valid; +=C2=A0=
=C2=A0=C2=A0 struct clk
>>>>>> *clk; +=C2=A0=C2=A0=C2=A0 struct reset_control *rst; +=C2=A0=C2=A0=
=C2=A0 u32 rate; +=C2=A0=C2=A0=C2=A0 u32
>>>>>> reload_val; +=C2=A0=C2=A0=C2=A0 void __iomem *base; +=C2=A0=C2=A0=C2=
=A0 char
>>>>>> name[sizeof("jh7110-timer.chX")]; +}; + +struct
>>>>>> jh7110_timer_priv { +=C2=A0=C2=A0=C2=A0 struct clk *pclk; +=C2=A0=C2=
=A0=C2=A0 struct
>>>>>> reset_control *prst; +=C2=A0=C2=A0=C2=A0 struct jh7110_clkevt
>>>>>> clkevt[JH7110_TIMER_CH_MAX];
>>>>>
>>>>> Why do you need several clock events and clock sources ?
>>>>
>>>> This timer has four counters (channels) which run independently.
>>>> So each counter can have its own clock event and clock source to
>>>> configure different settings.
>>>
>>> The kernel only needs one clocksource. Usually multiple clockevents
>>> are per-cpu based system.
>>>
>>> The driver does not seem to have a per cpu timer but just
>>> initializing multiple clockevents which will end up unused, wasting
>>> energy.
>>>
>>>
>>
>> The board of the StarFive JH7110 SoC has two types of timer :
>> riscv-timer and jh7110-timer. It boots by riscv-timer(clocksource)
>> and the jh7110-timer is optional and additional. I think I should
>> initialize the four channels of jh7110-timer as clockevents not
>> clocksource pre-cpu.
>=20
> If no clocksource is needed on this SoC because riscv timers are used, =
then it is not useful to register a clocksource for this timer and the co=
rresponding code can go away.
>=20
> If the clockevent is optional why do you need this driver at all?
>=20
>=20
>=20

Hi Daniel,

Sorry, maybe I didn't express it clearly enough. I use this jh7110-timer =
as a global timer on the SoC and riscv-timer as cpu local timer. So these=
 are something different.

These four counters in this jh7110-timer are exactly the same and indepen=
dent of each other. If this timer is used as a global timer, do I use onl=
y one or all of the counters to register clocksource and clockevent?

Thanks,
Xingyu Wu

