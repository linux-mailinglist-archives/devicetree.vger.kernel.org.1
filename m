Return-Path: <devicetree+bounces-107982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0A399101D
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 22:18:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B64B281C7C
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 20:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3F141B4F04;
	Fri,  4 Oct 2024 19:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="HhH41Rjl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6D74437F
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 19:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728071834; cv=none; b=m5LVF1xulUaDvhugQcpM7blhkB4fnV9RJI6uzJNlWOqq1i7Teg7PqBi5MmJDxCHDlR7ro3fP+V8A0S7wX3RDI7PjuAhbALAELRL+AdEsr7ymJEqV41lvN+OQMgzYqCVVN5PCGUWVCStGg5dG+iqj73XH0QXa4hCMQuJmpYaJaBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728071834; c=relaxed/simple;
	bh=tuZdaM6k7xcdutbgqOBpf9eONqukoJH+gjRNrPBBPQU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cp2jvDnIEQmOYi2aBMP/b0xOmQNbiKuaPRUQgeuC0Ft0o6Bc9u5CTOUi600K5DiAWdaI8nZqWiXNPpg05S9xJZotWStdBvm6462KHYQpPT+u4EX/j9Dys43rYGhPHmE7HIn4+ToLRXBZPAiv0/tdOhmiA7MMK8FWAN0aBp3kx4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=HhH41Rjl; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=LfCK
	kge/wEDD3UXgRoQ+Td6gx6yeuCKZLVVi1Nt+M30=; b=HhH41RjlNjEpd9b0bf35
	KOHtPTb7Rb5J32AHoRfPxE5JOCJEhPVxvSONDm+R8Ak7iNBhuGIL+HBgPvvpIYdJ
	bYa0AlWnkZQXkBgZrLO+5qyLAFW+vOh0M0BWlOQejfo4mWUi2F7d+NKhBUj623IW
	+bflP8DBauAIir5MIkMW+i84RhKrJnA9x9El76liBeQpV8mwObjdww/FnEtACPyx
	kNVC0bSXuY9vqAMtcYZrl8cq3CquTrnWFaNu0QBQZ8J5/HvdbnJFHMr5mAxj1qx4
	z8bglH1o74t2ivY0AWoFRT4NY0ugsA1a5pVbSxnJnTb8jZ31MfIjC8HS890GsN0C
	Kg==
Received: (qmail 3545290 invoked from network); 4 Oct 2024 21:57:10 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 4 Oct 2024 21:57:10 +0200
X-UD-Smtp-Session: l3s3148p1@/UKCE6wjfMtQvCeD
Date: Fri, 4 Oct 2024 21:57:07 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: dma: rz-dmac: Document RZ/A1H SoC
Message-ID: <ZwBIk0DZ6on8eEIm@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org
References: <20241001124310.2336-1-wsa+renesas@sang-engineering.com>
 <20241001124310.2336-3-wsa+renesas@sang-engineering.com>
 <qifp4hpndfhe6jlmzjmngr7uolfzvj663donhjg5x7kmeb4ey3@a2a66w5l35zf>
 <ZvzqPkUPmurHf-fu@ninjato>
 <CAMuHMdXzCYBn+MPz-tdcP7wJRkdQspU0ZmszMv4Uj7VWpTYR4A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="O8B4C+fNCDZcsqip"
Content-Disposition: inline
In-Reply-To: <CAMuHMdXzCYBn+MPz-tdcP7wJRkdQspU0ZmszMv4Uj7VWpTYR4A@mail.gmail.com>


--O8B4C+fNCDZcsqip
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> According to the documentation, there is no bit in a Standby Control
> Register to control the DMAC clock.  The driver doesn't care about the
> clock or its rate, so you can use P0 if you want.

Would you prefer using 'p0' or leaving this patch as is?


--O8B4C+fNCDZcsqip
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmcASJMACgkQFA3kzBSg
KbZqRBAAgQfnCN9Vc93RrFEElQ254cl843BNIUVN5ZFFPLiKIaLRYs6Ff+S6EN5J
8iZj+0kXsDikQec8WsqYrMInRZ1RMMpzApWDmPH6S30P83C79yaAzi8zaykh3e7f
M0/IFuY3MCFIBLl6DWfG2C2UQ07PAvohbbcMkEtlK0kzwUscMFrJgWuCbZAxsZTV
wXWuEsZWKauT6hW2NLOAY9a9RZANzi7/z53WXA5dUuO2Dzhw8FDBKXrbvxbUQW9H
yEovhSmyJ8/Kh/Urgicr0ptiBRKDW+nwn9ZcFdbb/NhS3U+ywFx11dsD/fgTNLqf
r3yHQ5XuTHmBlmJ2E5TyQ6uisKbM30ZQZUFXONFMS+XY+MohaEwLu8Ax/APxg3aT
8gyIeUh887wW7nPMRd4XyWoORnROAHREd0oFSxgXHMGWuJV8dehwDwslqExdXd2k
5LXbp7eiqw4As5opmJh7EUQnH0TBwAxmXxRHwCJ8Rt+Zyesj8XvnAnDdQT/Ibo2F
r1Dzb7J/6SWSOH7sIRPzu0uon8amdaZCOVI0CHH87igYYBmhDTirRg1cAYrBjGVP
mzpG1cvHXZaC8Iw/SY4gqnzjeNaIZ0BK3N5L3bnAc/QaGDYt73CeALTdvk6GA/bA
VdiQu7tubYyCpYwmjan5TYg7Jy6DUjAooc27Cb/FRxNqHd/ZPJQ=
=K+fC
-----END PGP SIGNATURE-----

--O8B4C+fNCDZcsqip--

