Return-Path: <devicetree+bounces-140279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E26D7A190CE
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 12:44:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C649D3A7479
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 11:44:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 108C2211A34;
	Wed, 22 Jan 2025 11:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PnA0yEVF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787DD211492
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 11:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737546266; cv=none; b=jeHw/cEcc8sg9r9MAZNsLjkOT6HfUr9jpYEdnXMDK5bNVXH01MpTmh4eQOqEkTvPATp5hLqS/beo31Odly8XjsniWxZD4goBIOvYVXyZGaMO76qMwkK/LF4XDGDzcqLu44hCLHo/7Tf4SD+LhVCb3+ztq4CJ0PdRAL63vz0VZ1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737546266; c=relaxed/simple;
	bh=qRcHBbxRj9/+mw1hT4SgAww/Kfcu1ucDLKgwJdhbQsI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ldCQhsSG6TgOcE/7yx5vdB3+cmlgIgIJqyArrkl0z65guC5SfqD6fg/9FF5uBcmi+4jSyODorKY3kODlwTaRH9UQPew3bnDBuXMlgLRpiubiVULCNlrb0evi+Z9PT7HrZk71DbE9CrKn8e1IEE8MYUCEWRJFf7EXaCsS4hqCj6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PnA0yEVF; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-38a8b17d7a7so3418339f8f.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 03:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737546262; x=1738151062; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CkX0a57JR5odRnLVM5SFxw3AxDdDdOTq75/JTvBeTHA=;
        b=PnA0yEVFPyR2Rw5Z9PT2CC9RllHxtr6os7kIaDilne2a6b6TAHKs8g74W8D7RP2mqA
         Ac8Hi67X39L3a63713epp2UX9xPvSXAlWjP0zr31iLK9KDZnXoTlXMiuqnA2Uf7rbwgC
         SvmcwJnf0vr2vQ/2R7CvFjtHEjF7n/qybTtZRKw/adJB4LZy+RbFZkOLPszMxymo28iP
         r4ANY/0hlGLzLR8rur6uUBmoAcmtlBp9rjDZGQCscBhvQStA8RuY/n0XHVGVRl7VhDh9
         Gr5oMIRYsXLmRiI7MYr12s1LSKBaN5ByKVUcL+t4H2rs+rDATSFMoQTiwAyzAZf6U5CX
         2zkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737546262; x=1738151062;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CkX0a57JR5odRnLVM5SFxw3AxDdDdOTq75/JTvBeTHA=;
        b=V0Kvhta8xikW0JckaVH1z0WfoOkK0F0slaAPzAyOOuP3e0Q6Rl2wLiyYwEqwhafmGG
         FyFND8LYEdVCNLEHVYhNxIWQ0+EzN2sdvGbBUQtfC6ZNMK01Ti+w9jphIpf5Ehg6FxzJ
         ameYeo5oAQMgWmE+YP2hzLGZ9xyGt8HD4INQr1oKQ1V9YHRA6MWjIf0konTyqDh2ubm7
         NjbTEKYTxkBh6dAZ41eEbo+AuHpJJ/3xBbONR26pYF5/LqS0HZHpeeFptC513lvH8aPn
         bCLiSNqAS0RsVh6SZ3AQCnXNlR1j01P9aU+6dTlbrLZKyUW8EIIYR/UtEMaZeIBbz1wR
         cl3w==
X-Forwarded-Encrypted: i=1; AJvYcCVjkyhEUM/K7ardj8V91a90axV4LML+5hW2kFAlDVimN2C6/R/C081kEAgBGTVRv0hbt7vuxphqxkeS@vger.kernel.org
X-Gm-Message-State: AOJu0YyV8gkJ06rP2Aw74XWBG39m9x6N4uWViHP2wWNx5CX9m1UjF5qe
	zPTKeiRYY0kACah+shbFQMm1loQP2Sxx7n3zuHY2KEmaPSsZdYBGO60Q6Gwpe8A=
X-Gm-Gg: ASbGnctu/AmSSTQiMqxZr3QZIAanhD3nJ+AjmM4mU7BYzdDISnoXzHh6AfQYwuvKXWD
	pvL1D4oee8FtIBNRXrhHEWRpMAqCtViN8Oj1Z8LgFXKHwr7yAFjc32ZtKAPzXvd0P418mqHsbuD
	CRW8pkyAJOozLvVKcWGg3X85xTd8vBEzjSNvHvQAwHYkVD/zXSpbATZDTf/50zrpbnO9VLVdeaV
	qtr5MUe4cD+IdHOMHLHhYr3ecprFIW7c0bofRGzodxSQgalQcboMjnMFHqAd4btoayWzreNViY8
	YAIkSeJl+604kY90gMNJzNHHP0aePnBZDlyt
X-Google-Smtp-Source: AGHT+IFrcGALdmUCWHJnjpC2ZqVo8nSWD+sINVEmoB8Z7ocspefGnZvNbSf34XNo6+RE1LoNqfeAsw==
X-Received: by 2002:a5d:588e:0:b0:385:faec:d94d with SMTP id ffacd0b85a97d-38bf57bd65bmr21959293f8f.51.1737546261671;
        Wed, 22 Jan 2025 03:44:21 -0800 (PST)
