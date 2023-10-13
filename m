Return-Path: <devicetree+bounces-8461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A037C842F
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:16:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B96C2821B7
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68DB3134DA;
	Fri, 13 Oct 2023 11:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="hM1QRtzp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0882810787
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:16:10 +0000 (UTC)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB176CE
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 04:16:07 -0700 (PDT)
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4A66E3F63D
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1697195765;
	bh=YtqXYMDeVBp0iq45r4Ku35W5aryODZRVP0gBJg/Jrhg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=hM1QRtzpQVIYyKR60YLr9yb6oJVDOGPKX7Of1XvjakQYGUGuc6dPaR53fqzjUr0qO
	 QmoJZmOlFXlPAi0o3o9kHoGN8LhT4dtYHhvkRHk1Lona3zBbN0tLRI7/GUSfGGWG2Y
	 3lbrjzVwznrzmAUszanXej/rfmg5Cf6XK2KlNo0kbv2id8IcHIC7AUN412iPMQxFKF
	 AQFsyKmFnuPJTL6SB9EOAFZoGFzVeWR+9JugyVkCBwJGf1CJgDnL92wSP1B8cSv0sS
	 nhtCTrFoTtnhqNxCfXqiYD8KjAZi33enLkOFqrliys3vUSpGNVH3EPT8jaKgrFryw7
	 xxmgZMVj/OfTw==
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-77407e21d49so209514185a.0
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 04:16:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697195764; x=1697800564;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YtqXYMDeVBp0iq45r4Ku35W5aryODZRVP0gBJg/Jrhg=;
        b=kHz5fC+WQx+StzEPeX2/PuntMdgyVjez+C2qFHxQ3z0WVaWSDSpvRox+Z2/yM78hnJ
         nbHQGFARqUGHaBfsRU9XZKSacVJlz3FEJ0Vgg4juWC+15HGCqPN4TCbo5KjikLbLV0G3
         qIrSvC9uSEcp6TrYknjORPa2CrP1SulJeZMikevEpx9U8rJHMfM0Jl7AEIw0jbT2qqST
         DE2fLNtWJHau58FGo4Hifg55RCvhjw0tRojF1yPfzAOJaPq84UIkCoN0dd3twCy9wsoD
         dEL6EINq/W92n49H5AMbuk5LNmYFcSypLZvVYLGBN0+0GxDq/M8YKQOwTmOjwaOE24+x
         Od8Q==
X-Gm-Message-State: AOJu0YzntPj3J8gXIbjqQvYhX5w/MG/JuZ2+fljadnhsk/AryZJJvtDd
	z94vFpxQ0Q159AF/HC2BfAqRsXGocTPYZ0PWRac2bd/dLG1zg9p0Zopnn1KWfje18ccRyGxOhww
	YKxa6oPLDwn6cGhQdYUJscw4iDn1he6DvuEpgNOMvpgOMVOwzk7yGLtI=
X-Received: by 2002:a05:622a:190a:b0:418:c70:113e with SMTP id w10-20020a05622a190a00b004180c70113emr29420329qtc.40.1697195764215;
        Fri, 13 Oct 2023 04:16:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqa6O42MZPuRQEylkmYqh/sPI6dX2Nr8H6zR/JgoLbM1SlKfTaPLKB6Fy+0N0lhpS63jYsCX2I1+w+84+R8Ik=
X-Received: by 2002:a05:622a:190a:b0:418:c70:113e with SMTP id
 w10-20020a05622a190a00b004180c70113emr29420316qtc.40.1697195763893; Fri, 13
 Oct 2023 04:16:03 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 13 Oct 2023 04:16:03 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <926ee8c7-fab9-49d5-831e-48c886c4bc44@starfivetech.com>
References: <20231012081015.33121-1-xingyu.wu@starfivetech.com>
 <20231012081015.33121-3-xingyu.wu@starfivetech.com> <338544e7-0be8-47c1-a7d7-89990da305d3@wanadoo.fr>
 <926ee8c7-fab9-49d5-831e-48c886c4bc44@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 13 Oct 2023 04:16:02 -0700
