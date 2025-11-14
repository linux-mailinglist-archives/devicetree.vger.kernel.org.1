Return-Path: <devicetree+bounces-238762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C4442C5DD51
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:23:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9442750162D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D7C833A001;
	Fri, 14 Nov 2025 14:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PvVRaWkM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9CA338F26
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763131938; cv=none; b=YQ4MCOwRL9giRPY+l5LTEHOBFWf/hkrinjqq7J2ijssZyEJSQlALWeTW0xoK2gJeOz820/TR7qrR/fnQV4uuSw7DeYjVqtxGsTk/CsWj2HvPiArDAQMSH4d8Jf4ASXZYNggEHna1a9YssRsM8lrGCblIYpEFwVlRisEs5XTxlio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763131938; c=relaxed/simple;
	bh=z+RzTRp5r8OzCOGGuAh/YrjdDUCoh1Vi3Uu3Kf9nFqY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fwhKaJojY+vnqPZBGa+74DvobCw29aGKLObVcZ7d4d2JfZ8Zz5i3Mw54Z2pBsyQn08BZbsZ88YwYW6+7yaxOjh760S0nGNP5klR6YR9r3Elms4vpU2BNEbx7MLNs0E8M8qxZoXmwVGLz3vlvdlDISLwsWZSI+LzgKQ8T/ki6xcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PvVRaWkM; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-477632cc932so10174905e9.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763131934; x=1763736734; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5E8Gdb2sthQ98VUv6X44UK4wYs+INDyJZkDCznTeVWQ=;
        b=PvVRaWkM55LmaaZgK4JrSTcmAjlU+MlYJTrU7NM8v4+x292Q9g1wlMj+CW2OvVo7sU
         CxnYuWjJ8kLcQ21spD3fW8TrXqTG9upkoNpRyymGsdytHZfkxHz2t6Tg0pVLW9t0CXhR
         wg9TPP5Z0r6DuPjwYOA0xdudmQqWHq+yYcpXd7xlkGNhKECzhqSFVP+GME8nd3nRaYzx
         LQeNvbYAZpdh96GGFvzbLTn3FTYXSlC9pS31MySfc96W8EWLRW2gFUPObHmT8obE3428
         /yrXr5+Ea5nj2w4cnMVQL/EgKL3mphP5yGDxVDNMLAM/5+PF5h0bQPRgO90Wzk2YtikK
         7PvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763131934; x=1763736734;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5E8Gdb2sthQ98VUv6X44UK4wYs+INDyJZkDCznTeVWQ=;
        b=B7fpp8KhexGq0h+oSYZQH5FBhqj3cd6ArUm7w69WAXBTd8naA6D+rTeUfWjeGvp/8A
         GpkimNgfYl1q2bepQIjlXsKO39iD0A/PZZOTc1ohnKuTrTAYGLlNeHMf4n+vzD58EoYa
         P5G1urPGISFypKZszt3Ng8QeTxuzYFNVBZTpR5Zxr3SqoQ4MwCVggjEEdUlMbOWTMOtZ
         4Lq4vuSV7eo+k7hbH3sc+16ES7x5d9myDD5hAgLmSuZoiRy4vwmEu0MkjJ0i7EahIrPc
         H5+y7XvXOp/flOrRzvZ37p6sbl00+t6sXJk7EKKOw+bfVSxeu0vui3vp1/GRLRA6dZUb
         uYpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmmO4Uq1209j0XRMmGJNYCp3hT4EPgKUPph8s3GKeQGY64ko0s9HZP97jwcGlJH325TKG0YLqOYqm7@vger.kernel.org
X-Gm-Message-State: AOJu0YwuAoXoq7bG8RRFo3fntaL7PtJTDbhJLGxprWIz6hoSuSIIWz5x
	aRX4QreHX8v3tGdIYw5rvT0arUZCdYXJ/AB6HC3FmomOvtGL8CSUqBlm
X-Gm-Gg: ASbGncsPQ+3U1acPGmUrSqCmZPM0T4RRE6vYovaMsz0B3C7dpOH5PSr63mxE68zefps
	qaYjRSdv1SedPyDOWOAJ4WA4rJrQPSnkSo4Ye4NXTkhuRIhqhe9/OygAIm5MytlOQoCCPOnTHcC
	OYVqO0+wYXc1qVAr4qnVr+favDt9azjTN65kMdz71VeNRmd4DtWx3gr+dP50YgjJHTBcYy4h7OE
	kVN8AMfkLFyEAwqu8c3Zab1OilwrffEyToZl4x1lK3rQS5PhdCWaNo8QWNxaFjpb1L8fbaOhE1D
	dZJRTSfzXmlRQUJHYkRnfkCZ2vKNJbdBq9Va7woARQx0g5Kmye9WysCnpn4AVy8n5tZ/yQ3wMnF
	Al0VCOqMWR+qkDozJvT4t7+La4qtz6EQ4VqEkmjQVYyqm7CtoryQ3TZE9UmNB2kpyqpA+2/gxeL
	3BRj74xTzmZ6/89l/i1+D5sIbkLOcNGBVJMOMxATHvsfhR4K6g7mKTPTQbwSlWi5k=
