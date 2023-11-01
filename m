Return-Path: <devicetree+bounces-13484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF397DE3F9
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:46:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32A84281327
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:46:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85AEB14295;
	Wed,  1 Nov 2023 15:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWMB4Avi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D6D10796
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:46:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E92E9C433C9;
	Wed,  1 Nov 2023 15:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698853561;
	bh=zC6yCSHfmh/5iy8QMdqt6xIA4t9dtbOuSLusujn7SVU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mWMB4AvihWsKGWwjurOuzwdRqzNULefFKmUiqmsaHTTL67JKrTUQ7psqTRz3s0YAw
	 N5LxbqivEksNvydQh7iElu6/jHL85KAqv6oyXXRlnfdweREq9l2Pd0Lep/uvYJXh2Z
	 i1pF2nxyVEKZZpovp2bRnwNm81PovjzNqHnw6waydYvqdNWGllgVe73h+j7uZqx2FT
	 zBxVxB5PXfivEMGSQ4Z3+Q4keuSKBOg+JsytpYUPehktjdqW2NAoP2efNjerUVyVqS
	 2SlzqkYJNvmdYZRFslAxEkhueliWOFpXZvvxFOgEyHWw8H6CmxJa2YTGcI7x+JAqA8
	 X4XQT49Jiggrw==
Date: Wed, 1 Nov 2023 15:45:56 +0000
From: Conor Dooley <conor@kernel.org>
To: Ben Wolsieffer <ben.wolsieffer@hefring.com>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Erwan Leray <erwan.leray@foss.st.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Subject: Re: [PATCH 3/5] dt-bindings: spi: add stm32f7-spi compatible
Message-ID: <20231101-pushup-kindle-c1021251807d@spud>
References: <20231101150811.2747455-1-ben.wolsieffer@hefring.com>
 <20231101150811.2747455-4-ben.wolsieffer@hefring.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o5NKLOVaCjgEnBEo"
Content-Disposition: inline
In-Reply-To: <20231101150811.2747455-4-ben.wolsieffer@hefring.com>


--o5NKLOVaCjgEnBEo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 01, 2023 at 11:08:08AM -0400, Ben Wolsieffer wrote:

Missing commit body. The information from the driver patch about the
differences between this and other versions of the IP would be suitable.

Cheers,
Conor.

> Signed-off-by: Ben Wolsieffer <ben.wolsieffer@hefring.com>
> ---
>  Documentation/devicetree/bindings/spi/st,stm32-spi.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml b/Do=
cumentation/devicetree/bindings/spi/st,stm32-spi.yaml
> index ae0f082bd377..5754d603f34f 100644
> --- a/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
> @@ -23,6 +23,7 @@ properties:
>    compatible:
>      enum:
>        - st,stm32f4-spi
> +      - st,stm32f7-spi
>        - st,stm32h7-spi
> =20
>    reg:
> --=20
> 2.42.0
>=20

--o5NKLOVaCjgEnBEo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUJytAAKCRB4tDGHoIJi
0jOqAP9VAhg5Emh5oBVcWb1OF1NyxbQvPULlwVSEjp+kb6vcaAD8DQHua20iE9dd
t4Ri/6/mMJ3luNjvNDy0TwpSjulGAwk=
=nL8h
-----END PGP SIGNATURE-----

--o5NKLOVaCjgEnBEo--

