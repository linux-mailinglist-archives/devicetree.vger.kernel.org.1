Return-Path: <devicetree+bounces-12385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B45357D9322
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:10:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE93F1C20AE4
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B208156D8;
	Fri, 27 Oct 2023 09:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VafXryuB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E19F53B7
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 09:10:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09CB0C433C8;
	Fri, 27 Oct 2023 09:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698397801;
	bh=UlnJ7ybGRiYreh3nfZGSzzF+l2lR/9JOQF1TpzUa/ds=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VafXryuBonCNfDfOwpSgK59Lcnu5KPZux97nafwBkvjz9FhzmOj7Pv1xN7LdnujyD
	 z3FGK3jCrOfhOba8q1pc203WyhUjFZFCmnHbYtJGjUwS95Aebq1wpQm++d3k5IRifh
	 ki7fmSasShS/q68V0i0GmeH/JaxawXkxv2DLqyhyajznIkDJSNAkMEMSBO8GPUYt7N
	 L9K2Tm0/1npVrjDJCw/J8wdx4bnIxd6Eo1IWEVBHz4dbMwJ9kLjHpdOAgO47LW/EKq
	 BvqdA1pt8gWardtk8NVoe3Vwl+p4mTNpTc2/PXmRBGYdBWQFSCy+lhkoRXZx1iPfdW
	 C8QqAJnjY3bGw==
Date: Fri, 27 Oct 2023 11:09:58 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
	krzysztof.kozlowski+dt@linaro.org
Cc: gregory.clement@bootlin.com, andi.shyti@kernel.org, robh+dt@kernel.org,
	conor+dt@kernel.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: i2c: mv64xxx: add bus-reset-gpios
 property
Message-ID: <ZTt+ZgNe5Y35E/C2@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Chris Packham <chris.packham@alliedtelesis.co.nz>,
	krzysztof.kozlowski+dt@linaro.org, gregory.clement@bootlin.com,
	andi.shyti@kernel.org, robh+dt@kernel.org, conor+dt@kernel.org,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
References: <20231027033104.1348921-1-chris.packham@alliedtelesis.co.nz>
 <20231027033104.1348921-2-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MC18m8lzniOpRcOB"
Content-Disposition: inline
In-Reply-To: <20231027033104.1348921-2-chris.packham@alliedtelesis.co.nz>


--MC18m8lzniOpRcOB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 27, 2023 at 04:31:03PM +1300, Chris Packham wrote:
> Add bus-reset-gpios and bus-reset-duration-us properties to the
> marvell,mv64xxx-i2c binding. These can be used to describe hardware
> where a common reset GPIO is connected to all downstream devices on and
> I2C bus. This reset will be asserted then released before the downstream
> devices on the bus are probed.
>=20
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Krzysztof, are you fine with this change?

> ---
>=20
> Notes:
>     Changes in v5:
>     - Rename reset-gpios and reset-duration-us to bus-reset-gpios and
>       bus-reset-duration-us as requested by Wolfram
>     Changes in v4:
>     - Add r-by from Krzysztof
>     Changes in v3:
>     - Rename reset-delay-us to reset-duration-us to better reflect its
>       purpose
>     - Add default: for reset-duration-us
>     - Add description: for reset-gpios
>     Changes in v2:
>     - Update commit message
>     - Add reset-delay-us property
>=20
>  .../devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml   | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.ya=
ml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
> index 461d1c9ee3f7..b165d1c4f0b1 100644
> --- a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
> +++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
> @@ -70,6 +70,16 @@ properties:
>    resets:
>      maxItems: 1
> =20
> +  bus-reset-gpios:
> +    description:
> +      GPIO pin providing a common reset for all downstream devices. This=
 GPIO
> +      will be asserted then released before the downstream devices are p=
robed.
> +    maxItems: 1
> +
> +  bus-reset-duration-us:
> +    description: Reset duration in us.
> +    default: 1
> +
>    dmas:
>      items:
>        - description: RX DMA Channel
> --=20
> 2.42.0
>=20

--MC18m8lzniOpRcOB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmU7fmEACgkQFA3kzBSg
Kbb6ow//Uv8Eg3AFUhPmr2ffnMT2OIGd31B8REfzNbJrn9mS+HcXjLqMzy5eiViS
2P4amlnhQ+bRE+8hZ6gQCWOpB5fr+7/16w6H7TsLQ97HIhFIewdgM4WYvPmyOkyd
L1tLEO6DeVPdu2m9xwvq3zR41LFNUFn44fiN3d5xUbQDuhsUkBI4QMhQM3NbhnUb
tNE74ilZou7QV4uXRd9VdVYSp0NQEccY+nN2T7hA1YIFUN2vDRtfzrtIO8S+wLZA
lKpgBArCcYHWjkdRpDoXH3n1z14toiB2/LPpbbiS4OAxJU4V+D0sUTm+TkhuIuTR
1TBP9GNoSgWERk4WshVEArmekKuUEdbFCHglZu2/bfPUow23Ds2yqlUd4OS3+Gsu
1qtGnITopQJkeIGJ8pXwlBCO0bA92otJSHcAju3vGePnn671R3xHMqiX08aJj/aY
W9++xZKIa7mDluq7kO05sjXx0DmJs9sdFsD/7fOAygF2wa/awuMp88WbFDB+5gg9
VAGxU489H1fvc+1udm1pbKt4aXE38CsEFQE9uJ438ou85zTaMtdLJasuILcjq8QB
LO8eHpYDC9Q7MSToOLBWGQLMpp7yYVg9r4MLMvVxifVPF81NdQT4//joF38wjTai
jBKADM+Vq8uqojAUvqyGZ6HhM8wiMpBwxTihEskqzHPscxhAeEw=
=V58g
-----END PGP SIGNATURE-----

--MC18m8lzniOpRcOB--

