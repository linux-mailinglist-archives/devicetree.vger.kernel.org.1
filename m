Return-Path: <devicetree+bounces-89321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7325E940C0E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 10:44:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CAE30B2648F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 08:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 079A9193090;
	Tue, 30 Jul 2024 08:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCciYEnQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B13193089;
	Tue, 30 Jul 2024 08:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722329058; cv=none; b=OtCYraql80YICuiSgVa4Av9u4vf2Uch5lf6m/QK2ETJGFK46V8AYDD+BK5B0GY4p4hmKO+1NIk2+ssbtNyDeAZwsGMBzpUsB3Z1ZXr+xyXPuDclVLE4S0xWcF1pqYGEn7jmX7tdpNma8fpGNTaU8phowYlyOqYCzXosYtdsgHU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722329058; c=relaxed/simple;
	bh=vsycLV4HC9MssFQzKIw/JPQ6W65DZeKe1BGboHBw5uI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=upzByPWGMofFMiB/1zmCCFS7AMSU1tOJHByWH+WyTh+Pj+y2fe93mlOqvvq7GSN0PSNxXKXWjZPJq4HQlDvmUYT3qNZZ/6LNJ6/akiXxJrbHUpdxvLWUPGPk2bmVli/iIVGwZC3nIHJad82FwH9WOrLby7vNHad2q1mc4BF9ueo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCciYEnQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EEC2C32782;
	Tue, 30 Jul 2024 08:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722329058;
	bh=vsycLV4HC9MssFQzKIw/JPQ6W65DZeKe1BGboHBw5uI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VCciYEnQERwQGTRjZ0w43PzMjCLbk/6iQwA/iXfzbSTqDo8WwoSNcWTxiIBjMqGw5
	 rb4VxN15RQG2lK/x1GostHRgzunSsu7GeQ5KJRHZJ+Jl9U+7Ibt2fMTxGKDRYxKMw0
	 BH9TOEOa05kM8hN28OgGLhpqaJQc40+TQkcDsPS7E1V0nwbbnlRUWhq77cvIES3Es1
	 4gAZW+FqdHlmdGFEO/BnoLArBXmWo5zJSRxzhAEbXWG0lsgcszrWmG897cGjL6Q87Q
	 9SiASwGd2o2LUISgFPzAn6cY1mY/vkSZ7GhpAFx1eCa/t3rphoHKTiKujKhgAPryn2
	 wur28LNWz+GFA==
Date: Tue, 30 Jul 2024 10:44:15 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
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
Message-ID: <20240730-stirring-convivial-ermine-f0acc3@houat>
References: <20240627-tdp158-v3-0-fb2fbc808346@freebox.fr>
 <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>
 <20240701-bug-of-great-honeydew-cfb6ef@houat>
 <e7bbbe4e-7deb-46c3-9cce-1922f9b6b3a2@freebox.fr>
 <20240708-ethereal-romantic-piculet-d4ae66@houat>
 <pp3rc5zob3xeghlatw4vnpzplc4yjpjadkea465zmhft55dyl5@3cpoc2zovftv>
 <20240715-shiny-enigmatic-firefly-2a6dec@houat>
 <f40de173-0c61-4400-87b2-51c171a52baa@freebox.fr>
 <j2ouvtywaasnkxq344rm4b6mrlqtu6bxlq4wrvz4fawzww3xad@yjp7k4zmfygu>
 <2cd0af8d-aced-4460-95d0-376ecb783806@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="ial5uy4ghyorb3ea"
Content-Disposition: inline
In-Reply-To: <2cd0af8d-aced-4460-95d0-376ecb783806@freebox.fr>


