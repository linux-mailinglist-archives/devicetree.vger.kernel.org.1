Return-Path: <devicetree+bounces-8830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCCE7CA437
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:33:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C168D28157A
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:33:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3C991CA8A;
	Mon, 16 Oct 2023 09:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCBF38482
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:33:27 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6624AB;
	Mon, 16 Oct 2023 02:33:24 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 4B68B24E43C;
	Mon, 16 Oct 2023 17:33:17 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 16 Oct
 2023 17:33:17 +0800
Received: from [192.168.125.131] (183.27.98.194) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 16 Oct
 2023 17:33:16 +0800
Message-ID: <d127c7ff-8883-4069-9cc9-407be1b6feaf@starfivetech.com>
Date: Mon, 16 Oct 2023 17:27:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] clocksource: Add JH7110 timer driver
Content-Language: en-US
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
CC: <aou@eecs.berkeley.edu>, <conor@kernel.org>, <daniel.lezcano@linaro.org>,
	<devicetree@vger.kernel.org>, <emil.renner.berthing@canonical.com>,
	<krzysztof.kozlowski+dt@linaro.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <p.zabel@pengutronix.de>,
	<palmer@dabbelt.com>, <paul.walmsley@sifive.com>, <robh+dt@kernel.org>,
	<samin.guo@starfivetech.com>, <tglx@linutronix.de>,
	<walker.chen@starfivetech.com>
References: <20231012081015.33121-1-xingyu.wu@starfivetech.com>
 <20231012081015.33121-3-xingyu.wu@starfivetech.com>
 <338544e7-0be8-47c1-a7d7-89990da305d3@wanadoo.fr>
 <926ee8c7-fab9-49d5-831e-48c886c4bc44@starfivetech.com>
 <276ed249-9ee8-4dc9-871f-9c449eb00bcf@wanadoo.fr>
