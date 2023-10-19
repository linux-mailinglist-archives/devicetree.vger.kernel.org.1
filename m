Return-Path: <devicetree+bounces-9993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F837CF4A0
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:06:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4A05DB20BF2
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:06:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 005BE1798C;
	Thu, 19 Oct 2023 10:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="J//f3UoC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F15168DB
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 10:06:02 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2078.outbound.protection.outlook.com [40.107.6.78])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4A20119;
	Thu, 19 Oct 2023 03:05:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qw40he1CpcI5nHGsyVzTD2elQLxCZV9j3MjQ/IUUICJXKcvgrCmwrd9IbBuqIB45vwWsfbjCOfDYl0MEJFb8R/FlldLM564AtPevQ2vTvz/67U4auMy7R78yup+xUkZYTwUUV2yh39fEQHeCIOpVPeJGL7HM4jn+gDsZm60HKgA/xPMtFOz16NIve7CC+mmRIN93M1Z8NgG5GyH4tY5sPkIhHjNP5VjG5I+oApnkrLPji6xsWCo2L0Vd4idkTG8XErBTLjgWJdEQ0nS8TLv45/h5sFsqL2hOh6QrmZDBsRVUNgumaVoi4boCnGMHRQkA+wzqMRk9jHAtJV3Awb64KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PKbmMsQfhdIheVhht/wGjCnHI/Nd5C250SxNmCrRmTc=;
 b=fnDbfyBcGcuidSOK86zZ8zhmT1sYXkjgdA3NYCdvQOvK1mzASel/WKMA+os/m6S3x5vQIrZ906kOa2zkIEBnmz76ZpJKX4uLyCGtgDtsMKWD23+tHLO3e3E2ZE0rrGfF3XFiJ4Mh+gkQNcsWpqa/frh0Pvznp7nSreGZxPOnnLvmODnFomUjAqB0l58r8P1SBESzu3cToQAolLctTbRiP1weqWftIT+P//n89jJnQCi2xCfWgPItA+M/6rp0MZZ3pUeRbwxwKBpLFsggFUO/bpaDuF79CZeVC1txsJ1yl9jy19CJfLR25AcLZjpjvWlJpPzmAO47zHKOX15sBEgUNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PKbmMsQfhdIheVhht/wGjCnHI/Nd5C250SxNmCrRmTc=;
 b=J//f3UoC99QCj+i7D8jtWayxLVrbWlWiX65nWPQUsqTCZ1NrxFniu0riBOtcnHvqElZRSxkp+91DNJkrPvC+u1Og2q7GQMc8AGFmVXcXAo3LuaHN2eucgKLA8lmcbA+Q0eLQk2cJOhXP5r5rK1SMcaI7YHkqACGXKWU0LkKlBF0=
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by DB9PR04MB8281.eurprd04.prod.outlook.com (2603:10a6:10:25f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.22; Thu, 19 Oct
 2023 10:05:54 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::b9ee:e067:5935:4965]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::b9ee:e067:5935:4965%4]) with mapi id 15.20.6907.022; Thu, 19 Oct 2023
 10:05:54 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Conor Dooley <conor@kernel.org>, "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
CC: "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "shawnguo@kernel.org"
	<shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"sboyd@kernel.org" <sboyd@kernel.org>, "abelvesa@kernel.org"
	<abelvesa@kernel.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
	"estevam@gmail.com" <estevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "inux-clk@vger.kernel.org"
	<inux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] dt-bindings: clock: support i.MX93 Anatop
Thread-Topic: [PATCH 1/2] dt-bindings: clock: support i.MX93 Anatop
Thread-Index: AQHaAZ6nqHDmTKb4+U2DfEJAUieaa7BPkiQAgAFRR4A=
Date: Thu, 19 Oct 2023 10:05:54 +0000
Message-ID:
 <DU0PR04MB9417CD64DDD5238BCBC5B3E588D4A@DU0PR04MB9417.eurprd04.prod.outlook.com>
References: <20231018084414.1950241-1-peng.fan@oss.nxp.com>
 <20231018-promenade-budding-3e228f241eb7@spud>
