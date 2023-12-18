Return-Path: <devicetree+bounces-26384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFA781644B
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 03:17:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 24629B21848
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 02:17:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E04B23A7;
	Mon, 18 Dec 2023 02:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="i7rvlzdE"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-he1eur01on2051.outbound.protection.outlook.com [40.107.13.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6C023BC
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 02:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f7fR+QOqyxUmdjSgcp/0xWqn/5rH/FTWZyAtnnaASxDt6h30axz0XqfaSL/UG0LhbBcVRlJTTPrMNHr4Z82l732YpeScGzNxC0k3nWcBrU/Zs9jXrDnDcX3vwdJRrcMSRiEGVZRMuiPtRHYZ0gCxcfzCwbeCr8FznfzGV84ew2/giFV6BbB1Z5BXmMayM2VEGJlyxXTWFE2PvYVMLXgXmfX6SWO2ZBcs4LiN1/JBroU8bHpPZq8CjZXpvR+s5RIfuoW72igo1Iqa0tNlp0/K+qcuqVWAfPMSH+v+9Ac9ofWFvUoTjd9uUiDzLYSNEtpki7aTN5cMWiJdW+NT++eSHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ViIXZJVEZByV8udjrJe1oIZTtpzu1xj8a6tk9aGLaH8=;
 b=LBOg/5tuLjKngAh4rp0NzfnH5W32+CrmD2+bndUAgI4Jq8brkdwQRwgiy6KezWq0pVDmA2hJb+B06zIWdNdb6lS0BKDlw/r/8XcsJxJhFXAjN2oRYI3Qi7h2v01QVuUExJ6anrAd7+ntU1Z8lf2+siqhE76jI/oDhP5O/f9fb04wAFF+NC3RpTmF7PIuVpqfdk2xIl4nCwQOVRbniysWI8cELiYEo9hWPBcY3LhRpaDJXC+WufiktPbAA2cNBV7WQ5AKsJ4lTwxtXw1xvJuqKVEptcxbTYLhx+nqCpQ2hcbWVC0eR7ScCEDjJ0ZznYMQHMu29VdK/HkRv1lLaaaAlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ViIXZJVEZByV8udjrJe1oIZTtpzu1xj8a6tk9aGLaH8=;
 b=i7rvlzdEXQLVfLyGLaFQiwPAkbUOGweUQ+YH+F/Cb6lb8xAlDXRuVRdClC4QPDst0QOgUKlhL56u9Sl+Px20eqQtLHM70Vfn37R0sExyGFkylzxDIokEPNMOPj85I1c98Dl+WBb+jUfpSBKLrl1Y0GYIsuLds9ubnwDxz7vqhL4=
Received: from DB7PR04MB5146.eurprd04.prod.outlook.com (2603:10a6:10:23::16)
 by AM8PR04MB7474.eurprd04.prod.outlook.com (2603:10a6:20b:1d9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 02:16:58 +0000
Received: from DB7PR04MB5146.eurprd04.prod.outlook.com
 ([fe80::709e:6876:7df0:fc30]) by DB7PR04MB5146.eurprd04.prod.outlook.com
 ([fe80::709e:6876:7df0:fc30%7]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 02:16:58 +0000
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
Subject: RE: [EXT] Re: [PATCH 3/4] arm64: dts: imx93: add usb nodes
Thread-Topic: [EXT] Re: [PATCH 3/4] arm64: dts: imx93: add usb nodes
Thread-Index: AQHaLn9TNtDXswxVBEWCR9xbNc0TXbCox/CAgADPBmCAAEz8gIAEb2EQ
Date: Mon, 18 Dec 2023 02:16:58 +0000
Message-ID:
 <DB7PR04MB51466B73F7D753BB1C662FA98C90A@DB7PR04MB5146.eurprd04.prod.outlook.com>
References: <20231214112442.2412079-1-xu.yang_2@nxp.com>
 <8309719.T7Z3S40VBb@steina-w>
 <DB7PR04MB51462A079F226C6B9FCA9F7C8C93A@DB7PR04MB5146.eurprd04.prod.outlook.com>
 <3198956.5fSG56mABF@steina-w>
In-Reply-To: <3198956.5fSG56mABF@steina-w>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB7PR04MB5146:EE_|AM8PR04MB7474:EE_
x-ms-office365-filtering-correlation-id: 4707a257-8fc9-44e6-8f69-08dbff6f699c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 ALLfx0MdhuHC7N4sbKhbXT4rGwUO9fcJIkkPQw8cF32Gr6FNnWLNJYu4YuIF49ODE3bn6NZIufxivSd4V3KKh9L2QGARkpKPNlcbdN53hEhWvtWbizQq0u1holVD5ir+us3t/UW9o0U6uECHQeruK6/K/oyvayR7QDFW1FKQR+dTUfHDnjskZIKif8vCvPDwlKs/jSVOMQOB9OM3O5PkBSYHx/QbEC8Y3IOyELevyxHaULbENcWM9QD34+E0rqK/SagfmI2mg3Sdf94+UmIAxPEfheSgB/TC9MPbIsKGSvEMDr0f574sKSi4gBNz4dqgsRjO8tlpVaqHfyZkV63CLgyasWJq+7inpJWxhf+1SIOOKicR2aH70OmOkGp4Z5mjeo6ew+WujmP+kDhV5nI974+CNbtAfJMszn6IYDSzQodEL6gzJa5zxG+/Av0kxJKEj6jnj6n7Rro1QTpD2zmBlbRfVcnKT+dA6x/rXbt7t7FCswQU2MOCTkygLS/blf5WSAGbNkfNhcCsrln5pl9NeOjBOnNPBsPztv1AmdiU+inr2VS03GuNaDE0ekUdn2ahdJwk5I+68Sul7gxWIgtcqp0ddgy7geoZ7hvZ9WTbivI=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB5146.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(136003)(346002)(39860400002)(396003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(55016003)(38070700009)(76116006)(110136005)(86362001)(33656002)(38100700002)(122000001)(83380400001)(66574015)(26005)(71200400001)(478600001)(966005)(2906002)(66556008)(66476007)(66446008)(64756008)(54906003)(9686003)(7696005)(6506007)(19627235002)(8936002)(45080400002)(4326008)(66946007)(316002)(8676002)(5660300002)(41300700001)(7416002)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?s74UWgZLRsy/Cwl56neP9cyozIPxBPZ04vhUEU+pr7bRX1Edzgf5cSuMhC?=
 =?iso-8859-1?Q?8RHIIULLJKTimbL3P7skkGXGLcyB81e6+QNiV2rYzF53WPU6Umw9k09PF2?=
 =?iso-8859-1?Q?/VCiK+8/yLZWI8IXnzAqZnwq66I0afP0c96MdFHcw9FNVT3yMWjXU1cOzm?=
 =?iso-8859-1?Q?hX4gejZ4FfaxxuSWZY02kh2AK86nuVfIDQYvRyg/vUkGay/I68gJCNc4T4?=
 =?iso-8859-1?Q?F0lY/NZiacUcfvo2e5K5W4iiHaPdUtAjD5Js/dFkPIDVyuywjFzqtlJLbC?=
 =?iso-8859-1?Q?4X+XMFCP+av8uP2S5YDXxqTGl/KnU+gj/FqZrpmeBD41anh+eCbMpEhPzT?=
 =?iso-8859-1?Q?yi96OxpIeQLnxA45lGvPfNpCeLGZy/FklIUtZgeYW2wBSVz8KkW/oZ5lKS?=
 =?iso-8859-1?Q?w8PPrDx3fCWkkVoQ8nuGTuVYvvptGIrLGVNJCoqt0YuzapV5gsEBFpw0ki?=
 =?iso-8859-1?Q?oMBA5vgF0QmHMNW/AJOyhWMn0xGA6b8O/TJQb6z2boDRIM15JTCMuZ9v3+?=
 =?iso-8859-1?Q?7i8bWZhmxYnD39j7J+7FQgAuzHpRIGB6RYlmPnNrr/Wnm87f2Qqc3S+Kk/?=
 =?iso-8859-1?Q?5a6XoAZYgL+pH2c0ibssQ6muN5NeIaN0K3hio8wv9OCHz/IozYtnxALLv1?=
 =?iso-8859-1?Q?jdQGJ9e/ZBvx5PsmSm1j5/sgcGPxnJkZf9xe5LEpwHWY4hZ0Me0P80moYI?=
 =?iso-8859-1?Q?ijwvbJ7cfu6+4hauHTsKGlIRrzdA52HAIQkC+gn82qdmzkSLW97VTdDnjx?=
 =?iso-8859-1?Q?oylu+7VtDD2VJq3ymAMQUcDw+koW/CnzGUoNjEP8ytEjP0DiDID6Iol0Xx?=
 =?iso-8859-1?Q?APHfdNQqWvVTn1nxBZxwvRE9moOkMr627F68P+fYLf8F7Uoo6X8SieeE0U?=
 =?iso-8859-1?Q?/9WRHhSCBlRvOpzFU0e65SbBhSm9Y56OlIwwM3p/Qgj0hNVri4MdPOOgVL?=
 =?iso-8859-1?Q?yJoSSObL9Onf527svNYQZSE+5YEArB0mdd1HjzUTyI7auF7OySAjCAnnD0?=
 =?iso-8859-1?Q?9seEwTf80Lhqm15oRxRmY1gTY8ah+MKzEZ5egRIAo0fEI5+JbANF193Zm2?=
 =?iso-8859-1?Q?nRMVcbEH2O+rSf5DEaQXmPKiE4wyEYIwi85jZ0FuAYghopuOGpi3crC2Zs?=
 =?iso-8859-1?Q?gfbSVsvPmiUIxX1Lr0m+CV4QCu/GbxfWw8eyZXRhAFvfUEaYXUY5ftawRb?=
 =?iso-8859-1?Q?0/BLOgHfY8c/CEm9IczDNx+aXM1J7GPf1bYdlqrl0R2mILrsWjJsUCmch1?=
 =?iso-8859-1?Q?Kj1azSLgN5b/3P+vAuvaAm97WdYCe8DOaC06nSEw88DzQh8LqtDhR1cIrw?=
 =?iso-8859-1?Q?sk7eFkrtUMHMwkY1KkvgvZXgWO8bMyB9iLmhkGDbrnabPDKHG0wg2wwAlZ?=
 =?iso-8859-1?Q?2gDNUr5V+pGOuPQ2dbKSdLxMRT1JWQa1jI8y8D832toSRTj78pseMpvI99?=
 =?iso-8859-1?Q?d+gugMv2pTO8P9m058SVkIIBUPZa2atWTJ43rhj7Cxp/RcxPf6h83i55Mm?=
 =?iso-8859-1?Q?6ktcziaK7moJHCPabjrOKSxB0n49loCEa0+cM2kP04EnkhR4023y4CM4Vx?=
 =?iso-8859-1?Q?ZPn16CigqVryV/zKJ2BxmfMpL3803Eh5AiL9DjrI8CDLye4k8AtBp6GbXX?=
 =?iso-8859-1?Q?u6q92o9MDT+8s=3D?=
Content-Type: text/plain; charset="iso-8859-1"
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 4707a257-8fc9-44e6-8f69-08dbff6f699c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 02:16:58.0843
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YdDNFecnWtuz1xU/uw7wGwD2jjK7L+hwEizoCsG8ahlSm0CKZmhUP0jbFR6FjiWcXeGhDPcWJK3k/MK3ZmkIow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7474

Hi Alexander,

>
> Hi,
>
> Am Freitag, 15. Dezember 2023, 03:12:43 CET schrieb Xu Yang:
> > Hi Alexander,
> >
> > > Hi,
> > >
> > > thanks for the patch.
> > >
> > > Am Donnerstag, 14. Dezember 2023, 12:24:41 CET schrieb Xu Yang:
> > > > There are 2 USB controllers on i.MX93. Add them.
> > > >
> > > > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > > > ---
> > > >
> > > >  arch/arm64/boot/dts/freescale/imx93.dtsi | 58 ++++++++++++++++++++=
++++
> > > >  1 file changed, 58 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > > > b/arch/arm64/boot/dts/freescale/imx93.dtsi index
> > > > 34c0540276d1..bcf4861cfede
> > > > 100644
> > > > --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > > > +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> > > > @@ -171,6 +171,20 @@ cm33: remoteproc-cm33 {
> > > >
> > > >               status =3D "disabled";
> > > >
> > > >       };
> > > >
> > > > +     usbphynop1: usbphynop1 {
> > > > +             #phy-cells =3D <0>;
> > > > +             compatible =3D "usb-nop-xceiv";
> > >
> > > compatible first.
> >
> > Okay.
> >
> > > > +             clocks =3D <&clk IMX93_CLK_USB_PHY_BURUNIN>;
> > > > +             clock-names =3D "main_clk";
> > > > +     };
> > > > +
> > > > +     usbphynop2: usbphynop2 {
> > > > +             #phy-cells =3D <0>;
> > > > +             compatible =3D "usb-nop-xceiv";
> > >
> > > compatible first.
> >
> > Okay.
> >
> > > > +             clocks =3D <&clk IMX93_CLK_USB_PHY_BURUNIN>;
> > > > +             clock-names =3D "main_clk";
> > > > +     };
> > > > +
> > > >
> > > >       soc@0 {
> > > >
> > > >               compatible =3D "simple-bus";
> > > >               #address-cells =3D <1>;
> > > >
> > > > @@ -1059,5 +1073,49 @@ ddr-pmu@4e300dc0 {
> > > >
> > > >                       reg =3D <0x4e300dc0 0x200>;
> > > >                       interrupts =3D <GIC_SPI 90 IRQ_TYPE_LEVEL_HIG=
H>;
> > > >
> > > >               };
> > > >
> > > > +
> > > > +             usbotg1: usb@4c100000 {
> > > > +                     compatible =3D "fsl,imx8mm-usb", "fsl,imx7d-u=
sb",
> > >
> > > "fsl,imx27-usb";
> > >
> > > > +                     reg =3D <0x4c100000 0x200>;
> > > > +                     interrupts =3D <GIC_SPI 187 IRQ_TYPE_LEVEL_HI=
GH>;
> > > > +                     clocks =3D <&clk IMX93_CLK_USB_CONTROLLER_GAT=
E>,
> > > > +                              <&clk IMX93_CLK_HSIO_32K_GATE>;
> > > > +                     clock-names =3D "usb_ctrl_root_clk",
> > >
> > > "usb_wakeup_clk";
> > >
> > > drivers/usb/chipidea/ci_hdrc_imx.c uses 3 clocks: "ipg", "ahb" and "p=
er",
> > > see imx_get_clks(). How is this supposed to work?
> >
> > I have sent another patch to get this clock.
> >
> https://lore.kernel.org/all/20231214112622.2412321-
> 1-
> xu.yang_2%40nxp.com%2F&data=3D05%7C02%7Cxu.yang_2%40nxp.com%7Cbdf207787e9=
f448553f808dbfd379cda%7C686ea1
> d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C638382187526271036%7CUnknown%7CTWFpb=
GZsb3d8eyJWIjoiMC4wLjAwMD
> AiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3D=
FkQ5Cf4iYfCPj79ZnR5XxshIdkWeLOyV
> 8tmWYWnh2GU%3D&reserved=3D0
>
> Okay, but that adds another clock which is not mentioned in Documentation=
/
> devicetree/bindings/usb/ci-hdrc-usb2.yaml at all. I guess some compatible=
-
> specific constraints regarding number of clocks should be added.

Right, will try to add such info.

Thanks,
Xu Yang

>
> Best regards,
> Alexander
>
> >
> > > > +                     assigned-clocks =3D <&clk IMX93_CLK_HSIO>;
> > > > +                     assigned-clock-parents =3D <&clk
> > >
> > > IMX93_CLK_SYS_PLL_PFD1_DIV2>;
> > >
> > > > +                     assigned-clock-rates =3D <133000000>;
> > > > +                     fsl,usbphy =3D <&usbphynop1>;
> > > > +                     fsl,usbmisc =3D <&usbmisc1 0>;
> > > > +                     status =3D "disabled";
> > > > +             };
> > > > +
> > > > +             usbmisc1: usbmisc@4c100200 {
> > > > +                     compatible =3D "fsl,imx8mm-usbmisc", "fsl,imx=
7d-
> > >
> > > usbmisc",
> > >
> > > > +                                     "fsl,imx6q-usbmisc";
> > >
> > > This means you are compatible to fsl,imx7d-usbmisc. Which means you u=
se
> > > register MX7D_USB_OTG_PHY_STATUS in USB misc (USBNC). But i.MX93 RM R=
ev. 2
> > > (04/2023) lacks this and other registers.
> >
> > Some registers in USBNC are not shown. The internal RM has these regist=
ers.
> >
> > > > +                     #index-cells =3D <1>;
> > > > +                     reg =3D <0x4c100200 0x200>;
> > >
> > > reg after compatible.
> >
> > Okay.
> >
> > > > +             };
> > > > +
> > > > +             usbotg2: usb@4c200000 {
> > > > +                     compatible =3D "fsl,imx8mm-usb", "fsl,imx7d-u=
sb",
> > >
> > > "fsl,imx27-usb";
> > >
> > > > +                     reg =3D <0x4c200000 0x200>;
> > > > +                     interrupts =3D <GIC_SPI 188 IRQ_TYPE_LEVEL_HI=
GH>;
> > > > +                     clocks =3D <&clk IMX93_CLK_USB_CONTROLLER_GAT=
E>,
> > > > +                              <&clk IMX93_CLK_HSIO_32K_GATE>;
> > > > +                     clock-names =3D "usb_ctrl_root_clk",
> > >
> > > "usb_wakeup_clk";
> > >
> > > The same as for usbotg1 applies here.
> >
> > Okay.
> >
> > > > +                     assigned-clocks =3D <&clk IMX93_CLK_HSIO>;
> > > > +                     assigned-clock-parents =3D <&clk
> > >
> > > IMX93_CLK_SYS_PLL_PFD1_DIV2>;
> > >
> > > > +                     assigned-clock-rates =3D <133000000>;
> > > > +                     fsl,usbphy =3D <&usbphynop2>;
> > > > +                     fsl,usbmisc =3D <&usbmisc2 0>;
> > > > +                     status =3D "disabled";
> > > > +             };
> > > > +
> > > > +             usbmisc2: usbmisc@4c200200 {
> > > > +                     compatible =3D "fsl,imx8mm-usbmisc", "fsl,imx=
7d-
> > >
> > > usbmisc",
> > >
> > > > +                                     "fsl,imx6q-usbmisc";
> > > > +                     #index-cells =3D <1>;
> > > > +                     reg =3D <0x4c200200 0x200>;
> > >
> > > The same as for usbmisc1 applies here.
> >
> > Okay.
> >
> > > > +             };
> > > >
> > > >       };
> > > >
> > > >  };
> > >
> > > Best regards,
> > > Alexander
> > >
> > > --
> > > TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germ=
any
> > > Amtsgericht M=FCnchen, HRB 105018
> > > Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schnei=
der
> > > http://www.tq-/
> %2F&data=3D05%7C02%7Cxu.yang_2%40nxp.com%7Cbdf207787e9f448553f808dbfd379c=
da%7C686ea1d3bc2b4c6fa92cd99c5c
> 301635%7C0%7C0%7C638382187526271036%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wL=
jAwMDAiLCJQIjoiV2luMzIiLCJ
> BTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DUywLIIbPswQULh%2FLuAJ=
7xdVbGCGSDjeOSW%2B%2B%2F
> 2M2qgM%3D&reserved=3D0
> > > group.com%2F&data=3D05%7C02%7Cxu.yang_2%40nxp.com%7C10ff5a35f53f4047a=
e1d08db
> > > fca99c38%7C686ea1d3bc2b4c6fa
> > > 92cd99c5c301635%7C0%7C0%7C638381577622080432%7CUnknown%7CTWFpbGZsb3d8=
eyJW
> > > IjoiMC4wLjAwMDAiLCJQIjoiV2
> > > luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DVlpRPcnJ=
TmywfS
> > > amaGB1Ev8aPN2Hi596VbbRNGXF yis%3D&reserved=3D0
>
>
> --
> TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
> Amtsgericht M=FCnchen, HRB 105018
> Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
> http://www.tq-/
> group.com%2F&data=3D05%7C02%7Cxu.yang_2%40nxp.com%7Cbdf207787e9f448553f80=
8dbfd379cda%7C686ea1d3bc2b4c6fa
> 92cd99c5c301635%7C0%7C0%7C638382187526271036%7CUnknown%7CTWFpbGZsb3d8eyJW=
IjoiMC4wLjAwMDAiLCJQIjoiV2
> luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3D%2BhTDWMHhsH=
OxFkAyQh%2FtsuGV523FFNPeKi
> FZ7b0APnc%3D&reserved=3D0
>