--ial5uy4ghyorb3ea
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 24, 2024 at 07:28:41PM GMT, Marc Gonzalez wrote:
> On 24/07/2024 19:25, Dmitry Baryshkov wrote:
> > On Wed, Jul 24, 2024 at 07:18:39PM GMT, Marc Gonzalez wrote:
> >> On 15/07/2024 16:42, Maxime Ripard wrote:
> >>> On Mon, Jul 08, 2024 at 11:29:46PM GMT, Dmitry Baryshkov wrote:
> >>>> On Mon, Jul 08, 2024 at 04:59:23PM GMT, Maxime Ripard wrote:
> >>>>> On Mon, Jul 01, 2024 at 05:36:18PM GMT, Marc Gonzalez wrote:
> >>>>>> On 01/07/2024 15:50, Maxime Ripard wrote:
> >>>>>>
> >>>>>>> On Thu, Jun 27, 2024 at 01:13:03PM GMT, Marc Gonzalez wrote:
> >>>>>>>
> >>>>>>>> TDP158 is an AC-coupled DVI / HDMI to TMDS level shifting Redriv=
er.
> >>>>>>>> It supports DVI 1.0, HDMI 1.4b and 2.0b.
> >>>>>>>> It supports 4 TMDS channels, HPD, and a DDC interface.
> >>>>>>>> It supports dual power supply rails (1.1V on VDD, 3.3V on VCC)
> >>>>>>>> for power reduction. Several methods of power management are
> >>>>>>>> implemented to reduce overall power consumption.
> >>>>>>>> It supports fixed receiver EQ gain using I2C or pin strap to
> >>>>>>>> compensate for different lengths input cable or board traces.
> >>>>>>>>
> >>>>>>>> Features
> >>>>>>>>
> >>>>>>>> - AC-coupled TMDS or DisplayPort dual-mode physical layer input
> >>>>>>>> to HDMI 2.0b TMDS physical layer output supporting up to 6Gbps
> >>>>>>>> data rate, compatible with HDMI 2.0b electrical parameters
> >>>>>>>> - DisplayPort dual-mode standard version 1.1
> >>>>>>>> - Programmable fixed receiver equalizer up to 15.5dB
> >>>>>>>> - Global or independent high speed lane control, pre-emphasis
> >>>>>>>> and transmit swing, and slew rate control
> >>>>>>>> - I2C or pin strap programmable
> >>>>>>>> - Configurable as a DisplayPort redriver through I2C
> >>>>>>>> - Full lane swap on main lanes
> >>>>>>>> - Low power consumption (200 mW at 6Gbps, 8 mW in shutdown)
> >>>>>>>>
> >>>>>>>> https://www.ti.com/lit/ds/symlink/tdp158.pdf
> >>>>>>>>
> >>>>>>>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> >>>>>>>> ---
> >>>>>>>>  .../bindings/display/bridge/ti,tdp158.yaml         | 51 +++++++=
+++++++++++++++
> >>>>>>>>  1 file changed, 51 insertions(+)
> >>>>>>>>
> >>>>>>>> diff --git a/Documentation/devicetree/bindings/display/bridge/ti=
,tdp158.yaml b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.y=
aml
> >>>>>>>> new file mode 100644
> >>>>>>>> index 0000000000000..21c8585c3bb2d
> >>>>>>>> --- /dev/null
> >>>>>>>> +++ b/Documentation/devicetree/bindings/display/bridge/ti,tdp158=
=2Eyaml
> >>>>>>>> @@ -0,0 +1,51 @@
> >>>>>>>> +# SPDX-License-Identifier: GPL-2.0-only
> >>>>>>>> +%YAML 1.2
> >>>>>>>> +---
> >>>>>>>> +$id: http://devicetree.org/schemas/display/bridge/ti,tdp158.yam=
l#
> >>>>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>>>>>>> +
> >>>>>>>> +title: TI TDP158 HDMI to TMDS Redriver
> >>>>>>>> +
> >>>>>>>> +maintainers:
> >>>>>>>> +  - Arnaud Vrac <avrac@freebox.fr>
> >>>>>>>> +  - Pierre-Hugues Husson <phhusson@freebox.fr>
> >>>>>>>> +
> >>>>>>>> +properties:
> >>>>>>>> +  compatible:
> >>>>>>>> +    const: ti,tdp158
> >>>>>>>> +
> >>>>>>>> +  reg:
> >>>>>>>> +    description: I2C address of the device
> >>>>>>>> +
> >>>>>>>> +  enable-gpios:
> >>>>>>>> +    description: GPIO controlling bridge enable
> >>>>>>>> +
> >>>>>>>> +  vcc-supply:
> >>>>>>>> +    description: Power supply 3.3V
> >>>>>>>> +
> >>>>>>>> +  vdd-supply:
> >>>>>>>> +    description: Power supply 1.1V
> >>>>>>>> +
> >>>>>>>> +  ports:
> >>>>>>>> +    $ref: /schemas/graph.yaml#/properties/ports
> >>>>>>>> +
> >>>>>>>> +    properties:
> >>>>>>>> +      port@0:
> >>>>>>>> +        $ref: /schemas/graph.yaml#/properties/port
> >>>>>>>> +        description: Bridge input
> >>>>>>>> +
> >>>>>>>> +      port@1:
> >>>>>>>> +        $ref: /schemas/graph.yaml#/properties/port
> >>>>>>>> +        description: Bridge output
> >>>>>>>> +
> >>>>>>>> +    required:
> >>>>>>>> +      - port@0
> >>>>>>>> +      - port@1
> >>>>>>>
> >>>>>>> The device supports DVI, HDMI or DP input, with various requireme=
nts and
> >>>>>>> capabilities depending on the input. Your binding doesn't address=
 that.
