Return-Path: <devicetree+bounces-227739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F51FBE4296
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 17:16:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id ED39E3556E9
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2B6C3469F4;
	Thu, 16 Oct 2025 15:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ll4RLxDA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD9C26F45A
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760627787; cv=none; b=IQy6tpX/4D4y9HbyiGlUa5w0esvV6SzhVdw0RPnQ56D2o1F0vEggBTVklDTLRK9wXHMORGJjkLPBaoSizyOwgU9L2lqQTYQHM6D+OaBuHOU7ueWvjy3Ke3/9uHgOkv41mIv/qlr5PVzgrQKpZ7iWHx2HxjSHoBDZWSa6BjqNENs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760627787; c=relaxed/simple;
	bh=wcfBHmd6UI5Ee2LDKTIUZ3jBqohaEOc9j2+snQ6rucI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uH88CilxkBgIl2+FRTDuLceJ9YC43ql4BHa6/k8zvHYiIHImQ5kkWjZojQXurSY7qv17RbXngHT27tHmWtQeSFOACEjNbpSbx+ApSu53qzt8wW7tncpqYfR9xOGGydpZGsFdqkcZ6FHSLv3fSc276lfB3m+tkOYR6s3YMtC8ALw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ll4RLxDA; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-634b774f135so1469138a12.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760627784; x=1761232584; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+GMHzyWxIQdB2FcnGDsVo98f9mvKfQ0tZi6sM1VRpVw=;
        b=ll4RLxDAj0FVXCLpmb0Hy92wpkTF+tM1aJ4Hph33IeRmerp1ZGixggCCVv1QYgMbmi
         M/O4cBLWnNfZ91OhZzTHwaBP25UPrLsewfV6wE5Qc/OsRf6sKs7BqxNu1JYpSFrF4FMP
         mdGbLp02Q1svctTmrUsS5qyfrRPVmfNf4bgjlm8yH3EWWILdj6LqCkzMfxUtwcuYGycA
         fDSB7rSPCWvlxb7Q0ClsbBuK5AAAJtz9fDUKQ8tfkcjLOK94xQI916au5lMGWiFbJzuK
         zFFny+iT9Eb4UI6VBbJ/pBCt+S450nk9b0/PbTPmDSDpxb9Dcclq0Hfy+Jqje0cL7ZSO
         KlBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760627784; x=1761232584;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+GMHzyWxIQdB2FcnGDsVo98f9mvKfQ0tZi6sM1VRpVw=;
        b=ocZ7AKIalBE15qQqd05tnQLZZa92yTEEmvzqX1liGXF3UXHfD2oyrkQhB7yswoDOe2
         4ofRSzKiy5egME1CF+Mj3KpwbFDnUh0Av8rl5T/xwzP+XaBUwsRTna40dov4VFDg6pAO
         hoji9Lask4lMKWOI8SISJPIautSzvG2x5YRdS7AfOADXonnjE8nT8yY3t674SlwPO7VB
         dqLw5YuoAc1Htp+WbpgzsMqWm5FciVbm8Roq7D/QtrrxAIZxLrnkey1XuHhDHmRID8pf
         EicU5KlEZA5ZOCgt3j7jLxE0JP+OOldHFWLAtPdvwOLFh8r+qQf1rDB9owQSpdMhvex5
         qliw==
X-Forwarded-Encrypted: i=1; AJvYcCVSrm1BL6IQlHCXBu6oG0uVffmasCQfvSgwZ3AJsvz63jl1cUbrG2vtMzr/gL9j1/aTFohT6kQ7de7A@vger.kernel.org
X-Gm-Message-State: AOJu0YyfxcKriY7u90JDADLB5ukhPjx+Mkrr+EVEVTSWtIns1z/TOYKS
	XoOt7VE2KGO4O9+xL4z0wCxRnePNy1aYDk/zWLaP8RHD6n+YmVOdSrgm
X-Gm-Gg: ASbGncsrgAD4p8GTuUbo3VR6ol1hZwF9knzZKqrSwh0m6L0u5MY9529pT1F+g1m63TE
	4l8F7saXf4zdau0r5VXjlG1GHAdv0izVgXf5XqythzWvhMrAMe2Olpx77g3QoYMWqrPNQtz/Dbg
	7siUuvFlMJeWMLZBd/N+k1khfrh29T7pgxOWB/hXEFaFVKKrBjlS7cVNKCU/TsC/76mZnXaeQll
	f6xorR2Eg/fPP/sH6X5Nr2nroRmVXpS5t9ClwnTbD81xlZ+Azcy0hyo3UXOZ6br+K7qlMhRNaP3
	ENZ6Zf2LcV20Zqsqykp/kzuslYUNfCJZC86DWYgQD9gCNnOjXrxTzUZB6t2TAdE8pgUzyYyIAzt
	IyVpNfHN0R4QEkMIW6Mya3C8NwCut69imQ25debmWjLNirKbw8xBufxx9W2Ao/oNfgNW2XxENqP
	TYWooHLLiv2P8KknOsV0OElvMwYszmEC7nhls6ynGydXjWABLE1ekynN6hiGaFLpij59nRvJLxW
	g==
