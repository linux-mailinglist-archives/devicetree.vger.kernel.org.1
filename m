Return-Path: <devicetree+bounces-76631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 326FB90B614
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 18:18:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3D89283253
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 16:18:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 091911798F;
	Mon, 17 Jun 2024 16:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1J+/GhH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9894175AA
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 16:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718641104; cv=none; b=NQKOiV71M5medgfhlUwtSbcTOXqTiIQCfblM4b85+aW8miQ5YPsgn32ypMKpOZZysvM9UZhholgulVRdZCoCd6xjZNuwSj1Q7sHw0lH9qWRgeRykJ4ZEj5S6bBm5xdiXGBTE3k831F3aWGndPsYPMJRaYxhlcdPFcUBwBdAQB4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718641104; c=relaxed/simple;
	bh=EY+4UcdN3SJN/tw5GnFXIR6zPGfQZjIPes1lgtjBBcQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WZaVwOO0r+iNTadNZm0U8EeuexWnx1Y7r19z7HdWUfT1+fsm842pTN8Uy8PQb+gkgiIINgwwbTxL1MrvS/iM1WkkXGF9YanoJ06aAafeX6G+URXQfBbpdNZHr6ZMtrRefxJbo7r4JNb3xdePXn3qutoqLYIOsTWClYjTXtovo44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1J+/GhH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8C98C2BD10;
	Mon, 17 Jun 2024 16:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718641104;
	bh=EY+4UcdN3SJN/tw5GnFXIR6zPGfQZjIPes1lgtjBBcQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D1J+/GhH0m4XyRUQNnSuU3Kxibw7tmYI+Waa/ntddVGlbtdwgGBeq6oN1dpWNvdc7
	 FmRYCGr1TlcBPDaJIz5JWtKB3CjeMzGuTJrw90/MbW8lfmzqcRvvjutifiUL66yCgD
	 I2u5y36wMELOfIu3MLJ9FXlCE6RGQ+WjKWlP2oHhJYTgH8qtE/YtGtFPnCqMXoNDOJ
	 5wkaxsWpZUpmMtobwDUuIljwwduUsmfqviY6ANfjfO6L1LyHlT4a4kYx1woyFHQ2c1
	 KfCb/m+eGSo7F/d1O6wjn3A6lWFxwC5+UDn0jAquWmMxV1edmyyXrOZ7ZMmdBD1rMA
	 yumfdjJeiV6Dg==
Date: Mon, 17 Jun 2024 17:18:17 +0100
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
Subject: Re: [PATCH 1/4] dt-bindings: display: simple-bridge: add ti,tdp158
Message-ID: <20240617-daydream-query-906923e8b12f@spud>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
 <20240617-tdp158-v1-1-df98ef7dec6d@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NgEG+8ha7KOidoBa"
Content-Disposition: inline
In-Reply-To: <20240617-tdp158-v1-1-df98ef7dec6d@freebox.fr>


--NgEG+8ha7KOidoBa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2024 at 06:02:59PM +0200, Marc Gonzalez wrote:
> In default mode, this device works transparently.

Please explain what makes this device incompatible with the existing
ones. For example, why not make the new compatible fall back to
ti,ths8134?

>=20
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml | 4 =
++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/bridge/simple-brid=
ge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.ya=
ml
> index 43cf4df9811a5..5f0c9687538bf 100644
> --- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> @@ -31,6 +31,7 @@ properties:
>            - ti,opa362
>            - ti,ths8134
>            - ti,ths8135
> +          - ti,tdp158
> =20
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
> @@ -52,6 +53,9 @@ properties:
>      maxItems: 1
>      description: GPIO controlling bridge enable
> =20
> +  vcc-supply:
> +    description: Power supply for the bridge
> +
>    vdd-supply:
>      description: Power supply for the bridge
> =20
>=20
> --=20
> 2.34.1
>=20

--NgEG+8ha7KOidoBa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnBhyQAKCRB4tDGHoIJi
0qQ2AQCtC7E2W++0bkEZqIyJfhekP6rN7C44pryIrjtcn7BHLwD/bthwuO4+enY6
60JTVuWhPa9fXCQ3sJeDHBZSXZiVrwM=
=rdsD
-----END PGP SIGNATURE-----

--NgEG+8ha7KOidoBa--

