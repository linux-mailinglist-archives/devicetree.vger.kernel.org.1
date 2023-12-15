Return-Path: <devicetree+bounces-25622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6786813FAE
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 03:22:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37F4B282BA7
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 02:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF1DC7E4;
	Fri, 15 Dec 2023 02:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="YsnQDziG"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (mail-db5eur02on2051.outbound.protection.outlook.com [40.107.249.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A290FEBD
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 02:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n0eYLSgLd8F9+RCgoY9tfUN010gv7inDzol/w+UIfCuMVqKU5gqxrTePxgvo+oXJOcyv6CseU+NBTPRfonRHKAMxQY4mN4ryvgP7zeBUSry5qyPot3a65jfJS4wg5EbsCnmFppQZzMjeSwQckOTFyGOtp8ncaHNZGNc4QETavVuYyFFqRp7xmfRSP8ttdu1lwfHF/NCMTeXWV6WueT/7BMHSWxRUQyhKRjzPE1X1sSwP3fr0rKXI9R6qQlGuPasCTHg3N3naHlDJSxG2x9PWZIa17FL+v9lANuGZl71rM+Qh4eev1Usj03kKusjWbjy+zoyTPlaBDuokORxdVYF+RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8a3aVjP5VSKiAAbH06IiWmdq0rNuPmiL0h4FGdhHdFc=;
 b=dl0B5OXqOCti0SunchOgvsaDhZN7Iavwj80eG0hkqg4ifLPmPUwd7HyaSBZGHhzhs5UykBSA0cPIfGbRA7SVi8uOrFmMX65XnCX1UdLn5I0dUPNczU/AqIi+6dznWo2V2UH6o1JIUIlql9Qpg3COfOJvZwExf96IBALicyrFFNtTRcJG+FCFYfXwdqSt+W83Y+5vAJ3hHxRUCgS2uxOgTxJPOB6Le05+Ij5DW3YPt08MQ531ohqvyiT327f1WZZZ2j/U5zQYK/VsVmtcrWBRrEZ627+vWFqynJNKwcuhYmCT9hMxjyMiXFaECU58W4tQPosoU2W39krffRMgrIDuhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8a3aVjP5VSKiAAbH06IiWmdq0rNuPmiL0h4FGdhHdFc=;
 b=YsnQDziGH2Bbx//tb196r2liaNEX1MnbISrreqt/9QW7fx0yYKxYmvbmOWtr7QfiK+XrvHFeRUhjSOG6l49QUXWeLJqipGZ3R/5LnFMQCZgbx+XVTAibDu11/Wz7RRjY7xnllsvbqGThqnKrE07HcusUv6NwVZczmvX597SI2Aw=
Received: from DB7PR04MB5146.eurprd04.prod.outlook.com (2603:10a6:10:23::16)
 by GVXPR04MB9757.eurprd04.prod.outlook.com (2603:10a6:150:115::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Fri, 15 Dec
 2023 02:21:52 +0000
Received: from DB7PR04MB5146.eurprd04.prod.outlook.com
 ([fe80::709e:6876:7df0:fc30]) by DB7PR04MB5146.eurprd04.prod.outlook.com
 ([fe80::709e:6876:7df0:fc30%7]) with mapi id 15.20.7091.028; Fri, 15 Dec 2023
 02:21:52 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
	<kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
CC: dl-linux-imx <linux-imx@nxp.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
Subject: RE: [EXT] Re: [PATCH 4/4] arm64: dts: imx93-11x11-evk: enable usb and
 typec nodes
Thread-Topic: [EXT] Re: [PATCH 4/4] arm64: dts: imx93-11x11-evk: enable usb
 and typec nodes
Thread-Index: AQHaLn9VF9d64TFuM0+cjMAn7zio9rCoyROAgADTHSA=
Date: Fri, 15 Dec 2023 02:21:52 +0000
Message-ID:
 <DB7PR04MB514686AD6E084BF0466422838C93A@DB7PR04MB5146.eurprd04.prod.outlook.com>
References: <20231214112442.2412079-1-xu.yang_2@nxp.com>
 <20231214112442.2412079-4-xu.yang_2@nxp.com> <1952554.PYKUYFuaPT@steina-w>
In-Reply-To: <1952554.PYKUYFuaPT@steina-w>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB7PR04MB5146:EE_|GVXPR04MB9757:EE_
x-ms-office365-filtering-correlation-id: 5b272f80-0119-4575-6865-08dbfd1499b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 SeWyxLUSK3gYNwKKcFf6cFmpW7bNtiC+sYtz6NFS1jCkGarNpIzjxzZuj0D3A0uD7Yy+5pwrX/m6/2U2+7l/oBK++nn+azseuayo+sobuuF/ObthkqJegnOFr/ZDXEPVyBDvMoYsTenfxcOGSafhXnjDqSaCy+VOCgw/A8HYBpPOR0C8WxbntBT8fuys4o42DVXT2mqzvN5niaA9cPGbHDwyFdfDcVdgkhfOOasw94Mr983YU3UdAMRtCPcAsUB9kJddIJbNM/91WNtDnWtOX7vu/FrkZzbuBxzEqer6I09zl7HDtV01klCOlsBJ5+s6TlEqXmzA6rH1qjAdwU+sW4DLXWtXfC8ttqzcrhTz8aA1H7kV7zGmyHVP2zZLqnrir52NMPiBpQ6WMl6+uec0cFQXonbLBAwuAHgFk/T+wn4Vj0oBy6zNM0Fsvrld2IZuufsCSbJNtxddeu+kIA4W2Xh91sZiS3o+UhPwrOB7kX+IbFEYB/Oi1m2Jj8imqKDSjU/UrhcDdaoC00ZtVQAtx/W3lrlos6UDjWpky8p006Vaj8Z6lq2HrRMCD1O3qZvf0myqR1vHs/z/WPmtIFX3CHAH6NhmrxwBr7wjuVHVEyJxgqhU2iQg9XsRudcp4O/QXkx8SEWhv09HJ+Uh4n2rTA==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB5146.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(136003)(346002)(376002)(366004)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(4326008)(8936002)(52536014)(8676002)(2906002)(7416002)(5660300002)(478600001)(6506007)(7696005)(9686003)(110136005)(54906003)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(316002)(41300700001)(38100700002)(122000001)(55016003)(33656002)(86362001)(38070700009)(71200400001)(26005)(83380400001)(473944003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?esKWm+Rgv3IfOX7ylsVnuyStcGTGsIvQeEbfbe83V9frTP5Y6blTDChR6Pbt?=
 =?us-ascii?Q?o/ppUmnfnKyT5kGh/S9t/rCZ3+bKlj5/1sMHYh+CZAhwZwHrwDoKKf3Rzp6w?=
 =?us-ascii?Q?bBagYvkOU+tjdl7Y3aIGFoN8OWDsNaUSMVDfuwwqqnYZ8/SxWPOx3f50crDq?=
 =?us-ascii?Q?VRFrpH2d1+2b83dgAiHX3FHv0qlWjBLfOxLZvN0CGjDjsAnlt0CR6bBGH1CI?=
 =?us-ascii?Q?PQ8EOfyXFLVrnnwo+nEH7XMzPCEYiMn/qcevArzW8zme5fpYR3ciC5o8vhsE?=
 =?us-ascii?Q?Bkw3T1oaAzseGDUElSETx6iEJoD5VFmHlbxHMuLk6U6evicILZ+RHxsXGu1M?=
 =?us-ascii?Q?oTbqEwdb9rM6QDeInQSHDe2i1UHltDFOAozFdp2v+Ys2f/UXnVtU/j7mu4bq?=
 =?us-ascii?Q?9GPwCKZeNdR3O+vHXz3UBEDSxPxKMlkLje9jglz4t4CMYkrqNzm4456jCqLK?=
 =?us-ascii?Q?ac/Tssu01d+OYAt4gqgmvZ7YODMCsprikbGV+JTjUteG3f319ueJAI9zIjhV?=
 =?us-ascii?Q?fjh0mRie6Q/Fk6/MO5R5fIxQ9dYZFcfqnBJknZhmhcBflwTrupVRUWwEshrw?=
 =?us-ascii?Q?xt/PB5S/N/VcAG40QYlTk5o3lS0tyyRPi9UD+FEsFUyXS5YwAQyvpUoN+PtV?=
 =?us-ascii?Q?VN9LM4HGoIn9cylLjB0qp+bno5Wcibp0fX+kx89Lxi2ADxcpLFfemeKQBZdT?=
 =?us-ascii?Q?JLB0Jwf7eGvxvarHIeBxsKwTBgrWPatsb17xkZd92IIyPU2xFvNUsna3/Sih?=
 =?us-ascii?Q?uxgaoa/+Qk6BRmO25iMdpwrmHmAyZ+dL2tgc7Z8oCWbpg4AcicVHF/QupnfF?=
 =?us-ascii?Q?1gBFxzBLx6Gs9G1k2zVgpZpqYywnRpdAWncFxzc5ofYXJdd8DFgpONk1WnpE?=
 =?us-ascii?Q?ELqJ/7mTtekIsznXGc5jzPK0QQ/1OQGX6LRfrSsntNwEgVf/lMeziJuTP/iR?=
 =?us-ascii?Q?Aak2Ctli15M+uwRo60r/ujAR3EuLU9N9LgGm7DfvtZMNdpH9m0boIYrcHofk?=
 =?us-ascii?Q?PLDY17AJJl1G7w9tqcK7RPMXoX1MkNTcWbuqu4Gm7i+O1wCEVgacdT+7Y/K6?=
 =?us-ascii?Q?Tn3JeeY3jjhYmOSRCHNbDXOZPiVHfQp9hKwg62iURIkRkaINFmJU1nRA7CRH?=
 =?us-ascii?Q?bIjpltDnmLCY9az/1/UBQ65fIHjEgSbmsDne5vpKb+oAgOsG9/G4HjPJ4EXc?=
 =?us-ascii?Q?Rgl1et8BXgi5fzl/RArBuXERDmGBNdZ2UkoOcI9fnY1IuiFV2tC5sJTWhHY9?=
 =?us-ascii?Q?mwLi6/JrOItO3r4NXZEJbgMev8dyRgqQPPH8bzM+9q7mrNPCxpPCAWy+t+W9?=
 =?us-ascii?Q?5ogR1hC4L03ppIkn6RrdFkZn/nDYVW9mdjpg1RFZOQy1st+jhTrfswTkPzY8?=
 =?us-ascii?Q?u1iNnsOOIOaY9CXr8rqTfw3baehL0McWMPbW1BmaR72240JzjxuEhztKtV0F?=
 =?us-ascii?Q?aP+b1nFB4zn1Yu1x3axqN9JDEpTc5O7tWlNvdWF/bH3qL+SeR5TQiIr+sg73?=
 =?us-ascii?Q?W2sj2vEFDbPisq4ca/3dmDAIm7H2RziqwyAjIpdL9MkniDXqsPnHglpJOp+S?=
 =?us-ascii?Q?IPJni7g3YxhZZq6cw24=3D?=
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
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB5146.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b272f80-0119-4575-6865-08dbfd1499b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2023 02:21:52.2391
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aY/IHW/oe/KPpivRia6nBsmzkmICnccnNbonXykodHu0BEWV5DrTZt+5WHrud95zWyz98US9w53LcVTzSyOtyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB9757

Hi Alexander,

>=20
> Hi,
>=20
> thanks for the patch.
>=20
> Am Donnerstag, 14. Dezember 2023, 12:24:42 CET schrieb Xu Yang:
> > There are 2 Type-C ports and 2 USB controllers on i.MX93. Enable them.
> >
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > ---
> >  .../boot/dts/freescale/imx93-11x11-evk.dts    | 108 ++++++++++++++++++
> >  1 file changed, 108 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> > b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts index
> > 2b9d47716f75..42b1ea7d5220 100644
> > --- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> > @@ -5,6 +5,7 @@
> >
> >  /dts-v1/;
> >
> > +#include <dt-bindings/usb/pd.h>
> >  #include "imx93.dtsi"
> >
> >  / {
> > @@ -103,6 +104,70 @@ &mu2 {
> >       status =3D "okay";
> >  };
> >
> > +&lpi2c3 {
> > +     #address-cells =3D <1>;
> > +     #size-cells =3D <0>;
> > +     clock-frequency =3D <400000>;
> > +     pinctrl-names =3D "default", "sleep";
> > +     pinctrl-0 =3D <&pinctrl_lpi2c3>;
> > +     pinctrl-1 =3D <&pinctrl_lpi2c3>;
> > +     status =3D "okay";
> > +
> > +     ptn5110: tcpc@50 {
>=20
> I do not know if there is already some consent, but personally I do not l=
ike
> tcpc for the node name. Maybe change that to usb-typec@50.

It really doesn't matter. The connector node will clear say it's a typec po=
rt.

>=20
> > +             compatible =3D "nxp,ptn5110";
> > +             reg =3D <0x50>;
> > +             interrupt-parent =3D <&gpio3>;
> > +             interrupts =3D <27 IRQ_TYPE_LEVEL_LOW>;
> > +             status =3D "okay";
>=20
> status not needed here, "okay" is default and node is added here.

Yeah.=20

>=20
> > +
> > +             port {
> > +                     typec1_dr_sw: endpoint {
> > +                             remote-endpoint =3D <&usb1_drd_sw>;
> > +                     };
> > +             };
> > +
> > +             typec1_con: connector {
> > +                     compatible =3D "usb-c-connector";
> > +                     label =3D "USB-C";
> > +                     power-role =3D "dual";
> > +                     data-role =3D "dual";
> > +                     try-power-role =3D "sink";
> > +                     source-pdos =3D <PDO_FIXED(5000, 3000,
> PDO_FIXED_USB_COMM)>;
> > +                     sink-pdos =3D <PDO_FIXED(5000, 3000,
> PDO_FIXED_USB_COMM)
> > +                                  PDO_VAR(5000, 20000, 3000)>;
> > +                     op-sink-microwatt =3D <15000000>;
> > +                     self-powered;
> > +             };
> > +     };
> > +
> > +     ptn5110_2: tcpc@51 {
>=20
> See above.
>=20
> > +             compatible =3D "nxp,ptn5110";
> > +             reg =3D <0x51>;
> > +             interrupt-parent =3D <&gpio3>;
> > +             interrupts =3D <27 IRQ_TYPE_LEVEL_LOW>;
> > +             status =3D "okay";
>=20
> See above.

Okay.

Thanks,
Xu Yang

>=20
> Best regards,
> Alexander
>=20
> > +
> > +             port {
> > +                     typec2_dr_sw: endpoint {
> > +                             remote-endpoint =3D <&usb2_drd_sw>;
> > +                     };
> > +             };
> > +
> > +             typec2_con: connector {
> > +                     compatible =3D "usb-c-connector";
> > +                     label =3D "USB-C";
> > +                     power-role =3D "dual";
> > +                     data-role =3D "dual";
> > +                     try-power-role =3D "sink";
> > +                     source-pdos =3D <PDO_FIXED(5000, 3000,
> PDO_FIXED_USB_COMM)>;
> > +                     sink-pdos =3D <PDO_FIXED(5000, 3000,
> PDO_FIXED_USB_COMM)
> > +                                  PDO_VAR(5000, 20000, 3000)>;
> > +                     op-sink-microwatt =3D <15000000>;
> > +                     self-powered;
> > +             };
> > +     };
> > +};
> > +
> >  &eqos {
> >       pinctrl-names =3D "default";
> >       pinctrl-0 =3D <&pinctrl_eqos>;
> > @@ -155,6 +220,42 @@ &lpuart5 {
> >       status =3D "okay";
> >  };
> >
> > +&usbotg1 {
> > +     dr_mode =3D "otg";
> > +     hnp-disable;
> > +     srp-disable;
> > +     adp-disable;
> > +     usb-role-switch;
> > +     disable-over-current;
> > +     samsung,picophy-pre-emp-curr-control =3D <3>;
> > +     samsung,picophy-dc-vol-level-adjust =3D <7>;
> > +     status =3D "okay";
> > +
> > +     port {
> > +             usb1_drd_sw: endpoint {
> > +                     remote-endpoint =3D <&typec1_dr_sw>;
> > +             };
> > +     };
> > +};
> > +
> > +&usbotg2 {
> > +     dr_mode =3D "otg";
> > +     hnp-disable;
> > +     srp-disable;
> > +     adp-disable;
> > +     usb-role-switch;
> > +     disable-over-current;
> > +     samsung,picophy-pre-emp-curr-control =3D <3>;
> > +     samsung,picophy-dc-vol-level-adjust =3D <7>;
> > +     status =3D "okay";
> > +
> > +     port {
> > +             usb2_drd_sw: endpoint {
> > +                     remote-endpoint =3D <&typec2_dr_sw>;
> > +             };
> > +     };
> > +};
> > +
> >  &usdhc1 {
> >       pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
> >       pinctrl-0 =3D <&pinctrl_usdhc1>;
> > @@ -221,6 +322,13 @@ MX93_PAD_ENET2_TX_CTL__ENET1_RGMII_TX_CTL        0=
x57e
> >
> >               >;
> >
> >       };
> >
> > +     pinctrl_lpi2c3: lpi2c3grp {
> > +             fsl,pins =3D <
> > +                     MX93_PAD_GPIO_IO28__LPI2C3_SDA
> 0x40000b9e
> > +                     MX93_PAD_GPIO_IO29__LPI2C3_SCL
> 0x40000b9e
> > +             >;
> > +     };
> > +
> >       pinctrl_uart1: uart1grp {
> >               fsl,pins =3D <
> >                       MX93_PAD_UART1_RXD__LPUART1_RX
> 0x31e
>=20
>=20


