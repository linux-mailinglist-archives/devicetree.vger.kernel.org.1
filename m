Return-Path: <devicetree+bounces-13220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 622A47DCF97
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 15:48:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6196B1C209B8
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 14:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E69B1DDEB;
	Tue, 31 Oct 2023 14:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="XtA0XK/f"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBB723A2
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 14:48:36 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EFA8DB;
	Tue, 31 Oct 2023 07:48:35 -0700 (PDT)
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1DABD2E4;
	Tue, 31 Oct 2023 15:48:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698763697;
	bh=wYywuapXdoLf8a5H2wSbD10vk9Qqmr7xGXcr923Jtw8=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=XtA0XK/fGpPQHVLmgi3r66DcFHedQnWbGs/+xj3+vsgkAiR4PXVpO01fw1DkxuPEm
	 pGRc+RXOLLjvHn6PZaCGYNFamp1Nk0d6lvHE0dxTUQXYPkiSKMe+uUmLGapLhR+Ax5
	 wMKmR7HPJlKqRn35OFjXzYHFhoZnRuBTliOg0uuI=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <169701786887.277971.6587222312606696723@ping.linuxembedded.co.uk>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com> <20231010005126.3425444-2-kieran.bingham@ideasonboard.com> <20231010170941.GA1061525-robh@kernel.org> <169701786887.277971.6587222312606696723@ping.linuxembedded.co.uk>
Subject: Re: [PATCH 1/5] media: dt-bindings: media: imx335: Add supply bindings
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, Paul J. Murphy <paul.j.murphy@intel.com>, Daniele Alessandrelli <daniele.alessandrelli@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, ARM/FREESCALE IMX / MXC ARM ARCHITECTURE <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
To: Rob Herring <robh@kernel.org>
Date: Tue, 31 Oct 2023 14:48:30 +0000
Message-ID: <169876371010.1337486.16850340242960985751@ping.linuxembedded.co.uk>
User-Agent: alot/0.10

Hi Rob, Krzysztof,

Quoting Kieran Bingham (2023-10-11 10:51:08)
> Quoting Rob Herring (2023-10-10 18:09:41)
> > On Tue, Oct 10, 2023 at 01:51:22AM +0100, Kieran Bingham wrote:
> > > Add the bindings for the supply references used on the IMX335.
> > >=20
> > > Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> > > ---
> > >  .../bindings/media/i2c/sony,imx335.yaml          | 16 ++++++++++++++=
++
> > >  1 file changed, 16 insertions(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx335.=
yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> > > index a167dcdb3a32..1863b5608a5c 100644
> > > --- a/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> > > +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> > > @@ -32,6 +32,15 @@ properties:
> > >      description: Clock frequency from 6 to 27 MHz, 37.125MHz, 74.25M=
Hz
> > >      maxItems: 1
> > > =20
> > > +  avdd-supply:
> > > +    description: Analog power supply (2.9V)
> > > +
> > > +  ovdd-supply:
> > > +    description: Interface power supply (1.8V)
> > > +
> > > +  dvdd-supply:
> > > +    description: Digital power supply (1.2V)
> > > +
> > >    reset-gpios:
> > >      description: Reference to the GPIO connected to the XCLR pin, if=
 any.
> > >      maxItems: 1
> > > @@ -60,6 +69,9 @@ required:
> > >    - compatible
> > >    - reg
> > >    - clocks
> > > +  - avdd-supply
> > > +  - ovdd-supply
> > > +  - dvdd-supply
> >=20
> > New required properties are an ABI break. That's fine only if you can=20
> > explain no one is using this binding.
>=20

No one is using this /in-kernel-tree/.

This could be because the original support for IMX335 was added with
ACPI devices in mind, but even for device-tree, that's not surprising as
cameras may often be described in overlays, unless embedded in specific
products.

I'm trying to revise this series for a v2. Could I get a decision from
the DT maintainers on which direction I should take this please?

Would you prefer supplies to be 'required' (if supplies should always be
required) - or should I leave this as optional as the binding has
previously been accepted?




> I made these required due to a previous review comment on another
> driver:
>=20
> - https://lore.kernel.org/all/6e163f4d-061d-3c20-4c2e-44c74d529f10@linaro=
.org/
>=20
> I hadn't thought about the ABI break though.
>=20
> So to clarify (for me):
>  - New bindings should always add -supply's as required.
>  - Adding -supply to existing bindings should be optional.
>=20
> I guess that leaves a mix of devices that either are required or may be
> optional - but perhaps that can't be helped if the bindings have already
> got in.
>=20
> The IMX335 driver was added in 45d19b5fb9ae ("media: i2c: Add imx335
> camera sensor driver"), and the bindings in 932741d451a5 ("media:
> dt-bindings: media: Add bindings for imx335") by Martina, who looks to
> be an Intel employee - so I suspect this is used through ACPI so far and
> not device tree.
>=20
> Danielle, get_maintainer tells me you are looking after this device -
> can you confirm this ?
>=20
> --
> Kieran
>=20
>=20
> >=20
> > >    - port
> > > =20
> > >  additionalProperties: false
> > > @@ -79,6 +91,10 @@ examples:
> > >              assigned-clock-parents =3D <&imx335_clk_parent>;
> > >              assigned-clock-rates =3D <24000000>;
> > > =20
> > > +            avdd-supply =3D <&camera_vdda_2v9>;
> > > +            ovdd-supply =3D <&camera_vddo_1v8>;
> > > +            dvdd-supply =3D <&camera_vddd_1v2>;
> > > +
> > >              port {
> > >                  imx335: endpoint {
> > >                      remote-endpoint =3D <&cam>;
> > > --=20
> > > 2.34.1
> > >

