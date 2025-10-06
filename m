Return-Path: <devicetree+bounces-223743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 64451BBD295
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 08:50:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 62D214E8412
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 06:49:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D39E1C84A2;
	Mon,  6 Oct 2025 06:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="mDeUBdhN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A83A44C63
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 06:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759733374; cv=none; b=Bej4TRwGOI7wz0tqx3PvmL05mAT8rPiR2LzfuMGtyaPKS98RKIRCF51AgwyllKsImgXOU0mZRB5GyR91bOLbzAGb2hd/eFUbL7/8v75CSqFJSTdgN12Jt4mXnH/TQpDHit5texg+n7iBso8PNAhu0nJmPu6Naea2wgAJaE3QbaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759733374; c=relaxed/simple;
	bh=UD9+l3lexeHE3sYTnyxT32DkXnbyIcfCyCN8ORVc8O0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sEqqErCBMbK2+MUTnI5uCuTNlGG9ro+aJPNSJGH2CrMxv6KhWroP3xvubST02nrzNcriZnvH1kITRydcNAeXWfZqgaxqs7OrigvswWTw4/aR0PKOggej3ocQ+1HYGanZrPDW+7y/+h2IXizw2Qx6VpKIDDeDnpeNsd+DHGoIO8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=mDeUBdhN; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=UD9+
	l3lexeHE3sYTnyxT32DkXnbyIcfCyCN8ORVc8O0=; b=mDeUBdhNUWOedNXAeMJo
	L6dXZl62rGlqX401wTIfhlrMEhJaM93TPmgmU/Nvlbe6/OZ/EuB+60Uy0OFoAdcZ
	tlqAWmIitJxJG8Q6Jr/2ajPo0daL2fF1uPnJpbmCg/Q2x/3uThcP4MO11xK3rscJ
	FyC/syTj+s5ocx+VSL7UEtDlAYFYU8BmFUN3PWtkgWlwav+boCmMGj5vuI8vpjs3
	IXhttpj8o7hGtY73UeYzoUOrJQlFl10i7flwGEtKLHkjHxM1bELjoH4sXuYxDhp+
	6pWDsgmJz6Qk2Ubo6AFTy+Crl7Wmyvhc9PQPCPKT25qjbF/UcQ+X+m+1Kx5BRRlJ
	BA==
Received: (qmail 1657009 invoked from network); 6 Oct 2025 08:49:29 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 6 Oct 2025 08:49:29 +0200
X-UD-Smtp-Session: l3s3148p1@TflY2ndAUJogAwDPXwQHAL/S9V79e5yL
Date: Mon, 6 Oct 2025 08:49:28 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: renesas: koelsch: Update ADV7180 binding
Message-ID: <aONmeDgUPCn8rphM@shikoro>
References: <20251003215318.39757-1-niklas.soderlund+renesas@ragnatech.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aF++8kkfd6bQVejt"
Content-Disposition: inline
In-Reply-To: <20251003215318.39757-1-niklas.soderlund+renesas@ragnatech.se>


--aF++8kkfd6bQVejt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 03, 2025 at 11:53:18PM +0200, Niklas S=C3=B6derlund wrote:
> Use the more modern adi,adv7180cp compatible for the CVBS input found on
> R-Car Gen2 Koelsch boards. This aligns the bindings with the other Gen2
> board with the same setup Gose.
>=20
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>

I think this could be added?

Suggested-by: Geert Uytterhoeven <geert+renesas@glider.be>


--aF++8kkfd6bQVejt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmjjZngACgkQFA3kzBSg
Kbag0xAAgAYw42wyxdWxDok6Owp/1VrF1IdUU6iCqGwW9gKeIYr7DQHuOL84TikZ
IMDGkpWb3SoEn0aCnJ7uf0T6B0fas2UuUQ6ScYyIbfKediPdrR4SaQshQqhjwqty
so7auMVh0u8AlwE7TZ0GPE0I48Gt3TT+dDH+MNRxshq8UN47aJ2a5gC24SPNLmqb
xc9r/wpIvf/CCsYFV7IdmhuixdbNDb6mVZaJ+yvbHBM3VMorPDO+KeAuHbX1whmq
RhtT5p5v7QB/LJY/eIxX7fivCFC1TzU/qkEhJvmcJFA43TdEwA6dF8daFn7YpmLc
kSmBctF7u/GpnnhclD4bJ+3WTZ1yqVRdV4dO6AEMKYdeUskzr7E434tZxT1/MTyc
j+vQoTRX9adkH+vROZeVcUXUuF7bnTvX2j/rd0yWKiUqpiUVWm9FMgmtgCI0Xhys
8pUw9W2nUjZEbc/7vkheJOirBhcKF3V+UAT+QxUNnXuYHOgHVPwRwznyD8QjjAJ4
70jDF0faDetyZnYUewl+xXAtqCdwdeeVgDwHAu/m47zP3/kehMMRK50RvzFtSqfa
Oq9GLhHk80xEJh51C4KfKHtEfMECH6C1iMW8KGUSKGhnpvO1K3JBA3OZIO27x8sX
wKzlA5TqizduY4jRGPBnDX9ZjZDQN6NhE3jvoSeOn5JuTMZ4Ql0=
=RhNe
-----END PGP SIGNATURE-----

--aF++8kkfd6bQVejt--