In-Reply-To: <20231018-promenade-budding-3e228f241eb7@spud>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR04MB9417:EE_|DB9PR04MB8281:EE_
x-ms-office365-filtering-correlation-id: 033a3a41-868e-41ce-e2a0-08dbd08afb6f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 sWFvr4qMi/615h2jYRaDqY1kVNacl62QZpfDijS3YvROx2zJttmL/BMuyIpC2oFNoKN9bPMxIAwq13HdEhwOw3Y6zcnXgnMTfeQ84QJ1oOi9cu9N+c67w9Ntj8mxs4wDfOJjYQ9ueMz8UdqH1X/sLm+jSEb097qnRH4XyC69n6E5ebV3rz3l+hiDEX16JVa7JjYHP9VrUvnWIU73mQSblRGEIf3qrfw44fB4tyfrXpQu+rABbS7BgqP5VL4tsoTu9ApKEyxid/sHv1jEyPCXO8UEG66q+baNgTPDKfmQZfsWvwFtx2hBehAF5gPeOfNgDPgL0LClRow03ao50Fd9hroen4u704YyiUVLSOKtnlaDXC2uIXCq1GgJgiIVMyM/jDQrNoIeNrLOnw25Cp9+rm48it3967/iTinreHsf9KMV5nRNazTp0iE3oRcma+ZvtPQVdCPQMg3Y5o/Rlb3SF9nPy7MKM2k39gTIOAXfZoIv95EY9h0wOnntud9jZcYSi2szf6Q5MEa2B7MpbZ5/7/mbFITK8bA9MuyA5PiduGnBtlB4sXywR9oHc5Y7dC5EyuPREvJBEYPGlOlocsmdWmvri+NTv1xlXOwerDQI8LY=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(366004)(136003)(346002)(376002)(396003)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(71200400001)(26005)(9686003)(83380400001)(6506007)(478600001)(7416002)(2906002)(4326008)(7696005)(76116006)(54906003)(66946007)(8676002)(64756008)(66476007)(66556008)(966005)(66446008)(44832011)(110136005)(41300700001)(316002)(5660300002)(52536014)(8936002)(86362001)(122000001)(38070700005)(38100700002)(55016003)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?QJJIrA5vbxXTUhVsQw/UXbtqGR6kOwKJM0fClK3aPTLsUKu9NDr29ozdZ4un?=
 =?us-ascii?Q?qOT+Q0WTi3KlezukWfB2b9ANuEJSEwdhgW1NmdFVE9gRdQa5BujiiQME679Y?=
 =?us-ascii?Q?fpe0deoagG9rRlUHpB+PZiclgmGp3c0fcbWbsh5VMqDPwJoqjz0ABqQbN0gO?=
 =?us-ascii?Q?gu4frXwhUQYFpe0SBwHC+fcLmhLBLOdpNILzo3j4B96HAwD8XX1w4RcZbU9L?=
 =?us-ascii?Q?t3HV+2fcJt3JNsCRW8bGFoZUIQvuUxVoiM0Ksfz3ucx+NIaEeJ/z68ha5xsR?=
 =?us-ascii?Q?IAm3Nh0haM2am4+wnmU7cl9N8AG7zI0Yj1AYM5Dxy+8ZCQE9B5l1YYh4rNI6?=
 =?us-ascii?Q?EFJSxdpFDajWPSceaL3chqOrfLkjFuBFwk10zuHPwxE3/K+fmqqyxTBePrn0?=
 =?us-ascii?Q?E6NU+N9KEXiCWsr6NMurDkNWSQRiNAkRmDbYjTiEBQ2DxsqGmzKn9YGQoyip?=
 =?us-ascii?Q?KWcUkwM1oOjmPeIZfgbPjJZMjZ1mvIAt5gw+oacnXrq7Sr4urOmOYTprazXf?=
 =?us-ascii?Q?VNRoiuaQfG/lsWuuhzhv1VCX2xnKQjIsXjH8dCGq62H/LuDsZJrVWaPsJfLV?=
 =?us-ascii?Q?6Kd+9pJm7bpj0ofaRLpwztvgW8Pfw+I0hMbrBmAhabgHbLtx/CgeLMLf9wBr?=
 =?us-ascii?Q?Y+34EUMNhppGdY6XgTiLmJTTEx8KHYNsO09BXG+0z5Em1ArWnaIotspWAMrM?=
 =?us-ascii?Q?6t8wHTeMGWdLQ/pI3KJyzMsvY59FuvKsQ90YrqkHnP/oEUXUpqF675CwtyxU?=
 =?us-ascii?Q?h+vx+sBhBYLp1q+PbPauBDDAg8CMjFqp6r4MAlYxM1Qmny082tonq+ClnFy2?=
 =?us-ascii?Q?L5bhoQ3wxcwmt8sgiltYs1sSNW5txq/TnLGTOMuxZ2GCpX3Z0F7Lpvj4ZWcQ?=
 =?us-ascii?Q?/rb088ZZ/85vWRiuxmxsEU4cJurzJPUi48CFykTD7O1fxiUh1UyGvyCTGxQB?=
 =?us-ascii?Q?zDxWEBe4gVRxKuhD0gLxnRCDtecz6OykkaZ6Ot5+VcVcRdc+Q6LuvNshviT2?=
 =?us-ascii?Q?9MPBow6ScC2w2YlOe8vwK5Jiaxw+uC1K4/X9iC3MEzHzHoDwHbhnD9RRcJul?=
 =?us-ascii?Q?1oe7c4DorOEqLWaPw9oV4357uQcTHXiXuhP5bUa7/BGKueQ7YkqQSS0uYD30?=
 =?us-ascii?Q?a29GQMC+LFEClodFVhiaTyNfr+qj1L/ciV7Rb3g0Snx2RLAdKZQbKykGKUV+?=
 =?us-ascii?Q?di+7++ySZc/2q/JTXADmvAUoY7z1dJXi5sBWfEHFMmnCECQaJ/LB7aPbnEud?=
 =?us-ascii?Q?1FxK5VlsuAEw2A1VrOfasOndX+zELDt/zu/3cJ3SxoWxlf/HiCausc5q2lRB?=
 =?us-ascii?Q?ucJETOBqoDHqhnEwSiR3O0bLNf6PPDgafqdsNw0NZ7/8IeCF4BpDexb9CJp2?=
 =?us-ascii?Q?phJTWMn9D4FZddZOR2dUpnSYQ3EQoRT+kXsIkpDM4s1zP+5aYmIYqAqPvVS7?=
 =?us-ascii?Q?nfc6ftGybjxqesw0b8iBvHe50UhdnWz2CZK1khkXH8z1uXI5E6rECChwXPi3?=
 =?us-ascii?Q?Ub7o+QJYxXTohrsWa9ty9GLBdzuOjSscGuAIhI5nDLHqGjhEhHpEUI72NrX/?=
 =?us-ascii?Q?11MIdnG3SMKYLuDKaag=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 033a3a41-868e-41ce-e2a0-08dbd08afb6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2023 10:05:54.5197
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yy0h+RdfHTARlddVHTOE1qlLVwYjPkwrI1EruNBIoO2vgBLs6HGn5W+2+8Zc5fBVAKx4ts4GNRjr67UyeS/3eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8281

