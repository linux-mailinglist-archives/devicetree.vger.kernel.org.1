Return-Path: <devicetree+bounces-250595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA58CEA5D2
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:51:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E4EE301C3CB
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 17:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB6852DC76E;
	Tue, 30 Dec 2025 17:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psHGBGa5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E63F25A2BB;
	Tue, 30 Dec 2025 17:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767117075; cv=none; b=dip9j1UfFuQMtmiNQdphrUOVhQZGaw2kgBeju7SQMRCMCMR+nyWP8k828fSbteaXeU88MotcVa4YCbmG4ooSiR7kd2AUJAsgin9r3wOggOi5547rQQRGvL66XfuMSHNejM1s3BpKVqQu/jneKhczATBOC/cWMV7Pbm8GFeFtknw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767117075; c=relaxed/simple;
	bh=+Jm5gOiNRo3DlkTtBRRBzyfiYFIqCwnDf+QqaHtlzjU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lmN/g+SKDCk6D+wgEIkP1NPXEzH0bwsZqZpPHoL662bAcYdLTDAMXqwLJUn8mK7546Bzi9wrAO6G8RSOhq6URtEkcxSjHXq8Fi6tos3I4vFFXlQj+IxdZH+9IUryeSV8kiWkJsmfWWXfYvP+KSRhQUW50kWdM3nXdYwsvDAhcsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psHGBGa5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2796CC4CEFB;
	Tue, 30 Dec 2025 17:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767117075;
	bh=+Jm5gOiNRo3DlkTtBRRBzyfiYFIqCwnDf+QqaHtlzjU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=psHGBGa5aBiCXjFvO7o2uMCWg2NzyFa4lgJxvt86I26/VLlQBB3t78dxY7xVMNe6J
	 TRAUBuKUpPsoM77UV2/tijok0lkoPKZvz9NORGbr/W22gOhGpaVL1C2e4OconegBvL
	 DAPspdRYl5Uz2nTYMkDiceJhjluRcPKoDhwlrTM90IJ6hhaZ6X3BnrodUs6yj2pcVH
	 +Ru8dy/Saem1iYvbx5nmiQmI3R7m7XOLVZ3jmGMO+jnl/LHYe2250ZutlN2v5EG9Br
	 D/ICxZBlKIrrI5aBunjW7Xt9Y+osGv0xQgjvYMs4V5LHJsXNxkodmQ6FJXb+z0V4O7
	 qGdZsKUgPovrQ==
Date: Tue, 30 Dec 2025 17:51:11 +0000
From: Conor Dooley <conor@kernel.org>
To: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
Cc: cyy@cyyself.name, kingxukai@zohomail.com,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] riscv: dts: Correct the formatting issues about k230
 dts
Message-ID: <20251230-married-spew-28b59d6b6dbc@spud>
References: <20251227092355.42825-1-jiayu.riscv@isrc.iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Fzs99Tn71rtjzI/i"
Content-Disposition: inline
In-Reply-To: <20251227092355.42825-1-jiayu.riscv@isrc.iscas.ac.cn>


--Fzs99Tn71rtjzI/i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 27, 2025 at 05:23:54PM +0800, Jiayu Du wrote:
> Correct the errors in the spacing format, and move the aliases from
> the SoC's dtsi to the board's dts, since it's more standard.
>=20
> Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
> ---
>=20
> This patch is based on this initial support for Canaan Kendryte K230
> series v6[1], and it is used to fix the [PATCH v6 10/11] of that series.
> Although the latest version is v8, this problem still persists.
> And this patch hasn't been merged into Conor's branch yet.
>=20
> [1]: https://lore.kernel.org/all/tencent_DF5D7CD182AFDA188E0FB80E314A2103=
8D08@qq.com/
>=20
> Thanks for your time and review.

I put this on my k230-basic branch, thank you!

--Fzs99Tn71rtjzI/i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaVQRDwAKCRB4tDGHoIJi
0k/SAQC9z3rg63r/0gCH1jWIGTOh0S3bKuchIBV85OX9y9h65QEAv8dpF++quR7I
oodym/lgbKw60+ut+6adieLXeIlPmwM=
=u1+t
-----END PGP SIGNATURE-----

--Fzs99Tn71rtjzI/i--

