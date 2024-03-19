Return-Path: <devicetree+bounces-51740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 02342880285
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:39:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9773AB21EA4
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 830BA7470;
	Tue, 19 Mar 2024 16:39:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDC11AACC
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710866342; cv=none; b=FDvGgRQoF+mzWvI/Xcc33lAGhYwN1Xuur/ak3IW6v90jwQyX6dpaduv/tJHaqh3AG1Ta46C8PStfwIL4HUtNP9/i46LEYM69QNtPZbPq2ZbvTzmIc/KRb12mlt07+POHbwQbuD5Dq48lw2ugToGjo8mQ/VlxLOpGyeaPwp7LV4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710866342; c=relaxed/simple;
	bh=gOtdMVFyUxOjX7VK78TUlEAvDfLjmRn3AgHX7DpQsDg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SuPcj3nKj8ZswrQ/15FfKnPkW5rPXiyZ+oHD1GLwrYr/kJ0hq+qAyMj2UwpIFlTPq5dp65vir6CDfBpjTxuXd+B42P6kKHgVvCtthegjff7wDNpEqb6yi3muyMv/VFX+PAnNqmCgACoPhWiZm+1uTgiBC2ITEAx+aZNVlQehngk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rmcUH-0005aE-D9; Tue, 19 Mar 2024 17:38:53 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rmcUG-007JGe-La; Tue, 19 Mar 2024 17:38:52 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rmcUG-008Tj5-1t;
	Tue, 19 Mar 2024 17:38:52 +0100
Date: Tue, 19 Mar 2024 17:38:52 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Dimitri Fedrau <dima.fedrau@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] pwm: mc33xs2410: add support for direct inputs
Message-ID: <dwd6idyv2dvfih57sdfnr6cxztrx6gv3pwuy6rdopjw2lv2z6y@in2sn56t3x5k>
References: <20240301111124.29283-1-dima.fedrau@gmail.com>
 <20240301111124.29283-4-dima.fedrau@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sshteucfry4z3ncl"
Content-Disposition: inline
In-Reply-To: <20240301111124.29283-4-dima.fedrau@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--sshteucfry4z3ncl
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Dimitri,

On Fri, Mar 01, 2024 at 12:11:24PM +0100, Dimitri Fedrau wrote:
> Add support for direct inputs, which are used to directly turn-on or
> turn-off the outputs. Direct inputs have the advantage over the SPI
> controlled outputs that they aren't limited to the frequency steps.
> Frequency resolution depends on the input signal, range is still
> from 0.5Hz to 2.048kHz.

I didn't make a big effort, but I fail to understand the concept here.
I'll delay giving more feedback till the next review round for this
driver. Maybe then the description is easier to grasp.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--sshteucfry4z3ncl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmX5v5sACgkQj4D7WH0S
/k61/Qf/earPR5mvVL8g/6x+RcAbaGizt7zmAhC5GqPYU+feD/35KUY7mDs+3dZ9
2NhfAtkGBBXKGAbTlCftBSAq45tkCUtTZlIM0etBVKIVij0rsFkC/gN4pFxaVdSX
nX086aiHC9JVaUgJA4JkPlif6XhRUn6UTo/R6bPzEzK1cE4WWk0wlAX1SXHcyoiI
8POTK231Vdmgw1k3MptQm6cWZPtQJbTcWuYdQmGcdX032TdE1w27kOrNJH09p8L1
TJcLhnUIUlQ5+/KWnnqk8j6aS9yfOTVyM6twTQdgw4F1n+0b5dtuWNDvslndB1JU
o5izYSH8AFT+GTpAuN3ihO5OhkZ5jA==
=l7tv
-----END PGP SIGNATURE-----

--sshteucfry4z3ncl--

