Return-Path: <devicetree+bounces-24770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D44A18112C2
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 14:24:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F47928224C
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 13:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B3132C876;
	Wed, 13 Dec 2023 13:24:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCC9CE3;
	Wed, 13 Dec 2023 05:24:32 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 1D5DA24E246;
	Wed, 13 Dec 2023 21:24:24 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 13 Dec
 2023 21:24:23 +0800
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 13 Dec
 2023 21:24:23 +0800
Received: from EXMBX061.cuchost.com ([fe80::413f:35c8:bf4f:599a]) by
 EXMBX061.cuchost.com ([fe80::413f:35c8:bf4f:599a%14]) with mapi id
 15.00.1497.044; Wed, 13 Dec 2023 21:24:23 +0800
From: Leyfoon Tan <leyfoon.tan@starfivetech.com>
To: Conor Dooley <conor@kernel.org>, JeeHeng Sia
	<jeeheng.sia@starfivetech.com>
CC: "kernel@esmil.dk" <kernel@esmil.dk>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "krzk@kernel.org" <krzk@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "paul.walmsley@sifive.com"
	<paul.walmsley@sifive.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>,
	"aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, "daniel.lezcano@linaro.org"
	<daniel.lezcano@linaro.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
	"anup@brainfault.org" <anup@brainfault.org>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>, "jirislaby@kernel.org" <jirislaby@kernel.org>,
	"michal.simek@amd.com" <michal.simek@amd.com>, Michael Zhu
	<michael.zhu@starfivetech.com>, "drew@beagleboard.org"
	<drew@beagleboard.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-riscv@lists.infradead.org"
	<linux-riscv@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Conor Dooley <conor.dooley@microchip.com>
Subject: RE: [PATCH v3 2/6] dt-bindings: riscv: Add StarFive JH8100 SoC
Thread-Topic: [PATCH v3 2/6] dt-bindings: riscv: Add StarFive JH8100 SoC
Thread-Index: AQHaJE/+gN06PgKn10+OgNsQzAP7lrCmtRSAgACQEsA=
Date: Wed, 13 Dec 2023 13:24:23 +0000
Message-ID: <84b808cb028c40a29c9f81011931afba@EXMBX061.cuchost.com>
References: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>
 <20231201121410.95298-3-jeeheng.sia@starfivetech.com>
 <20231213-imminent-favorable-a7d25e6555af@spud>
In-Reply-To: <20231213-imminent-favorable-a7d25e6555af@spud>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-transport-fromentityheader: Hosted
x-yovoleruleagent: yovoleflag
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0



> -----Original Message-----
> From: Conor Dooley <conor@kernel.org>
> Sent: Wednesday, December 13, 2023 8:43 PM
> To: JeeHeng Sia <jeeheng.sia@starfivetech.com>
> Cc: kernel@esmil.dk; robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.or=
g;
> krzk@kernel.org; conor+dt@kernel.org; paul.walmsley@sifive.com;
> palmer@dabbelt.com; aou@eecs.berkeley.edu; daniel.lezcano@linaro.org;
> tglx@linutronix.de; anup@brainfault.org; gregkh@linuxfoundation.org;
> jirislaby@kernel.org; michal.simek@amd.com; Michael Zhu
> <michael.zhu@starfivetech.com>; drew@beagleboard.org;
> devicetree@vger.kernel.org; linux-riscv@lists.infradead.org; linux-
> kernel@vger.kernel.org; Leyfoon Tan <leyfoon.tan@starfivetech.com>; Conor
> Dooley <conor.dooley@microchip.com>
> Subject: Re: [PATCH v3 2/6] dt-bindings: riscv: Add StarFive JH8100 SoC
>=20
> On Fri, Dec 01, 2023 at 08:14:06PM +0800, Sia Jee Heng wrote:
> > Add device tree bindings for the StarFive JH8100 RISC-V SoC.
> >
> > Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> > Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> >  Documentation/devicetree/bindings/riscv/starfive.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml
> > b/Documentation/devicetree/bindings/riscv/starfive.yaml
> > index cc4d92f0a1bf..12d7844232b8 100644
> > --- a/Documentation/devicetree/bindings/riscv/starfive.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
> > @@ -30,6 +30,10 @@ properties:
> >                - starfive,visionfive-2-v1.3b
> >            - const: starfive,jh7110
> >
> > +      - items:
> > +          - enum:
> > +              - starfive,jh8100-evb
>=20
> Hmm, reading some of the other threads it appears that the evaluation
> platform that you guys have is actually just an FPGA? Could you please pr=
ovide
> more information as to what this "evb" actually is?
>=20
> If it is just an FPGA-based evaluation platform I don't think that we wan=
t to
> merge patches for the platform. I'm fine with patches adding peripheral
> support, but the soc/board dts files and things like pinctrl or clock dri=
vers I am
> not keen on.
> Perhaps Emil also has an opinion on this.
>=20
> Thanks,
> Conor.

We have been testing on the FPGA/emulator for pre-silicon validation. It wi=
ll have real silicon SoC next year.

Regards
Ley Foon

