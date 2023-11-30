Return-Path: <devicetree+bounces-20384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8388D7FF128
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:05:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06DC3B20BF2
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 14:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0849D487AF;
	Thu, 30 Nov 2023 14:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STUxfY0m"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6EC487A3
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 14:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40A52C433C8;
	Thu, 30 Nov 2023 14:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701353108;
	bh=lmIGpKWrJyGtIsNIsR54E9YSDqwPCFA4y8LfMhRheK4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=STUxfY0mRk7um76FD5/rHkPm2ztlpi6k/23SFfFByJTfCbR1vyS5z3yel3e2eWO9a
	 3ntX+q9LMyax8uzDlOX6ROZnAiqC+DErfFoYCU2aH2dOXFLiOCnDLU7T2/IyFTV7TO
	 DPZKBfTNhASlgO5i0IdjK/TmS8ELPXrr5rZDnMl28ulftr+WTxB8BlYvf2dlkCBCnM
	 ssX5AtKHdo0OV3IeBZPuH7rjrdsSd6PwtqmZSNizLyisS48kCd8KyvlsIXflO7ABOg
	 jnSeI/AsywjB2WRTo2/kLi2RBsQr+JYYBZloviOZLzUdezNiPGs0cffFYGyXuJBOCl
	 W5GwPvauUn2tw==
Date: Thu, 30 Nov 2023 14:05:03 +0000
From: Conor Dooley <conor@kernel.org>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v1 1/8] riscv: errata: Add StarFive JH7100 errata
Message-ID: <20231130-creed-fragrant-e0d91f125cb2@spud>
References: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
 <20231126232746.264302-2-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ioHz8gwtxd+71Mjh"
Content-Disposition: inline
In-Reply-To: <20231126232746.264302-2-emil.renner.berthing@canonical.com>


--ioHz8gwtxd+71Mjh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 27, 2023 at 12:27:39AM +0100, Emil Renner Berthing wrote:
> This not really an errata, but since the JH7100 was made before
> the standard Zicbom extension it needs the DMA_GLOBAL_POOL and
> RISCV_NONSTANDARD_CACHE_OPS enabled to work correctly.
>=20
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

> ---
>  arch/riscv/Kconfig.errata | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>=20
> diff --git a/arch/riscv/Kconfig.errata b/arch/riscv/Kconfig.errata
> index e2c731cfed8c..692de149141f 100644
> --- a/arch/riscv/Kconfig.errata
> +++ b/arch/riscv/Kconfig.errata
> @@ -53,6 +53,23 @@ config ERRATA_SIFIVE_CIP_1200
> =20
>  	  If you don't know what to do here, say "Y".
> =20
> +config ERRATA_STARFIVE_JH7100
> +	bool "StarFive JH7100 support"
> +	depends on ARCH_STARFIVE && NONPORTABLE
> +	select DMA_GLOBAL_POOL
> +	select RISCV_DMA_NONCOHERENT
> +	select RISCV_NONSTANDARD_CACHE_OPS
> +	select SIFIVE_CCACHE
> +	default n
> +	help
> +	  The StarFive JH7100 was a test chip for the JH7110 and has
> +	  caches that are non-coherent with respect to peripheral DMAs.
> +	  It was designed before the Zicbom extension so needs non-standard
> +	  cache operations through the SiFive cache controller.
> +
> +	  Say "Y" if you want to support the BeagleV Starlight and/or
> +	  StarFive VisionFive V1 boards.
> +
>  config ERRATA_THEAD
>  	bool "T-HEAD errata"
>  	depends on RISCV_ALTERNATIVE
> --=20
> 2.40.1
>=20

--ioHz8gwtxd+71Mjh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWiWbQAKCRB4tDGHoIJi
0u/jAQCrrpHJcB50JqgVgzMBgnx7WBxwRTTudybT8nQKUtYhFwD/cfgMwzTaZjJq
WBDq1ck0ck5FCB5pz9sJ3Wmfg/dAmg4=
=Mabv
-----END PGP SIGNATURE-----

--ioHz8gwtxd+71Mjh--

