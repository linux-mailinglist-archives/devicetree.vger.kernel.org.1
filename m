Return-Path: <devicetree+bounces-12387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3E77D9395
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:24:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 62923B20F28
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C44DF156F7;
	Fri, 27 Oct 2023 09:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39F58C0C
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 09:23:56 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B6621A5;
	Fri, 27 Oct 2023 02:23:53 -0700 (PDT)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 4ABE824E1F0;
	Fri, 27 Oct 2023 17:23:50 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 27 Oct
 2023 17:23:50 +0800
Received: from [192.168.125.131] (183.27.99.126) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 27 Oct
 2023 17:23:49 +0800
Message-ID: <540136d4-6f8f-49a6-80ff-cc621f2f462b@starfivetech.com>
Date: Fri, 27 Oct 2023 17:17:30 +0800
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
 <bb819333-52d3-49fc-9bb9-1a227bd5ca8f@starfivetech.com>
 <d0e70434-e273-4799-c5ec-bbee1b3f5cc7@linaro.org>
From: Xingyu Wu <xingyu.wu@starfivetech.com>
In-Reply-To: <d0e70434-e273-4799-c5ec-bbee1b3f5cc7@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [183.27.99.126]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

On 2023/10/25 22:39, Daniel Lezcano wrote:
>=20
> Hi Xingyu,
>=20
>=20
> On 25/10/2023 11:04, Xingyu Wu wrote:
>> On 2023/10/24 22:56, Daniel Lezcano wrote:
>>>
>>> Hi Xingyu,
>>>
>>>
>>> On 19/10/2023 07:35, Xingyu Wu wrote:
>>>> Add timer driver for the StarFive JH7110 SoC.
>>>
>>> As it is a new timer, please add a proper nice description explaining=
 the timer hardware, thanks.
>>
>> OK. Will add the description in next version.
>>
>>>
>>>> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
>>>> ---
>>>> =C2=A0=C2=A0 MAINTAINERS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 7 +
>>>> =C2=A0=C2=A0 drivers/clocksource/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0 11 +
>>>> =C2=A0=C2=A0 drivers/clocksource/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 |=C2=A0=C2=A0 1 +
>>>> =C2=A0=C2=A0 drivers/clocksource/timer-jh7110.c | 380 ++++++++++++++=
+++++++++++++++
>>>> =C2=A0=C2=A0 4 files changed, 399 insertions(+)
>>>> =C2=A0=C2=A0 create mode 100644 drivers/clocksource/timer-jh7110.c
>>>>
>>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>>> index 7a7bd8bd80e9..91c09b399131 100644
>>>> --- a/MAINTAINERS
>>>> +++ b/MAINTAINERS
>>>> @@ -20473,6 +20473,13 @@ S:=C2=A0=C2=A0=C2=A0 Maintained
>>>> =C2=A0=C2=A0 F:=C2=A0=C2=A0=C2=A0 Documentation/devicetree/bindings/=
sound/starfive,jh7110-tdm.yaml
>>>> =C2=A0=C2=A0 F:=C2=A0=C2=A0=C2=A0 sound/soc/starfive/jh7110_tdm.c
>>>> =C2=A0=C2=A0 +STARFIVE JH7110 TIMER DRIVER
>>>> +M:=C2=A0=C2=A0=C2=A0 Samin Guo <samin.guo@starfivetech.com>
>>>> +M:=C2=A0=C2=A0=C2=A0 Xingyu Wu <xingyu.wu@starfivetech.com>
>>>> +S:=C2=A0=C2=A0=C2=A0 Supported
>>>> +F:=C2=A0=C2=A0=C2=A0 Documentation/devicetree/bindings/timer/starfi=
ve,jh7110-timer.yaml
>>>> +F:=C2=A0=C2=A0=C2=A0 drivers/clocksource/timer-jh7110.c
>>>> +
>>>> =C2=A0=C2=A0 STARFIVE JH71X0 CLOCK DRIVERS
>>>> =C2=A0=C2=A0 M:=C2=A0=C2=A0=C2=A0 Emil Renner Berthing <kernel@esmil=
.dk>
>>>> =C2=A0=C2=A0 M:=C2=A0=C2=A0=C2=A0 Hal Feng <hal.feng@starfivetech.co=
m>
>>>> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconf=
ig
>>>> index 0ba0dc4ecf06..821abcc1e517 100644
>>>> --- a/drivers/clocksource/Kconfig
>>>> +++ b/drivers/clocksource/Kconfig
>>>> @@ -641,6 +641,17 @@ config RISCV_TIMER
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 is accessed via bot=
h the SBI and the rdcycle instruction.=C2=A0 This is
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 required for all RI=
SC-V systems.
>>>> =C2=A0=C2=A0 +config STARFIVE_JH7110_TIMER
>>>> +=C2=A0=C2=A0=C2=A0 bool "Timer for the STARFIVE JH7110 SoC"
>>>> +=C2=A0=C2=A0=C2=A0 depends on ARCH_STARFIVE || COMPILE_TEST
>>>
>>> You may want to use ARCH_STARFIVE only if the platform can make this =
timer optional. Otherwise, set the option from the platform Kconfig and p=
ut the bool "bla bla" if COMPILE_TEST
>>
>> Yes, this timer only be used on the StarFive SoC. So I intend to modif=
y to this:
>>
>> bool "Timer for the STARFIVE JH7110 SoC" if COMPILE_TEST
>> depends on ARCH_STARFIVE
>=20
> In this case, you should change the platform config and select the time=
r from there. Remove the depends on ARCH_STARFIVE so it is possible enabl=
e cross test compilation. Otherwise COMPILE_TEST will not work on other p=
latforms.
>=20
> [ ... ]
>=20

