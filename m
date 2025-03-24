Return-Path: <devicetree+bounces-160103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 146C3A6D7F1
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 11:01:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A62316D266
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 10:01:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 527BF25DB0B;
	Mon, 24 Mar 2025 10:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CIZ9xP7w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B6025DAE4
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 10:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742810494; cv=none; b=BbPbJKtN2tnrzJbhTtzIBabYE35weV7PhJZeWFLK1Ew205xZjMPicu+g+xEBGgsYXbSqAqmD1DS6pDxEiYI3k4jaPD4YukD7iKwwQGEVX5g4ewCla7L/0oZs978LYVrfaaW415YTMI/jHz+PtpmE20a6H1qOG51L3q+ly3CiMrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742810494; c=relaxed/simple;
	bh=nEyIJ4RqPVknj4EvEL8pm91V8RRXmCyZ1bNH16KxDTI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kp2Q/2UaRyjqNvimzZE4SLPoT22aqBoFdIYKveNJEQmuqKns7Vphi97GqoksmNrl7LcJyMEoGUQ/PK6J9tcUS9fB8tUwlsxzWnDndRhiYJK76JiYigmuX6xwwERzgto3LFxWVDEDoy/vHBCHjWf9Z/s6cIDiE4W9oIgpMNFqWVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CIZ9xP7w; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43cef035a3bso28216945e9.1
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 03:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1742810489; x=1743415289; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S9pWdndVU9dqNCdt5yutM0V93eSHB5go/aiJnsWq1dU=;
        b=CIZ9xP7w3mW7+EFCAD4idzhxELDg2fH1QfGWNc9N6zaSQ3Cj+CFM68GUgxGQOC67cr
         GoR9MyrGnDkjTLl428ElgY2oOR0GGVWPzYzgFuhOvnA26XJGACtPJUJbMMUWFg35ZE9B
         gxuhgMc+phK5NCbku22kT9EUCVqc9MLk/4snYy12XeOYGYNNXoTjYb4g0vkOcj1rI2h8
         MajunjsUCPz9D5YBemxUmbR2o894DiZzD/9TlRyBBqzFEHyo2seE/uz0/rW1NTY+45O/
         eW0z3QcCgSU0YYTHKMRCiBFIEMtkHIOSt/JpVDB0VRpzJcWSV4l46CVnezZWkPmM+YGS
         F4nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742810489; x=1743415289;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S9pWdndVU9dqNCdt5yutM0V93eSHB5go/aiJnsWq1dU=;
        b=liDQdg/9763RMU5fSTgHmGuqZZ+I8+wVOEsaDq7pPGVoe0XzxiwUGdcmXz9zzTK9He
         1eaydoDCnX/DLDrNKdSfrx003ZDxyls2H6tE50hdOa9YBmoLE3PRJtOO2s6QKClftdSL
         UwS3EX74n88qvHUkhca86bGPhYJnsPcJvqC2dTFuKyc8dnLr0bAg9dH/HckwKPZbz1/9
         cAbSKV98eqE7FCHSllozCzgrhyaVR/80A36720hR2lLq8Jq8GL07b37kxtG+QGstNtF1
         AiFmtVh99+CCsMQ+Mi8eKunvg+/wCoWh5rn+8cNpLRg9tBnDDg7PS3Npw5Ii/ZEB9Wj+
         bkPw==
X-Forwarded-Encrypted: i=1; AJvYcCX5A21zJrtJrru8bPXgEptaSmBhiNsL9E2Qnz4+s/ju4l0EW59PW15YZAKvDdeTVRLVkNwLdgB5z71y@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj/7XRDnB4WWK5s+v2mKJfq9SKD25BWRyQ4j3eLgj8wql+qbL9
	p4xbl4/3anAPpazz2dpeoD/sqU4G+ppMgL2c27ciWL5PJkJUL1jlAQldGnhFEno=
X-Gm-Gg: ASbGncuqxDtLf/X+g8vZ+K9lPvkogJBpU3wlQkNLW5swJi6sy1W4Q2HaRkYozicun/r
	XDzhivRG2ngJypT+q+RCUtm4cvKdY/5oBG8blPq35iamZEuDESjmgTwlSAEZzIuYoBvy599GuEj
	JrtMd6sWfGODL5lXkSUOpGs4Yg+J4AOtOjkY35ebflKdjHSw2yXtV8W1J5ardP6Zc3R1rGCNiKH
	IpM7QST2jRBZWcyE3vGT8lGUR24IGEMmt0Mhiq30HRmOrOPSWGu9ugtgLrEtUPw5ePy6W2mg6W+
	F2O5COZuRNpTKhdZhBomcpYxKxP2DFH36sJuzfbEI55+wi9tzfL4K44CepKzqkQfv22AsRG7sgO
	/xneST3sOt88=
