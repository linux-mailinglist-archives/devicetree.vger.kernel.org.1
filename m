Return-Path: <devicetree+bounces-255763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EC803D2810A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:27:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C3B93014BDD
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91DA62EC0A7;
	Thu, 15 Jan 2026 19:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTmlSRdy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE1E2C159A;
	Thu, 15 Jan 2026 19:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768505002; cv=none; b=KpnZoFmtH9/NX9Na4BKQujOreogWg01Qc89PKzMwIGvZ3oCX4eJ7BKf/S0nVdvKK3JSZqkEELY+n7B4SzF6nLovYhIv92p8TOytDXsr91wl3E0VpTqw5mquex3ZJ1Ry2l22+hzQF5S2aRe5vFvMSknILAM2AdV99+hYRnvBzd34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768505002; c=relaxed/simple;
	bh=BE+THqVX1sbLmEF4P2vfennNAHrg37bKeXrmdyHM4dQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NoGFY2bK1MxyLdLB/0nzKK7BNWKONrGwLEPsUcoiA201a3iz9a0Y4INpM2i4wpY174eOw1iF/a5a5vsFZWZUOFZG1gn/OIxRJ+Abqt4n2JarnvjRx04jAb6AeJzNa0IKQ4mHZN9gdqwNZQ4IS+JeEOZqS3lWr3BbBc09qfQPxhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTmlSRdy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2CC8C116D0;
	Thu, 15 Jan 2026 19:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768505002;
	bh=BE+THqVX1sbLmEF4P2vfennNAHrg37bKeXrmdyHM4dQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LTmlSRdyp9NEEMz8t7E3Fs3qUkkLSUtwyI/PHOTagj4EufDmnSJ5yBcIAKb7SLC8j
	 QdpZagpHHUUpxGiwwPiRMHtHlfoIRKhvktf4Okfn67oin0ZOEZHURDpuDRR9wdR8ag
	 8a+66dq+HVAqpjmZPL96LpugKKROczkAkAHrPABvHICP1Oa1EB2VhqA6W2cE42tBAX
	 fpopycaFXj2pxvpROzFxn/LFYFP6Ynqvah2wbdo0nEkM6PYWguCjgsiBsso0pj/jqt
	 eYFooCgCd4jX31WSIi7iUEYpdiViKyucmVaF+YwH/T7XmCYCwpS+y+FubAtiaPcEOi
	 eBVOP1DbxqW3Q==
Date: Thu, 15 Jan 2026 19:23:17 +0000
From: Conor Dooley <conor@kernel.org>
To: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
Cc: robh@kernel.org, krzk+dt@kernel.org, pjw@kernel.org, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, cyy@cyyself.name,
	dlemoal@kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	gaohan@iscas.ac.cn
Subject: Re: [PATCH v3 0/2] Initial support for 100ask CanMV-K230 DshanPi
Message-ID: <20260115-proud-radish-c835a76d0446@spud>
References: <20260115060801.16819-1-jiayu.riscv@isrc.iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PlhTWjX+jHpIknN/"
Content-Disposition: inline
In-Reply-To: <20260115060801.16819-1-jiayu.riscv@isrc.iscas.ac.cn>


--PlhTWjX+jHpIknN/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 15, 2026 at 02:07:59PM +0800, Jiayu Du wrote:
> This series adds initial support for the 100ask CanMV-K230 DshanPi
> board based on Canaan K230 RISC-V SoC. There is a module on this
> development board.
>=20
> The board and module are documented, the basic board/module devicetrees
> are added.
>=20
> This series is based on the K230 clock series[1] and the patch 3 of the
> k230 pinctrl series[2].
>=20
> Link:  https://lore.kernel.org/all/20251127-b4-k230-clk-v9-0-3aa09e17faf5=
@zohomail.com/ [1]
> Link:  https://lore.kernel.org/all/20240926-k230-pinctrl-v2-3-a9a36fba4b3=
4@163.com/ [2]

Right, I've grabbed patch 3 from [2] and put it on my k230-basic branch.
Do you intend sending a new clock driver series soon? Last time I looked
(about a month ago) you had some changes proposed about critical clocks.
I'd like to try get this stuff merged but obviously it depends on that
clock set. I'll happy send Stephen a PR to smooth things along if the
drivers are ready, but it looks like you need to send another version?

Cheers,
Conor.
>=20
> Changes in v3:
> - Delet the model and compatible of the root node in the dtsi file.
> - Use clock-50000000 as the node name.
> - Link to v2: https://lore.kernel.org/all/20260104070911.219588-1-jiayu.r=
iscv@isrc.iscas.ac.cn/
>=20
> Changes in v2:
> - Add a minus sign before items.
> - Link to v1: https://lore.kernel.org/all/20251229061318.16756-1-jiayu.ri=
scv@isrc.iscas.ac.cn/
>=20
> Jiayu Du (2):
>   dt-bindings: riscv: canaan: add 100ask K230 boards compatible strings
>   riscv: dts: canaan: Add initial dshanpi board DT files
>=20
>  .../devicetree/bindings/riscv/canaan.yaml     |  5 ++
>  arch/riscv/boot/dts/canaan/Makefile           |  1 +
>  .../boot/dts/canaan/k230-canmv-dshanpi.dts    | 82 +++++++++++++++++++
>  .../dts/canaan/k230-canmv-module-dshanpi.dtsi | 26 ++++++
>  4 files changed, 114 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/canaan/k230-canmv-dshanpi.dts
>  create mode 100644 arch/riscv/boot/dts/canaan/k230-canmv-module-dshanpi.=
dtsi
>=20
> --=20
> 2.52.0
>=20

--PlhTWjX+jHpIknN/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaWk+pQAKCRB4tDGHoIJi
0jpBAPwMCSDxW/ccYcIjgtR1QljuO3PJuOBynsc5NuV311iIkgD9GZhUb8n3Segi
iYWs8F+FoNzcKA5YE0Nua/rlcyPyBgE=
=3qZO
-----END PGP SIGNATURE-----

--PlhTWjX+jHpIknN/--

