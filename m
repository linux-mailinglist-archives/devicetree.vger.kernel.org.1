Return-Path: <devicetree+bounces-7721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6127C5288
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:52:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA9BE282251
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C73541EA7E;
	Wed, 11 Oct 2023 11:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="Vt9kcTjT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5841EA72
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:52:25 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B66DB6;
	Wed, 11 Oct 2023 04:52:23 -0700 (PDT)
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 414F236E;
	Wed, 11 Oct 2023 13:52:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1697025139;
	bh=MEJ931KKmfURAXfmsgExEQomCFmhaG0cGFWWTzhYxuE=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Vt9kcTjTwp7wiRpSQnsGK3srlB6vDoa8e7ka2EAqU1WAMBvl2HM2FABeTrQQ7XGHu
	 s7V0t5GXUvjpTumIMxi5MQ10+cZ6u8T7nwzPYXIFdVCH94W6OjposgntlhEnt6xSX3
	 OZOlYlz/bIeMps9zeh2erM4nWFcHeYmLWhrlU2b0=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZSaAg8aSZAfxEDpM@valkosipuli.retiisi.eu>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com> <20231010005126.3425444-2-kieran.bingham@ideasonboard.com> <ZSTp4jXKPVrbo5oU@valkosipuli.retiisi.eu> <169694430967.3973464.6599459439831458834@ping.linuxembedded.co.uk> <ZSaAg8aSZAfxEDpM@valkosipuli.retiisi.eu>
Subject: Re: [PATCH 1/5] media: dt-bindings: media: imx335: Add supply bindings
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, Paul J. Murphy <paul.j.murphy@intel.com>, Daniele Alessandrelli <daniele.alessandrelli@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, ARM/FREESCALE IMX / MXC ARM ARCHITECTURE <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Date: Wed, 11 Oct 2023 12:52:18 +0100
Message-ID: <169702513865.3973464.8616359775327057759@ping.linuxembedded.co.uk>
User-Agent: alot/0.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Quoting Sakari Ailus (2023-10-11 12:01:23)
> Hi Kieran,
>=20
> On Tue, Oct 10, 2023 at 02:25:09PM +0100, Kieran Bingham wrote:
> > Hi Sakari,
> >=20
> > Quoting Sakari Ailus (2023-10-10 07:06:26)
> > > Hi Kieran,
> > >=20
> > > On Tue, Oct 10, 2023 at 01:51:22AM +0100, Kieran Bingham wrote:
> > > > Add the bindings for the supply references used on the IMX335.
> > > >=20
> > > > Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> > > > ---
> > > >  .../bindings/media/i2c/sony,imx335.yaml          | 16 ++++++++++++=
++++
> > > >  1 file changed, 16 insertions(+)
> > > >=20
> > > > diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx33=
5.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> > > > index a167dcdb3a32..1863b5608a5c 100644
> > > > --- a/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> > > > +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> > > > @@ -32,6 +32,15 @@ properties:
> > > >      description: Clock frequency from 6 to 27 MHz, 37.125MHz, 74.2=
5MHz
> > > >      maxItems: 1
> > > > =20
> > > > +  avdd-supply:
> > > > +    description: Analog power supply (2.9V)
> > > > +
> > > > +  ovdd-supply:
> > > > +    description: Interface power supply (1.8V)
> > > > +
> > > > +  dvdd-supply:
> > > > +    description: Digital power supply (1.2V)
> > >=20
> > > I wonder what's the policy in this case --- some of the regulators are
> > > often hard-wired and the bindings didn't have them previously either =
(I
> > > wonder why, maybe they were all hard wired in the board??).
> > >=20
> > > Could they be optional? The driver will need to be able to do without=
 these
> > > in any case.
> >=20
> > Indeed - many devices do not need to define how they are powered up.
> >=20
> > But Krzysztof stated that supplies should be required by the bindings on
> > my recent posting for a VCM driver:
> >=20
> >  - https://lore.kernel.org/all/6e163f4d-061d-3c20-4c2e-44c74d529f10@lin=
aro.org/
> >=20
> > So based on that I have made these 'required'.
>=20
> I guess it's good to align bindings regarding this, in practice the driver
> will need to work without regulators (or with dummies), too.
>=20
> >=20
> > Even in my case here, with a camera module that is compatible with the
> > Raspberry Pi camera connector - there isn't really 3 supplies. It's just
> > a single gpio enable pin to bring this device up for me. Of course
> > that's specific to the module not the sensor.
>=20
> How do you declare that in DT? One of the regulators will be a GPIO one?

I have the following as an imx335.dtsi which I include.
It /should/ be an overlay / dtbo - but the current bootloader on the
baord I have doesn't support applying overlays - so I just include it
directly for now.


```
/ {
	/* 24 MHz Crystal on the camera module */
	imx335_inclk_1: imx335_inclk_24m {
		compatible =3D "fixed-clock";
		#clock-cells =3D <0>;
		status =3D "okay";
		clock-frequency =3D <24000000>;
	};

	reg_imx335_1_3v3: regulator-imx335_1-vdd3v3 {
		compatible =3D "regulator-fixed";
		pinctrl-names =3D "default";
		regulator-min-microvolt =3D <3300000>;
		regulator-max-microvolt =3D <3300000>;
		regulator-name =3D "IMX335_1_POWER_EN";
		gpio =3D <&expander0 4 GPIO_ACTIVE_HIGH>;
		vin-supply =3D <&reg_csi2_3v3>;
		startup-delay-us =3D <300000>;
		enable-active-high;
	};
};

&i2c3 {
	imx335_0: sensor@1a {
		compatible =3D "sony,imx335";
		reg =3D <0x1a>;

		clocks =3D <&imx335_inclk_1>;
		clock-names =3D "xclk";

		rotation =3D <180>;
		orientation =3D <0>;

		status =3D "okay";

		/* The IMX335 module uses *only* the 3v3 line */
		avdd-supply =3D <&reg_imx335_1_3v3>;
		ovdd-supply =3D <&reg_imx335_1_3v3>;
		dvdd-supply =3D <&reg_imx335_1_3v3>;

		port {
			sensor_1_out: endpoint {
				remote-endpoint =3D <&mipi_csi_1_in>;
				clock-lanes =3D <0>;
				data-lanes =3D <1 2 3 4>;
				link-frequencies =3D /bits/ 64 <594000000>;
			};
		};
	};
};

&mipi_csi_1 {
	status =3D "okay";

	ports {
		port@0 {
			mipi_csi_1_in: endpoint {
				remote-endpoint =3D <&sensor_1_out>;
				clock-lanes =3D <0>;
				data-lanes =3D <1 2 3 4>;
			};
		};
	};
};

```

We could argue that the reg_imx335_1_3v3, should be 3 separate
regulators each targetting vin-supply =3D <&reg_csi2_3v3>;

But they are all wired up to the same enable pin, and I think they would
then fail to probe if they all tried to control that gpio - while a
regulator-fixed can be shared and handles this for us.

The gpio at:

 &reg_imx335_1_3v3 {
 	gpio =3D <&expander0 4 GPIO_ACTIVE_HIGH>;
 };

connects to the enable line of all three regulators on the camera
module.


In fact - looking at the schematics of the camera module - they all
power up at 'the same time'. There are no hardware delays introduced on
this module, so that might answer the regulator-bulk question on the
driver.
--
Kieran



>=20
> --=20
> Regards,
>=20
> Sakari Ailus

