Return-Path: <devicetree+bounces-10586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A627D226D
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 11:54:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51EC41C20325
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 09:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCE3E5698;
	Sun, 22 Oct 2023 09:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eg4EW7zJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64D4110F
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 09:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE2B6C433C7;
	Sun, 22 Oct 2023 09:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697968448;
	bh=624DD86ruJdAKpRg5DvcZ6DGc3A5gO4DA0XsTE9YA0A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Eg4EW7zJrsPBLSVaMUUnDDNajHiROoE+x3HBZGuDv6Tr9dMd4wz4iI3QVbM/tPniz
	 1TfwJNEPsBnUxThdnNrY/rZoTl9pJdxhJkMxT497V0bTNpRgL6FR+FF2uhL51BNp20
	 mWUMBTt7MYZwM/aPak79Fro/jb/mqhv2smWYyz+hY1SK/5w8AViUICDGlZiCopPtBu
	 sjL9T6AfHrQJL0W/MQOtgEXzmamuchjR89WTBSCvTcboRboFzDRBkFpjb5IRQLooLV
	 q94UDvDjDc6jIM/0t/y2IzemQvfNgWHIMfVpU8ugMWB+5e8ZSD2QoZrGuqaeBcbtKM
	 /MGmbIpQ/+pfA==
Date: Sun, 22 Oct 2023 10:54:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] dt-bindings: display: ssd132x: Remove '-' before
 compatible enum
Message-ID: <20231022-sandbox-reverend-7651a2e00a7d@spud>
References: <20231020223029.1667190-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="AzbL4NimfEVzMx25"
Content-Disposition: inline
In-Reply-To: <20231020223029.1667190-1-javierm@redhat.com>


--AzbL4NimfEVzMx25
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 21, 2023 at 12:30:17AM +0200, Javier Martinez Canillas wrote:
> This is a leftover from when the binding schema had the compatible string
> property enum as a 'oneOf' child and the '-' was not removed when 'oneOf'
> got dropped during the binding review process.
>=20
> Reported-by: Rob Herring <robh@kernel.org>
> Closes: https://lore.kernel.org/dri-devel/CAL_Jsq+h8DcnpKqhokQOODCc8+Qi3M=
0PrxRFKz_Y4v37yMJvvA@mail.gmail.com/
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>=20
>  .../devicetree/bindings/display/solomon,ssd132x.yaml      | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/display/solomon,ssd132x.ya=
ml b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
> index 0aa41bd9ddca..37975ee61c5a 100644
> --- a/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
> +++ b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
> @@ -11,10 +11,10 @@ maintainers:
> =20
>  properties:
>    compatible:
> -    - enum:
> -        - solomon,ssd1322
> -        - solomon,ssd1325
> -        - solomon,ssd1327
> +    enum:
> +      - solomon,ssd1322
> +      - solomon,ssd1325
> +      - solomon,ssd1327
> =20
>  required:
>    - compatible
> --=20
> 2.41.0
>=20

--AzbL4NimfEVzMx25
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTTxOwAKCRB4tDGHoIJi
0oktAQDIz4f+vI7vkhhIDLAgUw9zdMfHk5TeYQwpzVwoeucoCAEAmzoJ7v2hDg0C
eX6hl7pSU/Oi61+XBX2HNiVYH3ykpgI=
=UhsP
-----END PGP SIGNATURE-----

--AzbL4NimfEVzMx25--

