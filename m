Return-Path: <devicetree+bounces-25621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C5942813F9D
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 03:12:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 45F0D1F216B0
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 02:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD66A7E4;
	Fri, 15 Dec 2023 02:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="Z9wkLxka"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2065.outbound.protection.outlook.com [40.107.6.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B49A468C
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 02:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UbNEALwgJIfteV3dthQiAldqe8faKh0TZtJjU+vNfXCsB1jrtq1XMeF3trQnRuYhX1ext7Aoy5ez/n9835/I3U4MeYYjr40lhLI9fkIxplDkcXNfDziGUsv9g3o4JnRp8/NxwCIbPuIT+MPFlfYQMkAtsRA7mXkKPK7IfloiFOQacqXxi7znD1SpPeyLmZx6vHUAN2PGhmrLEqdB8qQ7zrbZ3D62TcFD0Oa4X2nrNK+8czEAjP7OMvOe6CdBhq15jl0iKpivHCFF+SyGITUIIIwWshlI+671ot4C+4LuXmHBbAFZemoIN3/CjWgCBVBdu1jkL0Gqf40DjwSCOlD8hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bIfXXWnxO5unmyejLw2TBusd4o56lX6zo2XLayzsdFg=;
 b=FnLUi5V5qld1/Z3mmkx403LG9Uigqn6pjUoElaPEEPksgXYlzAZYvX5M6ROUoxHxZWHOU/vDOCAZUeM+auKlRPzFQ23Q1rqRRUzUDaVBR5meLjTuhxJ22PPdaK5b6DmizLNLwIqNbVbTldyCYvGFgxx7IDc4pqKGCue27iS/XP1t01aaunxNP6gnjctZiKs67koE3KSZgktptAcotVAEv8aR2qAj7rV9/5HSekIO9jVaNgjHfUZJOPb4E+4/G+lR5QUdgp2L+N2wJPMUQ0XvpeqrLwGCOpzXJoopicxzWEYmAbDEtNXHB1cIogKTkt7V70TfOD9NTuicc1dMyR0+Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bIfXXWnxO5unmyejLw2TBusd4o56lX6zo2XLayzsdFg=;
 b=Z9wkLxkaPP0cdUt7Wp3E3QDSJWKR3PFnqV9us2DVXtYSGJ+qWJPYRXNV94GQqafKkXe2Twpz8yUI5Dy4QaYaXDx3J2E3WIrMUz35zDtXyKfR51UmN8YVlnocl7uZHMGoB+XENVym+QJ7mDz9EhhXr46x23+PxODu0boeJmP6lKA=
Received: from DB7PR04MB5146.eurprd04.prod.outlook.com (2603:10a6:10:23::16)
 by VI1PR04MB7037.eurprd04.prod.outlook.com (2603:10a6:800:125::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Fri, 15 Dec
 2023 02:12:43 +0000
Received: from DB7PR04MB5146.eurprd04.prod.outlook.com
 ([fe80::709e:6876:7df0:fc30]) by DB7PR04MB5146.eurprd04.prod.outlook.com
 ([fe80::709e:6876:7df0:fc30%7]) with mapi id 15.20.7091.028; Fri, 15 Dec 2023
 02:12:43 +0000
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
Thread-Index: AQHaLn9TNtDXswxVBEWCR9xbNc0TXbCox/CAgADPBmA=
Date: Fri, 15 Dec 2023 02:12:43 +0000
Message-ID:
 <DB7PR04MB51462A079F226C6B9FCA9F7C8C93A@DB7PR04MB5146.eurprd04.prod.outlook.com>
References: <20231214112442.2412079-1-xu.yang_2@nxp.com>
 <20231214112442.2412079-3-xu.yang_2@nxp.com> <8309719.T7Z3S40VBb@steina-w>
In-Reply-To: <8309719.T7Z3S40VBb@steina-w>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB7PR04MB5146:EE_|VI1PR04MB7037:EE_
x-ms-office365-filtering-correlation-id: 5b35de9b-9f60-482e-3bed-08dbfd1352a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 ztj6i+Vxp3G0UHUn53mbsOhuLbJ6zzb3pRutW8jykZaiAzD06boIs7kc1n4ZrdwZtgL+7Ecm9EX6VJHIl6Yu8Z1lT/vb4Ne0u88Tm6PLBLW364nx1J2RH+XXOXk7ukVYprlm7Wm877EcfgN3/98gZBQL1iJ/zdDzpX96ceKWJr7iiOSyVwqsAQjn/jZBkm1vzrrBqaaluoIVEGmJwpBwOvzvYAIoG/oDn7lbgWLwPNz/PKLezg6h4ztN7Rde22SZbvEFa9JBfq4lzpjdRfdaMPCr8tfzzkBEx4KyY5NAV6ldUm5hMB3PozeItbmbCVrVDip+cGnNa3jUoTjkaEfcPlfhHj7BMbVLZNRi20eq+iwiZARO2fS8Fo2k8pL6vq5FaC9FlCqCmdHx3I2xJuFijlDi2US/COcojRfeKxDAWh8LheqqfF2QXMyEIOJUT5kv1GR83Tr5oZnQntMxT5ZACe1jeZ08YJJx6Y4WrWxArXFAQp1sgVza+kC4KoQSctE/qpvwxAtLW7JiQuQ3wak+DVXXdtCM+GK8sw1obzH5jvtvaaQkuHbs/GnLCBo3lCHTdYdmn8Z5uA3y+FgQS/Tsc4Jz3L7rqisY6mvHTYISfeI=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB5146.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(39860400002)(136003)(366004)(376002)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(66574015)(122000001)(71200400001)(33656002)(41300700001)(9686003)(45080400002)(6506007)(7696005)(38070700009)(54906003)(64756008)(66446008)(66476007)(316002)(66556008)(5660300002)(66946007)(76116006)(110136005)(8936002)(8676002)(4326008)(52536014)(478600001)(966005)(38100700002)(7416002)(2906002)(86362001)(26005)(55016003)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?owbewWzwxJ/1cXkr7b7bz8SyzFBKgMkaNo/wxMR3CQaf7kJpf8sQRpmFe6?=
 =?iso-8859-1?Q?MGZNqMojO7b4j0/jLjXUs3tZiu7kiRkXW4mLgNn9mD/n/zzkSjFvoCrVKq?=
 =?iso-8859-1?Q?bW8kc4veHOGrB1z1Kqv/IegYPx6+6xEr0zT/QDsNDmBSLNPEQWRFRi61PO?=
 =?iso-8859-1?Q?T4WVzydG617ocdyS1p6+O42iSdXFJsWreKFe9kIlSxckGQB+MDxpwa3c7i?=
 =?iso-8859-1?Q?ff5ETCpQAjafuXVBiPbSdk9U35Gsb8EkPB4avEYbnVOxO9qKkJYEeu1NpA?=
 =?iso-8859-1?Q?CnmwGzBZaqS37H2jHljrQy136VseCimyRDj0qIaYUbXI+pdiGvdElGF1+a?=
 =?iso-8859-1?Q?jfLvdYncoeeFX7wpBFmKYMO90FSTFvLwf1pe1wOeNAW4KqTm3PMfotrRba?=
 =?iso-8859-1?Q?ZTX2R36DTNMpDKn+hyaYi1FMCwHWlP5Uv91V3qtGtauQFRmI4t99TpOKZn?=
 =?iso-8859-1?Q?Tw5hMWsrfcY11h2hbJ686qhxWBx8XYSB2GI7dXmX3mDaJ3CoOaXACfXo94?=
 =?iso-8859-1?Q?z2s0BilijsFpWL8hTnXABixXi64CZUX4HUnQTM/UpOazcEwYvBdCCsi/AP?=
 =?iso-8859-1?Q?AwusgQSoR2Ej5276VfBBWhSWoHMjzbxdyRSPHS5lSzKSGzC+cM+vxjVdcP?=
 =?iso-8859-1?Q?dg3lKJpkL96dpGI+DKnvv3QDv5OJubu/LT5QOnAwHxVdd6LqxaHCr3giRO?=
 =?iso-8859-1?Q?Fu/OOv7pISmJgZWekua6/aW9uS2+pGpJKk/fmW3OdUemqo/M8bqDdCpoh7?=
 =?iso-8859-1?Q?XhkxtG+auhSML8WSn+TO7zTF1Rzt5K4swNyyIJe0hnlyFNYcKeZXgByFop?=
 =?iso-8859-1?Q?h+R7WSBeX8jSXfokESsPmonQqAZEo/fois4JAo9CGIlFpXG1wZuJgpqtGo?=
 =?iso-8859-1?Q?hK2UQnRAptsTLBLnzIVWZdj7/M/unEUuj7Xsv3h6WDFXCI04pX30Gdajas?=
 =?iso-8859-1?Q?poR1QoEzDrYvkj4uRrSphObhCGzUhGTyiyljkNod+qWFVnsJIcNINhP6I5?=
 =?iso-8859-1?Q?uncyQZqTz2rizVEHIYpACCB2r++lI04ATpMdUWFgBC9R9/eUuP72WWgsja?=
 =?iso-8859-1?Q?BgWHKO3MJrNYYzSNt8MZU98mBCT4Jj85f+DtC/C4JKNyPCZodG4VKRGnYT?=
 =?iso-8859-1?Q?N3gNIgHehzKHTFKquIzIVYwItDYVb0ig5mKiV6N8yqn1KYrqgII4vw8qjH?=
 =?iso-8859-1?Q?swaZ9WdCzS9GgnJLHIabqJemFlboM4eKsOMXwaMxCfxNbDgX9KUpjUqgim?=
 =?iso-8859-1?Q?2dDUQeyrPi+jpAfYo5LHw3wrCpB4GrCDtHNQlHT6kDE5nbtCvlGNOzhBmq?=
 =?iso-8859-1?Q?i43mk/DvjoKz9yZ2P/egZrwvnix17gpEt6NDMhZuPI4vFTMbpSOFvWKQEr?=
 =?iso-8859-1?Q?rJj48/PM29KRuOpUr/YT26zQ6I0mxD7zCQFlrNTjnwFz8TUvaOREyyvrtL?=
 =?iso-8859-1?Q?y/pS1V6Rr+l08Kg7PWjLoAntA9CAo5nSiM0ekqlt9kCaBQFlUOYYxf3bk1?=
 =?iso-8859-1?Q?8sZvJKI+xLbdSFvPDWV007vnab+GzK7Bs/zKeS6h7w+wzXgvClERleS+qR?=
 =?iso-8859-1?Q?wYDRNNPEHUhn7c6XInwvPMtWf2ChE/2AL+g7KyA9xOt/3s69vyCopRqF9A?=
 =?iso-8859-1?Q?FF14jI7Nm5jgs=3D?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b35de9b-9f60-482e-3bed-08dbfd1352a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2023 02:12:43.5818
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hjj9+jj3OZUY46TIl2dLXMUjGPuWjfyG2GL2Xfziv2zfah0wbSprLVzPpHm3lpxDPtRg4dIeQhz6eFCaSp5bOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7037

Hi Alexander,

>
> Hi,
>
> thanks for the patch.
>
> Am Donnerstag, 14. Dezember 2023, 12:24:41 CET schrieb Xu Yang:
> > There are 2 USB controllers on i.MX93. Add them.
> >
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx93.dtsi | 58 ++++++++++++++++++++++++
> >  1 file changed, 58 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > b/arch/arm64/boot/dts/freescale/imx93.dtsi index 34c0540276d1..bcf4861c=
fede
> > 100644
> > --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> > @@ -171,6 +171,20 @@ cm33: remoteproc-cm33 {
> >               status =3D "disabled";
> >       };
> >
> > +     usbphynop1: usbphynop1 {
> > +             #phy-cells =3D <0>;
> > +             compatible =3D "usb-nop-xceiv";
>
> compatible first.

Okay.

>
> > +             clocks =3D <&clk IMX93_CLK_USB_PHY_BURUNIN>;
> > +             clock-names =3D "main_clk";
> > +     };
> > +
> > +     usbphynop2: usbphynop2 {
> > +             #phy-cells =3D <0>;
> > +             compatible =3D "usb-nop-xceiv";
>
> compatible first.

Okay.

>
> > +             clocks =3D <&clk IMX93_CLK_USB_PHY_BURUNIN>;
> > +             clock-names =3D "main_clk";
> > +     };
> > +
> >       soc@0 {
> >               compatible =3D "simple-bus";
> >               #address-cells =3D <1>;
> > @@ -1059,5 +1073,49 @@ ddr-pmu@4e300dc0 {
> >                       reg =3D <0x4e300dc0 0x200>;
> >                       interrupts =3D <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> >               };
> > +
> > +             usbotg1: usb@4c100000 {
> > +                     compatible =3D "fsl,imx8mm-usb", "fsl,imx7d-usb",
> "fsl,imx27-usb";
> > +                     reg =3D <0x4c100000 0x200>;
> > +                     interrupts =3D <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>;
> > +                     clocks =3D <&clk IMX93_CLK_USB_CONTROLLER_GATE>,
> > +                              <&clk IMX93_CLK_HSIO_32K_GATE>;
> > +                     clock-names =3D "usb_ctrl_root_clk",
> "usb_wakeup_clk";
>
> drivers/usb/chipidea/ci_hdrc_imx.c uses 3 clocks: "ipg", "ahb" and "per",=
 see
> imx_get_clks(). How is this supposed to work?

I have sent another patch to get this clock.
https://lore.kernel.org/all/20231214112622.2412321-1-xu.yang_2@nxp.com/

>
> > +                     assigned-clocks =3D <&clk IMX93_CLK_HSIO>;
> > +                     assigned-clock-parents =3D <&clk
> IMX93_CLK_SYS_PLL_PFD1_DIV2>;
> > +                     assigned-clock-rates =3D <133000000>;
> > +                     fsl,usbphy =3D <&usbphynop1>;
> > +                     fsl,usbmisc =3D <&usbmisc1 0>;
> > +                     status =3D "disabled";
> > +             };
> > +
> > +             usbmisc1: usbmisc@4c100200 {
> > +                     compatible =3D "fsl,imx8mm-usbmisc", "fsl,imx7d-
> usbmisc",
> > +                                     "fsl,imx6q-usbmisc";
>
> This means you are compatible to fsl,imx7d-usbmisc. Which means you use
> register MX7D_USB_OTG_PHY_STATUS in USB misc (USBNC). But i.MX93 RM Rev. =
2
> (04/2023) lacks this and other registers.

Some registers in USBNC are not shown. The internal RM has these registers.

>
> > +                     #index-cells =3D <1>;
> > +                     reg =3D <0x4c100200 0x200>;
>
> reg after compatible.

Okay.

>
> > +             };
> > +
> > +             usbotg2: usb@4c200000 {
> > +                     compatible =3D "fsl,imx8mm-usb", "fsl,imx7d-usb",
> "fsl,imx27-usb";
> > +                     reg =3D <0x4c200000 0x200>;
> > +                     interrupts =3D <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>;
> > +                     clocks =3D <&clk IMX93_CLK_USB_CONTROLLER_GATE>,
> > +                              <&clk IMX93_CLK_HSIO_32K_GATE>;
> > +                     clock-names =3D "usb_ctrl_root_clk",
> "usb_wakeup_clk";
>
> The same as for usbotg1 applies here.

Okay.

>
> > +                     assigned-clocks =3D <&clk IMX93_CLK_HSIO>;
> > +                     assigned-clock-parents =3D <&clk
> IMX93_CLK_SYS_PLL_PFD1_DIV2>;
> > +                     assigned-clock-rates =3D <133000000>;
> > +                     fsl,usbphy =3D <&usbphynop2>;
> > +                     fsl,usbmisc =3D <&usbmisc2 0>;
> > +                     status =3D "disabled";
> > +             };
> > +
> > +             usbmisc2: usbmisc@4c200200 {
> > +                     compatible =3D "fsl,imx8mm-usbmisc", "fsl,imx7d-
> usbmisc",
> > +                                     "fsl,imx6q-usbmisc";
> > +                     #index-cells =3D <1>;
> > +                     reg =3D <0x4c200200 0x200>;
>
> The same as for usbmisc1 applies here.

Okay.

>
> > +             };
> >       };
> >  };
>
> Best regards,
> Alexander
>
> --
> TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
> Amtsgericht M=FCnchen, HRB 105018
> Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
> http://www.tq-/
> group.com%2F&data=3D05%7C02%7Cxu.yang_2%40nxp.com%7C10ff5a35f53f4047ae1d0=
8dbfca99c38%7C686ea1d3bc2b4c6fa
> 92cd99c5c301635%7C0%7C0%7C638381577622080432%7CUnknown%7CTWFpbGZsb3d8eyJW=
IjoiMC4wLjAwMDAiLCJQIjoiV2
> luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DVlpRPcnJTmyw=
fSamaGB1Ev8aPN2Hi596VbbRNGXF
> yis%3D&reserved=3D0
>


