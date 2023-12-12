Return-Path: <devicetree+bounces-24148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A80EE80E2BC
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 04:27:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E57A1F21BF7
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 03:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A8898C18;
	Tue, 12 Dec 2023 03:27:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EE92E8;
	Mon, 11 Dec 2023 19:27:38 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id CFA2324E2AC;
	Tue, 12 Dec 2023 11:27:36 +0800 (CST)
Received: from EXMBX072.cuchost.com (172.16.6.82) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 12 Dec
 2023 11:27:36 +0800
Received: from localhost.localdomain (202.188.176.82) by EXMBX072.cuchost.com
 (172.16.6.82) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 12 Dec
 2023 11:27:32 +0800
From: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
To: <xingyu.wu@starfivetech.com>
CC: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	<jisheng.teoh@starfivetech.com>, <krzysztof.kozlowski+dt@linaro.org>,
	<krzysztof.kozlowski@linaro.org>, <leyfoon.tan@starfivetech.com>,
	<linux-kernel@vger.kernel.org>, <linux-watchdog@vger.kernel.org>,
	<linux@roeck-us.net>, <robh+dt@kernel.org>, <samin.guo@starfivetech.com>,
	<wim@linux-watchdog.org>
Subject: Re: [PATCH v1 1/2] watchdog: starfive-wdt: Add JH8100 watchdog compatible string 
Date: Tue, 12 Dec 2023 11:27:25 +0800
Message-ID: <20231212032725.2524247-1-jisheng.teoh@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <e7902994-4558-4f91-b8fe-a768961683b5@starfivetech.com>
References: <e7902994-4558-4f91-b8fe-a768961683b5@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX072.cuchost.com
 (172.16.6.82)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

On Tue, 12 Dec 2023 11:01:21 +0800
Xingyu Wu <xingyu.wu@starfivetech.com> wrote:

> On 2023/12/12 0:47, Ji Sheng Teoh wrote:
> > On Mon, 11 Dec 2023 11:06:42 +0100
> > Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> >  =20
> >> On 09/12/2023 15:27, Ji Sheng Teoh wrote: =20
> >> > Add "starfive,jh8100-wdt" compatible for StarFive's JH8100
> >> > watchdog. JH8100 watchdog reuses JH7110 register mapping.
> >> >=20
> >> > Signed-off-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
> >> > Signed-off-by: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
> >> > ---
> >> >  drivers/watchdog/starfive-wdt.c | 1 +
> >> >  1 file changed, 1 insertion(+)
> >> >=20
> >> > diff --git a/drivers/watchdog/starfive-wdt.c
> >> > b/drivers/watchdog/starfive-wdt.c index
> >> > 5f501b41faf9..31785bb373d5 100644 ---
> >> > a/drivers/watchdog/starfive-wdt.c +++
> >> > b/drivers/watchdog/starfive-wdt.c @@ -581,6 +581,7 @@ static
> >> > const struct dev_pm_ops starfive_wdt_pm_ops =3D { static const
> >> > struct of_device_id starfive_wdt_match[] =3D { { .compatible =3D
> >> > "starfive,jh7100-wdt", .data =3D &starfive_wdt_jh7100_variant }, {
> >> > .compatible =3D "starfive,jh7110-wdt", .data =3D
> >> > &starfive_wdt_jh7110_variant },
> >> > +	{ .compatible =3D "starfive,jh8100-wdt", .data =3D
> >> > &starfive_wdt_jh7110_variant },   =20
> >>=20
> >> Device is compatible, so why not expressing it in the bindings and
> >> dropping this change?
> >>=20
> >> Best regards,
> >> Krzysztof
> >>  =20
> >=20
> > Ok, will drop this change.
> >=20
> > Thanks,
> > Ji Sheng =20
>=20
> Hi Ji Sheng,
>=20
> You can add the compatible "starfive,jh8100-wdt" in the bindings and
> add this:
>=20
> 	compatible =3D "starfive,jh8100-wdt", "starfive,jh7110-wdt";
>=20
> in the dts. I think it would be better and does not change the driver.
>=20
> Best regards,
> Xingyu Wu

Thanks for the suggestion, will go with this approach.
I have respin a v2 for this, as it only requires small changes.
v2: https://lore.kernel.org/all/20231212031731.2498584-2-jisheng.teoh@sta=
rfivetech.com/

