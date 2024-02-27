Return-Path: <devicetree+bounces-46556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CB186A140
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 21:58:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F5712892AE
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 20:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B57E014EFDA;
	Tue, 27 Feb 2024 20:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="ezUif7nr"
X-Original-To: devicetree@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60F514EFCE
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 20:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709067499; cv=none; b=LW+fHy4MyAVmjhr1Hb9Khqivq38zilTZruNt7QNck0yooFlbewuq+MVnKT2bMgL+frl+HsM4E2Vi9Fv5G/CT+kXXaUA2yIc+RTP5ieujKck3TwHnXz8E+/gUzK9NSG1ThgxCE4sUgkBnSc16w1E6e+4+BYh5ROFMcYPJ99N7PVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709067499; c=relaxed/simple;
	bh=wEyc8hy3GeD8M7foYCW5XbcoeR4NeRBMs/7+mvduta0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eBMw63+UNtagzYm66oN6BRb4r0LyQGaal5mZRQlRz4gmE+evTBmS5B7k+OHWUCV6SDy2VDuXEX1qfXZxW1LlbBcsrUbHoVqDVWN7f9Gey4ZrrZ7XURFjjxK1BK1HI/A81Z5f1dywE13KeK13gZ6DnnrZfq8G1e1jKbD+pw4bMpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=ezUif7nr; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description;
	bh=wEU5rVkfjleE/mFxvwrw/5PEDyfdy/zwTS4aBk45aFI=; b=ezUif7nr3ajA//b4LThr+2xHYi
	Ll2YWY47UV7SlGhWOZ4+bClZ41lATprU5RQa6JEUvzgFnCxKhM7hlRZ4lYfpdabtXxWL1VTeoQEjm
	JSErYkLm1H5KCeYfxaKX3rKNJNvhj9J6YNK4l2jM8enEYQpJVXhPDkFZnXovoa94M5JuiMMBGCtQj
	sLsdvxDb87d5+nkXoxkiI4Z8a6Kyl2E03tVWVY0dMDTpCD0oTC6FaendnFbzfNJ5QLbdEjfYtCjBV
	XBL2BI0QkgIoIxnIsIMxpbL0zLDB8/49F/VfpV6dcpcOCBcV1eNgd2Aat2hThv2o02JiPxWUGi1Dc
	rJ1pYTKw==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rf4Wf-0069v5-SW; Tue, 27 Feb 2024 20:58:09 +0000
Date: Tue, 27 Feb 2024 21:58:05 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add missing interrupt-names
 for rk356x vdpu
Message-ID: <mj2tg5kmiljp4x46ad7esbu54lvrzw44xghbxexumltrybib3x@p3nnbjf5bslj>
References: <20240227173526.710056-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6rmsipfrgvitafoe"
Content-Disposition: inline
In-Reply-To: <20240227173526.710056-1-heiko@sntech.de>


--6rmsipfrgvitafoe
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 27, 2024 at 06:35:25PM +0100, Heiko Stuebner wrote:
> The video-codec@fdea0400 was missing the interrupt-names property that is
> part of the binding. Add it.
>=20
> Fixes: 944be6fba401 ("arm64: dts: rockchip: Add VPU support for RK3568/RK=
3566")
> Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

This fixes one of the two warnings I get for a newly created dts using
rk356x.dtsi that doesn't mention &vpu at all.

Acked-by: Uwe Kleine-K=F6nig <ukleinek@debian.org>

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--6rmsipfrgvitafoe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXeTNkACgkQj4D7WH0S
/k4k/Af+PGT9y4lSo0hTaAMdIoo72VPL2Fs9EAVP1ip8XDW9LYkwBYO0QoGa7A41
z93iKaX13HDE0ra37n+ItbrLvAgqbUPd1psDez/UWMv0FeAbZbOfaFQkZBIXQFsy
FnrIPwlpRFKdWts7wvuuldDSAYuUH6bgA/6g4EDOufpioZN6D3JS6KBf3BsSfqym
F9dQLoSnYq6i39hTJusrJCYVrjK70UYoQRyU00qRh4vMbGIa5s8LtqxyzDbT81a5
liJHU6HCXrNEYgFfn0Wl0pLlvcXJHze2XbOxc+JQMij99NrY3szrRfW+QtyyL68R
vgaZ2Sh0GK0UFMBTJJM9ZTvX5IgJ+g==
=kU4u
-----END PGP SIGNATURE-----

--6rmsipfrgvitafoe--

