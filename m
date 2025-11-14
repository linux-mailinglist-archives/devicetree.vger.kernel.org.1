Return-Path: <devicetree+bounces-238901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B003BC5F728
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 23:00:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3019935A92F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 21:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FEC9307ACF;
	Fri, 14 Nov 2025 21:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mLUMwhEM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74DC2FFDE2
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 21:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763157518; cv=none; b=phJOYvvtSvfJjBYRYntM7fb+7JfqYshyC37+SqxbYx/DA9YBERjzLKNXsn0gbDtBjjzxwNPwqCWtCcIMabxeplJVWSHatspV6VxAmnwD7ClmTsJlORU2IcaVLEVWk1v12HHES+dSnOX5uPAiNwSoMLB7mSX2pU/GxIWDqTuL1k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763157518; c=relaxed/simple;
	bh=Syi8OifrcIa4Q2Oytg9/IzoAJQpo1OhcVXIfS5ioZy4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CAAvL/Irrl3iIe2Rem/kErZ1H/FUkGss+RWqu1g4HdNM9845hojQ5mWRhbC9SJUkVdHHKlq7l7RIC6nyB1zWLxwWgucoya4KSKx+H6vUyQ281ap9oQ68yqXH+DakrIoijbzHS+6fjEuUXR99VH93BBcFul0DvU46/HjHAr/ay6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mLUMwhEM; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4775638d819so14358305e9.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763157515; x=1763762315; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b+u4sesX2F1ivMYBBZ+/x9GtDzSOlzU+Zz0YkP86DrA=;
        b=mLUMwhEMjUr1lAXhKfSsEGByPg546cOf3Hs032b+vcdJkqHvUXdVWWBXIQyVg9mem5
         OL9TwWpcxnP94htoQwQiAhhBJCp2bGjSiEZDMY76SBvs8iA4R8qbfejVK+yLJk7PUhbx
         OFMdz4PjAAKkuA3GFXcOftwNdQiuMsi0zybHwTnboyPpROzPxiw8ZvfPzSOz2+AvX+ow
         JNzVRBSr7ILmkpQZPUZ8TkvMdTAgdBlf+jv940K1uKKDb4q8yfhWJliZ3B75FXafVQyK
         D259kW62AWagtpGplCFk3olLvGu28nvNgF7Wa6uAX9JAJyoK2Ul07fjtFm45R0RwQ8Wp
         69mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763157515; x=1763762315;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b+u4sesX2F1ivMYBBZ+/x9GtDzSOlzU+Zz0YkP86DrA=;
        b=esUMAKh1Qc8XZwFFlAv9ycQ2ziwiYg+sOt/19A3VfWotXJLwdVulOM5ddpb5yMs2XY
         Yn3QtgpSA00fWHuig75NQMYlIcqbvNjWvhsBCNj1vgvx5OscwkrX/0c9sCMytzRJCbBX
         q+nh2MOA0R5lox5FMOVQuhfrhyyqYmh4CvL4DzM7LlMrvkbxriRfnwRWzW5ZSIGqLhBj
         6GtDHpWj7juAuqBGIZ2GI65vOfOy+DdCGUIQq4J7l0LUGqhwDhKre7y5acaaywYhIOEX
         dXTfb73tBKF2tqtAFRneXVLy4DV4cQ7LrkRXLjQeSyZopA/FnS64IDC2XwuwjytkKxIo
         5+Ig==
X-Forwarded-Encrypted: i=1; AJvYcCWj8vKhf4fKAGsnNX+QQdHfNxaPoIkseKlhaVfID3EQdxZtWqADiEDez7gziScFDnEHNianz7kw78AX@vger.kernel.org
X-Gm-Message-State: AOJu0YzO7r/C6ATqx2qTGp4663gVDouYNxArnqjq7/lV9LujZg/OIuVp
	gFmJ2BnoBaW+GAkRAKHAYdSW3XXG33fuGGPpvklDil4FjKYh8KN4wtCZ
X-Gm-Gg: ASbGncuS7HmL0wZL1VGN5H754BbCybkPeo29caoaHJTEGK/KQGyQUQpkl8ymYihmDA4
	AibpPyXu6mw7MXJvkcU5ROjhql6G6eoazwc7/DVHXlYrLahG5rBmv7CaYJ/lbYXxgDganPfILpi
	gfFb29Z/vjWZxyAlfvkvdog9YbBT6FdL4+GjpFM2rOTCE4YYHE7qe2Kb9Oc8biFX4EVhgAqEYe7
	nOcEXQHTqjdOPiO/NEOU8adsUUW8KXvXsX/GkO+wHWRW9cDfw7z0tWtXdWxTCx34TwlrQ70lqBe
	pMWiWx0u4pXEzWlNDTIdRZjSJ800dU+zo2EoW5evHO6MgwvTp3XfY/XA0AAcsgOxOLPSh6gXd+g
	LWSy5Vpwy3nzDKw4XOBagdhpjMULUVMFGsbDCxGxnzEaojoU7YY7BzOyF+fNaz2heYaMbevIo2c
	mIg4Q+WgSjCbULv129u8WguG4Q4/1+uk59mPbndJLKqCBbAwDnfONA1YKur/5X8uU=
