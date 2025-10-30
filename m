Return-Path: <devicetree+bounces-233436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E603C21FBD
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 20:35:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6D65A4E05BE
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 19:35:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 285182EFDA5;
	Thu, 30 Oct 2025 19:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fthhA40S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687C721019E
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 19:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761852935; cv=none; b=hSb/yG4wG2Hl4096f+AAlQC8781ZXw+Y5Cm6dLf5lctsWYWulm7e3vvh7o3/pBopz6Or6SlgSbPh40HodwPM2nn7/xKmkRPvttTwpLZnN8kKlJYtrP3b50lfPGiXUvCcdr+Bl7dC9jnH+Rwoj3+sQhllAGj0BnBigcY6ki9QgO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761852935; c=relaxed/simple;
	bh=eqmRamTbG4clj9Aep7Jsrzc0cVWRszDs05w8x0McFHc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XLVndyVSE65OSJY4IJaZDv6fYQJWK0RHhgCUdsrh6LQeZD3hYtMHSoJwjcJkn5FHUylbS2rAkMFPWjtBDcR010EbUOOcHOP7L6iiqoxiRsEfEntfXuX9cvCqK40tdouAX3mGDsrog5rPSoUXzJyP2MoHcZCXFXFniThEncEZONE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fthhA40S; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-475de184058so5217245e9.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761852932; x=1762457732; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EC6juY2xw4PiGI+9uqqaCXvPHetzGAwXkiLX/PSLR2g=;
        b=fthhA40Sep+O4oojZFnwil1z+pwFbm6zvlYKEi9oBJ6q4WJZiCDODvjOIhe9Uc6MyD
         pDzPXEktS0WJNcN9lxsvOu08aWgaY7rAwxWxlXqr9ssklMSf8pScJLG02B6tp5mzWF96
         Bn55UYICjmpKAdfKscsThC8KLi/SKw/hsNce4tLM2zuJfXKwXUApM+UCSMq/Ls30wsAm
         ToyVCpp1CfnYWqeKrb3/7ICN5CIO6o0zd7bH4ETmsxisy4ZLUMUzD6BWsWesfsyxAdlo
         AI/9sykG9aS1n5aqrxcfINkAtOVYVx9Nhmiu4rz/C14rC6EdOA55SCfARfqR2BDoF0kf
         /nXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761852932; x=1762457732;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EC6juY2xw4PiGI+9uqqaCXvPHetzGAwXkiLX/PSLR2g=;
        b=rykq2yNjEV+SomrfFs0AYtF47i9NphlXyApHtRdxfmJbtON+Hcy7uJo4IgyQ7elxQM
         rmFxLhYhmh6mO7Gp7JBKLLDKsm8XdHeJwJIEzjz8MxHrQDhuhpGZWGGNcGCd3ntQa+Ep
         1b7BNiww/m5ENFmXMv5UooiH58CF1iOHcCLFLBesLvIiumgBrqiJ4dtmwlkD9Ty4x2kC
         jYRlhFIAK1Ia7ub0qg3M02pxrPCJB3g4cpBSt8YR/lMlmdLmRYPMRUgpmpcyBvztXNt3
         5YNw+QDqQfA0lLuQaXTHJusBu1OVgF9aeRKPb4azATy/8EJftT7D8HkpMkEa1cWZiY7E
         jGIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMgRGztvPlq2de7r+yVSUqExk6d4V74/f63izttG6QRWOhTY3DuSVfkhfDQQe+r3ZV3OTJXFnGCp3/@vger.kernel.org
X-Gm-Message-State: AOJu0YxTeCnTjwO8zZf2/j5NZQ6LYDr21cKdARd97h8c6vEJ20FQIla5
	WRCZ6eOHB3WyLfb3VULNTyrxbePz+yQ3cYt+jplH3FJIBFFxzT/BoBo6
X-Gm-Gg: ASbGncskd5KDf6EYkrcCjTfv32ClHAOwgMEuwhvzVd079n1dAH7LC8vHQQdOmDbIP7y
	ZnuuXlQBZiMM/lMLm1dLbvhCXFu+Dz2SyHSdldGvP/gYFDkHENNOOn0X8zrARNudotbgIql2Y+o
	XSXOlIxGgPcPHKbGJ1OIGXzbSBx7l/mQmwDcBa8whGrpo4H8ZNWQGLqoVayvPZWarEwP0sA303e
	jocZPnRpGmG2/GkmcUZoNe7kTv/wpt7YuoMhlASSdt2EcIV5CDfUx4GjrhctsxjDKet4iabSAmF
	USXvNCJyusDvUa1OiAacoqZSdsAXrcVT3bHJW/R69+AzaPvyxciEU3jGwryCc+qx59fiQl/gh8Y
	29h72bp9Do1TDocWFF9Vz219NJG/TvInqzIk7gpPjykYFQ2St1+yYuDoZpNk8FQ51sYxwHfPuOC
	ZtxGWH1Z0KgUF7Gy2IljrQDU6UxysanjtgeCg8WnXfoYOSHQ+/Oev6uzPnXTNLzD0=