It is not a kernel timer or clocksource. It will not work on other platfo=
rms and is just used on the JH7110 SoC.
I think I needn't remove it. Maybe I modify to this:

bool "Timer for the STARFIVE JH7110 SoC" if COMPILE_TEST
depends on ARCH_STARFIVE || COMPILE_TEST

>>>> +struct jh7110_clkevt {
>>>> +=C2=A0=C2=A0=C2=A0 struct clock_event_device evt;
>>>> +=C2=A0=C2=A0=C2=A0 struct clocksource cs;
>>>> +=C2=A0=C2=A0=C2=A0 bool cs_is_valid;
>>>> +=C2=A0=C2=A0=C2=A0 struct clk *clk;
>>>> +=C2=A0=C2=A0=C2=A0 struct reset_control *rst;
>>>> +=C2=A0=C2=A0=C2=A0 u32 rate;
>>>> +=C2=A0=C2=A0=C2=A0 u32 reload_val;
>>>> +=C2=A0=C2=A0=C2=A0 void __iomem *base;
>>>> +=C2=A0=C2=A0=C2=A0 char name[sizeof("jh7110-timer.chX")];
>>>> +};
>>>> +
>>>> +struct jh7110_timer_priv {
>>>> +=C2=A0=C2=A0=C2=A0 struct clk *pclk;
>>>> +=C2=A0=C2=A0=C2=A0 struct reset_control *prst;
>>>> +=C2=A0=C2=A0=C2=A0 struct jh7110_clkevt clkevt[JH7110_TIMER_CH_MAX]=
;
>>>
>>> Why do you need several clock events and clock sources ?
>>
>> This timer has four counters (channels) which run independently. So ea=
ch counter can have its own clock event and clock source to configure dif=
ferent settings.
>=20
> The kernel only needs one clocksource. Usually multiple clockevents are=
 per-cpu based system.
>=20
> The driver does not seem to have a per cpu timer but just initializing =
multiple clockevents which will end up unused, wasting energy.
>=20
>=20

The board of the StarFive JH7110 SoC has two types of timer : riscv-timer=
 and jh7110-timer. It boots by riscv-timer(clocksource) and the jh7110-ti=
mer is optional and additional.
I think I should initialize the four channels of jh7110-timer as clockeve=
nts not clocksource pre-cpu.

Thanks,
Xingyu Wu