X-Google-Smtp-Source: AGHT+IEUnMRpJptAyqDQKCXnI29t4Gj4evz9uABzOpOdIG6VCD9oWY5iTASgKePBY093qoWb66U4sQ==
X-Received: by 2002:a17:907:2d06:b0:b40:cfe9:ed2c with SMTP id a640c23a62f3a-b64769cd245mr26276666b.64.1760627784283;
        Thu, 16 Oct 2025 08:16:24 -0700 (PDT)
Received: from orome (p200300e41f28f500f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f28:f500:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5ccccb51fesm532883366b.44.2025.10.16.08.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 08:16:23 -0700 (PDT)
Date: Thu, 16 Oct 2025 17:16:21 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: webgeek1234@gmail.com
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: tegra: Add Tegra186 pin controllers
Message-ID: <qkyzlnni5nqykck4org4vgxzju6v6iha6fulgguutxuhf7zozc@awyches7ozox>
References: <20250812-tegra186-pinctrl-v3-0-115714eeecb1@gmail.com>
 <20250812-tegra186-pinctrl-v3-3-115714eeecb1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xpwhjuenbephr6ly"
Content-Disposition: inline
In-Reply-To: <20250812-tegra186-pinctrl-v3-3-115714eeecb1@gmail.com>


--xpwhjuenbephr6ly
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 3/3] arm64: tegra: Add Tegra186 pin controllers
MIME-Version: 1.0

On Tue, Aug 12, 2025 at 04:24:42PM -0500, Aaron Kling via B4 Relay wrote:
> From: Aaron Kling <webgeek1234@gmail.com>
>=20
> Add the device tree nodes for the MAIN and AON pin controllers found on
> the Tegra186 family of SoCs.
>=20
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra186.dtsi |  12 ++
>  drivers/pinctrl/tegra/pinctrl-tegra186.c | 207 +++++++++++++++++++++++++=
+++++-
>  2 files changed, 213 insertions(+), 6 deletions(-)

Applied, thanks.

Thierry

--xpwhjuenbephr6ly
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmjxDEUACgkQ3SOs138+
s6E1FQ/9Emy2fSHqfWOx1mLl7fFhFiPgIbO/7b6K4ogiYAUJPPgObu9dQKwRZYcT
y3WxvaYz9orL2R8f9wssQTfeCjiNcxs/9KX63v4K0A8UTAZ6IFU+jwzcuswQ0ZHX
CLEl1zQnPnzbderf2Ay7rTbxUaOt+D9yDXjmpgm5zGOdGEPCibFaPC8RTbx+5Wy2
rqztgmgQ4lHhBuVKGfjrfaVttYLrwfv2cV4pvZiyD+o5ekRgQqUqn6vrKbv81edG
/RYqWHc1p/ylM/ff5oJKbSVEOIVHkdfFB6vREUZHcb5j8CFhXKojdp46dWRNzyKu
ZobImewQyLDYmny2ci3uCZRZHuohBOHofyND1oPBuzA7seFGAmH41hNWzQD6mbuK
8FU07VkQyz/S2vEOGb2yyeEnnzNLLSPmiJRXCO7Ld/voGIwAr5UpGdZKhcTn0MHG
Djt+P8cRy0x5FppjlIT/YqPlhWFKiovlRJ9SSlMtnVyPMz8P+c4wC77uMtQoGodW
3QkeqNwPVxDsN0pnUFb24DepLbCoOdRAknomjXbbTiRyzwyhCBoJ1y+C8fBNXzjM
Ndo0FiyUNf712YVBRTtj/Kd44VxC6z0G7kChlUxo1ja4WTI5IZQYxDxoZttn0Nss
07AJ9/Yu4hGCO60Ut6sY34UshXe//dGNnuaxvrMEbG3DwjD8uEo=
=+p2n
-----END PGP SIGNATURE-----

--xpwhjuenbephr6ly--

