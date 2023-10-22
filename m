Return-Path: <devicetree+bounces-10635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5507D24F5
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 19:35:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD1AE28150F
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC8F91118F;
	Sun, 22 Oct 2023 17:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwRhM6Oh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D9323C9
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 17:34:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4341C433C7;
	Sun, 22 Oct 2023 17:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697996098;
	bh=2Cum5Lnb9QFyJyDRCwFuomJRiUxeMw85rd8TM5XEc5M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bwRhM6OhL/UzUY3iRwNcKgZSyT+SdgOK25HOL9+9zcYzLYzRcEq4fMy/6LxRReFeW
	 3/no7ChgSmxCcyp2W8NeTzlWRQX51UxfuOhoG5N2FZz+wwPLPy0Zzj7KPKXau2yeXx
	 S8IorDwgc4g4tztIOYIAZlO9rUwx7RctA2D8jCB7UE14mdiTo6KWVNpTGlZA5kB9GM
	 w++dJ8XJgdHVmj4daGLGFVZ4SW6PROuEtJ897yDKOEY1aAGDheHkHWPFdHZ8Eq6a9h
	 aQm4J7oggqnmQCGDioapJWRbLZuu5WCk0mZcU0g4+2rPFycpEAsueRa5UX9bO23h5i
	 ucetX5WUzR3Rw==
Date: Sun, 22 Oct 2023 18:34:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: dt-bindings: ti,ds90ub960: Add missing type for
 "i2c-alias"
Message-ID: <20231022-dice-plywood-a51e476eb07a@spud>
References: <20231020170225.3632933-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w0aP+RuQEiHwXrIZ"
Content-Disposition: inline
In-Reply-To: <20231020170225.3632933-1-robh@kernel.org>


--w0aP+RuQEiHwXrIZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 20, 2023 at 12:02:24PM -0500, Rob Herring wrote:
> Every DT property needs a type defined, but "i2c-alias" is missing any
> type definition. It's a "uint32", so add a type reference.
>=20
> Fixes: 313e8b32c616 ("media: dt-bindings: media: add TI DS90UB960 FPD-Lin=
k III Deserializer")
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/media/i2c/ti,ds90ub960.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/media/i2c/ti,ds90ub960.yam=
l b/Documentation/devicetree/bindings/media/i2c/ti,ds90ub960.yaml
> index 289737721c2c..0b71e6f911a8 100644
> --- a/Documentation/devicetree/bindings/media/i2c/ti,ds90ub960.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/ti,ds90ub960.yaml
> @@ -69,6 +69,7 @@ properties:
>              maxItems: 1
> =20
>            i2c-alias:
> +            $ref: /schemas/types.yaml#/definitions/uint32
>              description:
>                The I2C address used for the serializer. Transactions to t=
his
>                address on the I2C bus where the deserializer resides are
> --=20
> 2.42.0
>=20

--w0aP+RuQEiHwXrIZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTVdPgAKCRB4tDGHoIJi
0rJ+AQDTCcR8mZ1cxKZlr5M4bP8/RBkCSESXsvYiQEnAGVNHNQEA3aM6sI6VJ6NI
NERweUroAYMdMOIM8ZyGxaJPRdfojgw=
=Lk19
-----END PGP SIGNATURE-----

--w0aP+RuQEiHwXrIZ--

