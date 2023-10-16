Return-Path: <devicetree+bounces-8780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3397CA059
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:16:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A50BB203D5
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 07:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D657C156D1;
	Mon, 16 Oct 2023 07:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225A615491
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 07:16:38 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98473F7;
	Mon, 16 Oct 2023 00:16:31 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id E5B8880B2;
	Mon, 16 Oct 2023 15:16:22 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 16 Oct
 2023 15:16:23 +0800
Received: from [192.168.125.131] (183.27.98.194) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 16 Oct
 2023 15:16:21 +0800
Message-ID: <51cd7454-566f-4319-835d-ec0401f562df@starfivetech.com>
Date: Mon, 16 Oct 2023 15:10:15 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] clocksource: Add JH7110 timer driver
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, "Christophe
 JAILLET" <christophe.jaillet@wanadoo.fr>
CC: <aou@eecs.berkeley.edu>, <conor@kernel.org>, <daniel.lezcano@linaro.org>,
	<devicetree@vger.kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<p.zabel@pengutronix.de>, <palmer@dabbelt.com>, <paul.walmsley@sifive.com>,
	<robh+dt@kernel.org>, <samin.guo@starfivetech.com>, <tglx@linutronix.de>,
	<walker.chen@starfivetech.com>
References: <20231012081015.33121-1-xingyu.wu@starfivetech.com>
 <20231012081015.33121-3-xingyu.wu@starfivetech.com>
 <338544e7-0be8-47c1-a7d7-89990da305d3@wanadoo.fr>
 <926ee8c7-fab9-49d5-831e-48c886c4bc44@starfivetech.com>
 <CAJM55Z-hsebX9e3+MNc0GcXO=ao7OB=EYWXp865VQg3L3gyPJw@mail.gmail.com>