From: Xingyu Wu <xingyu.wu@starfivetech.com>
In-Reply-To: <276ed249-9ee8-4dc9-871f-9c449eb00bcf@wanadoo.fr>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [183.27.98.194]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 2023/10/14 2:02, Christophe JAILLET wrote:
> Le 13/10/2023 =C3=A0 11:34, Xingyu Wu a =C3=A9crit=C2=A0:
>> On 2023/10/13 1:53, Christophe JAILLET wrote:
>>> Le 12/10/2023 =C3=A0 10:10, Xingyu Wu a =C3=A9crit=C2=A0:
>>>> Add timer driver for the StarFive JH7110 SoC.
>>>>
>>>> Signed-off-by: Xingyu Wu <xingyu.wu-bONrM45KWFOXmMXjJBpWqg-XMD5yJDbd=
MStu3cLTcvVIw@public.gmane.orge.org>
>>>
>>> ...
>>
>> It looks normal in my email and the web. Is this due to some settings?
>=20
> Hi,
>=20
> I use gmane.org and a news reader (Thunderbird).
> Gmane sometimes (not always!) obfuscate e-mail addresses.
>=20
> Do not pay attantion to these strange rewritten addresses.
>=20
>>
>>>
>>>> +static int jh7110_timer_probe(struct platform_device *pdev)
>>>> +{
>>>> +=C2=A0=C2=A0=C2=A0 struct jh7110_clkevt *clkevt[JH7110_TIMER_CH_MAX=
];
>>>> +=C2=A0=C2=A0=C2=A0 char name[4];
>>>> +=C2=A0=C2=A0=C2=A0 struct clk *pclk;
>>>> +=C2=A0=C2=A0=C2=A0 struct reset_control *rst;
>>>> +=C2=A0=C2=A0=C2=A0 int ch;
>>>> +=C2=A0=C2=A0=C2=A0 int ret;
>>>> +=C2=A0=C2=A0=C2=A0 void __iomem *base;
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0 base =3D devm_platform_ioremap_resource(pdev, 0)=
;
>>>> +=C2=A0=C2=A0=C2=A0 if (IS_ERR(base))
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return dev_err_probe(&pd=
ev->dev, PTR_ERR(base),
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "failed to map regist=
ers\n");
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0 rst =3D devm_reset_control_get_exclusive(&pdev->=
dev, "apb");
>>>> +=C2=A0=C2=A0=C2=A0 if (IS_ERR(rst))
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return dev_err_probe(&pd=
ev->dev, PTR_ERR(rst), "failed to get apb reset\n");
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0 pclk =3D devm_clk_get_enabled(&pdev->dev, "apb")=
;
>>>> +=C2=A0=C2=A0=C2=A0 if (IS_ERR(pclk))
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return dev_err_probe(&pd=
ev->dev, PTR_ERR(pclk),
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "failed to get & enab=
le apb clock\n");
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0 ret =3D reset_control_deassert(rst);
>>>> +=C2=A0=C2=A0=C2=A0 if (ret)
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return dev_err_probe(&pd=
ev->dev, ret, "failed to deassert apb reset\n");
>>>
>>> Hi,
>>>
>>> I'm not very familiar with the reset_control_[de]assert() functions, =
but shouldn't this be undone by a reset_control_assert() call if an error=
 occurs later?
>>
>> In this case, the reset controller is set from 'assert' state to 'deas=
sert' state. If it is failed and still 'assert' state, I don't think it n=
eed to call reset_control_assert().
>=20
> Emil already explained what I meaned (sorry for not being clear enough)=
.
> I do agree with his proposed approach.
>=20
>>
>>>
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0 for (ch =3D 0; ch < JH7110_TIMER_CH_MAX; ch++) {
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch] =3D devm_kzal=
loc(&pdev->dev, sizeof(*clkevt[ch]), GFP_KERNEL);
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!clkevt[ch])
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
return -ENOMEM;
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 snprintf(name, sizeof(na=
me), "ch%d", ch);
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch]->base =3D bas=
e + JH7110_TIMER_CH_BASE(ch);
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* Ensure timer is disab=
led */
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 jh7110_timer_disable(clk=
evt[ch]);
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rst =3D devm_reset_contr=
ol_get_exclusive(&pdev->dev, name);
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (IS_ERR(rst))
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
return PTR_ERR(rst);
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch]->clk =3D devm=
_clk_get_enabled(&pdev->dev, name);
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (IS_ERR(clkevt[ch]->c=
lk))
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
return PTR_ERR(clkevt[ch]->clk);
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D reset_control_de=
assert(rst);
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
return ret;
>>>
>>> Same here.
>>>
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch]->evt.irq =3D =
platform_get_irq(pdev, ch);
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (clkevt[ch]->evt.irq =
< 0)
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
return clkevt[ch]->evt.irq;
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 snprintf(clkevt[ch]->nam=
e, sizeof(clkevt[ch]->name), "%s.ch%d", pdev->name, ch);
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 jh7110_clockevents_regis=
ter(clkevt[ch]);
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D devm_request_irq=
(&pdev->dev, clkevt[ch]->evt.irq, jh7110_timer_interrupt,
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 IRQF_TIME=
R | IRQF_IRQPOLL,
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch=
]->name, &clkevt[ch]->evt);
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
return ret;
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D jh7110_clocksour=
ce_init(clkevt[ch]);
>>>
>>> Does something should be done if this fails?
>>>
>>> CJ
>>
>> Yes, it should be call reset_control_assert() here and I will add it i=
n next version.
>=20
> My point was for the above reset_control_assert() but also for the reso=
urces allocated within this for loop.
>=20
> I have not checked all paths, but in case of error in the probe:
> =C2=A0 - There is another reset_control_deassert()
>=20
> =C2=A0 - jh7110_clocksource_init() --> jh7110_timer_int_init_enable() -=
-> jh7110_timer_enable()
> =C2=A0=C2=A0=C2=A0 Should jh7110_timer_disable() be called?
>=20
> =C2=A0 - jh7110_clocksource_init() --> clocksource_register_hz().
> =C2=A0=C2=A0=C2=A0 Should clocksource_unregister() be called?
>=20
> If I'm correct and depending on how you update the code, a .remove func=
tion may be needed as well.
>=20
> CJ
>=20

Great. I'm going to add a action which Emil had said to do this job when =
remove or make the error in the loop.=20

Thanks,
Xingyu Wu

>>
>>>
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
return ret;
>>>> +=C2=A0=C2=A0=C2=A0 }
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0 return 0;
>>>> +}
>>>> +
>>>> +static const struct of_device_id jh7110_timer_match[] =3D {
>>>> +=C2=A0=C2=A0=C2=A0 { .compatible =3D "starfive,jh7110-timer", },
>>>> +=C2=A0=C2=A0=C2=A0 { /* sentinel */ }
>>>> +};
>>>> +MODULE_DEVICE_TABLE(of, jh7110_timer_match);
>>>> +
>>>> +static struct platform_driver jh7110_timer_driver =3D {
>>>> +=C2=A0=C2=A0=C2=A0 .probe =3D jh7110_timer_probe,
>>>> +=C2=A0=C2=A0=C2=A0 .driver =3D {
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .name =3D "jh7110-timer"=
,
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .of_match_table =3D jh71=
10_timer_match,
>>>> +=C2=A0=C2=A0=C2=A0 },
>>>> +};
>>>> +module_platform_driver(jh7110_timer_driver);
>>>> +
>>>> +MODULE_AUTHOR("Xingyu Wu <xingyu.wu-bONrM45KWFOXmMXjJBpWqg-XMD5yJDb=
dMRS5n6/RkiaJA@public.gmane.orgne.org>");
>>>> +MODULE_DESCRIPTION("StarFive JH7110 timer driver");
>>>> +MODULE_LICENSE("GPL");
>>>
>>
>> Thanks,
>> Xingyu Wu
>>
>>
>>
>=20


