Return-Path: <devicetree+bounces-47868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A9C86EFFA
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 11:05:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 046A21C21550
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 10:05:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E9ED134DE;
	Sat,  2 Mar 2024 10:05:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52751426D
	for <devicetree@vger.kernel.org>; Sat,  2 Mar 2024 10:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709373902; cv=none; b=iJwIWRSQVvwQFCG77ABL0FMVb6ZlMhXyry9kN3jsHiOStawFTkIHK8Hot3aYUA3v8O5AJbU/TYSEspJDTxWAThO4+Hvkw8ZbcLP49li440k2nc0QcI+qEXCNLWOZ1mTRmg3V5jX5KpJbKuQywZ+xvcCTh2ox2vSiHdj2px1pzeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709373902; c=relaxed/simple;
	bh=aDB9dfxyhbZHvIbbTL7Fj8Qnie2r3ZpNJXX3OOO4Vgc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DXDgyrdG8nc5c1uI8OF8457MDu6JwhGQr543S0tYRpd+bRTN1v9XvbhXOFf/MYJQbGAqxkRWdS1nlCpkFmrC7SwIKsOebOT4SOzl44EHufBoPSFdGLUiSExnn4/h+AoISO+/JVHtAy/M9wH6qQxpErxNsPdZSgagfSROFsjqWaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rgMEc-0004Fj-0z; Sat, 02 Mar 2024 11:04:50 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rgMEb-003wqT-29; Sat, 02 Mar 2024 11:04:49 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rgMEa-00FL58-39;
	Sat, 02 Mar 2024 11:04:48 +0100
Date: Sat, 2 Mar 2024 11:04:45 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org, 
	JunYi Zhao <junyi.zhao@amlogic.com>
Subject: Re: [PATCH v5 0/5] pwm: meson: dt-bindings fixup
Message-ID: <b6jyherdfnehu3xrg6ulkxlcfknfej6ali2om27d7rjmwncwxz@3wrtx6sv4xm7>
References: <20240221151154.26452-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h3wvrlu5hxba7ods"
Content-Disposition: inline
In-Reply-To: <20240221151154.26452-1-jbrunet@baylibre.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--h3wvrlu5hxba7ods
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Jerome,

On Wed, Feb 21, 2024 at 04:11:46PM +0100, Jerome Brunet wrote:
> Jerome Brunet (5):
>   dt-bindings: pwm: amlogic: fix s4 bindings
>   dt-bindings: pwm: amlogic: Add a new binding for meson8 pwm types
>   pwm: meson: generalize 4 inputs clock on meson8 pwm type
>   pwm: meson: don't carry internal clock elements around
>   pwm: meson: add generic compatible for meson8 to sm1

I applied patches #1 to #3. This doesn't mean #4 and #5 are bad, just
that I need some more time for review.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--h3wvrlu5hxba7ods
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXi+bwACgkQj4D7WH0S
/k5xXAf+ORcgnudezS1elCoc+vcwfRBfd+L8tYNpbx4BuKMVtVxaKQ/9sEV6m73x
SJoD5+nOJsFAI0gJFeW1z0Mo2W9/AJly67xPNuwxg3MSwq0aDL+birkC1rKJX2GK
eJ+6ax+MN8b1X85tHb9Z/Mzm1daUkiK5ReNRKKHXlm9yKsQHDMvDbqCS0K2DXATq
iTU86vIjL+EB2dQFsTN/zbwY7GQU01MIa3veJsulPgZb9OJzM8njirll/61q2r+x
Dx4pIsBpOpOEzAy1UytunBrntj6N2iUZz8tlX7nx+HEcfjii2ySHGKuY01tWJbIR
7ffCqSAtvn3ghzC+5yIFk4EYjX66MA==
=IVa9
-----END PGP SIGNATURE-----

--h3wvrlu5hxba7ods--

