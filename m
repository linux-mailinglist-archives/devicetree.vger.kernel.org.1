Return-Path: <devicetree+bounces-138178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA99A0C09C
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 19:48:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 195231888330
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 18:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC6941C5F18;
	Mon, 13 Jan 2025 18:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zrfs/cja"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 975781C4609;
	Mon, 13 Jan 2025 18:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736793557; cv=none; b=B0l1ZVEMSMuUOx1uhpbl7MzUB8N9DrxpwKUC2rf3BIrslfNUbCkjauxEdeT/cpU2Ehi7WGdU+ZW/Bxz14WdCyYtPelLiFEKCD1aKFqw6ZlWZThDgsha5yP0KagEmi9B4pKz/yd2FPnDhzCcFkqX8lS5PI30a6uKa9nA4Z8EWj7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736793557; c=relaxed/simple;
	bh=e2CPP3XX+Bryks06yf8fYg9ngNX0POmtYeUUcH1/HJs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dzLWZT2ZCPRZWNT8+7O09uMb2ZJUDABwWmwrffv5llCWuJ+V5Yc91N21GbRLrkwuKIjR9OrJmcw+IqoBilYPQsFpjS0VRqH4u4tbWSqpWEABUhpjI81uzWRpoa8Q0Q8ie6cgDVtJWGjvkdoxhoCZOKjEanuWFC+waZqnAp8QrDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zrfs/cja; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 268C0C4CED6;
	Mon, 13 Jan 2025 18:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736793557;
	bh=e2CPP3XX+Bryks06yf8fYg9ngNX0POmtYeUUcH1/HJs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zrfs/cja94Ny/H+E1sicu5WBEr//fH9pD/6Hs94ROwthbH7iYjc70qS121A2xfY1Q
	 bcTVAClJg6aFApMTR/xRpASKzkl13zvNy+oz1yRlrfXdz42pqMo7F9cqQEymqRXka1
	 gATXFI+9xWi6I34q00oulVLCUgu1kuBRvDRAIcIKZLZbgCh8gUclqe0nffQLDtXGay
	 5XtkcCYCND7vFFeb8a1q4K5SEo1H53ebPF+vHFZybShmrRK5jKlu6vPEeAD+jyNRjH
	 wPIirakF58C850a7dt7Vf/r3gugni8yqD5YaN/a83PbKkEbRxgw+Y2Wed9belU6yIX
	 f0EphqGlb6JeQ==
Date: Mon, 13 Jan 2025 18:39:13 +0000
From: Conor Dooley <conor@kernel.org>
To: E Shattow <e@freeshell.de>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [RFC PATCH v1 1/3] riscv: dts: starfive: jh7110: add timer node
Message-ID: <20250113-monotone-maybe-97ae1d171710@spud>
References: <20250102204137.423081-1-e@freeshell.de>
 <20250102204137.423081-2-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="H8QqAvTFaB2o+AKz"
Content-Disposition: inline
In-Reply-To: <20250102204137.423081-2-e@freeshell.de>


--H8QqAvTFaB2o+AKz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 02, 2025 at 12:41:21PM -0800, E Shattow wrote:
> no idea if this does anything useful; not needed for boot
>=20
> Signed-off-by: E Shattow <e@freeshell.de>
> ---
>  arch/riscv/boot/dts/starfive/jh7110.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/d=
ts/starfive/jh7110.dtsi
> index 0d8339357bad..0bc922b3ae8a 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -344,6 +344,15 @@ tdm_ext: tdm-ext-clock {
>  		#clock-cells =3D <0>;
>  	};
> =20
> +	timer {
> +		compatible =3D "riscv, timer";

compatible has an extra space, so won't do anything!

> +		interrupts-extended =3D <&cpu0_intc 5>,
> +				      <&cpu1_intc 5>,
> +				      <&cpu2_intc 5>,
> +				      <&cpu3_intc 5>,
> +				      <&cpu4_intc 5>;
> +	};
> +
>  	soc {
>  		compatible =3D "simple-bus";
>  		interrupt-parent =3D <&plic>;
> --=20
> 2.45.2
>=20

--H8QqAvTFaB2o+AKz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ4Vd0QAKCRB4tDGHoIJi
0lFfAPwKvlpRSsuUksAeN1omnF3lvoXF+Zmmo+mWZLdvVoOF0wEAl60wVBz4v/Ax
EodKnoFdiCpJcqeskpmCwpPzgYLrcQA=
=S54G
-----END PGP SIGNATURE-----

--H8QqAvTFaB2o+AKz--

