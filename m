Return-Path: <devicetree+bounces-10132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC517CFC1A
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:08:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CDCBF1C20D67
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9362E29D01;
	Thu, 19 Oct 2023 14:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhQVvKe+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F8227477
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:08:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92D62C433C7;
	Thu, 19 Oct 2023 14:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697724523;
	bh=lhJF9TO9qDHVZeczKmduBiUarXg9CHGv9aAPKmSdQ6c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QhQVvKe+lXrjNK7ePC/gXDPrdG3kPTYXMjuEAqKdYUOV4fiTPEQuxTfT75OKdP6OF
	 nBDPC2sDE6D2AjjKu6FXtrSWRIGa8S/pUSFzzxvkz21Q0Uzpr+b3ZDRWp5rzqYbyLu
	 9lPxQrg7COBuzoyyEPfMs3X4oRXx5aeUmRC5r/oyxvlbpiTLI19gL30tE1+jof7mK5
	 7FSwVDXVj2TZZVelKsPa/KsJ7oQmi1lSLu5Zp1yPHxv6+yT8k8z/QjljZdEKkpHae/
	 jkFUaXelPQurfONpAp4IdUIMSKPS+XymSCnYa0DsA2vnIKXhC+GT4wZP13ypmsmJTV
	 aJqqOd8zUyL4A==
Date: Thu, 19 Oct 2023 15:08:38 +0100
From: Conor Dooley <conor@kernel.org>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: lee@kernel.org, pavel@ucw.cz, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	andy.shevchenko@gmail.com, kernel@sberdevices.ru,
	rockosov@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v2 11/11] dt-bindings: leds: aw200xx: fix led pattern and
 add reg constraints
Message-ID: <20231019-clarify-unstopped-71fe018b6a8b@spud>
References: <20231018182943.18700-1-ddrokosov@salutedevices.com>
 <20231018182943.18700-12-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="583YNsUVrmxxvyQI"
Content-Disposition: inline
In-Reply-To: <20231018182943.18700-12-ddrokosov@salutedevices.com>


--583YNsUVrmxxvyQI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 18, 2023 at 09:29:43PM +0300, Dmitry Rokosov wrote:
> AW200XX controllers have the capability to declare more than 0xf LEDs,
> therefore, it is necessary to accept LED names using an appropriate
> regex pattern.
>=20
> The register offsets can be adjusted within the specified range, with
> the maximum value corresponding to the highest number of LEDs that can
> be connected to the controller.

Do all of these controllers have identical max numbers of LEDs?

Cheers,
Conor.

>=20
> Fixes: e338a05e76ca ("dt-bindings: leds: Add binding for AW200xx")
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> ---
>  .../devicetree/bindings/leds/awinic,aw200xx.yaml       | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b=
/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> index efb18ddce383..677c73aa6232 100644
> --- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> +++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> @@ -42,16 +42,18 @@ properties:
>      maxItems: 1
> =20
>  patternProperties:
> -  "^led@[0-9a-f]$":
> +  "^led@[0-9a-f]+$":
>      type: object
>      $ref: common.yaml#
>      unevaluatedProperties: false
> =20
>      properties:
>        reg:
> -        description:
> -          LED number
> -        maxItems: 1
> +        items:
> +          description:
> +            LED number
> +          minimum: 0
> +          maximum: 108
> =20
>        led-max-microamp:
>          default: 9780
> --=20
> 2.36.0
>=20

--583YNsUVrmxxvyQI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTE4ZgAKCRB4tDGHoIJi
0iZpAQDHMFTIGQM98jN9qRcYxmQFMSfULTdz7fFQwWy8EkVwDQEA9IP7oOx+D2LZ
DY30ZjJVn3jbDrBPalja65VIPiUAWww=
=Aktz
-----END PGP SIGNATURE-----

--583YNsUVrmxxvyQI--

