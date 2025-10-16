Return-Path: <devicetree+bounces-227548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 657A1BE279E
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:46:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E5E104E5C22
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1242BE651;
	Thu, 16 Oct 2025 09:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aPsI2P1f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA502237713
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 09:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760607988; cv=none; b=UA6dOb2XzdewE1OB1jBC/Po/m55wwHdAem58xEj9CriKdy15k8ovgZJxipBrEVbvI8EsVWEBsZQYfNg+ybxktMRHQe6PITZt1r+/WWeLOrSDU4/ipIvx2m2zfO23EK56oLLYwgHNrlMzmpK22Ij43dmflN2+2aZcdXMKDTkb7gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760607988; c=relaxed/simple;
	bh=/ba5AaFa7bNN/UhfGu+VQQc3WN2W96FpBmcTDSy7nWc=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mVZ4n9T6adnihWm37z/Kps5+as0VemdJceVL8mv8IIfO85AGuvRTclDwYvi84Had4bwXt7DacOJGzz5RV5QWjE/kzFz2LWhSov+YXDGsluc97gYafH0fL7N5gRiedzY6PqBR13xoIqvzDdYGqwGWqPwIcC1RI3cZaBTm/x++MSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aPsI2P1f; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b4c89df6145so86015066b.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 02:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760607985; x=1761212785; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MX/GylLCSmUvMwDfmQ8pxHz76UfDw4zqtxp+hu8raE8=;
        b=aPsI2P1fXmzipnbw2ifi6SUNh7CCIw3d49/cuVhn1eunTaD4Fn9mcJpwJieq5BBnPl
         3/WlnMjYTGYOijShRWTxEF8gDMgkeyX2x6ff8MelQxA/PrphEqNxSboN86r/pZv48ZBK
         aOTqZHV7Uhw2AKCFhfmYwPzcMF8uv5ds6U2WJT/x4IgmO68dKDVjqTQXgtgEDL835BBh
         TmNsSbq2Ob1qH8CgqKQQBs4MQ/NDhbOHbs9ns80i29DN1xQx5WLz1a5kSwUaF+cmFWpP
         LZ6wVmbMgkZ5jcVKmSX7c7otHYBexZ2/TNORK6OnzxfAMAqhQiGIDxeozIwSmo8ddLy8
         6xmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760607985; x=1761212785;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MX/GylLCSmUvMwDfmQ8pxHz76UfDw4zqtxp+hu8raE8=;
        b=vZNo8LEpFy/3QrKW7ec7WAnfrU5gOoTqxwQWbbJdUf+MSyC2lkdbwYiyC5G38sQS8R
         SzDzo8Gc6U36kNLI6JXxsHMhnt/PpERjzf94pVQ5tQZ7UtmbTSsme/+LsTLvvZGoA37c
         5cQ9bsDJJ6z799TrVkTZRe2F5KwZ5mvCrmdealPkxRAbT0cII5mV9ff6p13y84jk2BVc
         8QRQOvsZYIf2rMprWbrHqnUEwRxeHvu6ftz32vXVbImIoKzbIwUtjtnTDbQzOVxN2/4o
         QIUNVY+l6uu7EBn9+JAgZnV4TV2DUrkCCMQ3ZtVYE4y9a6nZ6DTR/REHKRZJENMnvN0k
         9Mpw==
X-Forwarded-Encrypted: i=1; AJvYcCUHRibEuo3/2OCusQp2YXqIh4EKb2iCF0YBS4YSaSonaQssp6PhphLmIPY5MB3GatJMCX8jZBlAdyFO@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1YAO38XvKbo1hQUgq8wgpSP5HWLevyCk22JaFaSm2BgtJNmK2
	ypmAQv21HnKg2X2bc3acP7hO0xy4FxLEz7I4odTwBnSa8LZVXoDfPe7R1mkFYw==
