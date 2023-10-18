Return-Path: <devicetree+bounces-9669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5137CDE10
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 15:58:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5927C1C20ABE
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 13:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0443636B10;
	Wed, 18 Oct 2023 13:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5AciNiq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC30136B00
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:57:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B336C433C7;
	Wed, 18 Oct 2023 13:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697637476;
	bh=9CmkbilECnd6ujEwZdATorH+rM11Zfb8aq81/Ubbn+Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u5AciNiqCUVqfWrstP1MVrMTugREQ2IjVcYCWzfDKjkJvtOw4vyyxAejqyWGMgDr8
	 SOaeOx6lWLiKz0j2COAB/qb8L2Rm6KJ0BmJwOkAz2+T5KJt0zxK5cC85xMfkAIGJ/I
	 zXlV7bSkmjWoqgUkK2EHknjEo3TYmU6RsXWTSMcQnKqVRS/mc3zy+Nvw/KGqgrbIDq
	 WS3BUnm5hYQ8pG4q96QdFMtCW2HHwQEphyUsatEFi9RUg6ajwiaNYMpvyyj1Xc8Zfg
	 QGgsQInTyaIo+Yph8bsl4vnh3DayUsBFEyi5F+nhFO/9JzkwCbQcplGGdoVRMVbVB0
	 tiSuzu9D90oiQ==
Date: Wed, 18 Oct 2023 14:57:50 +0100
From: Conor Dooley <conor@kernel.org>
To: Drew Fustini <dfustini@baylibre.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Robert Nelson <robertcnelson@beagleboard.org>,
	Jason Kridner <jkridner@beagleboard.org>,
	Xi Ruoyao <xry111@xry111.site>, Han Gao <gaohan@iscas.ac.cn>,
	Icenowy Zheng <uwu@icenowy.me>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 6/7] riscv: dts: thead: Enable BeagleV Ahead eMMC
 controller
Message-ID: <20231018-dating-yogurt-d7f3a65a873e@spud>
References: <20231017-th1520-mmc-v2-0-4678c8cc4048@baylibre.com>
 <20231017-th1520-mmc-v2-6-4678c8cc4048@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EJhQKjdNlUN6WevH"
Content-Disposition: inline
In-Reply-To: <20231017-th1520-mmc-v2-6-4678c8cc4048@baylibre.com>


--EJhQKjdNlUN6WevH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 17, 2023 at 01:43:52PM -0700, Drew Fustini wrote:
> Add properties to the emmc node and enable it and set the frequency for
> the sdhci clock.
>=20
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> ---
>  arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>=20
> diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/ri=
scv/boot/dts/thead/th1520-beaglev-ahead.dts
> index 70e8042c8304..bf55319ba950 100644
> --- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> +++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> @@ -52,6 +52,10 @@ &uart_sclk {
>  	clock-frequency =3D <100000000>;
>  };
> =20
> +&sdhci_clk {
> +	clock-frequency =3D <198000000>;
> +};
> +
>  &dmac0 {
>  	status =3D "okay";
>  };
> @@ -59,3 +63,13 @@ &dmac0 {
>  &uart0 {
>  	status =3D "okay";
>  };
> +
> +&mmc0 {
> +	bus-width =3D <8>;
> +	max-frequency =3D <198000000>;
> +	mmc-hs400-1_8v;
> +	non-removable;
> +	no-sdio;
> +	no-sd;
> +	status =3D "okay";
> +};

Is this file meant to be in alphanumerical order?


--EJhQKjdNlUN6WevH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZS/kXgAKCRB4tDGHoIJi
0ob5AQCRV10xGur/a43BpgYcA5A0R9y8m/5uK2GBbJL6LVr59QEAopmqh+brNf3r
URiqy36uFplvPJ9tsOe2/+aAmZRtWQU=
=DFYd
-----END PGP SIGNATURE-----

--EJhQKjdNlUN6WevH--

