Return-Path: <devicetree+bounces-255662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1A0D255C2
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:31:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 40E733003B3B
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:27:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8917F3A63F3;
	Thu, 15 Jan 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnQBs7w0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665A1350A09;
	Thu, 15 Jan 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768490853; cv=none; b=OJPcuTMfdwezICgL1nP4dw84mVdU3qpnau66HgnyC/+9y36OEZeJPnQQJ6Rs5REkcnhgXN/y3c3C54S9waoDViXfuaxVkrtUdYpa3mbXU5S/9AVv2JTXIAfU6BC+2hQ+bbligzsBvt+aIEy1BFmFWr9xdzNcYo/Xa9Hp+Mhhj9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768490853; c=relaxed/simple;
	bh=Wur3o2dVRvtFukmxpf5IOeXOF/T53+5j3g9hFxdzOMc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BI/8ALCCDmDQuS60M49yMmiT9BYCihV87/vLmaP9rTLlwzD/RN4ldIbYC1UWCuWXf6kfPeGR46XBJj/IGnjFPCJxjanseljEilI+QbGDbYdCu1znIRupmE2zeOWUN6K7BmbF8ZlgCc/RT9fcZfU6dsTb/i6HlaksBP4rVuDqB18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnQBs7w0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60E63C116D0;
	Thu, 15 Jan 2026 15:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768490853;
	bh=Wur3o2dVRvtFukmxpf5IOeXOF/T53+5j3g9hFxdzOMc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GnQBs7w0yy1tfgRWifeXHjbgqvLHnNGjgss9K4gkC1/N2HxiDMCtSAdga3AbVWDjK
	 TqD2UsvpeMV9CTbWb3Gt2k5ynuwgpOAW8PJQ7S7tS5v/A5kBvkP19yvB5bW2GZGdqT
	 xPpfGKO26CotbeFDWrFPmtvxAGB9fHOw8YWZQP9ba7H4S9rVdkFXBb+luKqbVqPJlu
	 IwQNsAsWhbcebpD+9OwB+MCrWlcq53c0Uqx9Z7tSvJeRrJmPiUbYSamLJe3TD0XHWJ
	 4N/36aXzWGxNKTegsb+7Lk05obpB4LA3C/m9GAOullsN7XLt2KtF8ZNEyBNEh1bj6t
	 hSeNcvG1Rv1CA==
Date: Thu, 15 Jan 2026 15:27:28 +0000
From: Conor Dooley <conor@kernel.org>
To: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org,
	krzk+dt@kernel.org, pjw@kernel.org, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, cyy@cyyself.name,
	dlemoal@kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	gaohan@iscas.ac.cn
Subject: Re: [PATCH v3 1/2] dt-bindings: riscv: canaan: add 100ask K230
 boards compatible strings
Message-ID: <20260115-vending-statistic-9db5bd1829ec@spud>
References: <20260115060801.16819-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20260115060801.16819-2-jiayu.riscv@isrc.iscas.ac.cn>
 <20260115-muscular-oxpecker-of-typhoon-bbe46f@quoll>
 <aWjTl2g11WNc3gvT@duge-virtual-machine>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RHQdXFgtwHzoIDTw"
Content-Disposition: inline
In-Reply-To: <aWjTl2g11WNc3gvT@duge-virtual-machine>


--RHQdXFgtwHzoIDTw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 15, 2026 at 07:46:31PM +0800, Jiayu Du wrote:
> On Thu, Jan 15, 2026 at 10:30:35AM +0100, Krzysztof Kozlowski wrote:
> > On Thu, Jan 15, 2026 at 02:08:00PM +0800, Jiayu Du wrote:
> > > K230 CANMV DSHANPI is a development board produced by 100ASK.
> > >=20
> > > Add compatible string for the board and its SoM.
> > >=20
> > > Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
> > > ---
> > >
> >=20
> > <form letter>
> > This is a friendly reminder during the review process.
> >=20
> > It looks like you received a tag and forgot to add it.
>=20
> I will add the Acked-by/Reviewed-by/Tested-by tags in v4 version.

I'll go fetch them, unless you have to send a v4 for some other reason.

--RHQdXFgtwHzoIDTw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaWkHXwAKCRB4tDGHoIJi
0nwbAQDzZ9FYbCw+oGQhoDJsBx3HzcV8KP6JDAv8qXYPFQtNHgEAmqYI/+pPMizU
R2g7nz5SHM2GTQ9uzmXTiSXshrHz9Q8=
=YSPA
-----END PGP SIGNATURE-----

--RHQdXFgtwHzoIDTw--

