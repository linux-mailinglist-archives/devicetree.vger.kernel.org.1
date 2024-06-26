Return-Path: <devicetree+bounces-80376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38498918742
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 18:24:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A1A3EB28893
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4106E19005B;
	Wed, 26 Jun 2024 16:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwBFktIe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEB4190058
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 16:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719418127; cv=none; b=jrndjIg/HoOTMypuJeUp3HWmjm046CKRtsrNUxG4cp+iGf0Wq6gOkduclFmdX+3dbroq7QQVgOndgOl1ZHFjGVyQnSQKnUjNF7Q0BASTv8IbFIHSjJ/fikpt3pCH5w9P988ARLTa8yv5tifya2bGdDTEqaU43joWkJf8akll/YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719418127; c=relaxed/simple;
	bh=R3x9Qh3h6BGgYuJkBKgcw1BLoF4es+mIXSb3IK4TuwM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s+R04y99jHIN9SCYwB3U0JGKe86kllqqtiZ34M3Pg9cAsa/AEUUaeobv0DLVYCE0CceNvlYP2v6t5FH/klHiXzpwLu8UgnuW9l77d6UV58A1x4ZiFhvo9wUjpxPuYyIQtcYSILlW7GGWNPZL5akjU2Y6uNnGcuBPVM1OW3ABywo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwBFktIe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A050AC32782;
	Wed, 26 Jun 2024 16:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719418126;
	bh=R3x9Qh3h6BGgYuJkBKgcw1BLoF4es+mIXSb3IK4TuwM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OwBFktIe0w1DhXqVjonq9MSd9eZiE+477ZfFRPLvoCLko/7/nOAOxuMRvwoDBZIpe
	 eSG+m1/EY2tm/P1YBj/MDvPdWNkeqk8fb6Ypo8zcwCUCEqcVUExRd8OECJVjYwHJSd
	 S94pBntXM1to2ZLp2yZbwUMOaVNT1rfOB9RucdVfelRouRVzlOizFW4TIaBZZSqH5C
	 QAv4xJQRIhL6HV76V8ew6drmLGynp4lp//v1134SyInjQ2aJWFJTOK+Hu6Q0jCixqa
	 2VcXoFDDd3Wa2utwViXxUkxM8XaqdfwrURykVuRI4+H5TSMmdYnD7aMqIfrpsSp4jh
	 lY0ieyi8PfB2w==
Date: Wed, 26 Jun 2024 17:08:40 +0100
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
	devicetree@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>,
	Pierre-Hugues Husson <phhusson@freebox.fr>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: add TI TDP158
Message-ID: <20240626-blah-unseated-6cab234bae61@spud>
References: <20240625-tdp158-v2-0-a3b344707fa7@freebox.fr>
 <20240625-tdp158-v2-1-a3b344707fa7@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="shHLQp0U9lySaFvQ"
Content-Disposition: inline
In-Reply-To: <20240625-tdp158-v2-1-a3b344707fa7@freebox.fr>


--shHLQp0U9lySaFvQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 25, 2024 at 06:38:12PM +0200, Marc Gonzalez wrote:
> The TI TDP158 is an HDMI to TMDS Redriver.
>=20
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  .../bindings/display/bridge/ti,tdp158.yaml         | 48 ++++++++++++++++=
++++++
>  1 file changed, 48 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,tdp158.y=
aml b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
> new file mode 100644
> index 0000000000000..b687699e2ba80
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
> @@ -0,0 +1,48 @@
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
> +
> +properties:
> +  compatible:
> +    const: ti,tdp158
> +
> +  reg:
> +    description: I2C address of the device
> +
> +  enable-gpios:
> +    description: GPIO controlling bridge enable
> +
> +  vcc-supply:
> +    description: Power supply 3.3V
> +
> +  vdd-supply:
> +    description: Power supply 1.1V

Are these supplies not also required? Surely the device needs the power
to function?

Cheers,
Conor.

> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Bridge input
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Bridge output
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - ports
> +
> +additionalProperties: false
>=20
> --=20
> 2.34.1
>=20

--shHLQp0U9lySaFvQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnw9CAAKCRB4tDGHoIJi
0hW/AQCuXyLDVNayVEDkdp7woR1S7bg90VStUy/d6BWh1qk6YQD+POXJw8PCAZOG
oq4b67YwBhRFdbn+Ks523MofTlIG4gw=
=yWby
-----END PGP SIGNATURE-----

--shHLQp0U9lySaFvQ--