Received: from localhost (p200300f65f0afb0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f0a:fb04::1b9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf3214c5csm16040267f8f.8.2025.01.22.03.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 03:44:21 -0800 (PST)
Date: Wed, 22 Jan 2025 12:44:18 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Nylon Chen <nylon.chen@sifive.com>
Cc: linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Samuel Holland <samuel.holland@sifive.com>, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v10 0/3] Change PWM-controlled LED pin active mode and
 algorithm
Message-ID: <5robb7ipl346daf3lqaqnsi3fcgj3wzmch5dqit2dczdyeknmv@dqft77bhwryg>
References: <20241224093902.1632627-1-nylon.chen@sifive.com>
 <zqkx7cx5nalslfmxeoxdnsjbvrvzajrjybsmsyeyc65a64sntr@gpc5qp6aoyp7>
 <CAHh=Yk-_0rKB=FG6Voif2MDjtRxzUA5vXDP2J-o5=8ru1ewt0w@mail.gmail.com>
 <CAHh=Yk-TosOmwEughfK9mMx-=DgzWK5H_bf6H641SGh1ue8BrA@mail.gmail.com>
 <zneb3qwgf52zitcbq4wz76shnmhwfkabbsts3sussjpc5s5tsz@uneaxdfp4m2f>
 <CAHh=Yk_oTdURhkna_saF6mrA9gDY=+v_j5NoY_7jTDLuZ=EXtg@mail.gmail.com>
 <7bcnckef23w6g47ll5l3bktygedrcfvr7fk3qjuq2swtoffhec@zs4w4tuh6qvm>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tho7z5kisonnoiyk"
Content-Disposition: inline
In-Reply-To: <7bcnckef23w6g47ll5l3bktygedrcfvr7fk3qjuq2swtoffhec@zs4w4tuh6qvm>


--tho7z5kisonnoiyk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v10 0/3] Change PWM-controlled LED pin active mode and
 algorithm
MIME-Version: 1.0

Hello Nylon,

I took another look in the driver and found another problem:

On Tue, Jan 21, 2025 at 07:12:10PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> On Tue, Jan 21, 2025 at 04:47:46PM +0800, Nylon Chen wrote:
> > Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com> =E6=96=BC 2025=E5=
=B9=B41=E6=9C=8821=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=883:47=E5=AF=
=AB=E9=81=93=EF=BC=9A
> > >
> > > Hello,
> > >
> > > On Sun, Jan 19, 2025 at 03:03:16PM +0800, Nylon Chen wrote:
> > > > I ran some basic tests by changing the period and duty cycle in both
> > > > decreasing and increasing sequences (see the script below).
> > >
> > > What is clk_get_rate(ddata->clk) for you?
> > 130 MHz
>=20
> OK, so the possible period lengths are
>=20
> 	(1 << (16 + scale)) / (130 MHz)
>=20
> for scale in [0, .. 15], right? That's
>=20
> 	2^scale * 504123.07692307694 ns
>=20
> So testing period in the range between 5000 ns and 15000 ns isn't
> sensible? Did I get something wrong? If the above is right, switching
> between period=3D1008246 ns and 1008247 ns is likely to trigger a
> warning.

The possible periods are of the form

	2^scale * A

where A is constant and only depends on the input clock rate. scale
ranges over [0, ... 15]. (If I got it right in my last mail, we have A =3D
504123.07692307694 ns.)

If you request say:

	.period =3D 3.9 * A
	.duty_cycle =3D 1.9 * A

the period actually emitted by the PWM will be 2 * A. But to calculate
frac the originally requested period (i.e. 3.9 * A) is used. So frac
becomes 31927 resulting in .duty_cycle being ~0.974 A. A better value
would be frac =3D 62259 which results in .duty_cycle =E2=89=85 1.9 * A.
(Depending on A the values for frac might be off by one due to rounding
differences.)

So I would expect that PWM_DEBUG is angry with you if you go from

	.period =3D 2 * A
	.duty_cycle =3D 1.9 * A

to

	.period =3D 3.9 * A
	.duty_cycle =3D 1.9 * A

=2E

Best regards
Uwe

--tho7z5kisonnoiyk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmeQ2g8ACgkQj4D7WH0S
/k5U9gf/fa9SUu4MFWKVFQg0xDyHR0a5TFcnhPwNbhsahSrBoKcHfBTJqdyN6LqB
2pRHR7WPTzw3GOt/J51OUGi8BUSHLZzz+5y424M2FZ9FI6Vy4ELuZcr+lR2lJ7nt
Swjft+IqpbS+e9VhWBdzbUerJLyfVXltndFMGGjDHt/C9AFMwAJkhVVhPgNwLSTe
BPG3exdmnflmPh/jmyNBNHdJv0qCVWjM7XGMWr4ssgzjh/8X3VUjhQBjfVeHnNAe
rwP4csAuVk4n2eOGNgixYKYjd2iuH8CecQPZ2tn/OHY2YC92KsnqZDRJddfdUCs6
9aS0PKu/Mzm9nrkM8uD8a4usTzRonw==
=HH4I
-----END PGP SIGNATURE-----

--tho7z5kisonnoiyk--

