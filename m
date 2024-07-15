Return-Path: <devicetree+bounces-85801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E22B931711
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 16:42:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90E401C2101E
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 14:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92E2618EA93;
	Mon, 15 Jul 2024 14:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNaLX/OW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A62B433B3;
	Mon, 15 Jul 2024 14:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721054559; cv=none; b=HY07u7wcevRAml3sY690iQTKS1ppJQbbWTm6uMV3HY08UOK1qt87SF5NN8uwhS7o1FR4FOQxNwuidxQEzCBh3Ja0ld6lkSnoAKs7v3HI/cysF/FXz8THGe0OZd4AvDEddYPtxKWMMe2w+m4icDxSCKXnUFJjqmg78puJUGx+ebo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721054559; c=relaxed/simple;
	bh=YOFSuAMUkht6ZkCt3qgRNSuSI7M6WQhFs7l18gj2G0g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S6qNwGXh+i8MYPjvg1LFh5RPhbIyaeu/n/pcV6edfeFcHiSEBKBqc+GWn7DxktF84ebddhbUNnFDjAXv023xAa6RX+2pxKlwX+7dJR17S3NoFY2/kbZBu9vDbxB97FrzbqXX+dzm2RUbtvbXgT50JD0mgjTZrVhD29U+lt7fspA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNaLX/OW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72F54C32782;
	Mon, 15 Jul 2024 14:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721054558;
	bh=YOFSuAMUkht6ZkCt3qgRNSuSI7M6WQhFs7l18gj2G0g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dNaLX/OWBwyr4ShJSkJ54YnzQXaWV0ghGLQSFH6aEC9b1y3/9UhqjATCRVqR0LmJJ
	 4ZH6STjw5gfZHG1vwTe3f2hCRYN5sE+4596r+XJKyhWezJ4YRT7XpyT0G5Aq6YGGA5
	 TNPjshgnTgZeRsu7Voj8acYqIvCjst0Ros/Jw3RFndILUn7ThHCWaG/ud6HNK2b+2h
	 mfGHcRG44cohFUop0GJE0/W+DtfKIIWmjiOvhv89X+s+Y+YRja6ivBsAqfJtv2BWnf
	 8lrLWhNymKIfKHaK49iYUMmDuBWt8mLst0CvoqJWGebfo3ZagZ92swGwsKNjLhgijM
	 2SSn5yGFhon/Q==
Date: Mon, 15 Jul 2024 16:42:36 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: add TI TDP158
Message-ID: <20240715-shiny-enigmatic-firefly-2a6dec@houat>
References: <20240627-tdp158-v3-0-fb2fbc808346@freebox.fr>
 <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>
 <20240701-bug-of-great-honeydew-cfb6ef@houat>
 <e7bbbe4e-7deb-46c3-9cce-1922f9b6b3a2@freebox.fr>
 <20240708-ethereal-romantic-piculet-d4ae66@houat>
 <pp3rc5zob3xeghlatw4vnpzplc4yjpjadkea465zmhft55dyl5@3cpoc2zovftv>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="jf4rzpjpjrtysgf5"
Content-Disposition: inline
In-Reply-To: <pp3rc5zob3xeghlatw4vnpzplc4yjpjadkea465zmhft55dyl5@3cpoc2zovftv>


