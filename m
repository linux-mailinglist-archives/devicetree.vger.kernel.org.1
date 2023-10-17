Return-Path: <devicetree+bounces-9204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A73137CC106
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 12:50:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EF0F1F22D64
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 10:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D0D53FB18;
	Tue, 17 Oct 2023 10:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mm8Z5V0K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203C63D39F
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 10:50:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7B60C433C7;
	Tue, 17 Oct 2023 10:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697539846;
	bh=NBELIU9z6fKP618YgdgGGrhepP3TPqeWVx6XGPhGX5w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mm8Z5V0KH1hwDvZFYpv+Ys3I2IW2+5A4lAXvPqyj9l9IOZIBR+hjFi3u9DPjRZpL9
	 jRL2mCDvS349NfbJX2CRsfAU7iOTQRqGa3dq02fmq3IVa9AfvT8Swa+c2eO88Jr6b8
	 /2LCm3veEjFqVScUlrzSObyaKGz7LBCd5tjFe7CSER/DSQ8SayiOQAQygOrJiBz1uI
	 7a5lCcwoFTc0B1Tg1gw1ZfWOzsLNdtLQXnWM/7SeJNPKSNP1S3iHpldgWCAIx4MVTK
	 rN89kmUEPbBDjoHr5fln/ZY3lamJhqnBQDCVskuEPDV/Sh7i+sCk2I68lqpe7p+yoR
	 Hn8sRHzlxfbLQ==
Date: Tue, 17 Oct 2023 11:50:42 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Beer <daniel.beer@igorinstitute.com>,
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: tas5805m: Disallow undefined
 properties
Message-ID: <20231017-blinking-barricade-9e068a5fc602@spud>
References: <20231016155547.2973853-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3VQsOoHMH3HTVwq6"
Content-Disposition: inline
In-Reply-To: <20231016155547.2973853-1-robh@kernel.org>


--3VQsOoHMH3HTVwq6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 16, 2023 at 10:55:47AM -0500, Rob Herring wrote:
> Device specific bindings should not allow undefined properties. This is
> accomplished in json-schema with 'additionalProperties: false'.
>=20
> Examples should be last in the schema, so move additionalProperties up
> while we're here.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/sound/tas5805m.yaml | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/sound/tas5805m.yaml b/Docu=
mentation/devicetree/bindings/sound/tas5805m.yaml
> index 63edf52f061c..12c41974274e 100644
> --- a/Documentation/devicetree/bindings/sound/tas5805m.yaml
> +++ b/Documentation/devicetree/bindings/sound/tas5805m.yaml
> @@ -37,6 +37,8 @@ properties:
>        generated from TI's PPC3 tool.
>      $ref: /schemas/types.yaml#/definitions/string
> =20
> +additionalProperties: false
> +
>  examples:
>    - |
>      i2c {
> @@ -52,5 +54,4 @@ examples:
>                  ti,dsp-config-name =3D "mono_pbtl_48khz";
>          };
>      };
> -
> -additionalProperties: true
> +...
> --=20
> 2.42.0
>=20
>=20

--3VQsOoHMH3HTVwq6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZS5m/QAKCRB4tDGHoIJi
0gcEAQCmHmcARE1lTJsuZHsKJ56ZGHCns14vOpQXsWwK4mvBXQD9GYNa6EuBgPv3
bunLUdSkx2aJXu0YguhXOE/JBMSVjgs=
=PYZq
-----END PGP SIGNATURE-----

--3VQsOoHMH3HTVwq6--

