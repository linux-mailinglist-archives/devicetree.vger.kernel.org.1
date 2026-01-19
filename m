Return-Path: <devicetree+bounces-257035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B5ED3B576
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:21:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA580301F257
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ADF032D0DC;
	Mon, 19 Jan 2026 18:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMy2tsBD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA1A32D0D0;
	Mon, 19 Jan 2026 18:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768846870; cv=none; b=curP4CJ1I/RKAWMd5z2tJjsgYQMkjC8lufGfixu7VLPvLbVH0mL5kq8L6QYUiG+febqtMPdlOxuf/ZknUBm0WOeqq6/PuHV9rM8wCmXC1TWyaXbihSowDB0SDCJVVIm1IzlsorTUyJyAFXf798S/gzcaL8fJU01I9VAWuanA+0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768846870; c=relaxed/simple;
	bh=u0I/1aicV2slNCT7hcGu/rFa259eUAuI9r5clWe49RM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eBZ+0Y5mem0Np0cStXMEw9Cv1QX6eRi7y4MA7wgiiZYqfk5xVokNUlIPMZl/aIQsi598gGapJDhFnynlQqZkboHKDuSqKxmQtAxX2YuqgXXEs2wrLWId/t+mqEHwWp3mEn/f8ig0Jkiu1+VcdHSkSlKeM6mMt8BCX2MEu9Vj92s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMy2tsBD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A83EC116C6;
	Mon, 19 Jan 2026 18:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768846870;
	bh=u0I/1aicV2slNCT7hcGu/rFa259eUAuI9r5clWe49RM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GMy2tsBDhGAJsNvySi2+8QIjlH/QpLph9hMXkLoxKwx+buyG4i9P5Rw423jPcqgc7
	 7ieZcbYtocYCMj88ovtnJsdEaUKahUF/bIcLV4mKArF627fqBqZ+qQ5xPlhXCYA5J2
	 4n9BrPWZTGqqVUTC1iBjeRfBPvxkkgDHFjtrVpT8QzvCy2ocdxY98f82wa5KBAgWk3
	 sMVcLVen0AUWLP08Mk7HNHlodQf43z9jJiigN6H8u8l92M59Nqeo6DwEAM2Db086PY
	 1RYhDravbz9mcr6pZOFGOJUyjXJrA9Md9WRSQnCwXOz17l+8H9W9o5B9Us2RJ+5CeO
	 zdy0Ku6TXZpHw==
Date: Mon, 19 Jan 2026 18:21:06 +0000
From: Conor Dooley <conor@kernel.org>
To: Junhui Liu <junhui.liu@pigmoral.tech>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] riscv: dts: canaan: add reset controller for K230
Message-ID: <20260119-canister-stress-4058f52358c8@spud>
References: <20260117-k230-reset-dt-v1-0-c8cbaef1e1ac@pigmoral.tech>
 <20260117-k230-reset-dt-v1-2-c8cbaef1e1ac@pigmoral.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YAw2dKpN8sVaPBjg"
Content-Disposition: inline
In-Reply-To: <20260117-k230-reset-dt-v1-2-c8cbaef1e1ac@pigmoral.tech>


--YAw2dKpN8sVaPBjg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 17, 2026 at 06:06:23PM +0800, Junhui Liu wrote:
> Add the reset controller node for the K230 SoC. Also add the reset
> properties for all UART nodes.
>=20
> Signed-off-by: Junhui Liu <junhui.liu@pigmoral.tech>

Applied to k230-basic, building up quite a bit on it now pending the
clock series being applied!

--YAw2dKpN8sVaPBjg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaW52EgAKCRB4tDGHoIJi
0onCAQDY+C9x4563Z8vuA30dUgCmbzJswS6UpsNj1WTEzNi0GQEAu5dHeiSEYTcm
ffweNFMUq8e48H2qyJxtA8rb0X7OwAs=
=clQU
-----END PGP SIGNATURE-----

--YAw2dKpN8sVaPBjg--

