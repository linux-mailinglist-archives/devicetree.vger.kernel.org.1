Return-Path: <devicetree+bounces-65425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACA28BE507
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 16:01:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 192991F2168D
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 14:01:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8202515F301;
	Tue,  7 May 2024 14:01:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6486C15E205
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 14:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715090475; cv=none; b=KXY667erBrfmt7sE+uM/aEzS53XOI9J8jhABNGBqOsAAoKws6aOKZxlS+0f5+m8JPq0pdWz6xN7E86H43WVtWBvcYFZPFrO20Lw/E/kn/FXLBZRwWzRt+Hro9Uv+MUpH4EKKr+pQXz88v2NYtSMzeWOLRQfp6muZs34uTEyNXBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715090475; c=relaxed/simple;
	bh=7IlKOOxlhW34Ko+Asv2bXHnmfReSlXBGH5/tJfCEAYw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mmEy5OebAAjLEboA8gaXFeyJcHd1sq+Kf0sAl4rQlja3jMtf2OXJJVlx+WdU0P/y1I7ERmSXYe8JDODpG46AG7uZQaYOs6Rd+1QID6eS8FqRrFSLYL/yhfLwpZJoTub9RTigkiBcK12kquQoTVsP3tAElyL622Mf1tMSRRNZ/T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1s4LND-0004CF-Ve; Tue, 07 May 2024 16:00:51 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1s4LNB-0006Yi-GI; Tue, 07 May 2024 16:00:49 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1s4LNB-00HPQd-1L;
	Tue, 07 May 2024 16:00:49 +0200
Date: Tue, 7 May 2024 16:00:49 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, 
	Huacai Chen <chenhuacai@loongson.cn>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>, 
	loongson-kernel@lists.loongnix.cn, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pwm: renesas,tpu: Do not require pwm-cells
 twice
Message-ID: <3hcuqo3pv6iaad4mmadjs2bz2qajivp3schrwhprvm5pjmd4o5@aytiyoyd2jbu>
References: <c0590d8898e553f29c96c7c4083f7b3ca1915727.1715050962.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ul7mgjrvuwrirqyd"
Content-Disposition: inline
In-Reply-To: <c0590d8898e553f29c96c7c4083f7b3ca1915727.1715050962.git.zhoubinbin@loongson.cn>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--ul7mgjrvuwrirqyd
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Tue, May 07, 2024 at 02:54:12PM +0800, Binbin Zhou wrote:
> pwm-cells property is already required by pwm.yaml schema.
>=20
> Suggested-by: Uwe Kleine-K=F6nig <ukleinek@kernel.org>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>

Applied to
https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git pwm/for-=
next
=2E Thanks!

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ul7mgjrvuwrirqyd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmY6NBAACgkQj4D7WH0S
/k7IDAf/UM9UZ0jj9GgNg/NesLlr1xViWGPBK3STaTwhC3/UI7OLSaBZwAp92EpK
kMf/wyuSZyNDW75caUfKloCdgETRSnEWnXqhN14gCTkESaEPOm92lAa8yQdvS4hv
oLSYJJYoOEtrxIURULLpXaNI2u4KUbFge3NCEcFYxk0eYq745KL1hVj9yk/L5Bsz
IOePc47ShdtC/+t9Vug+WBHozLBWdOM2RDjvdTgp2cIW3bwVIcc00v5slbYB7xBi
dO2w4vixuJqq4/jsleEYhv9/KLw7WOTsF2UOhNhPM4DGcgcKtNIZJ0PQ4L1UPo4X
fX6Oonsptwe7nLCdUxStvBuPgm4kEQ==
=S5q4
-----END PGP SIGNATURE-----

--ul7mgjrvuwrirqyd--