> Subject: Re: [PATCH 1/2] dt-bindings: clock: support i.MX93 Anatop
>=20
> On Wed, Oct 18, 2023 at 04:44:13PM +0800, Peng Fan (OSS) wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Support i.MX93 Anatop which generates PLL and feeds into CCM.
>=20
> What is "CCM". How do you "generate" a PLL?

=20
CCM: Clock Controller Module.

I may use produces PLL

>=20
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  .../bindings/clock/fsl,imx93-anatop.yaml      | 41 +++++++++++++++++++
> >  1 file changed, 41 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yaml
> > b/Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yaml
> > new file mode 100644
> > index 000000000000..9585c9e4ee40
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yaml
> > @@ -0,0 +1,41 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/fsl,imx93-anatop.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: NXP i.MX93 Anatop Module
>=20
> I see there are also "anatop regulators" on some imx SoCs, just calling t=
his
> "anatop module" does not seem sufficiently descriptive.

Analog Module? How do you think?
=20
>=20
> > +
> > +maintainers:
> > +  - Peng Fan <peng.fan@nxp.com>
> > +
> > +description: |
>=20
> Drop the |, you don't need it.

Ok.

>=20
> > +  NXP i.MX93 anatop PLL module which generates PLL to CCM root.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: fsl,imx93-anatop
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  '#clock-cells':
> > +    const: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - '#clock-cells'
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    anatop: clock-controller@44480000 {
>=20
> and the label is is not used, so should be dropped.

Ok.

Thanks,
Peng.

>=20
> Thanks,
> Conor.
>=20
> > +        compatible =3D "fsl,imx93-anatop";
> > +        reg =3D <0x44480000 0x2000>;
> > +        #clock-cells =3D <1>;
> > +    };
> > +
> > +...
> > --
> > 2.37.1
> >