X-Google-Smtp-Source: AGHT+IEP6KrMueYMbZ1EVyK2uRtOCWBQuSagI7B70MnPdQKoMaCVvuHwOTfSTcNlxRKEsAQJoF8LBg==
X-Received: by 2002:a05:6000:1aca:b0:391:47a7:299c with SMTP id ffacd0b85a97d-3997f94de39mr11330639f8f.40.1742810488933;
        Mon, 24 Mar 2025 03:01:28 -0700 (PDT)
Received: from localhost (p200300f65f14610400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f14:6104::1b9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9e65e0sm10655928f8f.61.2025.03.24.03.01.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 03:01:28 -0700 (PDT)
Date: Mon, 24 Mar 2025 11:01:27 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/2] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
Message-ID: <v7btqobpnuss7rldvrnem3tmznyrd54kks6dcnpwqdhpqysqzq@p3bt6bdztiq4>
References: <cover.1738600838.git.u.kleine-koenig@baylibre.com>
 <6ae42224-74cf-4d2e-88fb-f766279d3525@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jwb25zmwvlnmq2g2"
Content-Disposition: inline
In-Reply-To: <6ae42224-74cf-4d2e-88fb-f766279d3525@kernel.org>


--jwb25zmwvlnmq2g2
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 0/2] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
MIME-Version: 1.0

Hello,

On Tue, Mar 04, 2025 at 06:46:18AM -0600, Dinh Nguyen wrote:
> On 2/3/25 10:46, Uwe Kleine-K=F6nig wrote:
> > Hello,
> >=20
> > The only change since v2
> > (https://lore.kernel.org/linux-arm-kernel/20250130074553.92023-2-u.klei=
ne-koenig@baylibre.com):
> > is that I added patch 1/2 that is supposed to fix the warning that I
> > failed to notice with the testing I did. Thanks to Krzysztof and Rob for
> > their patience with me. I hope I got it right now.
> >=20
> > Best regards
> > Uwe
> >=20
> > Uwe Kleine-K=F6nig (2):
> >    dt-bindings: altera: Add compatible for Terasic's DE10-nano
> >    ARM: dts: socfpga: Add basic support for Terrasic's de10-nano
> >=20
> >   .../devicetree/bindings/arm/altera.yaml       |  1 +
> >   arch/arm/boot/dts/intel/socfpga/Makefile      |  1 +
> >   .../socfpga/socfpga_cyclone5_de10nano.dts     | 95 +++++++++++++++++++
> >   3 files changed, 97 insertions(+)
> >   create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_d=
e10nano.dts
> >=20
> > base-commit: 00f3246adeeacbda0bd0b303604e46eb59c32e6e
>=20
> Applied!

Thanks!

I would have expected that patch to pop up on
https://web.git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/log/=
?h=3Dsocfpga_dts_for_v6.15
in the mean time, but it's not there. Is it still scheduled to go into
mainline?

Having said that, that branch looks really strange. It contains:

	$ git show --format=3Dfuller 2445fc2d7863
	commit 2445fc2d786304c38934199b1f95a9e52be0cec9
	Author:     Linus Torvalds <torvalds@linux-foundation.org>
	AuthorDate: Sun Feb 9 12:45:03 2025 -0800
	Commit:     Dinh Nguyen <dinguyen@kernel.org>
	CommitDate: Wed Feb 19 06:32:34 2025 -0600

	    Linux 6.14-rc2

	diff --git a/Makefile b/Makefile
	index 9e0d63d9d94b..89628e354ca7 100644
	--- a/Makefile
	+++ b/Makefile
	@@ -2,7 +2,7 @@
	 VERSION =3D 6
	 PATCHLEVEL =3D 14
	 SUBLEVEL =3D 0
	-EXTRAVERSION =3D -rc1
	+EXTRAVERSION =3D -rc2
	 NAME =3D Baby Opossum Posse

	 # *DOCUMENTATION*

I assume this is a rebase accident?=20

Best regards
Uwe

--jwb25zmwvlnmq2g2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfhLXQACgkQj4D7WH0S
/k6gNwf9ERnBuzBvYoovtESv5fokVATPgIqwxS62IjWJNvA1XAnDfihLRKuV82FQ
hVHJYpW7bLd2bAZuhtvPw9ZcWieSJw5+k21sDTYWTPapuwTrcFdzB+0QpgmEn951
A8xQ4kMEv3faqma/VzsB1YZkeM2L+vGWgnzQUCXLsq041fAUr8Oqnvh1Km2QBm2a
v9Bx+hu2+iPCVeTE30kuTHF7wQKiNW/gYNmvP+iQC3m1cSB6cWEKEzza9DRU/Ixx
1Q8JnpPXgBOcu1Ml6BGleCkZNv3v1EXtCYeQJmGk+3XtFBLxBB4cmguXVfCQl2A7
VFoauC0k2Fry5UD8Q7FsJM1HsE88Eg==
=o5ZS
-----END PGP SIGNATURE-----

--jwb25zmwvlnmq2g2--

