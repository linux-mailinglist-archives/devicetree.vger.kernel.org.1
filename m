Return-Path: <devicetree+bounces-2507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C194A7AB0B2
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 13:30:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 851F41C20994
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 707731F924;
	Fri, 22 Sep 2023 11:30:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603D5182B3
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 11:30:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ED32C433C8;
	Fri, 22 Sep 2023 11:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695382210;
	bh=kcu6bV59mCPFudl+FqsxWmvsIoqfFkVrqnRHgh/OQ3A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l4ATQY9KC3drFwpc4NULdzExIUdKRODHy912og8q6CXypaCdcWxeurVUx24Vp0T/w
	 Z/bc0+Ri5dIOpP2d2lqua3bkWrobVYJ4USsr9X/moMTjG9CW34vptXxs79aT0XmfhZ
	 qyZdNb1uF3WJ8O4obdbhPmBqNKvBIl2xqFUR9IdKXQvSTSE4erLfUGmYHJie+bh4YN
	 pFYZP3pmHlxJyAEOCKosys9mjv3x4FPvLC3VpF9oXFSF/EXCsHvb3yon2Dklp2ljdT
	 x2I44sp2ieSTQx96jMmwJTjlidLtpuMyvME5GFgfRh6RRjjSKn/P98aS3iIoGvWD4i
	 bYrPpjpB75taA==
Date: Fri, 22 Sep 2023 12:30:06 +0100
From: Conor Dooley <conor@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: devicetree@vger.kernel.org, Alexandru Lazar <alazar@startmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>, linux-iio@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: adc: ti,ads1015: Document optional
 interrupt line
Message-ID: <20230922-demise-shallot-2623f8ff869b@spud>
References: <20230921192420.70643-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9HSak8AY9HARqeTX"
Content-Disposition: inline
In-Reply-To: <20230921192420.70643-1-marex@denx.de>


--9HSak8AY9HARqeTX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 21, 2023 at 09:24:20PM +0200, Marek Vasut wrote:
> The ADS1015 can have optional IRQ line connected, document it in the DT b=
indings.
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandru Lazar <alazar@startmail.com>
> Cc: Conor Dooley <conor+dt@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> Cc: Jonathan Cameron <jic23@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Lars-Peter Clausen <lars@metafoo.de>
> Cc: Marco Felsch <m.felsch@pengutronix.de>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-iio@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml b/=
Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
> index e004659099c19..d605999ffe288 100644
> --- a/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
> @@ -23,6 +23,9 @@ properties:
>    reg:
>      maxItems: 1
> =20
> +  interrupts:
> +    maxItems: 1
> +
>    "#address-cells":
>      const: 1
> =20
> --=20
> 2.40.1
>=20

--9HSak8AY9HARqeTX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ16vgAKCRB4tDGHoIJi
0imEAP940SaqHrs9Ws8VDaW6C046rMT3N0tItEjhA6usEIVcrQD/RfBgIYRG38ya
G2WDYP+iXZ1J5KgCBIDDV3CSQn8FSQo=
=s0WP
-----END PGP SIGNATURE-----

--9HSak8AY9HARqeTX--