X-Google-Smtp-Source: AGHT+IH6EdaXd2gX/Js68QxagND6wDOIWhXEebCdhFFsFPTeLjXVAI/EuqIEEN3kSXnIM4e9UFmSXg==
X-Received: by 2002:a05:600c:1387:b0:45b:47e1:ef6d with SMTP id 5b1f17b1804b1-4778feb2507mr33143185e9.36.1763131933899;
        Fri, 14 Nov 2025 06:52:13 -0800 (PST)
Received: from orome (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7b14bsm9992753f8f.9.2025.11.14.06.52.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:52:12 -0800 (PST)
Date: Fri, 14 Nov 2025 15:52:10 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Sowjanya Komatineni <skomatineni@nvidia.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Prashant Gaikwad <pgaikwad@nvidia.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonas =?utf-8?B?U2Nod8O2YmVs?= <jonasschwoebel@yahoo.de>, 
	Dmitry Osipenko <digetx@gmail.com>, Charan Pedumuru <charan.pedumuru@gmail.com>, 
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>, Aaron Kling <webgeek1234@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH v5 13/23] arm64: tegra: move avdd-dsi-csi-supply into CSI
 node
Message-ID: <hk2rs7o4lsxh6uofaro4tsjbdandaq4txpsdx6ggx2zgtjpuxa@zdz66zl7as62>
References: <20251022142051.70400-1-clamor95@gmail.com>
 <20251022142051.70400-14-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bwlwwn5ocbycp5js"
Content-Disposition: inline
In-Reply-To: <20251022142051.70400-14-clamor95@gmail.com>


--bwlwwn5ocbycp5js
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 13/23] arm64: tegra: move avdd-dsi-csi-supply into CSI
 node
MIME-Version: 1.0

On Wed, Oct 22, 2025 at 05:20:41PM +0300, Svyatoslav Ryhel wrote:
> avdd-dsi-csi-supply belongs in CSI node, not VI.
>=20
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi     | 4 ++--
>  arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)

This looks completely independent from the rest, so I've applied this.

Thanks,
Thierry

--bwlwwn5ocbycp5js
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmkXQhoACgkQ3SOs138+
s6GyTxAAlZCHN0/OeOSiVj5R+zlyhttYKy2tPfEzQFAFYVDR7MVrwxLczkHyQzR8
YJdAuuU48wLJ5R/PTldehaf8j+inFtyg5r2WZr1rzfK5Wgj1Ont+RDwb1ohoTLto
6bSXG8Tr8AXEyaL6fycm5fcxWo1GemuiV6oxpaiUtS+I/HUbcJPhe1RuNwYpsubF
P9KGdbbv8XMeaem7fM8j0VLUwObdN1mQBTvI1Wh2Krf7CpevtMRVZf/TCB3d8aI5
HGBTW+TiCBIyGfBTnzV4OjZaKrcVvgzE2lHPkAbu/ZBZNz0dFGkSs3xduMhtg/kg
uPxJz0CQBAkTybL2Sa4k8NapAYg+bhyUj7clt0rqcA79W4BABHdF4ihlVvkrPzJz
p9UQCNPvsh+EnayF5E1AYEWDfnIswAYmUoTqGmZmWz9HLE1pn/TUrPVEXfilfccK
ehav4axp746hfEhvfPg/PXOcJQxIhRbJ6goACP4XB0Jvz/67JUKPS7vybcYa2Ggd
NvBgBnkhHSdbAvENYMdosj1lt4DWUTm2boVCA2GY44NauAI70vJO1bQSfNACQbpK
p/Hk7iF9V7yoDcPeJWh0flowHetdtjJylnQVV53S2V37goFuwovw7b13bsvInLHw
pYq7VeF3eirNU4QbWOCiLFoJ9vftiP4vTbtWR1PbVb3WSbyIEsY=
=vU35
-----END PGP SIGNATURE-----

--bwlwwn5ocbycp5js--

