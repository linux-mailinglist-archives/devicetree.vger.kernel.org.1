Return-Path: <devicetree+bounces-14707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3197E64D5
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 08:58:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 56214B20B4B
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 07:58:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45CE3FC0E;
	Thu,  9 Nov 2023 07:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E166101C1
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 07:58:07 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8040D270C;
	Wed,  8 Nov 2023 23:58:06 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id AC0898086;
	Thu,  9 Nov 2023 15:57:59 +0800 (CST)
Received: from EXMBX161.cuchost.com (172.16.6.71) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 9 Nov
 2023 15:57:59 +0800
Received: from [192.168.125.131] (113.72.144.54) by EXMBX161.cuchost.com
 (172.16.6.71) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 9 Nov
 2023 15:57:59 +0800
Message-ID: <7c2e9b70-201c-45f8-9871-a823cc2ded16@starfivetech.com>
Date: Thu, 9 Nov 2023 15:51:25 +0800
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
 <b402eb4d-a770-4988-8274-8a2544362229@starfivetech.com>
 <1dd3d765-c583-4db9-a0aa-303bfcf871db@linaro.org>
From: Xingyu Wu <xingyu.wu@starfivetech.com>
In-Reply-To: <1dd3d765-c583-4db9-a0aa-303bfcf871db@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [113.72.144.54]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX161.cuchost.com
 (172.16.6.71)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

On 2023/11/8 17:10, Daniel Lezcano wrote:
> On 08/11/2023 04:45, Xingyu Wu wrote:
>> On 2023/11/2 22:29, Daniel Lezcano wrote:
>=20
> [ ... ]
>=20
>> Thanks. The riscv-timer has a clocksource with a higher rating but a
>> clockevent with lower rating[1] than jh7110-timer. I tested the
>> jh7110-timer as clockevent and flagged as one shot, which could do
>> some of the works instead of riscv-timer. And the current_clockevent
>> changed to jh7110-timer.
>>
>> Because the jh7110-timer works as clocksource with lower rating and
>> only will be used as global timer at CPU idle time. Is it necessary
>> to be registered as clocksource? If not, should it just be registered
>> as clockevent?
>=20
> Yes, you can register the clockevent without the clocksource.
>=20
> You mentioned the JH7110 has a better rating than the CPU architected t=
imers. The rating is there to "choose" the best timer, so it is up to the=
 author of the driver check against which timers it compares on the platf=
orm.
>=20
> Usually, CPU timers are the best.
>=20
> It is surprising the timer-riscv has a so low rating. You may double ch=
eck if jh7110 is really better. If it is the case, then implementing a cl=
ockevent per cpu would make more sense, otherwise one clockevent as a glo=
bal timer is enough.
>=20
> Unused clocksource, clockevents should be stopped in case the firmware =
let them in a undetermined state.
>=20
>=20

The interrupts of jh7110-timer each channel are global interrupts like SP=
I(Shared Peripheral Interrupt) not PPI (Private Peripheral Interrupt). Th=
ey are up to PLIC to select which core to respond to. So it is hard to im=
plement a clockevent per cpu core. I tested this with request_percpu_irq(=
) and it failed.

I think it is enough to implement a clockevent as a global timer. Thank y=
ou for your advice.

Best regards,
Xingyu Wu

>> [1
>> https://git.kernel.org/pub/scm/linux/kernel/git/thermal/linux.git/tree=
/drivers/clocksource/timer-riscv.c#n45
>>
>> =C2=A0Thanks, Xingyu Wu
>=20