Content-Language: en-US
From: Xingyu Wu <xingyu.wu@starfivetech.com>
In-Reply-To: <CAJM55Z-hsebX9e3+MNc0GcXO=ao7OB=EYWXp865VQg3L3gyPJw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [183.27.98.194]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 2023/10/13 19:16, Emil Renner Berthing wrote:
> Xingyu Wu wrote:
>> On 2023/10/13 1:53, Christophe JAILLET wrote:
>> > Le 12/10/2023 =C3=A0 10:10, Xingyu Wu a =C3=A9crit=C2=A0:
>> >> Add timer driver for the StarFive JH7110 SoC.
>> >>
>> >> Signed-off-by: Xingyu Wu <xingyu.wu-bONrM45KWFOXmMXjJBpWqg@public.g=
mane.org>
>> >
>> > ...
>>
>> It looks normal in my email and the web. Is this due to some settings?
>>
>> >
>> >> +static int jh7110_timer_probe(struct platform_device *pdev)
>> >> +{
>> >> +=C2=A0=C2=A0=C2=A0 struct jh7110_clkevt *clkevt[JH7110_TIMER_CH_MA=
X];
>> >> +=C2=A0=C2=A0=C2=A0 char name[4];
>> >> +=C2=A0=C2=A0=C2=A0 struct clk *pclk;
>> >> +=C2=A0=C2=A0=C2=A0 struct reset_control *rst;
>> >> +=C2=A0=C2=A0=C2=A0 int ch;
>> >> +=C2=A0=C2=A0=C2=A0 int ret;
>> >> +=C2=A0=C2=A0=C2=A0 void __iomem *base;
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0 base =3D devm_platform_ioremap_resource(pdev, 0=
);
>> >> +=C2=A0=C2=A0=C2=A0 if (IS_ERR(base))
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return dev_err_probe(&p=
dev->dev, PTR_ERR(base),
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "failed to map reg=
isters\n");
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0 rst =3D devm_reset_control_get_exclusive(&pdev-=
>dev, "apb");
>> >> +=C2=A0=C2=A0=C2=A0 if (IS_ERR(rst))
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return dev_err_probe(&p=
dev->dev, PTR_ERR(rst), "failed to get apb reset\n");
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0 pclk =3D devm_clk_get_enabled(&pdev->dev, "apb"=
);
>> >> +=C2=A0=C2=A0=C2=A0 if (IS_ERR(pclk))
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return dev_err_probe(&p=
dev->dev, PTR_ERR(pclk),
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "failed to get & e=
nable apb clock\n");
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0 ret =3D reset_control_deassert(rst);
>> >> +=C2=A0=C2=A0=C2=A0 if (ret)
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return dev_err_probe(&p=
dev->dev, ret, "failed to deassert apb reset\n");
>> >
>> > Hi,
>> >
>> > I'm not very familiar with the reset_control_[de]assert() functions,=
 but shouldn't this be undone by a reset_control_assert() call if an erro=
r occurs later?
>>
>> In this case, the reset controller is set from 'assert' state to 'deas=
sert' state. If it is failed and still 'assert' state, I don't think it n=
eed to call reset_control_assert().
>=20
> The problem is if the assert succeeds, but the probe function fails lat=
er. Then
> there is nothing to undo the deassert. A common pattern I see is someth=
ing like
> this:
>=20
> static void jh7110_timer_reset_control_assert(void *data)
> {
> 	reset_control_assert(data);
> }
>=20
> ...
>=20
> 	ret =3D reset_control_deassert(rst);
> 	if (ret)
> 		return dev_err_probe(...);
>=20
> 	ret =3D devm_add_action_or_reset(&pdev->dev,
> jh7110_timer_reset_control_assert, rst);
> 	if (ret)
> 		return ret;
>=20
> /Emil

It is a good idea! Let me try it.

Thanks,
Xingyu Wu

>=20
>> >
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0 for (ch =3D 0; ch < JH7110_TIMER_CH_MAX; ch++) =
{
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch] =3D devm_kza=
lloc(&pdev->dev, sizeof(*clkevt[ch]), GFP_KERNEL);
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!clkevt[ch])
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 return -ENOMEM;
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 snprintf(name, sizeof(n=
ame), "ch%d", ch);
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch]->base =3D ba=
se + JH7110_TIMER_CH_BASE(ch);
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* Ensure timer is disa=
bled */
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 jh7110_timer_disable(cl=
kevt[ch]);
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rst =3D devm_reset_cont=
rol_get_exclusive(&pdev->dev, name);
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (IS_ERR(rst))
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 return PTR_ERR(rst);
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch]->clk =3D dev=
m_clk_get_enabled(&pdev->dev, name);
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (IS_ERR(clkevt[ch]->=
clk))
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 return PTR_ERR(clkevt[ch]->clk);
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D reset_control_d=
eassert(rst);
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 return ret;
>> >
>> > Same here.
>> >
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch]->evt.irq =3D=
 platform_get_irq(pdev, ch);
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (clkevt[ch]->evt.irq=
 < 0)
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 return clkevt[ch]->evt.irq;
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 snprintf(clkevt[ch]->na=
me, sizeof(clkevt[ch]->name), "%s.ch%d", pdev->name, ch);
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 jh7110_clockevents_regi=
ster(clkevt[ch]);
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D devm_request_ir=
q(&pdev->dev, clkevt[ch]->evt.irq, jh7110_timer_interrupt,
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 IRQF_T=
IMER | IRQF_IRQPOLL,
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt=
[ch]->name, &clkevt[ch]->evt);
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 return ret;
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D jh7110_clocksou=
rce_init(clkevt[ch]);
>> >
>> > Does something should be done if this fails?
>> >
>> > CJ
>>
>> Yes, it should be call reset_control_assert() here and I will add it i=
n next version.
>>
>> >
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 return ret;
>> >> +=C2=A0=C2=A0=C2=A0 }
>> >> +
>> >> +=C2=A0=C2=A0=C2=A0 return 0;
>> >> +}
>> >> +
>> >> +static const struct of_device_id jh7110_timer_match[] =3D {
>> >> +=C2=A0=C2=A0=C2=A0 { .compatible =3D "starfive,jh7110-timer", },
>> >> +=C2=A0=C2=A0=C2=A0 { /* sentinel */ }
>> >> +};
>> >> +MODULE_DEVICE_TABLE(of, jh7110_timer_match);
>> >> +
>> >> +static struct platform_driver jh7110_timer_driver =3D {
>> >> +=C2=A0=C2=A0=C2=A0 .probe =3D jh7110_timer_probe,
>> >> +=C2=A0=C2=A0=C2=A0 .driver =3D {
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .name =3D "jh7110-timer=
",
>> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .of_match_table =3D jh7=
110_timer_match,
>> >> +=C2=A0=C2=A0=C2=A0 },
>> >> +};
>> >> +module_platform_driver(jh7110_timer_driver);
>> >> +
>> >> +MODULE_AUTHOR("Xingyu Wu <xingyu.wu-bONrM45KWFOXmMXjJBpWqg@public.=
gmane.org>");
>> >> +MODULE_DESCRIPTION("StarFive JH7110 timer driver");
>> >> +MODULE_LICENSE("GPL");
>> >
>>
>> Thanks,
>> Xingyu Wu
>>
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv


