Return-Path: <devicetree+bounces-13330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7EA7DDAEC
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 03:23:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 248E52818CE
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 02:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A5C3EA6;
	Wed,  1 Nov 2023 02:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89EAA10EE
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 02:23:00 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEE33101;
	Tue, 31 Oct 2023 19:22:57 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id A24B58139;
	Wed,  1 Nov 2023 10:22:47 +0800 (CST)
Received: from EXMBX168.cuchost.com (172.16.6.78) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 1 Nov
 2023 10:22:47 +0800
Received: from [192.168.120.47] (171.223.208.138) by EXMBX168.cuchost.com
 (172.16.6.78) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 1 Nov
 2023 10:22:46 +0800
Message-ID: <7d64ea1d-b573-4a69-ba0c-4cbfab638c5e@starfivetech.com>
Date: Wed, 1 Nov 2023 10:22:44 +0800
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
Content-Language: en-US
From: William Qiu <william.qiu@starfivetech.com>
In-Reply-To: <20231020112539.gctx5uj2rrhryulo@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [171.223.208.138]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX168.cuchost.com
 (172.16.6.78)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable



On 2023/10/20 19:25, Uwe Kleine-K=C3=B6nig wrote:
>> +	void __iomem *base =3D pwm->data->get_ch_base ?
>> +			     pwm->data->get_ch_base(pwm->regs, dev->hwpwm) : pwm->regs;
>> +	u32 period_data, duty_data, ctrl_data;
>> +
>> +	period_data =3D readl(REG_OCPWM_LRC(base));
>> +	duty_data =3D readl(REG_OCPWM_HRC(base));
>> +	ctrl_data =3D readl(REG_OCPWM_CTRL(base));
>> +
>> +	state->period =3D DIV_ROUND_CLOSEST_ULL((u64)period_data * NSEC_PER_=
SEC, pwm->clk_rate);
>> +	state->duty_cycle =3D DIV_ROUND_CLOSEST_ULL((u64)duty_data * NSEC_PE=
R_SEC, pwm->clk_rate);
>=20
> Please test your driver with PWM_DEBUG enabled. The rounding is wrong
> here.
>=20

Hi Uwe,

The conclusion after checking is: when the period or duty_cycle value set
by the user is not divisible (1000000000/49.5M), there will be an error.
This error is due to hardware accuracy. So why is rounding is wrong?
rockchip also has a similar implementation drivers/pwm/ pwm-rockchip.c

Best regards,
William

