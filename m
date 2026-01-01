Return-Path: <devicetree+bounces-250876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B2ACECB0F
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 01:09:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3202A30124E3
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 00:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 093EE6A8D2;
	Thu,  1 Jan 2026 00:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVq9HYgT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B8A3594A;
	Thu,  1 Jan 2026 00:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767226183; cv=none; b=EtwZnxjwZQAPQQcFL30nZXlVJc7YUlvJvwaP0fmjmBKc/FuOva7Apvyb+vhxKqjKUZsfBMWdAiXdTMH6J5IIvHYhENnrO0Nyh1nu6aEKA0hCA1NHM0DjK828Lo9Ng+bFnWgbM1t63ExDoWUTyZ6F3OzCEzxCZJRd6RE/5k1hXIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767226183; c=relaxed/simple;
	bh=RILLXhyY4Mlu3hOHqGqx10mtCM/lR3o8tAxRU/3QtiQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i3pDJzTDSZT8eGoryKsPr72a2Jl8/1ApyHRf0QqFZMdA3+I8qVHt5VKu1694u2bVN71OPW08ABrphmh3g9NxJ6T9Fo9vGw6pCvcxHl73Nh7VHIXrUNmbyBvRgL0QD1RvuRLpyxgIt58yoeslpJ4QevfpjkWbHlyuIQj+au3hytk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVq9HYgT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD769C113D0;
	Thu,  1 Jan 2026 00:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767226183;
	bh=RILLXhyY4Mlu3hOHqGqx10mtCM/lR3o8tAxRU/3QtiQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lVq9HYgTCPP77Z3n5Y2SJ8ehzFMrgHQ9Ws32jsVao/aS+bhE7gwEZnIVN2LSfxepI
	 iR0Rdr6Ty4MiEgCMfiPjzS26IV8ICJRgIy+8AYAY5koUzenCEmDH5AICL4uz02Wd4o
	 hNLLlAGxEkSOJtMAIXwiaiA1xvhaLGb/bC6NwNk+Lf9UvIyJ/IEbKYepkAcm7XOgoX
	 lkWapahe1VEG4JAVd6iZdhK4sOcDGfDsnEILLMGMpCuPYXJ7YRJHlY3LQvwWw1RAAd
	 wBZv12FmPOAABy0hSp9iYCAVrWLkxfnpc+hzy7eKsZSGIUp2uo+9ag5XKo91b8FULN
	 OyUGhgA+7WyaQ==
Date: Thu, 1 Jan 2026 00:09:38 +0000
From: Conor Dooley <conor@kernel.org>
To: Guodong Xu <guodong@riscstar.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2] dt-bindings: riscv: update ratified version of h,
 svinval, svnapot, svpbmt
Message-ID: <20260101-prong-carnage-bbb6272e23c1@spud>
References: <20251225-h-description-v2-1-b0c66080c704@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pFpxG+nA7D9mVAyZ"
Content-Disposition: inline
In-Reply-To: <20251225-h-description-v2-1-b0c66080c704@riscstar.com>


--pFpxG+nA7D9mVAyZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 25, 2025 at 02:24:20PM +0800, Guodong Xu wrote:
> The descriptions for h, svinval, svnapot, and svpbmt extensions currently
> reference the "20191213 version of the privileged ISA specification".
> While an Unprivileged ISA document exists with that date, there is no
> corresponding ratified Privileged ISA specification.
>=20
> These extensions were ratified in the RISC-V Instruction Set Manual,
> Volume II: Privileged Architecture, Version 20211203. Update the
> descriptions to reference the correct specification version.
>=20
> RISC-V International hosts a website [1] for ratified specifications.
> Following the "Ratified ISA Specifications", historical versions of
> Volume II Privileged ISA can be found.
>=20
> Link: https://riscv.org/specifications/ratified/ [1]
> Fixes: aeb71e42caae ("dt-bindings: riscv: deprecate riscv,isa")
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Guodong Xu <guodong@riscstar.com>

I've put this on my dt-fixes branch, but shout Paul if you'd rather this
went via you.

--pFpxG+nA7D9mVAyZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaVW7QgAKCRB4tDGHoIJi
0vP4AQDoWEJMGKVW3w5G4gvUDJtrMadHT8+Q7v2esA4P78t43wEAg3ekCCQIaJId
P2NC+7H9pd+2dJoSX1Zkua3l9gKW5wA=
=+uvj
-----END PGP SIGNATURE-----

--pFpxG+nA7D9mVAyZ--

