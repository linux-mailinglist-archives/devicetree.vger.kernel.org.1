Return-Path: <devicetree+bounces-6066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A5A7B9C8F
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 12:45:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 07E23281BB9
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 10:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83950125BF;
	Thu,  5 Oct 2023 10:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuDVTzzj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CB28821
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 10:45:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5918EC32780;
	Thu,  5 Oct 2023 10:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696502704;
	bh=XRC9UryHbUEsQdaF6x3efpHlNgThognn4H3PZ5L4330=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YuDVTzzjRCW2yD6QDKXJghEYby51BgGDyAfX3nwaQl5vVl72mySyEJnutqi05l9uP
	 QJShO6hjRXiiS5SNBd9+6Q1T3sVHcEyJ0GhOaEXiygKA2RkntskbWE/by8bJoaRIjq
	 R8WzHFFk/DJRU5UuIYzts5X9VbROBBrMkbPdjKmQDlEr2gjbUiM1vQ8JlT07olXG34
	 X8uxeo4PaDov7go106Bdm/T24cEISHqCnMgci2KTjAqXee93lomMwyAFUc0zzBUggn
	 gBJ3//6DIM4Bxq4x4GJz16ryrpRjTa9iz0rHhzenjh28PaDtjYoHV416WPGgluNTKA
	 HXzrsZtuoGMjw==
Date: Thu, 5 Oct 2023 11:44:58 +0100
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: laurent.pinchart@ideasonboard.com, rmfrfs@gmail.com, martink@posteo.de,
	mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, marex@denx.de,
	linux-media@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] media: dt-bindings: imx7-csi: Make power-domains not
 required for imx8mq
Message-ID: <20231005-quartered-thickness-581df8bd04e4@spud>
References: <20231004201105.2323758-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s4XolRVR2rJVFP+W"
Content-Disposition: inline
In-Reply-To: <20231004201105.2323758-1-festevam@gmail.com>


--s4XolRVR2rJVFP+W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 04, 2023 at 05:11:05PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> On i.MX8MQ the MIPI CSI block does have an associated power-domain, but
> the CSI bridge does not.
>=20
> Remove the power-domains requirement from the i.MX8MQ CSI bridge
> to fix the following schema warning:
>=20
> imx8mq-librem5-r4.dtb: csi@30a90000: 'power-domains' is a required proper=
ty
> from schema $id: http://devicetree.org/schemas/media/nxp,imx7-csi.yaml#
>=20
> Fixes: de655386845a ("media: dt-bindings: media: imx7-csi: Document i.MX8=
M power-domains property")
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>=20
>  Documentation/devicetree/bindings/media/nxp,imx7-csi.yaml | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx7-csi.yaml b/=
Documentation/devicetree/bindings/media/nxp,imx7-csi.yaml
> index 358019e85d90..326284e151f6 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx7-csi.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx7-csi.yaml
> @@ -59,7 +59,6 @@ allOf:
>          compatible:
>            contains:
>              enum:
> -              - fsl,imx8mq-csi
>                - fsl,imx8mm-csi
>      then:
>        required:
> --=20
> 2.34.1
>=20

--s4XolRVR2rJVFP+W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZR6TqQAKCRB4tDGHoIJi
0u24AQDNf0kjVbWHUSX56Cp1FoWROJRaLoVTvz716xtM8BaxsQD/a2wnp110JUXd
L6rch6QN7EFLI28zusL8cD+THcYeYwo=
=UCD9
-----END PGP SIGNATURE-----

--s4XolRVR2rJVFP+W--