--jf4rzpjpjrtysgf5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 08, 2024 at 11:29:46PM GMT, Dmitry Baryshkov wrote:
> On Mon, Jul 08, 2024 at 04:59:23PM GMT, Maxime Ripard wrote:
> > On Mon, Jul 01, 2024 at 05:36:18PM GMT, Marc Gonzalez wrote:
> > > On 01/07/2024 15:50, Maxime Ripard wrote:
> > >=20
> > > > On Thu, Jun 27, 2024 at 01:13:03PM GMT, Marc Gonzalez wrote:
> > > >
> > > >> TDP158 is an AC-coupled DVI / HDMI to TMDS level shifting Redriver.
> > > >> It supports DVI 1.0, HDMI 1.4b and 2.0b.
> > > >> It supports 4 TMDS channels, HPD, and a DDC interface.
> > > >> It supports dual power supply rails (1.1V on VDD, 3.3V on VCC)
> > > >> for power reduction. Several methods of power management are
> > > >> implemented to reduce overall power consumption.
> > > >> It supports fixed receiver EQ gain using I2C or pin strap to
> > > >> compensate for different lengths input cable or board traces.
> > > >>
> > > >> Features
> > > >>
> > > >> - AC-coupled TMDS or DisplayPort dual-mode physical layer input
> > > >> to HDMI 2.0b TMDS physical layer output supporting up to 6Gbps
> > > >> data rate, compatible with HDMI 2.0b electrical parameters
> > > >> - DisplayPort dual-mode standard version 1.1
> > > >> - Programmable fixed receiver equalizer up to 15.5dB
> > > >> - Global or independent high speed lane control, pre-emphasis
> > > >> and transmit swing, and slew rate control
> > > >> - I2C or pin strap programmable
> > > >> - Configurable as a DisplayPort redriver through I2C
> > > >> - Full lane swap on main lanes
> > > >> - Low power consumption (200 mW at 6Gbps, 8 mW in shutdown)
> > > >>
> > > >> https://www.ti.com/lit/ds/symlink/tdp158.pdf
> > > >>
> > > >> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> > > >> ---
> > > >>  .../bindings/display/bridge/ti,tdp158.yaml         | 51 +++++++++=
+++++++++++++
> > > >>  1 file changed, 51 insertions(+)
> > > >>
> > > >> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,t=
dp158.yaml b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
> > > >> new file mode 100644
> > > >> index 0000000000000..21c8585c3bb2d
> > > >> --- /dev/null
> > > >> +++ b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.y=
aml
> > > >> @@ -0,0 +1,51 @@
> > > >> +# SPDX-License-Identifier: GPL-2.0-only
> > > >> +%YAML 1.2
> > > >> +---
> > > >> +$id: http://devicetree.org/schemas/display/bridge/ti,tdp158.yaml#
> > > >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > >> +
> > > >> +title: TI TDP158 HDMI to TMDS Redriver
> > > >> +
> > > >> +maintainers:
> > > >> +  - Arnaud Vrac <avrac@freebox.fr>
> > > >> +  - Pierre-Hugues Husson <phhusson@freebox.fr>
> > > >> +
> > > >> +properties:
> > > >> +  compatible:
> > > >> +    const: ti,tdp158
> > > >> +
> > > >> +  reg:
> > > >> +    description: I2C address of the device
> > > >> +
> > > >> +  enable-gpios:
> > > >> +    description: GPIO controlling bridge enable
> > > >> +
> > > >> +  vcc-supply:
> > > >> +    description: Power supply 3.3V
> > > >> +
> > > >> +  vdd-supply:
> > > >> +    description: Power supply 1.1V
> > > >> +
> > > >> +  ports:
> > > >> +    $ref: /schemas/graph.yaml#/properties/ports
> > > >> +
> > > >> +    properties:
> > > >> +      port@0:
> > > >> +        $ref: /schemas/graph.yaml#/properties/port
> > > >> +        description: Bridge input
> > > >> +
> > > >> +      port@1:
> > > >> +        $ref: /schemas/graph.yaml#/properties/port
> > > >> +        description: Bridge output
> > > >> +
> > > >> +    required:
> > > >> +      - port@0
> > > >> +      - port@1
> > > >=20
> > > > The device supports DVI, HDMI or DP input, with various requirement=
s and
> > > > capabilities depending on the input. Your binding doesn't address t=
hat.
> > > >=20
> > > > Similarly, it can do lane-swapping, so we should probably have a
> > > > property to describe what mapping we want to use.
> > > >=20
> > > > The i2c register access (and the whole behaviour of the device) is
> > > > constrained on the I2C_EN pin status, and you can't read it from the
> > > > device, so it's also something we need to have in the DT.
> > >=20
> > > We are using the device in its default configuration.
> > > (Power on via OE, then it works as expected)
> >=20
> > I know, but that doesn't really matter for a binding.
> >=20
> > > Can we leave any additional properties to be defined by whomever needs
> > > them in the future?
> >=20
> > If you can guarantee that doing so would be backward compatible, sure.
> > But that means being able to answer those questions with a reasonable
> > plan.
>=20
> I think proposed bindings are generic enough to cover other possible
> usecases in future.

I don't think it is. The current binding is for a I2C device that
shouldn't be accessed through I2C.

It's working for now because the driver doesn't do any access, so it's
all great, but as soon as we add support for the other case, then we'll
have to add a property that states that while it's an i2c device, it
shouldn't be accessed.

And adding such a property is a compatibility-breaking change.

Maxime

--jf4rzpjpjrtysgf5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZpU1WwAKCRAnX84Zoj2+
dqT+AYDIB3gJhStUAEy2q8I0BAqGoaM82R09gsmpWEZmV7XwFDhn0wfixTIFVfSd
r0bfdPsBfjnSwheiX0eK5kHYn7cRxMhxlt36oVO6FcYJTQPW9rMPljhkJ9Vlhfuk
DM732qy/qA==
=bUQI
-----END PGP SIGNATURE-----

--jf4rzpjpjrtysgf5--

