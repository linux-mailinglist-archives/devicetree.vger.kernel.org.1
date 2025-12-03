Return-Path: <devicetree+bounces-244039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 235DEC9F3DF
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 15:12:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E6AFA4E1970
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 14:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 401622F49FD;
	Wed,  3 Dec 2025 14:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sICBhn5b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C922EC09D;
	Wed,  3 Dec 2025 14:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764771118; cv=none; b=XtT1pjmkzMXQQ1IGrFjS3PH7IASydRzrBmeF+RDT7kRsDmVBd220aYkUHje3oBpGHYWzLHqAoMRtWYHZKcUFP/yTdOx6C9aoqnPwDc7t9sfoq4ph+gYSCK9w9Fri1X2jBEStmQGu577pnhtXUtYpCi28GOP8MBqb+gXu9mrXJyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764771118; c=relaxed/simple;
	bh=xuE5sa0P0kdmX+1IVQZ7pAu008bNjN32zP9oWawUpT0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PDsIijXj74hA4fK/pjfNa1TNWdsAxRNl0aPB9MU6b+nVezLOMeVeifHJr1fuYXw66XaLThO2H5xdw8YkGnoWb3dJ9/8VWVV7NDUxoSjOv1udNNJxQwI7BejfpS9Vf09ezY2UpyPW8m0gjQDNDXj6DgQAWannx44yPCG73e2aoMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sICBhn5b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2990BC4CEF5;
	Wed,  3 Dec 2025 14:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764771117;
	bh=xuE5sa0P0kdmX+1IVQZ7pAu008bNjN32zP9oWawUpT0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sICBhn5bIYCiDisebCCftrApMVqgWTUedeR8E0zJrxp2IADY51qvXuCT4TNdYuQMm
	 57R6dESs9tV/9OftnXO7hzZdeqtMZDUWAJk32EsU3XKtZL88mIOHWhN3g0Rkuvo3N+
	 HjPb4LQ1V8lNYQrXoGauHvZwBCSi7goRar0iid/TpzhEbW5hA61p70WPR5Ei/g8nWs
	 pe89nFoS0wEsdlDX2bmdN8pLQlwNJLLf6ZV9Y04W27yWV5AxvFsmNScDEaGWjaNl49
	 ORrfaFpWP9QfVs8BmT6UJ3unLEIgiXLmBy5m5fB1nkXSb5Cd2EZ/gnlzF0Hy4ONqIE
	 FEFMl5k7PbeOA==
Date: Wed, 3 Dec 2025 14:11:52 +0000
From: Conor Dooley <conor@kernel.org>
To: q691800735@163.com
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	alex@ghiti.fr, p.zabel@pengutronix.de, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: reset: Add Kendryte K230 reset controller
 bindings
Message-ID: <20251203-spectator-apple-a3f50d52d441@spud>
References: <20251203092632.219525-1-q691800735@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yefhawvbBAcoYuHz"
Content-Disposition: inline
In-Reply-To: <20251203092632.219525-1-q691800735@163.com>


--yefhawvbBAcoYuHz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 03, 2025 at 05:26:32PM +0800, q691800735@163.com wrote:
> From: jybruceupup <q691800735@163.com>
>=20
> Add canaan-k230-reset.h to define reset IDs, types and register offsets
> for Kendryte K230 RISC-V SoC, covering CPU, peripherals and subsystems.
>=20
> Update MAINTAINERS RISC-V entry to include the new reset binding header
> for proper maintenance tracking.
>=20
> Signed-off-by: jybruceupup <q691800735@163.com>
> ---
>  MAINTAINERS                                   |   1 +
>  include/dt-bindings/reset/canaan-k230-reset.h | 513 ++++++++++++++++++
>  2 files changed, 514 insertions(+)
>  create mode 100644 include/dt-bindings/reset/canaan-k230-reset.h
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d83920cbc..b489ab6cd 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -22105,6 +22105,7 @@ C:	irc://irc.libera.chat/riscv
>  P:	Documentation/arch/riscv/patch-acceptance.rst
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
>  F:	arch/riscv/
> +F:	include/dt-bindings/reset/canaan-k230-reset.h

Something to note here is that adding these files to the main arch/riscv
maintainers entry is not appropriate. These should instead be added to a
dedicated entry for the canaan k230 reset driver and bindings, with
people who specifically care about the device as maintainers (hint:
usually that's the author of the driver and bindings).

>  F:	include/dt-bindings/soc/canaan,k230_pm_domains.h
>  N:	riscv
>  K:	riscv

--yefhawvbBAcoYuHz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaTBFKAAKCRB4tDGHoIJi
0ldNAQDVpsh8a8mY5+Equ89fltAnVPedoFeU+ZnnBLJGZk43KQD/YTsXqXqpu1Rj
MF8Ktv+JdSSo1X8a0sLwhTC2JFTsPgI=
=VaOT
-----END PGP SIGNATURE-----

--yefhawvbBAcoYuHz--

