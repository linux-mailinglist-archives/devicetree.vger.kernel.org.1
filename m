Return-Path: <devicetree+bounces-45807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F50866BD7
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 09:13:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79FFE1C2150F
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 08:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 488381C6A5;
	Mon, 26 Feb 2024 08:11:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82EEC1DA5F
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 08:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708935110; cv=none; b=DZRxjuUS+63EBsb+/cw4lAWcMlBoCKU5xT5B1PvUdtL1P+0HAuSihtPw6B55fYwpOWri0r8gZ1XAVi47xNxnXOlJm9janXQSqkBUFMlEMJXtTf19cuXqPVhCKFbj8rB7Bq5ZRgn1/DA85znnqCVKI2o2WizguO2bLMPfVHwiqLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708935110; c=relaxed/simple;
	bh=YDGOXFdSvfeITdsIL3f9430fMpMbdJEoFUqaY9acy24=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DCX+QY8kaetDmYa+/uiSH/YA5jwOPl1Rf6xgwkJcNFjzpK+5QCuy6YQkRCi5S5ui7fAC/jM4zK0nddd0XqLaPy6FYwaVkRomYwlv65Jks072KELUZ+YcXcVLrDY/TJ6dX0Q5oy+X2I9Ex6810RfuGcuu5oqUo54V9shOQXQxCiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1reW59-0007kh-6J; Mon, 26 Feb 2024 09:11:27 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1reW55-002xHu-LS; Mon, 26 Feb 2024 09:11:23 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1reW55-00BVKV-1q;
	Mon, 26 Feb 2024 09:11:23 +0100
Date: Mon, 26 Feb 2024 09:11:23 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>, 
	Conor Dooley <conor+dt@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	William Qiu <william.qiu@starfivetech.com>, Ley Foon Tan <leyfoon.tan@starfivetech.com>, 
	linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: pwm: opencores: Add compatible for StarFive
 JH8100
Message-ID: <opzxowacxsagwgw3l33p6y7omzjokus2bi3ol5wizfwjwi2s44@3p5frb4ysji7>
References: <20240226033945.816974-1-jisheng.teoh@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rca4flnr32kuc7cm"
Content-Disposition: inline
In-Reply-To: <20240226033945.816974-1-jisheng.teoh@starfivetech.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--rca4flnr32kuc7cm
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Mon, Feb 26, 2024 at 11:39:45AM +0800, Ji Sheng Teoh wrote:
> StarFive JH8100 uses the same OpenCores PWM controller as JH7110.
> Mark JH8100 as compatible to the OpenCores PWM controller.
>=20
> Signed-off-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
> Signed-off-by: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
>=20
> ---
>=20
> This patch depends on patch [1] ("dt-bindings: pwm: Add bindings for
> OpenCores PWM Controller") in Conor's riscv-dt-for-next branch.
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/conor/linux.git/commi=
t/?h=3Driscv-dt-for-next&id=3D2529085831b01fcd02ff58ab4e2596d3b31bcf80

I recommend to make use of git format-patch's --base parameter to
additionally(!) make this information available to the build bots.

Looks fine to me.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Coner: If you're happy with this patch, please apply it in the same way
as the initial OpenCores PWM Controller binding patch.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--rca4flnr32kuc7cm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXcR6oACgkQj4D7WH0S
/k7wTQgAsgA+AFOOP3+++k2BuC4anQCkeyI3AcDzpTBTk5QyC+DV7CR82aNjU5Sr
zdmvrqgBqdnBfCed75PotH8o0HeH7omhQ7kOys5qBs3G0fhi7jxQTr/gHd9twA4R
LlOdBlm9CSakAKEv9jbag0k//CYif0aGsf0cTNpF2RX6+gkoj5iOFbRkVd3gtizu
fbuLkbQ/2M3K4NZN5Tf8cAjU9FKEza5KU9xO+PhOIUGiis9F7ccSkv40PVj1rz7m
fbP85x6bvFBU+2bReKeA+GFCksHyItrMNLDktayQYjr9ktyxIZdARrB/astRo55s
LcZaVDOA+uw0EMm4M/y+U8HI8xdvww==
=8D5M
-----END PGP SIGNATURE-----

--rca4flnr32kuc7cm--

