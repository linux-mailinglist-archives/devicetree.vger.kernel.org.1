Return-Path: <devicetree+bounces-108887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CC39942DD
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:54:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 11978B203B7
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 08:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922C01E22F0;
	Tue,  8 Oct 2024 08:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="WhE/G/Db"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F241E2013
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 08:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728376495; cv=none; b=BZy2Zi38clC0JqKl7cwW0kkRfTXkxYA9/dzBLj7DxarfdRwXHz8KouhUkb3ob9TC5zUFoggouILy6im20ehU4MdT0NhYkzvIN25iq1494UugEQkPJPESUkrcwOmf3TEsMc4rxeF16hiob0FeO1QBWILRrAvWUyYlSkhep8uIF7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728376495; c=relaxed/simple;
	bh=yi4Ed56vIcvtnLM7JqyGr/ImxZkDc5h+XhLmAzx4MIw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EJIg5zjd931vezWjVLxcmryD3cCODmygvGQHXdULZqDelErIg2khJjWy1+VItTHtiSWJ27P03RPQ6V166MsS33u0ANZLtlL0cJGDdS9s8nJ0e6PgFCBm9q0mQ3rO1SbkGDrj0YXfDoEJzIxwiDEblGGZwS/bzWJI9a+Q5WWkZAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=WhE/G/Db; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=yi4E
	d56vIcvtnLM7JqyGr/ImxZkDc5h+XhLmAzx4MIw=; b=WhE/G/DbgeUftYkCEnQi
	TKiNmL4O8mJXVZGvVaiuxr2/Uuf+VnqQxjkFrl83lLwFQxOgpMaPVihqQQP9EnjQ
	dIvEhlY3XzytQGlC7HUjB+rJPNUUaVNqNEAFMmu3RCbIHBGS/aJikbNqKuoYncTa
	HWKmjBS7QXILHji8waVqo4Gfameve/bjUR8OZjfJ61xt5qQilme9R9mntWnpmVE6
	vI/DbcOiNyMYzTxRGso7HQtTPALxrXPSxb0LKFjJIGSMhdCJ3OEBcf6SjBEfzx0q
	xleKrYav5uunbP1dwomEPHueCWbUnYk2Hq3ZkmDA5X/S0ZeqJIqe1B8hi3Maegtt
	FQ==
Received: (qmail 402745 invoked from network); 8 Oct 2024 10:34:50 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 8 Oct 2024 10:34:50 +0200
X-UD-Smtp-Session: l3s3148p1@1sW4AvMjXyttKPHJ
Date: Tue, 8 Oct 2024 10:34:49 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wolfram Sang <wsa@kernel.org>, Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>, chrome-platform@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>, Jiri Kosina <jikos@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-i2c@vger.kernel.org, Andi Shyti <andi.shyti@kernel.org>
Subject: Re: [PATCH v8 3/8] i2c: core: Remove extra space in Makefile
Message-ID: <ZwTuqX301BqAltze@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Chen-Yu Tsai <wenst@chromium.org>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wolfram Sang <wsa@kernel.org>, Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>, chrome-platform@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>, Jiri Kosina <jikos@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-i2c@vger.kernel.org, Andi Shyti <andi.shyti@kernel.org>
References: <20241008073430.3992087-1-wenst@chromium.org>
 <20241008073430.3992087-4-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gFj6OJQYOOPFj8BE"
Content-Disposition: inline
In-Reply-To: <20241008073430.3992087-4-wenst@chromium.org>


--gFj6OJQYOOPFj8BE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 08, 2024 at 03:34:22PM +0800, Chen-Yu Tsai wrote:
> Some lines in the Makefile have a space before tabs. Remove those.
>=20
> Reported-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Closes: https://lore.kernel.org/all/ZsdE0PxKnGRjzChl@smile.fi.intel.com/
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

Applied to for-next, so you don't need to carry this patch anymore.
Thanks!


--gFj6OJQYOOPFj8BE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmcE7qkACgkQFA3kzBSg
KbYVTBAAnj3lYy0aHno8B+L4r4eegNvIoB88vkx4UB6TEssgEW4AB2kf+uAlTXfW
2cFXhFaPicKEc/DDqmhTTW430UIG27jxpQD6BC1tyapPQ6dChS9t6gCcElhWNTvb
sjCDblb1zor2vGYN+2f+BJPlaFDO20ZnMi9sbP5mlkkEEsTgJIwr2+DFmpWuMY5w
NCUbXbtEkPUBn5u49YJH0RgVsBW1hsiezALs1AxEQ26G7/cXVm6u6IvH7zbgnWE9
0DZKs3DdDxO9mV+ilW43Rm/Lx3s9n5Yy1aOZnkWVX0ddLfZZMR4iKbU5By4w+2uM
5i5uGSIialjycmGSthXpTNawcJfB89rClHpaKYsZCuursUxf5EQtc2MYDOud/bZN
rDz47+boX/yUhMV4FnlVsh+rfJaq5WmcbEd33ICh6CT/fc7T8uKIHF+vIsToTg+s
nx4IqNZ4VJc/6B/er9RLADWJKL2BrKYluECw6jlX1yZHWEka+UvVPlSQmcRxPt7N
fla7gKTB1jZj6vhS1GW5mtSJbQByt+AUbt1dtu9rWFvpsR/gda2MEqbzp62nAV8b
gy4teVjjlJAqKZ5zeQs7MDDszKlCXgv3k1YxsKBSOj6R7/WytM1TpO46BKUCXSZv
//MT9B3Mt7LFR+wFkv+5F4mazO1jkhGdS7wjUz9nk0QGqetl7HM=
=Xawz
-----END PGP SIGNATURE-----

--gFj6OJQYOOPFj8BE--

