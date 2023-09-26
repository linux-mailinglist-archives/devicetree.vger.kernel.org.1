Return-Path: <devicetree+bounces-3442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A707AEDAF
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:07:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id DD1B31F2269E
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 13:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50C9A28DC5;
	Tue, 26 Sep 2023 13:07:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4130927728
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:07:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB807C433C8;
	Tue, 26 Sep 2023 13:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695733648;
	bh=5rc5i2es81YW7XYGcv+4eO04vSryf/jxDeo73Pyc0GU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CXCx1tZJPm8bVjmSHYmyX+R0db2sGn9Bq55705tXNbt/fH6/OPLlolFVhos8LHZeH
	 g1m4BNrIKC+3bXSKJbXrALLn+8xD1ns1E1NpBxWbyjd1h2OuSIAFLEL0Qlc7BRJovp
	 VYvWdMKxxPUlLlGw9Wym3Y1bHpgKYntoK5GUi/3sw/4aP4x6+9/jJAU5NJSbb6Pc60
	 0q5JQRfhy+U1RfyamzOp2VqqbY1p96qQy2YMQFPwS/c2+86CYkYB9shEO6VzVs2rBT
	 rVQtE05oPJilTT3TLNwjociEIvp6hGC0y/DExDmx+zdAqmu/05GyuX4W6q4vtOcQas
	 ogh5itNIKPe8Q==
Date: Tue, 26 Sep 2023 14:07:23 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
	Mike Leach <mike.leach@linaro.org>,
	James Clark <james.clark@arm.com>, Leo Yan <leo.yan@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm,coresight-cti: Drop type for 'cpu'
 property
Message-ID: <20230926-division-keenness-ca9463a79cff@spud>
References: <20230925220511.2026514-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tASJHawbsd/GK+ZX"
Content-Disposition: inline
In-Reply-To: <20230925220511.2026514-1-robh@kernel.org>


--tASJHawbsd/GK+ZX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2023 at 05:05:05PM -0500, Rob Herring wrote:
> 'cpu' has been added as a single phandle type to dtschema, so drop the
> type here.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml=
 b/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml
> index 6216cfb0a188..b9bdfc8969cd 100644
> --- a/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml
> +++ b/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml
> @@ -92,7 +92,6 @@ properties:
>      maxItems: 1
> =20
>    cpu:
> -    $ref: /schemas/types.yaml#/definitions/phandle
>      description:
>        Handle to cpu this device is associated with. This must appear in =
the
>        base cti node if compatible string arm,coresight-cti-v8-arch is us=
ed,
> --=20
> 2.40.1
>=20

--tASJHawbsd/GK+ZX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRLXiwAKCRB4tDGHoIJi
0niZAP9WQTRii5qf1y2AaTgiMyMjr5oFq4CCMGGix1TS8dQ1kAD/WZ5RtR5pZsdl
HMjYYIzCZR0pO5AU4hPh4Rk6Y54nMw8=
=7gcT
-----END PGP SIGNATURE-----

--tASJHawbsd/GK+ZX--

