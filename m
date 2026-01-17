Return-Path: <devicetree+bounces-256307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C96A7D38A9C
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:20:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C98173057F57
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE484143C61;
	Sat, 17 Jan 2026 00:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kTV7uoRk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8495238F9C
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 00:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768609210; cv=none; b=gKzQfToB5TI86nDZZULQgWtD0BWebqEzXAFo09wcPS7QlvZPLqh+ZilpVcTnR0jMVmTnbx/Xu37oHbx6vcveukcwAuO73DdQVf5e4yieVUeUnU2/ZgkgdjQCtCW1S2KScOtmbgyTK5b5iEBQgl3Qfr7ANeaxWpelau9kSvpfMYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768609210; c=relaxed/simple;
	bh=8VsYUdV+ZGtwBbWIdtRn602J4qIYJ25Ps5b08wwWbxY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=taKy5d485Vmynnj2kivfrXkKxGP1QZuzHv8z/cRueFsVw8oPuBUu4NZQ7GsdqzGI49Ll9rkg3vo9pu9jOnl/n+yOpUCkQvuUt2OszkOuUF/ozuqjuwYn/fo046aqjwxKx4nh3LpZj7hE/Y4KYlitfYDDsKtOI8rJlOXfEwWRuQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kTV7uoRk; arc=none smtp.client-ip=74.125.82.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2ae61424095so2843911eec.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768609208; x=1769214008; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cczEx05352KICGWcEnd+Dlv+PGQV2cIqtx8pi5Cp/Qo=;
        b=kTV7uoRkUfwbHSU2NeGpYt0A2DjQKyjCQ3XpjeK6jFdONDRZdzMhKMVjK//zUmPX8L
         AU51m0k3FxyqKhbBs1APeNKMDnznrvId6mQ52FvKSmVyWWZkGm3eORhjTMHAiOdbp3eC
         Af5wugvuDxomYGT1E4BrM4QnFQrEEwNrztdPo7fXSFUCMDfVwl92BjpM4W8N2mA2/cXh
         UahDc0VjojNV4c0hgp5h++Emy0cidn6aZCrSNjrxGWkkJTm9o0wCoiIyRD72VDhk9W9U
         Nt/m8auvr1LO8QE0DOhr1J6rzVtGOcM+uTj+GvIH6O5ZWDGSNRT5Ay8b4dAMJikmIB48
         m7cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768609208; x=1769214008;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cczEx05352KICGWcEnd+Dlv+PGQV2cIqtx8pi5Cp/Qo=;
        b=Pfp0KyPILTEPVRWVKeRrYS8DbtTdHyM4jyWN+QvuAeEyG5vIYJpZ5kWAHQ6E/U4Szh
         PZPpgP2cg6uFtw8n4XToVoTabvFVjCiuFVoN/KRUbllgNXSTsFEdVxv1GINKBY2E/qq5
         smPXKVM4L4CII9PNLKEJeqVpTVSMZ9gdClRKP5lkDcgW2QV69gJ1g9IrZNUTPnwEksTI
         5LJ/uMQg6zEaOtZHq9qR7E9KEEXhQKbv48fx5Mshw1YsSOfE5J3w2o4BG/lBnVobsT8Y
         6WJAW91zE8zrWGXWZR86qfvuZ5my/reM7TcPKmvyogVnRakas9HY8pC0zs5x/fqsnZXq
         9IvA==
X-Forwarded-Encrypted: i=1; AJvYcCXPWD0zXrXvgWJWgL8A7jXBSX5LhjA1dYgbKGKJzqvrrm05+TeoNfcO6b+d7MWjk53nGBNNY9piqnYJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzYThck2+B+A3K/CvVdKex1Gppklcaw38t3HSCcZSTUbpN22Bdc
	uV5AWth4V17FGDqO7d8pVYk/GdGGvO2AoicT8Y9RGM9EvwxiqhZbcHS4
