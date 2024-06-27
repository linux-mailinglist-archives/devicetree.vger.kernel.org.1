Return-Path: <devicetree+bounces-80946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BD691ACA9
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 18:26:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A3852824E1
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 16:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EFBE19AA4B;
	Thu, 27 Jun 2024 16:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fx/xE9jp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FFA19AA43;
	Thu, 27 Jun 2024 16:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719505560; cv=none; b=eGAfWLXn7HhRM35mvw7buyuhH4rU/fytNIDDNW8/77S0XgRorNl/NtQe94PoOCSONV7U9GsIqlEBwBtL08aBxkGNnavTRV1H3U+ZI7Z5pOxOaLmnsn5SlrHNY7FKQoxAa4OwcRFpWnEaaqeBIc1/wR1LTECshFCoCrgU64uB/E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719505560; c=relaxed/simple;
	bh=ZU21mTyI/Z9/dHbdBIeeKlGsExCYk5aQrp0E1ZE7GPM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PsbYfM5twEpDUtmyrps+iBrkB5Dx6e0F+2TgthGDS35bctLXZs6qPLN0ElqkK5KiGQbCjW/onL2u/1TjQVLvPV9HFNlz9TrRtgmR3dt/GRTb35T+p1wSiVhW5Rnid++wjsZCVFn+5IsMZkQI6uU2UKInnfq7uy+daRU3kW/qmA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fx/xE9jp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 821F7C2BBFC;
	Thu, 27 Jun 2024 16:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719505559;
	bh=ZU21mTyI/Z9/dHbdBIeeKlGsExCYk5aQrp0E1ZE7GPM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fx/xE9jpgrPyfpy9C/07lc4tch8J/or43ZqF3tzTD9VUI7tBiJTGGVl94hlj+UK94
	 A+R2n+K4wpDnFkCq6qgpoqmpouOx/0g3zSnBU43bbt1OUWpgun+hyJEo15BSFkb687
	 7JyBgYrBVEAogublf5/2oVerv/5nG9xtFvTE04rGBS/UKEoosrLJwZb2uzLcA4wdI6
	 1MS0phBFYPM1J3wXaX5405oAzd9LssZ2M3fQRczeYqhFInDyy8Y0m3nFnOMxtHh5qV
	 smax40imgIAXKQ2mKOtpk5wqJOsC+7tx8Hba0fsOiEWc2gMvgYCUqIWLiZMn+lB9/F
	 AuD+o1rOJtsZA==
Date: Thu, 27 Jun 2024 17:25:53 +0100
From: Conor Dooley <conor@kernel.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	Arnaud Vrac <avrac@freebox.fr>,
	Pierre-Hugues Husson <phhusson@freebox.fr>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: add TI TDP158
Message-ID: <20240627-display-quantum-48c2fa48ed1a@spud>
References: <20240627-tdp158-v3-0-fb2fbc808346@freebox.fr>
 <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HdwObOi+SyfckIaZ"
Content-Disposition: inline
In-Reply-To: <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>


--HdwObOi+SyfckIaZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 27, 2024 at 01:13:03PM +0200, Marc Gonzalez wrote:
> TDP158 is an AC-coupled DVI / HDMI to TMDS level shifting Redriver.
> It supports DVI 1.0, HDMI 1.4b and 2.0b.
> It supports 4 TMDS channels, HPD, and a DDC interface.
> It supports dual power supply rails (1.1V on VDD, 3.3V on VCC)
> for power reduction. Several methods of power management are
> implemented to reduce overall power consumption.
> It supports fixed receiver EQ gain using I2C or pin strap to
> compensate for different lengths input cable or board traces.
>=20
> Features
>=20
> - AC-coupled TMDS or DisplayPort dual-mode physical layer input
> to HDMI 2.0b TMDS physical layer output supporting up to 6Gbps
> data rate, compatible with HDMI 2.0b electrical parameters
> - DisplayPort dual-mode standard version 1.1
> - Programmable fixed receiver equalizer up to 15.5dB
> - Global or independent high speed lane control, pre-emphasis
> and transmit swing, and slew rate control
> - I2C or pin strap programmable
> - Configurable as a DisplayPort redriver through I2C
> - Full lane swap on main lanes
> - Low power consumption (200 mW at 6Gbps, 8 mW in shutdown)
>=20
> https://www.ti.com/lit/ds/symlink/tdp158.pdf
>=20
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  .../bindings/display/bridge/ti,tdp158.yaml         | 51 ++++++++++++++++=
++++++
>  1 file changed, 51 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,tdp158.y=
aml b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
> new file mode 100644
> index 0000000000000..21c8585c3bb2d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/ti,tdp158.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI TDP158 HDMI to TMDS Redriver
> +
> +maintainers:
> +  - Arnaud Vrac <avrac@freebox.fr>
> +  - Pierre-Hugues Husson <phhusson@freebox.fr>
> +
> +properties:
> +  compatible:
> +    const: ti,tdp158
> +
> +  reg:
> +    description: I2C address of the device

Is reg not required? How do you communicate with the device if the i2c
bus is not connected? Is the enable GPIO enough to operate it in some
situations?

Otherwise this looks good to me, but given Maxime commented about the
complexity of the device, I'm probably out of my depth!

> +required:
> +  - compatible
> +  - vcc-supply
> +  - vdd-supply
> +  - ports


--HdwObOi+SyfckIaZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZn2SkQAKCRB4tDGHoIJi
0t43AP0Yyi9Tj+rUhcF61f4cGpDuFlEGC4QIcKt7lyLudRbxnQEA+cHqB7Jsw91T
RZFJx2CX3U8qBkYc6jk6UK3sD19gAQw=
=Es11
-----END PGP SIGNATURE-----

--HdwObOi+SyfckIaZ--

