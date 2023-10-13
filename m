Return-Path: <devicetree+bounces-8535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 644947C8876
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 17:20:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4FE6CB20A51
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 15:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA011B277;
	Fri, 13 Oct 2023 15:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZqDUehC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BDC811CBC
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 15:19:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4D88C433C8;
	Fri, 13 Oct 2023 15:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697210399;
	bh=Ys/cvxFKhwCwYOjOvCw9T7BfPly1K4cJ+M/3bmQc+Fk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HZqDUehC0aiPe3EqQfvthVAkOux7as2LZtQj4BGg5keUgoxhnb10bkvYC6qhQBOGl
	 y5k5MH0xIO1alBElMbWWaTIRylCkKD7AR17m6xRp5XhjAVPczx4AczzcyzHEWyN5At
	 Z90jnuNAqWpE/RA/0Jl+u0jBG6lEavH3x79l8jzV27akEMFd35AaVJUxUxhRsjlhq3
	 09iXnLNhhpnLQlenhk6V6b7igix4Uq7Uez7kr503GQ02lkcJd90PwbWq0vULZ7ldSH
	 PB2GoZ1B5bWWQJK2JhLjDoOASbKnmJM056xyx7+v85GI3dd85NRVmTNB7kVeEFbxTJ
	 TUFymO0A4PIUQ==
Date: Fri, 13 Oct 2023 16:19:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Martin Kepplinger <martink@posteo.de>
Cc: lorenzo@kernel.org, jic23@kernel.org, lars@metafoo.de,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, kernel@puri.sm, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: iio: imu: st,lsm6dsx: add mount-matrix
 property
Message-ID: <20231013-violin-craziness-f63d75ce0116@spud>
References: <20231012142041.253332-1-martink@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="P8B0cjiJh5K8TxQ1"
Content-Disposition: inline
In-Reply-To: <20231012142041.253332-1-martink@posteo.de>


--P8B0cjiJh5K8TxQ1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 12, 2023 at 02:20:41PM +0000, Martin Kepplinger wrote:
> Add the mount-matrix optional property to the binding since it's supported
> and very useful when using the chip on a board.
>=20
> Signed-off-by: Martin Kepplinger <martink@posteo.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Cnor.

> ---
>=20
> revision history
> ----------------
> v2: (thanks Jonathan)
> * remove the addition to the example to avoid unrelated discussions :)
>=20
> v1:
> https://lore.kernel.org/linux-devicetree/20230721103410.575555-1-martink@=
posteo.de/
>=20
>=20
>  Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml b/=
Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml
> index ee8724ad33ab..28b667a9cb76 100644
> --- a/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml
> +++ b/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml
> @@ -93,6 +93,9 @@ properties:
>    wakeup-source:
>      $ref: /schemas/types.yaml#/definitions/flag
> =20
> +  mount-matrix:
> +    description: an optional 3x3 mounting rotation matrix
> +
>  required:
>    - compatible
>    - reg
> --=20
> 2.39.2
>=20

--P8B0cjiJh5K8TxQ1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSlgGgAKCRB4tDGHoIJi
0oBKAQCus90abVTh797fUK9MBhVX7IgtB22InyoFl27Oq5aaBAD9Ho4MoB2mpS/+
swxyv+swXVpmsEWkggAahOhWsfJ1CQg=
=+Hu7
-----END PGP SIGNATURE-----

--P8B0cjiJh5K8TxQ1--

