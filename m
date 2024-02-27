Return-Path: <devicetree+bounces-46557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF9586A143
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 21:59:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 776F8283427
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 20:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12C2A14DFFD;
	Tue, 27 Feb 2024 20:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="rkYMlBnV"
X-Original-To: devicetree@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BD713AA36
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 20:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709067572; cv=none; b=ipzyqUT6m7D/3gXT9ZAZs6T+jbhk+BGyRRKu6HgebG+rnX1nS2hxy5Xmkdly/Tr/lHlFM4iFNsrdBN/ztTxa75GaL0rRDkFr0tPnbxFKyo7jSwHW5k5GjEnOCgrPkP6AHm4BZBRBrPY/i+Z0lb/vJVTHMXRKTLG1NP4WM/U/RdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709067572; c=relaxed/simple;
	bh=uUUPk10lNRbEO43Gy0TZbcYGi7N5ORjtYCQpDAwsZZ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jwOCw5iogLwSk3FWXqQz+mvZI2q+kkQn6cGR3cM/LrqeAsUTQhjX1z9caAV0rcRpBSnISnwMrbdgK9e6SqsQlNUY5xVZug5EnYT4UopP//mZgrtFf3EolZXs33jaHuVXDrm4ZGvK+B6VkdDRqtijIa8wM8HXf3vZzXpX431ZiP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=rkYMlBnV; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description;
	bh=OCs5N6D7D7Rdu9T/KxzG77zIGsHDWjUku7rZz5lfEJI=; b=rkYMlBnVdvV7klN/cO5T7eZrgI
	sW53wuFuG+11Rt8aTZ2r6z8KocBVo1EW+WHmYWXrqJFrCT1soB2N8RJglomGIS1CY49AtcYYhZmt1
	zmEpCsI6g3Jkm/5hpDhbUYv2Vc9anJP+Mw3Zm149NCNEM0h1D4YOXczf48QnXx7CxlEW8JZv6CZAQ
	zck/PU0Xn5hZTE6P0Abwmm270us1rfQ3bkFjvBShJhJpEXV5v+uWmSGZB7QMmQWeFFyhol1z38ql0
	mwwHBkLmu5BCdcllhUsyDb7CB6niu9VptHhJ/FoMjuqiPgMAVZWFq4K0645dK/Gr03krr0A9XrdRY
	EXWAl+6w==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rf4Xw-006A39-4K; Tue, 27 Feb 2024 20:59:28 +0000
Date: Tue, 27 Feb 2024 21:59:26 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix reset-names for rk356x
 i2s2 controller
Message-ID: <nqazhaf66cqlqjbtfrrzl52cxv7x3roqq4no77qugmelqdy4an@eunkjccrszja>
References: <20240227173526.710056-1-heiko@sntech.de>
 <20240227173526.710056-2-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nd5amq5g3wi33x72"
Content-Disposition: inline
In-Reply-To: <20240227173526.710056-2-heiko@sntech.de>


--nd5amq5g3wi33x72
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 27, 2024 at 06:35:26PM +0100, Heiko Stuebner wrote:
> The dtbscheck reports a warning for a wrong reset-names property for
> the i2s2 controller on rk356x socs.
>=20
> The other controllers on the soc provide tx and rx directions and hence
> two resets and separate clocks for each direction, while i2s2 only
> provides one reset. This was so far named just "m" which isn't part of
> the binding.
>=20
> The clock-names the controller uses all end in "tx", so use the matching
> "tx-m" reset-name for the i2s controller.
>=20
> Fixes: 755f37010f3e ("arm64: dts: rockchip: RK356x: Add I2S2 device node")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

This fixes the other one of the two warnings I get for a newly created
dts using rk356x.dtsi that doesn't mention &i2s2_2ch at all.

Acked-by: Uwe Kleine-K=F6nig <ukleinek@debian.org>

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--nd5amq5g3wi33x72
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXeTS0ACgkQj4D7WH0S
/k4QKwf9GW7NGzNsM29R1Mf+yr5TPp4ChLxn/UNr0LqmupvnyoyWQh6FyBwL2fzs
mz7fFxTSvSYcT9rBoMxt/26y3TpJZzI5w9fEisQjuh9lpYhZ6gyGuEFyWrIi1BYC
w1cdNwFpAtp1oBYmU9rVlCwd0xTwZ6XkTU/QbOCoj/fC4+AW3hfITvvpqlUQ01Cf
tpTm/pshlHI+s887pnXpwpnByHBZ6ZtYydMkdcLrS6hSmIq8oKIeog7GAaCeE7lj
HJjiHD7VHZ5t9YEINSUqZ7G6RchrxX7cj1Du6B224sJO3RxEfSqcLmEGfUl/0WrJ
YXzppLrzXjms01s/LGmB7SCmwJQ5bA==
=/icJ
-----END PGP SIGNATURE-----

--nd5amq5g3wi33x72--

