Return-Path: <devicetree+bounces-42012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 870E38561D3
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 12:38:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B9C6A1C231EE
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 11:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6224C12D77E;
	Thu, 15 Feb 2024 11:34:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1C8127B41
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 11:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707996877; cv=none; b=uXaqITvaKi8VuvbgZR/CQvvt1lQrggWGuX9tJx7Aqme2UNQijrhArl6rhrKVPtsI6UBlsOaOThlBdXpxEkkgQ8WVQOq8mTSw4OZuKJggsoafZtOOR7SLMt3Z4WYCwbEv2TFRGEh/rZ3oGI2Pm1Y+ZfohvMw+eljIvNiE4WULNKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707996877; c=relaxed/simple;
	bh=9eh13hpys/9bo+J50FfvsCv5nRULUp3KBcvLUzt7E/s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hdY7gFczdUk3ki2HhUzcYjRJ1dw2RklPj3sYgFi3n98pLvyRW3yDk7rRPSDMt32XkemCUGYHeCULdDyRKjvhbprPdTwEhVNDJp8W+Vk7Ie574C1c1DY3sP52N2rprJYHQNdHQi+FoH8/ESuY22nLI24+fv+pjtTuy4/OLOyledM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1raa0W-0006Oi-9q; Thu, 15 Feb 2024 12:34:24 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1raa0V-000sFI-FZ; Thu, 15 Feb 2024 12:34:23 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1raa0V-005JyK-1D;
	Thu, 15 Feb 2024 12:34:23 +0100
Date: Thu, 15 Feb 2024 12:34:23 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, John Crispin <john@phrozen.org>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH V2 1/2] dt-bindings: pwm: mediatek,mt2712: add compatible
 for MT7988
Message-ID: <ive5ueu7oq4hdfzxjevalssaotfmq2jb47zxanwbscxdaldum2@3bpqogbuhbjs>
References: <20240214140454.6438-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="75b4mriap2dmrhji"
Content-Disposition: inline
In-Reply-To: <20240214140454.6438-1-zajec5@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--75b4mriap2dmrhji
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed, Feb 14, 2024 at 03:04:53PM +0100, Rafa=C5=82 Mi=C5=82ecki wrote:
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> MT7988 has on-SoC controller that can control up to 8 PWM interfaces. It
> differs from blocks on other SoCs (amount of PWMs & registers) so it
> needs its own compatible string.
>=20
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> ---
> V2: Explain new compatibility string reason in commit body
>=20
>  Documentation/devicetree/bindings/pwm/mediatek,mt2712-pwm.yaml | 1 +
>  1 file changed, 1 insertion(+)

Applied both patches to
https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git pwm/for-=
next

Best regards and thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig         =
   |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--75b4mriap2dmrhji
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXN9rgACgkQj4D7WH0S
/k78SQgAhCV+r9LL9m8V3LBBqRSGqQoucfaii47kWo/cOi+uyoYCscPQQqP+1amS
Nx8xPfxWcgPdrCoDuTIbBIgXcxaO33UqAhkVRQp+Hq9+u9ybN25CivUMQboc95gO
3dzq6TTAjeXI44ydVhrVWwkMiYT4dpHGXkbNgKljSip6VPVZGNNccTVpxVA8ej5D
3tAXnIjt7bPcowTywTq/EJL6xp1DdMpDkxVltcYG2jIL8oYy8FnfTsR2jnq6hPYX
9RM9T32SoNZ+7aY+xGkG8p74AhZRPT2ctQeCwbRkHJNh1dYzlsVQqI+ZZgxCvyGL
OJuORiHGhavkt84HtDj/x53M7jbMHw==
=I2g8
-----END PGP SIGNATURE-----

--75b4mriap2dmrhji--

