Return-Path: <devicetree+bounces-15952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A079C7EC580
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:40:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 598C3281037
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0067228E2C;
	Wed, 15 Nov 2023 14:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhDBs1se"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AE72FC2A
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 14:40:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61F7DC433C9;
	Wed, 15 Nov 2023 14:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700059207;
	bh=BaGIA4l4ejhYWBQISc1C+sD93500hrAcYx7aVH8JMVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qhDBs1seuSmSug6Q4RjM8AVkxVtJg3I1chbH7NIG18ioJz+zMIQR5EsTh/63/w8zO
	 vbGelQqDTwYs9c7u1KpgqK6cXL8gxXge3QenH3Pa4t5IjVlFt99vgfgOYIuPCSgU64
	 v7i8HaqbbJ3vZ9NiJTGj5oN5AyTF8cOKFkMp7gZw05j+c7DftEskPRI3Rbbfhv4l0g
	 OaQHStJIW4IB43DEyLLl9WdNHzTsdp3UyNKswCrGlaPE2MfaHMqP1EubCJpXX6MK6T
	 +Wwi8yZemDQpYLsau7/TWrzW/Wq5SLBibcSQNMgxeD2LVKeLFXWS3xA6ezMxcw1Pwz
	 iE9BLLETPiX+Q==
Date: Wed, 15 Nov 2023 14:40:03 +0000
From: Conor Dooley <conor@kernel.org>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Adrien Grassein <adrien.grassein@gmail.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: Re: [PATCH v1 2/3] dt-bindings: display: bridge: lt8912b: Add power
 supplies
Message-ID: <20231115-epidural-vantage-89ff91774805@squawk>
References: <20231115121338.22959-1-francesco@dolcini.it>
 <20231115121338.22959-3-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GZwI/uocM5eJlZ54"
Content-Disposition: inline
In-Reply-To: <20231115121338.22959-3-francesco@dolcini.it>


--GZwI/uocM5eJlZ54
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 01:13:37PM +0100, Francesco Dolcini wrote:
> From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
>=20
> Add Lontium lt8912b power supplies.
>=20
> Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor,

> ---
>  .../display/bridge/lontium,lt8912b.yaml       | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8=
912b.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8912=
b.yaml
> index f201ae4af4fb..2cef25215798 100644
> --- a/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.ya=
ml
> +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.ya=
ml
> @@ -55,6 +55,27 @@ properties:
>        - port@0
>        - port@1
> =20
> +  vcchdmipll-supply:
> +    description: A 1.8V supply that powers the HDMI PLL.
> +
> +  vcchdmitx-supply:
> +    description: A 1.8V supply that powers the HDMI TX part.
> +
> +  vcclvdspll-supply:
> +    description: A 1.8V supply that powers the LVDS PLL.
> +
> +  vcclvdstx-supply:
> +    description: A 1.8V supply that powers the LVDS TX part.
> +
> +  vccmipirx-supply:
> +    description: A 1.8V supply that powers the MIPI RX part.
> +
> +  vccsysclk-supply:
> +    description: A 1.8V supply that powers the SYSCLK.
> +
> +  vdd-supply:
> +    description: A 1.8V supply that powers the digital part.
> +
>  required:
>    - compatible
>    - reg
> --=20
> 2.25.1
>=20

--GZwI/uocM5eJlZ54
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVTYQAAKCRB4tDGHoIJi
0ra9AP9qgkDDNxwgVnODaITFA4y+M13nhrU7tTP38T1RTbT5VAD+IT57rAccR244
fPUa50O7sdrTRuV6XocSiiIKqp5eNQ4=
=DqWG
-----END PGP SIGNATURE-----

--GZwI/uocM5eJlZ54--

