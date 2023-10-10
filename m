Return-Path: <devicetree+bounces-7240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 420E17BFD53
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:25:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E1391C20AF1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 355AE4735C;
	Tue, 10 Oct 2023 13:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="Oo0EHPcR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2125D208C5
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:25:18 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E86FDAC;
	Tue, 10 Oct 2023 06:25:15 -0700 (PDT)
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 44D2E3D6;
	Tue, 10 Oct 2023 15:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696944310;
	bh=2durrQWd9Y7mb4cgie2hSlNbqASowx84zsX964vB7WY=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Oo0EHPcRy554+8IW0QdbX0aOQED5uwAajQmzq9eY8HJNHT0Yem7x3zHDul3qignnK
	 yTHSCvlzIchAohICEtCGru+ti3n0VGGwfoC8gikdCZnYzPAxu3gW6sPM1V1xKa+SEg
	 WZ3UTpR4MMnqsL7rrjgHP4lHnxoZgUmKdmLDm398=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZSTp4jXKPVrbo5oU@valkosipuli.retiisi.eu>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com> <20231010005126.3425444-2-kieran.bingham@ideasonboard.com> <ZSTp4jXKPVrbo5oU@valkosipuli.retiisi.eu>
Subject: Re: [PATCH 1/5] media: dt-bindings: media: imx335: Add supply bindings
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, Paul J. Murphy <paul.j.murphy@intel.com>, Daniele Alessandrelli <daniele.alessandrelli@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>;
To: Sakari Ailus <sakari.ailus@iki.fi>
Date: Tue, 10 Oct 2023 14:25:09 +0100
Message-ID: <169694430967.3973464.6599459439831458834@ping.linuxembedded.co.uk>
User-Agent: alot/0.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Sakari,

Quoting Sakari Ailus (2023-10-10 07:06:26)
> Hi Kieran,
>=20
> On Tue, Oct 10, 2023 at 01:51:22AM +0100, Kieran Bingham wrote:
> > Add the bindings for the supply references used on the IMX335.
> >=20
> > Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> > ---
> >  .../bindings/media/i2c/sony,imx335.yaml          | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx335.ya=
ml b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> > index a167dcdb3a32..1863b5608a5c 100644
> > --- a/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> > +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> > @@ -32,6 +32,15 @@ properties:
> >      description: Clock frequency from 6 to 27 MHz, 37.125MHz, 74.25MHz
> >      maxItems: 1
> > =20
> > +  avdd-supply:
> > +    description: Analog power supply (2.9V)
> > +
> > +  ovdd-supply:
> > +    description: Interface power supply (1.8V)
> > +
> > +  dvdd-supply:
> > +    description: Digital power supply (1.2V)
>=20
> I wonder what's the policy in this case --- some of the regulators are
> often hard-wired and the bindings didn't have them previously either (I
> wonder why, maybe they were all hard wired in the board??).
>=20
> Could they be optional? The driver will need to be able to do without the=
se
> in any case.

Indeed - many devices do not need to define how they are powered up.

But Krzysztof stated that supplies should be required by the bindings on
my recent posting for a VCM driver:

 - https://lore.kernel.org/all/6e163f4d-061d-3c20-4c2e-44c74d529f10@linaro.=
org/

So based on that I have made these 'required'.

Even in my case here, with a camera module that is compatible with the
Raspberry Pi camera connector - there isn't really 3 supplies. It's just
a single gpio enable pin to bring this device up for me. Of course
that's specific to the module not the sensor.


> > +
> >    reset-gpios:
> >      description: Reference to the GPIO connected to the XCLR pin, if a=
ny.
> >      maxItems: 1
> > @@ -60,6 +69,9 @@ required:
> >    - compatible
> >    - reg
> >    - clocks
> > +  - avdd-supply
> > +  - ovdd-supply
> > +  - dvdd-supply
> >    - port
> > =20
> >  additionalProperties: false
> > @@ -79,6 +91,10 @@ examples:
> >              assigned-clock-parents =3D <&imx335_clk_parent>;
> >              assigned-clock-rates =3D <24000000>;
> > =20
> > +            avdd-supply =3D <&camera_vdda_2v9>;
> > +            ovdd-supply =3D <&camera_vddo_1v8>;
> > +            dvdd-supply =3D <&camera_vddd_1v2>;
> > +
> >              port {
> >                  imx335: endpoint {
> >                      remote-endpoint =3D <&cam>;
>=20
> --=20
> Kind regards,
>=20
> Sakari Ailus