> >>>>>>>
> >>>>>>> Similarly, it can do lane-swapping, so we should probably have a
> >>>>>>> property to describe what mapping we want to use.
> >>>>>>>
> >>>>>>> The i2c register access (and the whole behaviour of the device) is
> >>>>>>> constrained on the I2C_EN pin status, and you can't read it from =
the
> >>>>>>> device, so it's also something we need to have in the DT.
> >>>>>>
> >>>>>> We are using the device in its default configuration.
> >>>>>> (Power on via OE, then it works as expected)
> >>>>>
> >>>>> I know, but that doesn't really matter for a binding.
> >>>>>
> >>>>>> Can we leave any additional properties to be defined by whomever n=
eeds
> >>>>>> them in the future?
> >>>>>
> >>>>> If you can guarantee that doing so would be backward compatible, su=
re.
> >>>>> But that means being able to answer those questions with a reasonab=
le
> >>>>> plan.
> >>>>
> >>>> I think proposed bindings are generic enough to cover other possible
> >>>> usecases in future.
> >>>
> >>> I don't think it is. The current binding is for a I2C device that
> >>> shouldn't be accessed through I2C.
> >>>
> >>> It's working for now because the driver doesn't do any access, so it's
> >>> all great, but as soon as we add support for the other case, then we'=
ll
> >>> have to add a property that states that while it's an i2c device, it
> >>> shouldn't be accessed.
> >>>
> >>> And adding such a property is a compatibility-breaking change.
> >>
> >> Why do you say:
> >> "current binding is for a I2C device that
> >> shouldn't be accessed through I2C" ?
> >>
> >> As a matter of fact, my debug code queries the device ID using
> >> regmap_read() to make sure I set the correct I2C address.
> >=20
> > Please note: bingdings do not cover the driver at all. The driver might
> > do whatever it wants. The bindings describe the hardware.
>=20
> OK.
> How does the proposed binding say
> "I2C device shouldn't be accessed through I2C" ?

It doesn't, but then again, neither your commit log or cover letter say
"it can be accessed by i2c" either, so we went on the wrong track.

Maxime

--ial5uy4ghyorb3ea
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZqin3wAKCRAnX84Zoj2+
dqm7AX4iBvmtv0UsDynx5SPjL58xvrB4RoEAUBSvFlE4rZwBdiXBAHDMD6tHTdlG
qib8j/wBgO6D7bAqAdFphLbaYHpEzNQeNiTdJUt/WFfsadlm1pf09vMuFLNW0RPT
vBgzl3BA9Q==
=q6Sm
-----END PGP SIGNATURE-----

--ial5uy4ghyorb3ea--

