Return-Path: <devicetree+bounces-13969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD357E1B2E
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 08:27:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 175DEB20AFA
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 07:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D426C8CF;
	Mon,  6 Nov 2023 07:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD12D26D
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 07:26:59 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2183C112;
	Sun,  5 Nov 2023 23:26:57 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id BC38A24DE73;
	Mon,  6 Nov 2023 15:26:48 +0800 (CST)
Received: from EXMBX168.cuchost.com (172.16.6.78) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 6 Nov
 2023 15:26:48 +0800
Received: from [192.168.120.47] (171.223.208.138) by EXMBX168.cuchost.com
 (172.16.6.78) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 6 Nov
 2023 15:26:47 +0800
Message-ID: <6b57eb4b-241f-4530-b639-5a2e2c55cfd3@starfivetech.com>
Date: Mon, 6 Nov 2023 15:26:45 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/4] pwm: opencores: Add PWM driver support
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-pwm@vger.kernel.org>, "Emil Renner
 Berthing" <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>, Thierry Reding
	<thierry.reding@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Hal Feng <hal.feng@starfivetech.com>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>
References: <20231020103741.557735-1-william.qiu@starfivetech.com>
 <20231020103741.557735-3-william.qiu@starfivetech.com>
 <20231020112539.gctx5uj2rrhryulo@pengutronix.de>
 <7d64ea1d-b573-4a69-ba0c-4cbfab638c5e@starfivetech.com>
 <20231102113016.jgsh7jru6vjv4vsp@pengutronix.de>
Content-Language: en-US
From: William Qiu <william.qiu@starfivetech.com>
In-Reply-To: <20231102113016.jgsh7jru6vjv4vsp@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [171.223.208.138]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX168.cuchost.com
 (172.16.6.78)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable



On 2023/11/2 19:30, Uwe Kleine-K=C3=B6nig wrote:
> Hello William,
>=20
> On Wed, Nov 01, 2023 at 10:22:44AM +0800, William Qiu wrote:
>>=20
>>=20
>> On 2023/10/20 19:25, Uwe Kleine-K=C3=B6nig wrote:
>> >> +	void __iomem *base =3D pwm->data->get_ch_base ?
>> >> +			     pwm->data->get_ch_base(pwm->regs, dev->hwpwm) : pwm->regs;
>> >> +	u32 period_data, duty_data, ctrl_data;
>> >> +
>> >> +	period_data =3D readl(REG_OCPWM_LRC(base));
>> >> +	duty_data =3D readl(REG_OCPWM_HRC(base));
>> >> +	ctrl_data =3D readl(REG_OCPWM_CTRL(base));
>> >> +
>> >> +	state->period =3D DIV_ROUND_CLOSEST_ULL((u64)period_data * NSEC_P=
ER_SEC, pwm->clk_rate);
>> >> +	state->duty_cycle =3D DIV_ROUND_CLOSEST_ULL((u64)duty_data * NSEC=
_PER_SEC, pwm->clk_rate);
>> >=20
>> > Please test your driver with PWM_DEBUG enabled. The rounding is wron=
g
>> > here.
>>=20
>> The conclusion after checking is: when the period or duty_cycle value =
set
>> by the user is not divisible (1000000000/49.5M), there will be an erro=
r.
>> This error is due to hardware accuracy. So why is rounding is wrong?
>> rockchip also has a similar implementation drivers/pwm/ pwm-rockchip.c
>=20
> I fail to follow. Where is an error?
>=20
> The general policy (for new drivers at least) is to implement the
> biggest period possible not bigger than the requested period. That mean=
s
> that .apply must round down and to make .apply =E2=88=98 .get_state ide=
mpotent
> .get_state must round up to match.
>=20
> Assuming a clkrate of 49500000 Hz the actual period for REG_OCPWM_LRC =3D
> 400 is 8080.808ns and for REG_OCPWM_LRC =3D 401 is 8101.010.
>=20
> So with REG_OCPWM_LRC =3D 401 .get_state should report state.period =3D=
 8102
> [ns] because if you call .apply with .period =3D 8101 [ns] you're suppo=
sed
> to use REG_OCPWM_LRC =3D 400.
>=20
> Rounding using DIV_ROUND_CLOSEST doesn't give consistent behaviour in
> some cases. Consider a PWM that can implement the following periods (an=
d
> none in between):
>=20
> 	20.1 ns
> 	20.4 ns
> 	21.7 ns
>=20
> With round-to-nearest a request to configure 21 ns will yield 20.4 ns.
> If you call .get_state there the driver will return 20 ns. However
> configuring 20 ns results in a period of 20.1 ns.
>=20
> With rounding as requested above you get a consistent behaviour. After
> .apply_state(period=3D21) .get_state() returns period=3D21.
>=20
> Best regards
> Uwe
>=20
I see, then we'll use DIV_ROUND_DOWN_ULL for .apply() and DIV_ROUND_UP_UL=
L
for .get_state().
Thank you for your answer.

Best regards,
William

