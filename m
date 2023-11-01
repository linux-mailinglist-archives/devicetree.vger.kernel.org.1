Return-Path: <devicetree+bounces-13464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB8C7DE2B8
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:11:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF6111C209D4
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1644513FE7;
	Wed,  1 Nov 2023 15:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPDz1Oe5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECECB20F4
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:11:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1009BC433C7;
	Wed,  1 Nov 2023 15:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698851463;
	bh=yo1/sF0ttFu5wR6aPa6Te2SqCTO7ZGRY9ZRNoDYt+Nw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HPDz1Oe5/mPIoa9hcRebOrJD0AVW3ajAPopnZaGTOyNUWkUsQDp1HgNOx3h1jAJIF
	 5F4dm7jxAR+ReVQz2uwcHCo4JiCyXcBBumBANxWFxbCC7c9wyyFSMJjDulursjhOkE
	 7PmmLPmu6zTOUIF/L4/X5AYyjz+GnH1UX01J4OuEYUdJiNAwUlwtGSTFXLAaOQwN3H
	 dilnxD/YiPLJpjnit3XDWqawaADVLTaJo9zdqKY1yNtQM3AlhKKu5zQzqxKApYldNs
	 fSvnaQfNO8DU5bQMPcRQXBRol8IW6Ar5eLKNtJs+lYIsWAdsd6m5ObkxPniD1Lx8wQ
	 YkkYyQRzZiN/w==
Date: Wed, 1 Nov 2023 15:10:58 +0000
From: Conor Dooley <conor@kernel.org>
To: Vincent Knecht <vincent.knecht@mailoo.org>
Cc: Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Yassine Oudjana <y.oudjana@protonmail.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] media: dt-bindings: ak7375: Add ak7345 support
Message-ID: <20231101-wise-childless-ed44729657c6@spud>
References: <20231101102257.1232179-1-vincent.knecht@mailoo.org>
 <20231101102257.1232179-2-vincent.knecht@mailoo.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pODw/iX2UkMAb4/N"
Content-Disposition: inline
In-Reply-To: <20231101102257.1232179-2-vincent.knecht@mailoo.org>


--pODw/iX2UkMAb4/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 01, 2023 at 11:22:56AM +0100, Vincent Knecht wrote:
> Document AK7345 bindings.

The commit message should mention why this device is incompatible with
the 7375. Something like

"Document the ak7345 voice coil motor actuator. Similar to the ak7375,
this model has 4 unilateral phase detractors instead of 8."

Otherwise,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

>=20
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> ---
>  .../devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml     | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/media/i2c/asahi-kasei,ak73=
75.yaml b/Documentation/devicetree/bindings/media/i2c/asahi-kasei,ak7375.ya=
ml
> index 22a810fc7222..fe312cc6a873 100644
> --- a/Documentation/devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml
> @@ -15,7 +15,9 @@ description:
> =20
>  properties:
>    compatible:
> -    const: asahi-kasei,ak7375
> +    enum:
> +      - asahi-kasei,ak7345
> +      - asahi-kasei,ak7375
> =20
>    reg:
>      maxItems: 1
> --=20
> 2.41.0
>=20
>=20
>=20

--pODw/iX2UkMAb4/N
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUJqggAKCRB4tDGHoIJi
0slyAP9VpcF5IzeE9i4pnc3z2Dl/ml0Sd6jvPoRkLEufandUYwD+IC8ffkg6jBmB
NHs9lJ26+uz0K/TlXllzodqhGmmjvQs=
=tXf/
-----END PGP SIGNATURE-----

--pODw/iX2UkMAb4/N--

