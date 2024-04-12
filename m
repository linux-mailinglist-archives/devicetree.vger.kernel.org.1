Return-Path: <devicetree+bounces-58584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AE56E8A278F
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 09:06:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3D880B2599B
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 07:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EA3C4F1F2;
	Fri, 12 Apr 2024 07:01:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B84B4F20C
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 07:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712905298; cv=none; b=MxRwbfD/32ThKq8v5xGXxiNLISZu6139QXe53WydOsKmYpK3YKoMyEU4+LEWBZ2GAmEyn597Lrvy6cmtVEphu68PAZ/goGTrfWjDQCZQU18UGZep77aNCququV5hBvO+QMeB7/TEY3G7Zkq/izUc2tRQvA5LHcQV0rGhTONerjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712905298; c=relaxed/simple;
	bh=vMBjqvieHfb35a2/KoqXnkyncA2FHQMCKbMGAoO81lY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cwpUdWYdIQfUx9Q+wMCFJxvZo91fnEmQEVHY2ahTnLaCYJ6jFlhsJW0gFhhW8kHW9oLK/an2NMNjIylldw4jkRuXeDa4w+dWIYoKIiHBi4WvGfwl/EbsNzQJv9+Dh52EPhbr+UjvlyBCCAwGDtQcb/Oy7JVSthAIfDoe3SdkyvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rvAub-0000oP-1T; Fri, 12 Apr 2024 09:01:25 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rvAuZ-00BpOm-Qd; Fri, 12 Apr 2024 09:01:23 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rvAuZ-0011RJ-2H;
	Fri, 12 Apr 2024 09:01:23 +0200
Date: Fri, 12 Apr 2024 09:01:23 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Nylon Chen <nylon.chen@sifive.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, conor@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, paul.walmsley@sifive.com, 
	aou@eecs.berkeley.edu, thierry.reding@gmail.com, vincent.chen@sifive.com, 
	zong.li@sifive.com, nylon7717@gmail.com
Subject: Re: [PATCH v9 2/3] pwm: sifive: change the PWM algorithm
Message-ID: <l5ymy3rlqdlkwonyxq7xqgxgk5zsgbadui7p4ehl7qeh3m2pef@ic2zyktdqcia>
References: <20240222081231.213406-1-nylon.chen@sifive.com>
 <20240222081231.213406-3-nylon.chen@sifive.com>
 <f5ukvah2ujko2iht3pd5jxq5kaukbs5z3pn5s7qwcnx4aqr3yv@mwtbwkcfa44a>
 <CAHh=Yk8MXy73d8M1J5bVu4spDMbjQDneVTqA=Ts=SGPDO7PXMQ@mail.gmail.com>
 <CAHh=Yk-WmzJe0vb+noX8Gb13BL2SOB=MwSB=F9nH_G-j9zi1Lw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="26vwn4hmygkd27i7"
Content-Disposition: inline
In-Reply-To: <CAHh=Yk-WmzJe0vb+noX8Gb13BL2SOB=MwSB=F9nH_G-j9zi1Lw@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--26vwn4hmygkd27i7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, Apr 12, 2024 at 10:07:12AM +0800, Nylon Chen wrote:
> Nylon Chen <nylon.chen@sifive.com> =E6=96=BC 2024=E5=B9=B44=E6=9C=882=E6=
=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=8810:08=E5=AF=AB=E9=81=93=EF=BC=9A
> > Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de> =E6=96=BC 2024=
=E5=B9=B43=E6=9C=8819=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=882:16=E5=
=AF=AB=E9=81=93=EF=BC=9A
> > > On Thu, Feb 22, 2024 at 04:12:30PM +0800, Nylon Chen wrote:
> > > >       /* The hardware cannot generate a 100% duty cycle */
> Do you mean that if the inference is correct, this comment should be modi=
fied?

If the polarity was wrong before and the hardware was believed to not be
able to generate a 100% relative duty cycle, then maybe it's really a 0%
relative duty cycle that's impossible?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig         =
   |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--26vwn4hmygkd27i7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmYY3EIACgkQj4D7WH0S
/k5rHwgAhpRRZGowKVE0iokFu7iytXC6fdzFLCzGGn8LC2r59oYV4X8E4ruZzGxi
KMljwKutSBOpirgQ7/8usYyYqlOfAO+x6BXkkg3SHBprmGPfq2+iVEGv5Tj95B7j
9t+GueFeOTR6xJRF++3pv88sp4zYLYHIhtRVSU5YZy1Wb8MbRjJfR5kI+dDy5xtF
UqW5uhIzpV54qyNHnwf8dV0pCooMilhcHS/eGiVa+nSTdoon6rlNJWs+YZgUr1Ud
lDiRWzbwQdju5xFUnoR2hGn/FO/6Jgmws9FKkM0ttnkWdgcYvzsBe7gk6qRPQGgr
kw8IV64UfIbDlmpcuiLqeNi7Iq08uA==
=KwIm
-----END PGP SIGNATURE-----

--26vwn4hmygkd27i7--

