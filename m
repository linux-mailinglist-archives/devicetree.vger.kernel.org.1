Return-Path: <devicetree+bounces-14760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A06F47E66B8
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 10:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D057F1C2080C
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 09:27:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B03EB111B6;
	Thu,  9 Nov 2023 09:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ubimet.com header.i=@ubimet.com header.b="XJcQ6NVV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1088711C97
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 09:27:05 +0000 (UTC)
Received: from mx2-at.ubimet.com (mx2-at.ubimet.com [141.98.226.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55F192590;
	Thu,  9 Nov 2023 01:27:05 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mx2-at.ubimet.com (Postfix) with ESMTP id 0A93F811B2;
	Thu,  9 Nov 2023 09:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ubimet.com;
	s=20200131mdel; t=1699522024;
	bh=7+ZKL25OyeOqccAovsHAB5v+Outjv3oP0OVWKABhcBk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=XJcQ6NVVVdDMcHM2e/Xa5F+RGFN/H1Ke5lrnLn7Kl8A8/iDZz0qOsqOtbkcac3NBP
	 8dVaMFbVA9fqRLOO+ge3pABKvkJkVgnmPZRkMJukvFj8kN+GH3UJkK1KPu+j+ChxBm
	 aaOB0yZR+DxWjXCblHoDKN/+mzOz4/xHBqUiAenNFZj2WIYD0Bw+ix4/HUlVS0za8j
	 Y6A+lViZAz7HVf0y+WaVWC/wcFzjvMunfdEX4jxWss2yHVmp7sIDgmEnRJWkuqhGWX
	 4Mfg5HxI4RNIXJSs1ZlWS3exhXuhgA/UK2JTxwiYb5YUqswu0k803MxAUKacZe2iMB
	 O7Zc92dVTDhLA==
Received: from mx2-at.ubimet.com ([127.0.0.1])
	by localhost (mx02.dmz.dc.at.ubimet.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OFw0DCezmNWE; Thu,  9 Nov 2023 09:27:03 +0000 (UTC)
Received: from zimbra-mta01.ext.dc.at.ubimet.com (webmail-dc.at.ubimet.com [10.1.18.22])
	by mx2-at.ubimet.com (Postfix) with ESMTPS id EBF4D80C23;
	Thu,  9 Nov 2023 09:27:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by zimbra-mta01.ext.dc.at.ubimet.com (Postfix) with ESMTP id D03C780727;
	Thu,  9 Nov 2023 09:27:03 +0000 (UTC)
Received: from zimbra-mta01.ext.dc.at.ubimet.com ([127.0.0.1])
 by localhost (zimbra-mta01.ext.dc.at.ubimet.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id EMYkdeiCukID; Thu,  9 Nov 2023 09:27:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by zimbra-mta01.ext.dc.at.ubimet.com (Postfix) with ESMTP id 7D0B080758;
	Thu,  9 Nov 2023 09:27:02 +0000 (UTC)
X-Virus-Scanned: amavis at zimbra-mta01.ext.dc.at.ubimet.com
Received: from zimbra-mta01.ext.dc.at.ubimet.com ([127.0.0.1])
 by localhost (zimbra-mta01.ext.dc.at.ubimet.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id qk1lHTgh8MgM; Thu,  9 Nov 2023 09:27:02 +0000 (UTC)
Received: from pcn112 (pcn112.it.hub.at.ubimet.com [10.15.66.143])
	by zimbra-mta01.ext.dc.at.ubimet.com (Postfix) with ESMTPSA id 1316680727;
	Thu,  9 Nov 2023 09:27:02 +0000 (UTC)
Date: Thu, 9 Nov 2023 10:26:27 +0100
From: jrodrigues <jrodrigues@ubimet.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Bruno Thomsen <bruno.thomsen@gmail.com>, Fabio Estevam
 <festevam@gmail.com>, Rob Herring <robh+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] ARM: dts: imx: tqma7: add lm75a sensor (rev. 01xxx)
Message-ID: <20231109102627.0bafc531@pcn112>
In-Reply-To: <1783737.VLH7GnMWUR@steina-w>
References: <20231102231130.13ca0513@pcn112>
	<CAOMZO5C8wq=72HUqSb9bdQK2ji2zcEKByByovnKzUt6A5H3K8Q@mail.gmail.com>
	<2253436.iZASKD2KPV@steina-w>
	<1783737.VLH7GnMWUR@steina-w>
Followup-To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

On Thu, 09 Nov 2023 07:57:36 +0100
Alexander Stein <alexander.stein@ew.tq-group.com> wrote:

> Hi Jo=C3=A3o,
>=20
> Am Dienstag, 7. November 2023, 07:34:32 CET schrieb Alexander Stein:
> > Hi,
> >=20
> > Am Freitag, 3. November 2023, 22:07:08 CET schrieb Fabio Estevam: =20
> > > [Adding Bruno and Alexander]
> > >=20
> > > On Thu, Nov 2, 2023 at 7:12=E2=80=AFPM Jo=C3=A3o Rodrigues
> > > <jrodrigues@ubimet.com>  =20
> wrote:
> > > > From: Jo=C3=A3o Rodrigues <jrodrigues@ubimet.com>
> > > >=20
> > > > TQMa7x (revision 01xxx) uses a LM75A temperature sensor.
> > > > The two sensors use different I2C addresses, so we can set both
> > > > sensors simultaneously. =20
> >=20
> > I've contacted responsible department and I am waiting for more
> > details. =20
>=20
> I got response that REV.01xx was just a prototype and not released
> officially.

But REV. 01xx was not an internal-only prototype.=20
Furthermore, in the board manual,
https://www.tq-group.com/filedownloads/files/products/embedded/manuals/arm/=
carrierboard/MBa7x/MBa7x.UM.0101.pdf
section 4.1.2, the old version is still referenced.

>=20
> > Best regards,
> > Alexander
> >  =20
> > > > Signed-off-by: Jo=C3=A3o Rodrigues <jrodrigues@ubimet.com>
> > > > ---
> > > >=20
> > > >  arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi | 9 +++++++--
> > > >  1 file changed, 7 insertions(+), 2 deletions(-)
> > > >=20
> > > > diff --git a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
> > > > b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi index
> > > > fe42b0a4683..3fc3130f9de 100644
> > > > --- a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
> > > > +++ b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
> > > > @@ -128,11 +128,16 @@ vgen6_reg: vldo4 {
> > > >=20
> > > >                 };
> > > >        =20
> > > >         };
> > > >=20
> > > > -       /* NXP SE97BTP with temperature sensor + eeprom */
> > > > +       /* LM75A temperature sensor, TQMa7x 01xx */
> > > > +       lm75a: temperature-sensor@48 {
> > > > +               compatible =3D "national,lm75a";
> > > > +               reg =3D <0x48>;
> > > > +       }; =20
>=20
> I don't like the idea of adding an i2c device for everybody. This
> restricts/ affects usage of i2c address 0x48 for all rev.02xx users,
> no?

Yes, it restricts the usage of I2C address 0x48 in I2C1.
While I2C1 is not exclusive to the SoM, the TQMa7x manual states
"I2C1 is used for devices on the TQMa7x".
As a counterpoint, the MBa7x carrier board also uses I2C1.

>=20
> Best regards,
> Alexander
> > > > +
> > > > +       /* NXP SE97BTP with temperature sensor + eeprom, TQMa7x
> > > > 02xx */
> > > >=20
> > > >         se97b: temperature-sensor-eeprom@1e {
> > > >        =20
> > > >                 compatible =3D "nxp,se97b", "jedec,jc-42.4-temp";
> > > >                 reg =3D <0x1e>;
> > > >=20
> > > > -               status =3D "okay";
> > > >=20
> > > >         };
> > > >        =20
> > > >         /* ST M24C64 */
> > > >=20
> > > > --
> > > > 2.25.1 =20
>=20
>=20