X-Google-Smtp-Source: AGHT+IGFztItCHGY/qbdwBuHkfRV467cKKxUC0DGWgO8Y2TPr5ZY0z+xVGs6NBf6tqGX8bxV7Yrv3g==
X-Received: by 2002:a05:600c:3f1a:b0:475:de80:bb2a with SMTP id 5b1f17b1804b1-477308a7cbamr9844395e9.35.1761852931647;
        Thu, 30 Oct 2025 12:35:31 -0700 (PDT)
Received: from orome (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df3c7sm33074056f8f.40.2025.10.30.12.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 12:35:30 -0700 (PDT)
Date: Thu, 30 Oct 2025 20:35:28 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: webgeek1234@gmail.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] arm64: tegra: Add NVIDIA Jetson Nano 2GB
 Developer Kit support
Message-ID: <rvzqaji7na2oipwcbw427aigjiu4qxwpmc7maaz3uluprmip3a@s4gslwmiuqxv>
References: <20250611-p3452-v2-0-fd2679706c63@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qccgnu2h7qzvmwyz"
Content-Disposition: inline
In-Reply-To: <20250611-p3452-v2-0-fd2679706c63@gmail.com>


--qccgnu2h7qzvmwyz
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 0/2] arm64: tegra: Add NVIDIA Jetson Nano 2GB
 Developer Kit support
MIME-Version: 1.0

On Wed, Jun 11, 2025 at 01:53:36PM -0500, Aaron Kling via B4 Relay wrote:
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
> Changes in v2:
> - Fix usb power supply to align with downstream power tree
> - Control vdd_hdmi with gpio pa6 and delete unused vdd_hub_3v3 to avoid
>   conflicts
> - Link to v1: https://lore.kernel.org/r/20250608-p3452-v1-0-4c2c1d7e4310@=
gmail.com
>=20
> ---
> Aaron Kling (2):
>       dt-bindings: arm: tegra: Document Jetson Nano Devkits
>       arm64: tegra: Add NVIDIA Jetson Nano 2GB Developer Kit support

Both patches applied now, thanks.

Thierry

--qccgnu2h7qzvmwyz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmkDvgAACgkQ3SOs138+
s6Hl1xAAjtuhL7toq4LSF9ZwClfCP2QV9wG87nvw1ztGXG3IWD4BzoVy8zBckjcS
KEsTwNkqZICEuh6tculbT+si4jibUr4jSYIBGExOBq0M00EUGTIbILvbKhH7hdBj
JUkLBJ1wDhLw5dT5rPqhSGMngTBTTY381iVnnpCCxQMeEm5lrFVGHg1nwM/LfIG0
rhTgoiSMdGpVQgAuYPngchyTisnpp/rhkvUNeRycskacHv75QgGyG0y27vfmk+jR
mA3ycvkXgZeCEp8BT4s9M/jATyopdHfSHF1MfXSOsn2zgKs60TxcJoBpVeR3NRcM
7T/HENMCJ+E4LZ21aOu0I6H1f3Xuasxk17o9V1mJybH0LE764+m86btELURrhtmh
kNkIkfyzyPrKItxFAHiNdrwTOW2Yu4BKvVm4a9X0m05PJnCqik0Oi4E9uf1MEgmI
luAk/yPCHRXlBOC+6a8m2goClQ9Pl1ciUSl0YeMSZtRbec7bnMpkFNpDV/v0mW+1
dur37Ry/6jP8gQxFqfPEMcZsIA/FKRG7jr3zowFtSCjj8VKAK8lfBbE/EmlXlGk4
cdSrjFJMAyxrL5nMB3EzQYSTT2+6zbMLuNbkGM2+Ae7bbS69C1o2XvmpYSM32l1G
JA9N24WvYN9497h2d/QEKtFAXvaRqFKks4VHYr7w7PmirXRtOK8=
=dlVD
-----END PGP SIGNATURE-----

--qccgnu2h7qzvmwyz--

