Return-Path: <devicetree+bounces-14471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A30717E4F95
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 04:51:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAA881C20A23
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 03:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D0B8806;
	Wed,  8 Nov 2023 03:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72DE71C38
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 03:51:46 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B97ED7D;
	Tue,  7 Nov 2023 19:51:45 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 2BE3C807C;
	Wed,  8 Nov 2023 11:51:37 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 8 Nov
 2023 11:51:37 +0800
Received: from [192.168.125.131] (113.72.147.118) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 8 Nov
 2023 11:51:35 +0800
Message-ID: <b402eb4d-a770-4988-8274-8a2544362229@starfivetech.com>
Date: Wed, 8 Nov 2023 11:45:03 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] clocksource: Add JH7110 timer driver
Content-Language: en-US
To: Daniel Lezcano <daniel.lezcano@linaro.org>
CC: Thomas Gleixner <tglx@linutronix.de>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>, Christophe JAILLET
	<christophe.jaillet@wanadoo.fr>, <linux-riscv@lists.infradead.org>,
	<devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley
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
 <72ad5029-42b2-481a-887f-8f6079d8859b@starfivetech.com>
 <a8f0011c-5689-4071-b5e0-90bd6b7c66bc@linaro.org>
From: Xingyu Wu <xingyu.wu@starfivetech.com>
In-Reply-To: <a8f0011c-5689-4071-b5e0-90bd6b7c66bc@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [113.72.147.118]
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

On 2023/11/2 22:29, Daniel Lezcano wrote:
>=20
> Hi Xingyu,
>=20
> On 02/11/2023 14:15, Xingyu Wu wrote:
>=20
> [ ... ]
>=20
>>>>>>>> +struct jh7110_clkevt { +=C2=A0=C2=A0=C2=A0 struct clock_event_d=
evice
>>>>>>>> evt; + struct clocksource cs; +=C2=A0=C2=A0=C2=A0 bool cs_is_val=
id; +
>>>>>>>> struct clk *clk; +=C2=A0=C2=A0=C2=A0 struct reset_control *rst; =
+=C2=A0=C2=A0=C2=A0 u32
>>>>>>>> rate; +=C2=A0=C2=A0=C2=A0 u32 reload_val; +=C2=A0=C2=A0=C2=A0 vo=
id __iomem *base; +
>>>>>>>> char name[sizeof("jh7110-timer.chX")]; +}; + +struct jh7110_time=
r_priv { +=C2=A0=C2=A0=C2=A0 struct clk *pclk; +=C2=A0=C2=A0=C2=A0 struct=
 reset_control *prst; +=C2=A0=C2=A0=C2=A0 struct jh7110_clkevt clkevt[JH7=
110_TIMER_CH_MAX];
>>>>>>>
>>>>>>> Why do you need several clock events and clock sources ?
>>>>>>
>>>>>> This timer has four counters (channels) which run
>>>>>> independently. So each counter can have its own clock event
>>>>>> and clock source to configure different settings.
>>>>>
>>>>> The kernel only needs one clocksource. Usually multiple
>>>>> clockevents are per-cpu based system.
>>>>>
>>>>> The driver does not seem to have a per cpu timer but just initializ=
ing multiple clockevents which will end up unused,
>>>>> wasting energy.
>>>>>
>>>>>
>>>>
>>>> The board of the StarFive JH7110 SoC has two types of timer : riscv-=
timer and jh7110-timer. It boots by
>>>> riscv-timer(clocksource) and the jh7110-timer is optional and
>>>> additional. I think I should initialize the four channels of
>>>> jh7110-timer as clockevents not clocksource pre-cpu.
>>>
>>> If no clocksource is needed on this SoC because riscv timers are
>>> used, then it is not useful to register a clocksource for this
>>> timer and the corresponding code can go away.
>>>
>>> If the clockevent is optional why do you need this driver at all?
>>>
>>>
>>>
>>
>> Hi Daniel,
>>
>> Sorry, maybe I didn't express it clearly enough. I use this
>> jh7110-timer as a global timer on the SoC and riscv-timer as cpu
>> local timer. So these are something different.
>>
>> These four counters in this jh7110-timer are exactly the same and
>> independent of each other. If this timer is used as a global timer,
>> do I use only one or all of the counters to register clocksource and
>> clockevent?
>=20
> Yes.
>=20
> The global timer is only there when the CPU is powered down at idle tim=
e, so the time framework will switch to the broadcast timer and there can=
 be only one instance.
>=20
> If you register all the counters, only one will be used by the kernel, =
so it pointless to add them all.
>=20
> On the clocksource side, you may want to question if it is really usefu=
l. The riscv has a clocksource with a higher rate and flagged as continuo=
us [1]. So if the JH7110 clocksource is registered, it won't be used too.
>=20
> Hope that helps
>=20
> =C2=A0 -- Daniel
>=20
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/thermal/linux.git/t=
ree/drivers/clocksource/timer-riscv.c#n68
>=20

Thanks. The riscv-timer has a clocksource with a higher rating but a cloc=
kevent with lower rating[1] than jh7110-timer. I tested the jh7110-timer =
as clockevent and flagged as one shot, which could do some of the works i=
nstead of riscv-timer. And the current_clockevent changed to jh7110-timer=
.

Because the jh7110-timer works as clocksource with lower rating and only =
will be used as global timer at CPU idle time. Is it necessary to be regi=
stered as clocksource? If not, should it just be registered as clockevent=
?

[1] https://git.kernel.org/pub/scm/linux/kernel/git/thermal/linux.git/tre=
e/drivers/clocksource/timer-riscv.c#n45

Thanks,
Xingyu Wu

