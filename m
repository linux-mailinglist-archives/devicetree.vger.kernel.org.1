Return-Path: <devicetree+bounces-241666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E28C80B9A
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 14:23:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 797564E539C
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:23:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA1C41D5178;
	Mon, 24 Nov 2025 13:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQmOpXtx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB1B1D130E;
	Mon, 24 Nov 2025 13:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763990577; cv=none; b=CwqOtD1rEJupZfvYnjT2ft7a8FbP4nAPe4W5O6Or47oTIltvRUo5cuAkeEsAP3QDYdk82NaVTRvjBY3Zxxy5F6YJ2a9JjLrkaahHH+IYZCUgDLn8pr0j6e0p4acjac6TgFgsx8A2Ig825bTiiKp1bEI4wMf4NFSHaLKdd31gAtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763990577; c=relaxed/simple;
	bh=jWpNfXp2XVxHgoHH9kAd4jxe3FJiOOUu27hLp4URElY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ukv3i27H4ORDXXBP0Fu8iK8B9Pk34kzoZKNyX68vxdRCqC8EpEkEk/aeOPAPeLb1RRBaiDbS7zrcYTyWUrXktmjd/mQhplRDdSBaT2QdVFmkqbzyvHsLktg0IjEdlkdnC6B+ev8W9OXEh1ywcQT2TubywaWmGa/Cxk+HPXeL48c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQmOpXtx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91080C19424;
	Mon, 24 Nov 2025 13:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763990577;
	bh=jWpNfXp2XVxHgoHH9kAd4jxe3FJiOOUu27hLp4URElY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dQmOpXtxbsWU5faJtpQ0hkeihHbXBJTfoV05dTjFD+QIZuFk/zZCd+jtlw62w/4Bt
	 whvGR0zvsK0s5MptiZo2NQOKsQyUdg0dJ1wgfaqaRexe8GR+jNZeNIV6/lJ9BW2FFe
	 DYg6BTAElh1VjSV82BhzKMT/O04W1fCpBgsYbf7r8GHPId3fXv4zmQRsE3m5kTsjWK
	 ZrWpCvioPH6pgd937NXVKQCQKO2kkjOpY+kH3pzCAwe6/40UcEir7/2IbTwBNJ+E3g
	 trBYr0JAHBxdSmoiV7d+AulEzRWCulQ+5blffJ1QdzcKi9I6pSXAJfqJdVDSWfpI0F
	 dNsUWufdzkCLA==
Date: Mon, 24 Nov 2025 13:22:52 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: E Shattow <e@freeshell.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	Drew Fustini <drew@beagleboard.org>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v3 1/2] dt-bindings: riscv: starfive: add
 xunlong,orangepi-rv
Message-ID: <20251124-state-campsite-3e7788a495c1@spud>
References: <20251123225059.49665-1-e@freeshell.de>
 <20251123225059.49665-2-e@freeshell.de>
 <20251124-free-bandicoot-of-skill-fa7d9a@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PqWb7Q6FtE66sFtH"
Content-Disposition: inline
In-Reply-To: <20251124-free-bandicoot-of-skill-fa7d9a@kuoka>


--PqWb7Q6FtE66sFtH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 24, 2025 at 08:28:10AM +0100, Krzysztof Kozlowski wrote:
> On Sun, Nov 23, 2025 at 02:50:44PM -0800, E Shattow wrote:
> > From: Icenowy Zheng <uwu@icenowy.me>
> >=20
> > Add "xunlong,orangepi-rv" as a StarFive JH7110 SoC-based board.
> >=20
> > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > Signed-off-by: E Shattow <e@freeshell.de>
>=20
> <form letter>
> This is a friendly reminder during the review process.
>=20
> It looks like you received a tag and forgot to add it.

It's from me, don't resubmit just to add it since it'll be me applying
anyway.

>=20
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions of patchset, under or above your Signed-off-by tag, unless
> patch changed significantly (e.g. new properties added to the DT
> bindings). Tag is "received", when provided in a message replied to you
> on the mailing list. Tools like b4 can help here. However, there's no
> need to repost patches *only* to add the tags. The upstream maintainer
> will do that for tags received on the version they apply.
>=20
> Please read:
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/s=
ubmitting-patches.rst#L577
>=20
> If a tag was not added on purpose, please state why and what changed.
> </form letter>

--PqWb7Q6FtE66sFtH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaSRcLAAKCRB4tDGHoIJi
0sXiAQCsWVQBNOIWvWCWyXo/SsGJLlywVN1pKbt5+v1nN1nc6wD+LpnCIr5T2dkR
c+le9TFmHyCNgNjX5VgDtd5w4IuOEws=
=3FGb
-----END PGP SIGNATURE-----

--PqWb7Q6FtE66sFtH--

