Return-Path: <devicetree+bounces-7629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A42B7C4F66
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:51:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAE4D1C20D28
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:51:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD5F1D68B;
	Wed, 11 Oct 2023 09:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="HHF8UrP9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4151A711
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 09:51:17 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F14E94;
	Wed, 11 Oct 2023 02:51:16 -0700 (PDT)
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4623636E;
	Wed, 11 Oct 2023 11:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1697017869;
	bh=diHNk/C1251cxVwV+v3oM+7Sv140rp1BEm37PJu8sNU=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=HHF8UrP9H9XuRCYupOXui8Mshc4P3o+uPWnGGlR1f8A7K/BR3TCh9hFRtF+TJ/32F
	 mxlV/K5MBy9xT9xhHRy5+d9HRd1FzVXl1z6O07TN3Z14UrcIBW7y9T4U0Sx95IMJxp
	 GeJKOIe0iov4E1eWjOYi61T3D4fBF1bo+I2Tj+p0=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231010170941.GA1061525-robh@kernel.org>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com> <20231010005126.3425444-2-kieran.bingham@ideasonboard.com> <20231010170941.GA1061525-robh@kernel.org>
Subject: Re: [PATCH 1/5] media: dt-bindings: media: imx335: Add supply bindings
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, Paul J. Murphy <paul.j.murphy@intel.com>, Daniele Alessandrelli <daniele.alessandrelli@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>;
To: Rob Herring <robh@kernel.org>
Date: Wed, 11 Oct 2023 10:51:08 +0100
Message-ID: <169701786887.277971.6587222312606696723@ping.linuxembedded.co.uk>
User-Agent: alot/0.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Quoting Rob Herring (2023-10-10 18:09:41)
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
>=20
> New required properties are an ABI break. That's fine only if you can=20
> explain no one is using this binding.

I made these required due to a previous review comment on another
driver:

- https://lore.kernel.org/all/6e163f4d-061d-3c20-4c2e-44c74d529f10@linaro.o=
rg/

I hadn't thought about the ABI break though.

So to clarify (for me):
 - New bindings should always add -supply's as required.
 - Adding -supply to existing bindings should be optional.

I guess that leaves a mix of devices that either are required or may be
optional - but perhaps that can't be helped if the bindings have already
got in.

The IMX335 driver was added in 45d19b5fb9ae ("media: i2c: Add imx335
camera sensor driver"), and the bindings in 932741d451a5 ("media:
dt-bindings: media: Add bindings for imx335") by Martina, who looks to
be an Intel employee - so I suspect this is used through ACPI so far and
not device tree.

Danielle, get_maintainer tells me you are looking after this device -
can you confirm this ?

--
Kieran


>=20
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
> > --=20
> > 2.34.1
> >