X-Gm-Gg: AY/fxX5g6qt5AqXZChwARgVcH4lB1mpBmOOTI4vL4AUKBK1JUNzqNlYy6uuC86sQdjl
	kL0BMuf07my/XGeWic0XQQnvP3CFO1l3L8BUJsMBgBm5Gzwnzj+EfHFt5/rGr/xEPv1VRL9LMkw
	wOEYFwMfKaMsnWhiQ3nwRsm0MhxaWAwZdomJtF7IHmDRxbOAdSPub2BJ5uNmkliC/BnxE7qv43a
	Ew1i7JR9xFfYDIGcpnn3Bczzg+ZPUuGcY4/MnOYmhjeZ4mOfKBg/VZ87NOPwYidIfWm2RMdzCBw
	wnxJ12arFmgg5nLQvYbs3XWb5MAqNKjoRkQFXdrdBVBNuens4csjbIYMuCA+XzpJmAlwQOY/Jvu
	t9O5QqZTtCBLot/bkR2tOJKv20QSZyVMJxeTgQ6FvnfjzVTxY01B9OKLYJ7u4nqmy5fKUjS/lVp
	kW7N2QBVyNyTQfoNltuivb0az8rTq15lbAckpU9W2orsrTKMK1cCcMCbdvOx/LmQYYeriyBl8IB
	g==
X-Received: by 2002:a05:7301:1e85:b0:2ae:546a:f2c3 with SMTP id 5a478bee46e88-2b6b46d2dd9mr3435395eec.3.1768609207520;
        Fri, 16 Jan 2026 16:20:07 -0800 (PST)
Received: from orome (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b36550dfsm3932999eec.25.2026.01.16.16.20.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 16:20:06 -0800 (PST)
Date: Sat, 17 Jan 2026 01:19:59 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <treding@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Prashant Gaikwad <pgaikwad@nvidia.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Mikko Perttunen <mperttunen@nvidia.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Dmitry Osipenko <digetx@gmail.com>, Charan Pedumuru <charan.pedumuru@gmail.com>, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 1/4 RESEND] clk: tegra20: reparent dsi clock to
 pll_d_out0
Message-ID: <aWrVplD0jfx-JM1v@orome>
References: <20251204061703.5579-1-clamor95@gmail.com>
 <20251204061703.5579-2-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jaydkfl2lwerisz4"
Content-Disposition: inline
In-Reply-To: <20251204061703.5579-2-clamor95@gmail.com>


--jaydkfl2lwerisz4
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/4 RESEND] clk: tegra20: reparent dsi clock to
 pll_d_out0
MIME-Version: 1.0

On Thu, Dec 04, 2025 at 08:17:00AM +0200, Svyatoslav Ryhel wrote:
> Reparent DSI clock to PLLD_OUT0 instead of directly descend from PLLD.
>=20
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> ---
>  drivers/clk/tegra/clk-tegra20.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks.

Thierry

--jaydkfl2lwerisz4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmlq1a8ACgkQ3SOs138+
s6G7cg/+Nqq8drdePQg7ZDPcGam2jT1OJFozjkQqShUwbw65NT30Ld24jWkBEDET
V66VMxWnuD+FqJUtmYFgBgP+09riMOIn1kjUwq48fs2/gTigorAcdLx60a80NuP3
uBece6NnnstpG/euRgY5blBwruOhTSyLnu9JPOVnnRSAoRncMndRKLWRykAn201U
ikxuUD7pdh2KLMbPDdqQaTgE/IyyEqjmtt8N50vHBLOZZAvgxaG7UwQsf5RH/KUh
GbB1fyfApGFoCvVJJT+Y3RIH1R0UA7Cz2iQ9BpnWq0qKZbRdx2aD3YoEhsAXT+qu
U/bY+kcvYwshKoxl1KQoM3jkk0k4V7QoN03fnjyR21ZsXjnQzf0RKu/0UzC1BK5y
vLBkf9olK7gFjgLDjrXEzKQUB3sIY/YGWig21onNSMU69zB+JOB6Y8ClDIOoyyJY
HtzjYhTgsuwPMi1vocOk2HrDTlWl7KYZOOi2y00YGp8/bOhWoOvP9z7D4AcbR3zW
kV248pj2Mzd/4/k0H2k69lMZeoBlXZnxAtK07aADqo7eRqYEFUjaESqAPSn7y1OL
5wSs+0gnrfv7vEAC5r1wJ5e+VEXk20ErPvTfzrbQtmo98iyWuRLvR1e7t5X9vuAj
BP+2EYu0xjdpPW9R9wuZG04CSNWKx4490GPl+9UTm8BmHsO5kPk=
=bC1o
-----END PGP SIGNATURE-----

--jaydkfl2lwerisz4--

