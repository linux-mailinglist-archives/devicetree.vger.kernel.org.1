Return-Path: <devicetree+bounces-10914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 644BB7D374B
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:57:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 822841C2087E
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 12:57:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78A3B14273;
	Mon, 23 Oct 2023 12:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="P8Q0p9Ii"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2930134A6
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 12:57:19 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2BA4101;
	Mon, 23 Oct 2023 05:57:18 -0700 (PDT)
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5D4D5D20;
	Mon, 23 Oct 2023 14:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698065826;
	bh=Omid3ku8cDupkIqAZOGCBFtZjv7Mc41BlFErPqeY8O0=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=P8Q0p9IinaqPTvzP/WVALG32csiGeUwU0rgl5BJfZyznP/S6UUAZeOL88oQT5qv7u
	 hM211pt3kZ7ZhbSVL6A80mnhozentKtkXGY4IGARaSJSnaAWkr7rmo4/I0MVqmZhoO
	 xPrim7+9I4uLThMStETMa9L/GnRX+Gdj36KWk7iY=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231021140802.4nyyaxclcrqv5n7b@pengutronix.de>
References: <20231021005100.3490929-1-kieran.bingham@ideasonboard.com> <20231021140802.4nyyaxclcrqv5n7b@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: freescale: debix-som: Add heartbeat LED
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>;
To: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 23 Oct 2023 13:57:14 +0100
Message-ID: <169806583408.3350128.7507727905154745981@ping.linuxembedded.co.uk>
User-Agent: alot/0.10

Hi Marco,

Quoting Marco Felsch (2023-10-21 15:08:02)
> Hi Kieran,
>=20
> On 23-10-21, Kieran Bingham wrote:
> > Map the 'RUN' LED present on the Debix-SOM as a heartbeat.
> >=20
> > Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> > ---
> >  .../dts/freescale/imx8mp-debix-som-a.dtsi     | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi b/ar=
ch/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi
> > index bc312aa1bfc8..c9a81486da48 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi
> > @@ -20,6 +20,19 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
> >               gpio =3D <&gpio2 19 GPIO_ACTIVE_HIGH>;
> >               enable-active-high;
> >       };
> > +
> > +     gpio-leds {
> > +             compatible =3D "gpio-leds";
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&pinctrl_gpio_led>;
> > +
> > +             status {
>=20
> according the bindings-doc, this should be:
>=20
>                 'led-status' or 'led-0'

Interesting - I can see 'led-0' is supported, but I can't see if
led-status is supported.

Documentation/devicetree/bindings/leds/leds-gpio.yaml:

patternProperties:
  # The first form is preferred, but fall back to just 'led' anywhere in the
  # node name to at least catch some child nodes.
  "(^led-[0-9a-f]$|led)":
    type: object
    $ref: common.yaml#
    unevaluatedProperties: false

That regex looks like it wouldn't support 'led-status'. Otherwise I'd
probably label it as 'led-run' to match how the LED is physically
labelled.

I've set led-0 locally for now.

>=20
> > +                     label =3D "yellow:status";
>=20
> label is deprecated, instead function and color should be used.

Ohh - I knew that, and I should have remembered this from the last time
I did an LED.  That was too long ago and too small a task I guess.

Looking more closely, the LED is green - not yellow too! so I've udpated
this with:

	led-0 {
		gpios =3D <&gpio3 16 GPIO_ACTIVE_HIGH>;
		default-state =3D "on";
		linux,default-trigger =3D "heartbeat";
		function =3D LED_FUNCTION_STATUS;
		color =3D <LED_COLOR_ID_GREEN>;
	};


Updating, for a v2.

> With that fixed feel to add my:
>=20
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Thanks.

--
Kieran


>=20
> > +                     gpios =3D <&gpio3 16 GPIO_ACTIVE_HIGH>;
> > +                     default-state =3D "on";
> > +                     linux,default-trigger =3D "heartbeat";
> > +             };
> > +     };
> >  };
> > =20
> >  &A53_0 {
> > @@ -203,6 +216,12 @@ &wdog1 {
> >  };
> > =20
> >  &iomuxc {
> > +     pinctrl_gpio_led: gpioledgrp {
> > +             fsl,pins =3D <
> > +                     MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16           0=
x19
> > +             >;
> > +     };
> > +
> >       pinctrl_i2c1: i2c1grp {
> >               fsl,pins =3D <
> >                       MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL                 0=
x400001c2
> > --=20
> > 2.34.1
> >=20
> >