X-Google-Smtp-Source: AGHT+IFiaMZ58B55vi9u64uCvnsSPqkvnvQqbvHQS4sxytgcEOqkF2Eov/l731LFekJ8vKo2nNneiw==
X-Received: by 2002:a05:600c:8b42:b0:477:942:7521 with SMTP id 5b1f17b1804b1-4778fe683e1mr37311375e9.14.1763157514789;
        Fri, 14 Nov 2025 13:58:34 -0800 (PST)
Received: from orome (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4778bd11165sm54720335e9.6.2025.11.14.13.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 13:58:33 -0800 (PST)
Date: Fri, 14 Nov 2025 22:58:31 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] arm64: tegra: Add CPU OPP tables for
 Tegra186/Tegra194
Message-ID: <z76e63y4ixlsqelhjzwldyjbne55big5zxkflrdjrmilnewuni@ouuf77xakco4>
References: <20251021-tegra186-icc-p3-v3-0-68184ee8a89c@gmail.com>
 <CALHNRZ-uFJhMjyyV1vUS6ye3q-nNVPT7Ab4vuO41ziHqg8MOvA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z24zjinrywe7h3jf"
Content-Disposition: inline
In-Reply-To: <CALHNRZ-uFJhMjyyV1vUS6ye3q-nNVPT7Ab4vuO41ziHqg8MOvA@mail.gmail.com>


--z24zjinrywe7h3jf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 0/2] arm64: tegra: Add CPU OPP tables for
 Tegra186/Tegra194
MIME-Version: 1.0

On Sat, Nov 01, 2025 at 06:21:40PM -0500, Aaron Kling wrote:
> On Tue, Oct 21, 2025 at 8:13=E2=80=AFPM Aaron Kling via B4 Relay
> <devnull+webgeek1234.gmail.com@kernel.org> wrote:
> >
> > Bindings Dependencies:
> > - https://lore.kernel.org/r/20251021-tegra186-icc-p2-v3-0-1a50b526dd40@=
gmail.com
> >
> > Logical Dependencies:
> > - https://lore.kernel.org/r/20251021-tegra186-icc-p1-v3-1-7e6db3b070c4@=
gmail.com
> >
> > Merge Strategy:
> > - Merge all patches only after all dependencies are picked up
> >
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
> > Changes in v3:
> > - Split series
> > - Link to v2: https://lore.kernel.org/r/20250909-tegra186-icc-v2-0-0941=
3724e781@gmail.com
> >
> > Changes in v2:
> > - Use opp scoped free in patch 3
> > - Cleanup as requested in patch 3
> > - Move patch 3 to the start of the series to keep subsystems grouped
> > - Link to v1: https://lore.kernel.org/r/20250831-tegra186-icc-v1-0-607d=
dc53b507@gmail.com
> >
> > ---
> > Aaron Kling (2):
> >       arm64: tegra: Add CPU OPP tables for Tegra186
> >       arm64: tegra: Add CPU OPP tables for Tegra194
> >
> >  arch/arm64/boot/dts/nvidia/tegra186.dtsi | 317 +++++++++++++++
> >  arch/arm64/boot/dts/nvidia/tegra194.dtsi | 636 +++++++++++++++++++++++=
++++++++
> >  2 files changed, 953 insertions(+)
> > ---
> > base-commit: 211ddde0823f1442e4ad052a2f30f050145ccada
> > change-id: 20251021-tegra186-icc-p3-3f6454da5ec4
> >
> > Best regards,
> > --
> > Aaron Kling <webgeek1234@gmail.com>
> >
> >
> All dependencies have been picked up, unblocking this.

Unfortunately the headers are only in linux-next, so I can't pick these
up into the Tegra tree yet. Will need to wait for v6.19-rc1 so the
dependencies are all available.

Thierry

--z24zjinrywe7h3jf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmkXpgMACgkQ3SOs138+
s6Fo9Q/9H5rEpI64Ske74TuL5FhSOmri9aytKKyGeCojYE0IPIc+Sc6IZNqZtaVF
9a7pcUSFD83X0EYruiXVNZnaJzkvzXFmrvc68q4yq2O2redaFFPEV+BwOc2FzQ4N
lv/Z+SOM5E+1OIOqbEN5hSCmxGQGQDerCgqU3/jm7ep8CgsdHLx6Osw2HOJ3Bdz/
OIVdVEaEIGn2Te4csBy9zUt4WQRMo3fS1uAg9K5p2PWoad4bWclS6FRimbPpReZZ
Gf5906MeRaGruSd6lLQrmFoPNf05Lg7y0BDP778ZDxnFToO0xw8uxju3q+MvcJsm
zbJsdtWp25JO9m46tY15dgztgwPKvsVCmZlvZxDBTPwHPp9bZ82qqbgDX6xQXznh
WOk8ruBF2iniva86OhpP74mz/CQrHkhn4mfpET+tFcfxNWRIPhfvIrPxTgvmZlum
ma7KhnU2Sao09A+JFpWulGZYzH6E6xETJM3ieUPOdw4f71fZUvCburAgyRtjZ5io
C7tUt/gP4RB2gL4egOZAc/nszFOKzyTT6Cn7i+inES9tT0X4mG/i9IvaDikScu6Y
RBWIskimVqOhM898Rlh8Xzel90KPDTkFtKE+r5zbewbkW8SsDHX1FbrE7R/FGhdU
MfsfV0IfmmwTho0se+f38smJGiI3dYdfEzPGotuIXjvSHkSvmck=
=bN5S
-----END PGP SIGNATURE-----

--z24zjinrywe7h3jf--