X-Gm-Gg: ASbGncvwOW0Mk8MEnyc0SXhALxEhLAu+pQRqoWNeVuF/1qCwASglfY6vdAmXeFPCCa4
	W4VuaJZFAu2GkLRCI6ZXYBOUuT8QZUMv3wL5JwlY+iZMCe3jST0LeBUjP+vMApkgH/iwl9cBluT
	LqP/BLlItGOacjLWUV7YCNGVgS+4QTC12EsJS6FP3HkH7iiRo6nYXu9Sc+1ExdoEKiuLsmzwG4l
	KamhF/dr7DUN059ga6cWsn9i702NBIkoehLV3NLOlM7Y2AL6i4+07+RVay8Ph/tvrfD1z0bZ6Sl
	3PYUkAYBk9Cfc6VR1fgQ9zijNX3OEBg/2T5bpsTNnJUPig5xWmh1wzCps26iwu6DUp/JeZcA804
	AwlWW8DEp1fBTPDit4cf/Xy1h7G4nVuMXVe9H1TVqADSiuZis2m7nj0JxjO0QfcFFDyRCaHijEX
	YizEZF5VO7eEBUAQWO1n2L/tvI3qb1g9e0d8VPNiSPEcttkWYskOFr+Q6xXKj4cL5ZhsQ6PlSsT
	g==
X-Google-Smtp-Source: AGHT+IFXZN5AuEtML9DWbKOgUi+kfLk+S8DYALrtRGnSx96KUuPtqrYJ1KgZi7BeXM9gM6E2XDAC2g==
X-Received: by 2002:a17:906:6a14:b0:b3e:580a:184f with SMTP id a640c23a62f3a-b50aa48ca99mr3637434866b.4.1760607985064;
        Thu, 16 Oct 2025 02:46:25 -0700 (PDT)
Received: from orome (p200300e41f28f500f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f28:f500:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cba076bcfsm464699366b.32.2025.10.16.02.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 02:46:23 -0700 (PDT)
Date: Thu, 16 Oct 2025 11:46:22 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jon Hunter <jonathanh@nvidia.com>, Sheetal <sheetal@nvidia.com>, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: power: Add power domain IDs for Tegra264
Message-ID: <ahbxtlhlx5xxbld6w3j24y6y2hhvhhyevsgcv6sglklazkbgq6@uu35o2yqtqgb>
References: <20251009161039.1766845-1-thierry.reding@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="22y5rwyjiy5fwlbu"
Content-Disposition: inline
In-Reply-To: <20251009161039.1766845-1-thierry.reding@gmail.com>


--22y5rwyjiy5fwlbu
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3] dt-bindings: power: Add power domain IDs for Tegra264
MIME-Version: 1.0

On Thu, Oct 09, 2025 at 06:10:39PM +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
>=20
> Add the set of power domain IDs available on the Tegra264 SoC so that
> they can be used in device tree files.
>=20
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v3:
> - rename to match the nvidia,tegra264-bpmp compatible string
>=20
> Changes in v2:
> - remove _MAX definition since it isn't needed
>=20
>  .../dt-bindings/power/nvidia,tegra264-bpmp.h  | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>  create mode 100644 include/dt-bindings/power/nvidia,tegra264-bpmp.h

Applied, thanks.

Thierry

--22y5rwyjiy5fwlbu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmjwvu0ACgkQ3SOs138+
s6HEeQ/7B988NarGOanoLre3aEoRq7O65jz09QUETHt+4/exJD3nffY258jszf6J
dRadnxZhYS7vdywJP8XdWrfi+vPQtHaVIAgffxWiTcBLSw7xMzsO4W6mJUSqw05E
H/rq6+Gc1HAaT+B6IOBeRyxKnmeKnSNucgxwUP2OpS3fKVFzl62ThYh5eoT7Q5XU
Wj68UqHKcvJrUIrl/SGOIzi3JFln1oYR9Q8E2LmAWy1GbwoaI52Dc1nOsbhe61xB
nf6stXmt0DGGusHks2r1lgSyspu9g2+fqvrvko5X96Fw4+wOwvde8F+LdPFY1e6s
OKzh09OIerjw7CHZJmYelMXc88exJBnIkdp7q4Mok/O6m6/8D2afLp7k/wSX+Fa2
4U/p1bgsvsfssqI04Vv5d/82yd2nixR8dz43sdaL9pcqdO7uKOpPYs8Rn4dKGMHW
PP+IxV+nc5VBqq0tSyEBIByD2GDXwCOmGmwONDa1GzJCr3+ga1KOEx+x8S7F0dqV
g9H2rzvHGlqZTOR9zrCTsVNKlo57jbeudA/C/nVfTVR66XAZwy3Vs6XnCrjuwq9j
FojvmuXUWqtW2/UD8oQisuZC8NFVKACvhM29wXZHH+ZfTeFtfgW8J0s5WTbQw17R
iRO+0Ysf2H82avSSUSc0tZhfYiCFj5bCaUck929XFUowY9g3zp0=
=VY1X
-----END PGP SIGNATURE-----

--22y5rwyjiy5fwlbu--