Message-ID: <CAJM55Z-hsebX9e3+MNc0GcXO=ao7OB=EYWXp865VQg3L3gyPJw@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] clocksource: Add JH7110 timer driver
To: Xingyu Wu <xingyu.wu@starfivetech.com>, 
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: aou@eecs.berkeley.edu, conor@kernel.org, daniel.lezcano@linaro.org, 
	devicetree@vger.kernel.org, emil.renner.berthing@canonical.com, 
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, p.zabel@pengutronix.de, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, robh+dt@kernel.org, samin.guo@starfivetech.com, 
	tglx@linutronix.de, walker.chen@starfivetech.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Xingyu Wu wrote:
> On 2023/10/13 1:53, Christophe JAILLET wrote:
> > Le 12/10/2023 =C3=A0 10:10, Xingyu Wu a =C3=A9crit=C2=A0:
> >> Add timer driver for the StarFive JH7110 SoC.
> >>
> >> Signed-off-by: Xingyu Wu <xingyu.wu-bONrM45KWFOXmMXjJBpWqg@public.gman=
e.org>
> >
> > ...
>
> It looks normal in my email and the web. Is this due to some settings?
>
> >
> >> +static int jh7110_timer_probe(struct platform_device *pdev)
> >> +{
> >> +=C2=A0=C2=A0=C2=A0 struct jh7110_clkevt *clkevt[JH7110_TIMER_CH_MAX];
> >> +=C2=A0=C2=A0=C2=A0 char name[4];
> >> +=C2=A0=C2=A0=C2=A0 struct clk *pclk;
> >> +=C2=A0=C2=A0=C2=A0 struct reset_control *rst;
> >> +=C2=A0=C2=A0=C2=A0 int ch;
> >> +=C2=A0=C2=A0=C2=A0 int ret;
> >> +=C2=A0=C2=A0=C2=A0 void __iomem *base;
> >> +
> >> +=C2=A0=C2=A0=C2=A0 base =3D devm_platform_ioremap_resource(pdev, 0);
> >> +=C2=A0=C2=A0=C2=A0 if (IS_ERR(base))
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return dev_err_probe(&pdev=
->dev, PTR_ERR(base),
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "failed to map register=
s\n");
> >> +
> >> +=C2=A0=C2=A0=C2=A0 rst =3D devm_reset_control_get_exclusive(&pdev->de=
v, "apb");
> >> +=C2=A0=C2=A0=C2=A0 if (IS_ERR(rst))
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return dev_err_probe(&pdev=
->dev, PTR_ERR(rst), "failed to get apb reset\n");
> >> +
> >> +=C2=A0=C2=A0=C2=A0 pclk =3D devm_clk_get_enabled(&pdev->dev, "apb");
> >> +=C2=A0=C2=A0=C2=A0 if (IS_ERR(pclk))
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return dev_err_probe(&pdev=
->dev, PTR_ERR(pclk),
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "failed to get & enable=
 apb clock\n");
> >> +
> >> +=C2=A0=C2=A0=C2=A0 ret =3D reset_control_deassert(rst);
> >> +=C2=A0=C2=A0=C2=A0 if (ret)
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return dev_err_probe(&pdev=
->dev, ret, "failed to deassert apb reset\n");
> >
> > Hi,
> >
> > I'm not very familiar with the reset_control_[de]assert() functions, bu=
t shouldn't this be undone by a reset_control_assert() call if an error occ=
urs later?
>
> In this case, the reset controller is set from 'assert' state to 'deasser=
t' state. If it is failed and still 'assert' state, I don't think it need t=
o call reset_control_assert().

The problem is if the assert succeeds, but the probe function fails later. =
Then
there is nothing to undo the deassert. A common pattern I see is something =
like
this:

static void jh7110_timer_reset_control_assert(void *data)
{
	reset_control_assert(data);
}

...

	ret =3D reset_control_deassert(rst);
	if (ret)
		return dev_err_probe(...);

	ret =3D devm_add_action_or_reset(&pdev->dev,
jh7110_timer_reset_control_assert, rst);
	if (ret)
		return ret;

/Emil

> >
> >> +
> >> +=C2=A0=C2=A0=C2=A0 for (ch =3D 0; ch < JH7110_TIMER_CH_MAX; ch++) {
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch] =3D devm_kzallo=
c(&pdev->dev, sizeof(*clkevt[ch]), GFP_KERNEL);
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!clkevt[ch])
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 re=
turn -ENOMEM;
> >> +
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 snprintf(name, sizeof(name=
), "ch%d", ch);
> >> +
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch]->base =3D base =
+ JH7110_TIMER_CH_BASE(ch);
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* Ensure timer is disable=
d */
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 jh7110_timer_disable(clkev=
t[ch]);
> >> +
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rst =3D devm_reset_control=
_get_exclusive(&pdev->dev, name);
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (IS_ERR(rst))
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 re=
turn PTR_ERR(rst);
> >> +
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch]->clk =3D devm_c=
lk_get_enabled(&pdev->dev, name);
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (IS_ERR(clkevt[ch]->clk=
))
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 re=
turn PTR_ERR(clkevt[ch]->clk);
> >> +
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D reset_control_deas=
sert(rst);
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 re=
turn ret;
> >
> > Same here.
> >
> >> +
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch]->evt.irq =3D pl=
atform_get_irq(pdev, ch);
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (clkevt[ch]->evt.irq < =
0)
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 re=
turn clkevt[ch]->evt.irq;
> >> +
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 snprintf(clkevt[ch]->name,=
 sizeof(clkevt[ch]->name), "%s.ch%d", pdev->name, ch);
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 jh7110_clockevents_registe=
r(clkevt[ch]);
> >> +
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D devm_request_irq(&=
pdev->dev, clkevt[ch]->evt.irq, jh7110_timer_interrupt,
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 IRQF_TIMER =
| IRQF_IRQPOLL,
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clkevt[ch]-=
>name, &clkevt[ch]->evt);
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 re=
turn ret;
> >> +
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D jh7110_clocksource=
_init(clkevt[ch]);
> >
> > Does something should be done if this fails?
> >
> > CJ
>
> Yes, it should be call reset_control_assert() here and I will add it in n=
ext version.
>
> >
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 re=
turn ret;
> >> +=C2=A0=C2=A0=C2=A0 }
> >> +
> >> +=C2=A0=C2=A0=C2=A0 return 0;
> >> +}
> >> +
> >> +static const struct of_device_id jh7110_timer_match[] =3D {
> >> +=C2=A0=C2=A0=C2=A0 { .compatible =3D "starfive,jh7110-timer", },
> >> +=C2=A0=C2=A0=C2=A0 { /* sentinel */ }
> >> +};
> >> +MODULE_DEVICE_TABLE(of, jh7110_timer_match);
> >> +
> >> +static struct platform_driver jh7110_timer_driver =3D {
> >> +=C2=A0=C2=A0=C2=A0 .probe =3D jh7110_timer_probe,
> >> +=C2=A0=C2=A0=C2=A0 .driver =3D {
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .name =3D "jh7110-timer",
> >> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .of_match_table =3D jh7110=
_timer_match,
> >> +=C2=A0=C2=A0=C2=A0 },
> >> +};
> >> +module_platform_driver(jh7110_timer_driver);
> >> +
> >> +MODULE_AUTHOR("Xingyu Wu <xingyu.wu-bONrM45KWFOXmMXjJBpWqg@public.gma=
ne.org>");
> >> +MODULE_DESCRIPTION("StarFive JH7110 timer driver");
> >> +MODULE_LICENSE("GPL");
> >
>
> Thanks,
> Xingyu Wu
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

