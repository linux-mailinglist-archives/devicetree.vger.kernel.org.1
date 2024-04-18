Return-Path: <devicetree+bounces-60681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEDD8A9FA9
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 18:09:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7145E1C2100A
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 16:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CEB616F90B;
	Thu, 18 Apr 2024 16:09:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A27316F90D
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 16:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713456545; cv=none; b=eADmbUMgojPlKXp0GaOsczxASy9kEKC38hCE8tYfusDFTy12dVaZSUsbK/q/qICJaGc0/B+HdDLxj7GmSFV83o9bgVtMNi7bp681zsyeQtaaGLEDsa8JJqxTqU37h0rlAmDK81IkFFkWPOZU/Bgu4mBeFjBnGSMbd3oLtX6FQeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713456545; c=relaxed/simple;
	bh=qw3K/+SfNxQDzN/sng2vNMA4tQO/ldVUwAz3QXRsdOI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uBFc6CU5RUStgTgSwreMWPTEKuHW5y7SbnZ93g1MWs23OJyq4WL3011Lvb02FwavBTOOgOQWY5ul8MUZhFIGc+mimI8S6u72w8bSLge+pW9WBTyHVQ5jMY/iCnSa0PvfiKejVUcmJOAuws8QeSAGapoERcuSe/pBTFbMbpH3hEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rxUJm-00030a-GI; Thu, 18 Apr 2024 18:08:58 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rxUJl-00D0SV-Sv; Thu, 18 Apr 2024 18:08:57 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rxUJl-003YhR-2b;
	Thu, 18 Apr 2024 18:08:57 +0200
Date: Thu, 18 Apr 2024 18:08:57 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org, 
	JunYi Zhao <junyi.zhao@amlogic.com>
Subject: Re: [PATCH v5 5/5] pwm: meson: add generic compatible for meson8 to
 sm1
Message-ID: <4v5lhnjbfnjpj4k4rme6kfphurr56ae5ngup7pcsrxhs4f7qh5@jian42uepseu>
References: <20240221151154.26452-1-jbrunet@baylibre.com>
 <20240221151154.26452-6-jbrunet@baylibre.com>
 <24ec3iiudmfapiosygpsvgu7kmdqe6csbkpuzx3p3sa4oyodqu@hshmbpvzhufb>
 <1jplumc276.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ndkvbuldgxvpggvv"
Content-Disposition: inline
In-Reply-To: <1jplumc276.fsf@starbuckisacylon.baylibre.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--ndkvbuldgxvpggvv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 18, 2024 at 01:57:03PM +0200, Jerome Brunet wrote:
> On Fri 12 Apr 2024 at 14:08, Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengu=
tronix.de> wrote:
> > b4 + git applied the patch just fine even without patch #4 of this
> > series. Would you be so kind to double check it works as intended?
>=20
> It does, Thx.

Thank you.
=20
> > BTW, b4 diagnosed:
> >
> > Checking attestation on all messages, may take a moment...
> > ---
> >   =E2=9C=97 [PATCH v5 5/5] pwm: meson: add generic compatible for meson=
8 to sm1
> >     + Link: https://lore.kernel.org/r/20240221151154.26452-6-jbrunet@ba=
ylibre.com
> >     + Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix=
=2Ede>
> >   ---
> >   =E2=9C=97 BADSIG: DKIM/baylibre-com.20230601.gappssmtp.com
> >
> > Is this only because it took me so long to reply, or is there a
> > configuration issue with the baylibre MTA?
>=20
> I have no idea. This is the first time this is reported

I just picked up a patch by one of your colleagues and there the DKIM
stuff was fine. I didn't debug that further.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig         =
   |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ndkvbuldgxvpggvv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmYhRZgACgkQj4D7WH0S
/k7xqAf+JC9/vEi2vZ/sd2kemNl+UY2srTmHUzycRI7fzF/xLgHjol8DQZHtHJrw
zHW9PEr8n1sfrZqP0J9+rUoMpwmmD57MB/Ge/w2lHAm6pkQmyapVgMoMCivPO0aL
zMtD1psf1ytCd5KbGssRzQv74NyskNVUbQrBgEqPuOpnzeFRQswMY+o+WqajhnIE
9IdqU8EsdOejQoVVJY8uVnpEPPfp7agrp0rKKy/xKljb7HSKfW9CGLkvVMuL4JAv
QUC8Qa2Eqb/3kU2+4m0kzAxVzw/FmbDNWshQIMuBagLf220pmHBS+JmBJO06wXED
+uzDz1RL0zQxwox070ohIWmSOvn8Kw==
=i0GN
-----END PGP SIGNATURE-----

--ndkvbuldgxvpggvv--

