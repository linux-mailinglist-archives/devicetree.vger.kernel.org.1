Return-Path: <devicetree+bounces-20252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C567FE8F4
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 07:05:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5FF47B20AA9
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 06:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B2661CFA7;
	Thu, 30 Nov 2023 06:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBC7A10E2;
	Wed, 29 Nov 2023 22:05:06 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 1F18F24E260;
	Thu, 30 Nov 2023 14:04:52 +0800 (CST)
Received: from EXMBX161.cuchost.com (172.16.6.71) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 30 Nov
 2023 14:04:51 +0800
Received: from EXMBX066.cuchost.com (172.16.7.66) by EXMBX161.cuchost.com
 (172.16.6.71) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 30 Nov
 2023 14:04:51 +0800
Received: from EXMBX066.cuchost.com ([fe80::5947:9245:907e:339f]) by
 EXMBX066.cuchost.com ([fe80::5947:9245:907e:339f%17]) with mapi id
 15.00.1497.044; Thu, 30 Nov 2023 14:04:51 +0800
From: JeeHeng Sia <jeeheng.sia@starfivetech.com>
To: Conor Dooley <conor@kernel.org>
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
	<linux-kernel@vger.kernel.org>, Leyfoon Tan <leyfoon.tan@starfivetech.com>
Subject: RE: [PATCH v2 1/6] dt-bindings: riscv: Add StarFive Dubhe compatibles
Thread-Topic: [PATCH v2 1/6] dt-bindings: riscv: Add StarFive Dubhe
 compatibles
Thread-Index: AQHaIol1JcCnwq8cUEOHXow7o5B+9LCQ2lcAgAGGuzA=
Date: Thu, 30 Nov 2023 06:04:51 +0000
Message-ID: <08daada77b3e40049ef83f4eb762240c@EXMBX066.cuchost.com>
References: <20231129060043.368874-1-jeeheng.sia@starfivetech.com>
 <20231129060043.368874-2-jeeheng.sia@starfivetech.com>
 <20231129-revisit-prefix-5327168e91f3@spud>
In-Reply-To: <20231129-revisit-prefix-5327168e91f3@spud>
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
> Sent: Wednesday, November 29, 2023 10:46 PM
> To: JeeHeng Sia <jeeheng.sia@starfivetech.com>
> Cc: kernel@esmil.dk; robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.or=
g; krzk@kernel.org; conor+dt@kernel.org;
> paul.walmsley@sifive.com; palmer@dabbelt.com; aou@eecs.berkeley.edu; dani=
el.lezcano@linaro.org; tglx@linutronix.de;
> anup@brainfault.org; gregkh@linuxfoundation.org; jirislaby@kernel.org; mi=
chal.simek@amd.com; Michael Zhu
> <michael.zhu@starfivetech.com>; drew@beagleboard.org; devicetree@vger.ker=
nel.org; linux-riscv@lists.infradead.org; linux-
> kernel@vger.kernel.org; Leyfoon Tan <leyfoon.tan@starfivetech.com>
> Subject: Re: [PATCH v2 1/6] dt-bindings: riscv: Add StarFive Dubhe compat=
ibles
>=20
> On Wed, Nov 29, 2023 at 02:00:38PM +0800, Sia Jee Heng wrote:
> > Add new compatible strings for Dubhe-80 and Dubhe-90. These are
> > RISC-V cpu core from StarFive Technology and are used in StarFive
> > JH8100 SoC.
> >
> > Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> > Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
> > ---
> >  Documentation/devicetree/bindings/riscv/cpus.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Docume=
ntation/devicetree/bindings/riscv/cpus.yaml
> > index f392e367d673..493972b29a22 100644
> > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > @@ -48,6 +48,8 @@ properties:
> >                - thead,c906
> >                - thead,c910
> >                - thead,c920
> > +              - starfive,dubhe-80
> > +              - starfive,dubhe-90
>=20
> s goes before t.
Noted. Will fix it.
>=20
> Cheers,
> Conor.
>=20
> >            - const: riscv
> >        - items:
> >            - enum:
> > --
> > 2.34.1
> >

