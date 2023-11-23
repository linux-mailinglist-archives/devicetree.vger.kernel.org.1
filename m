Return-Path: <devicetree+bounces-18419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2313C7F65D7
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 18:58:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 540911C20C5F
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 17:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7280E49F81;
	Thu, 23 Nov 2023 17:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpctfeS9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DB24777C
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 17:58:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BCABC433C7;
	Thu, 23 Nov 2023 17:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700762305;
	bh=CdkOgAhi6Qq7XsTQoNuQykYy+5qMsC9bpVDo0+HhVbE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bpctfeS934De2qrTgc70kNtdR1pySjxVIyIzRZheu5z6vRJYfKnExafV35mIzkBxH
	 1+YBgrKmrvaBzLzWwUTYaa9VXs8U6kIaE8CCKELK7kibLFZQs+/8lzUp49mBaVQd/2
	 i8i1RmPaiN+Sm5o7t6tQLI1+9BMJ8AWUBZB4fBl3X48a0qZ5xhZYgzV3P5wetPIXZM
	 bnKH38/zANHbTfTffAKRyPCU6eHqUQSeEgNy8DvWZf603i+medwJkqfaFTopl9ci/x
	 dOKVVLgM9RYvUw68ta/YGkNc0xmO1atfyx88NklO9NeExxPR8Z+omnBE8TrrsHBKSU
	 mReTgJd/JJUUw==
Date: Thu, 23 Nov 2023 17:58:20 +0000
From: Conor Dooley <conor@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Marco Felsch <m.felsch@pengutronix.de>, kernel@pengutronix.de
Subject: Re: [PATCH 2/3] dt-bindings: ili9881c: Add Ampire AM8001280G LCD
 panel
Message-ID: <20231123-civic-monoxide-ca1d06a02df3@spud>
References: <20231123-drm-panel-ili9881c-am8001280g-v1-0-fdf4d624c211@pengutronix.de>
 <20231123-drm-panel-ili9881c-am8001280g-v1-2-fdf4d624c211@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3USh3Aw49Tg1AKz5"
Content-Disposition: inline
In-Reply-To: <20231123-drm-panel-ili9881c-am8001280g-v1-2-fdf4d624c211@pengutronix.de>


--3USh3Aw49Tg1AKz5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 23, 2023 at 06:08:05PM +0100, Philipp Zabel wrote:
> Document the compatible value for Ampire AM8001280G LCD panels.
>=20
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
>  Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml | 1=
 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili98=
81c.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.=
yaml
> index e7ab6224b52e..b1e624be3e33 100644
> --- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
> @@ -16,6 +16,7 @@ properties:
>    compatible:
>      items:
>        - enum:
> +          - ampire,am8001280g
>            - bananapi,lhr050h41
>            - feixin,k101-im2byl02
>            - tdo,tl050hdv35
>=20
> --=20
> 2.39.2
>=20

--3USh3Aw49Tg1AKz5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZV+SvAAKCRB4tDGHoIJi
0qeaAQCjWZTzaBOgpkzNDPLNrEqSsvJFC3A59Kabqueyk4FabwEAra+EwipZjA+v
uFx8gvNb+kSnNnuv71U0VaHhuVwSBg0=
=iB4D
-----END PGP SIGNATURE-----

--3USh3Aw49Tg1AKz5--

