Return-Path: <devicetree+bounces-13480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCA47DE304
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:31:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB565280F62
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62BF814282;
	Wed,  1 Nov 2023 15:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCvUC4go"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E1912B72
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:31:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EECFC433C9;
	Wed,  1 Nov 2023 15:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698852692;
	bh=vjjyywND5E0nGl8R6otdVK2p1h8xHUttV9JxvhMw878=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hCvUC4gooypOVIelQeuOF2Z9IIDRyuY+Cf8nEkEOluf0G9488v61ELQV747tB4wGo
	 +UqslL1TieSfwYfJDZMPoPohWIbl0Xyd1Hg6gWyX5XYUtD+wMcyo7/ix4UAYjtJeEG
	 CCN1PbZgdC905Gc3IT7NRcP/IvCx81Ww0ix36mwfJtxV8tgyXaXwl8iOJM54WSFqdX
	 DgO7Rv+hl98L86RtN/ZpNtZAgBd0xNKIUZsh9ZBakBK/3HbINvB4H6+iFXq25vKFBt
	 0VkjtkCSC1O+zJkzMdemMI83Fpf55fiEQErGNi5TOap2TNewCCDZi4coQqrnCp6i8w
	 a01LwcbOCiwtQ==
Date: Wed, 1 Nov 2023 15:31:28 +0000
From: Conor Dooley <conor@kernel.org>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: lee@kernel.org, pavel@ucw.cz, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	andy.shevchenko@gmail.com, kernel@sberdevices.ru,
	rockosov@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v3 11/11] dt-bindings: leds: aw200xx: fix led pattern and
 add reg constraints
Message-ID: <20231101-subzero-grimace-52a10da6a445@spud>
References: <20231101142445.8753-1-ddrokosov@salutedevices.com>
 <20231101142445.8753-12-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1xbOXPLYaVpKggRe"
Content-Disposition: inline
In-Reply-To: <20231101142445.8753-12-ddrokosov@salutedevices.com>


--1xbOXPLYaVpKggRe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 01, 2023 at 05:24:45PM +0300, Dmitry Rokosov wrote:
> AW200XX controllers have the capability to declare more than 0xf LEDs,
> therefore, it is necessary to accept LED names using an appropriate
> regex pattern.
>=20
> The register offsets can be adjusted within the specified range, with
> the maximum value corresponding to the highest number of LEDs that can
> be connected to the controller.
>=20
> Fixes: e338a05e76ca ("dt-bindings: leds: Add binding for AW200xx")
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>

You did correctly guess what I was getting at on the previous version.
Apologies for not replying - I got sick and things probably fell a bit
through the cracks.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
>  .../bindings/leds/awinic,aw200xx.yaml         | 64 +++++++++++++++++--
>  1 file changed, 58 insertions(+), 6 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b=
/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> index 67c1d960db1d..ba4511664fb8 100644
> --- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> +++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> @@ -45,17 +45,12 @@ properties:
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
> -      reg:
> -        description:
> -          LED number
> -        maxItems: 1
> -
>        led-max-microamp:
>          default: 9780
>          description: |
> @@ -69,6 +64,63 @@ patternProperties:
>            where max-current-switch-number is determinated by led configu=
ration
>            and depends on how leds are physically connected to the led dr=
iver.
> =20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: awinic,aw20036
> +    then:
> +      patternProperties:
> +        "^led@[0-9a-f]+$":
> +          properties:
> +            reg:
> +              items:
> +                minimum: 0
> +                maximum: 36
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: awinic,aw20054
> +    then:
> +      patternProperties:
> +        "^led@[0-9a-f]+$":
> +          properties:
> +            reg:
> +              items:
> +                minimum: 0
> +                maximum: 54
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: awinic,aw20072
> +    then:
> +      patternProperties:
> +        "^led@[0-9a-f]+$":
> +          properties:
> +            reg:
> +              items:
> +                minimum: 0
> +                maximum: 72
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: awinic,aw20108
> +    then:
> +      patternProperties:
> +        "^led@[0-9a-f]+$":
> +          properties:
> +            reg:
> +              items:
> +                minimum: 0
> +                maximum: 108
> +
>  required:
>    - compatible
>    - reg
> --=20
> 2.36.0
>=20

--1xbOXPLYaVpKggRe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUJvTwAKCRB4tDGHoIJi
0qfBAQC7asF9LbGsYBe+8Gmm6D5cOPSXw2/cpSRRTNuss80nbwEAoP0kiiUoAaTk
3Yv6Js+KjIequ9AYtOpNeVYxTdENRQg=
=nWPC
-----END PGP SIGNATURE-----

--1xbOXPLYaVpKggRe--

