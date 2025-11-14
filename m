Return-Path: <devicetree+bounces-238732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1FEC5DB0F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:53:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 26F024E2160
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F20DD320CA9;
	Fri, 14 Nov 2025 14:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XFrc4leO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF3C31BCA3
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763131259; cv=none; b=I4m4YEyNuiJCtDQzFWmGTLlH7AX0v5mBZYyHE4L8hlsAITk836kwAnNsBYe+Ko8RX7ByVnCgeqFgmMtXzLmzkl0BQGIIRuX7iBImDBCNCzGtd6PvrkKwHYOABaOExrDyKhGi2nSe5oXRUFKzdxuXn7HCI9xZ3KSINVMrIuLutWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763131259; c=relaxed/simple;
	bh=PHf/UD5k7iA3QpAzqpaWJBmkuPz8YpybdOls4UKbOTg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O0/eD1ni5c37uiSkfKSKiU8TFv4DJdNzPgblXC3TXtUGYw1XGqf2g+6EOlYLY8vws3khC2EDw6w5EG8fwk21GKSlrcGIMjVMx6buWqpWCswjfZjAQOIf2H9jeEOIv1bclf9RsvUOmJscY+on2bZJzPbKKZG0gRHoV3NpX98wWjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XFrc4leO; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-477549b3082so17534925e9.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763131256; x=1763736056; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xc869ErP0/mjwRDHtCdqaTd8Ttz+Jrltnu++tMGoZm0=;
        b=XFrc4leOjkvBXjTTioADwNiMUkFPiSNhX2758cATPM8xRW04oxnWRBTc8UkIM05OzD
         DMPRi6o4+6GzFpvdYw4ZjxcB4zxOx4XFmsFVUQI3WDK83A1JElaui6GaTE2zWSuZNcAg
         GIxttrxJAXoYGCRmo4jNMjpczizWe6Ns1x2VCOM0hdXQ4OE5BIeZ9uCZrkEkdqm+iw8W
         pmUooYSv+nzoJ2MWsAdoI8X8BFol5Iu0eikBp63/bXZkyEApEWJk1EQ9ZXPGy1ftSada
         uVbm4l/1FHScvIueaUqyN9GCcCiEbtI2tlYEV5DDJIGk8JIeMmJf45G9ZypqpK++A++c
         vlOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763131256; x=1763736056;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xc869ErP0/mjwRDHtCdqaTd8Ttz+Jrltnu++tMGoZm0=;
        b=h+OfIPu+MQ0y4Egsm9TDOqeqMLKQXOr12ErZwzQfwyoL8qL/XcYbB08SbW9uy/Cklb
         O2zQBN9wSIT5GyQcJNwaACuBmCbK+iEC0CcA7gzWbgOVKglmSSaoAL1jkR6Bo/1ppEuJ
         tu7VeSk+BKiTTT+YCATmaYGrcGCdDkMgqx2MTojKYZkp/5QMqmNcrmDmVT9BHFz4ElFY
         5+LUpjdIIH0fp2vRh4wNoiOIbESRkCSea+suEx5AR6pPhXizMAYPaMpqGgv8Akm6p2LZ
         gm2evg2iaiI/aa1HgnWOnh3PGmJR5DljzCwK8bYa8l6DJiT+aHB4YfqsvHPh1Cam1BWJ
         GfJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrhYipWmxvtsLlhrFF92LP7uTp6ACs4vQ951Fe1KhXOh5T8tbWtTNtUWeYzIuwPagnI0+1KjUo/aTB@vger.kernel.org
X-Gm-Message-State: AOJu0YysEQrRGejdA3o43mEf/bA46E9fZWhLzYc4B00/jFJh7r3c2AoK
	S1jGDaKIdRnl3TFfpsRKdV0rzATE6FXuIWzvQsIBTG0JmkBbvASIqFwe
X-Gm-Gg: ASbGncvZFL9SzaVKaKPIJJOhlD+5Oy1eLivAgZ0cFAe9vVx19UyaWtirsle6IN+EYM8
	vDxdXD61sYyCDHjzE5OTZCqTEwF+FYHuP21QQBhn74wzvmVnyA0Y1D3Isc/QWRNlOtMFba88BYg
	FsT7/TIrvuCuJNHaOHrbLduFLqBbNPSj97TvkNaHX7O/vgawq6qB8LKM6eCT+0pq6lWV3VxCTSM
	1RY0Xa1KjlRTkKyEtN9R1He7pHfaj437AahgytAL4zclLmicAw9q2t/nBx52JdP7+VIr5oeU1gC
	D7f+h1dbVwZa2OyzjNHSemsjZKgjIWy6BZ/EuPs1z0CgwMdyzwbPp6gLyLa8RsVg/KSZBw8MCFW
	D1Iy4e15y1RrvN1ONLYCP0GS9xC0j5CTxuy1Ahs0R/S4ezV0S3wBHkv+bKmqEzmEeKxkqb855W7
	JRhXyspAeRZqH8QRn6DTiSa7t00LWngBhvlhoLZD3xZvQV5w16ddXJDQovlXxOcBM=
X-Google-Smtp-Source: AGHT+IHU4qQbpMW5sT2VyXO+jYwcpDuxPys3Hd+1Sg+WB1inlKWAPXzl620l5SLiMVS25lY/hqJ4uw==
X-Received: by 2002:a05:6000:25c1:b0:42b:3b3a:5e52 with SMTP id ffacd0b85a97d-42b593721e3mr3298833f8f.39.1763131256345;
        Fri, 14 Nov 2025 06:40:56 -0800 (PST)
Received: from orome (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae16sm10226305f8f.3.2025.11.14.06.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:40:55 -0800 (PST)
Date: Fri, 14 Nov 2025 15:40:53 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <treding@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/4 RESEND] dt-bindings: display: tegra: document EPP,
 ISP, MPE and TSEC for Tegra114+
Message-ID: <g3xgunfzaalilp52nbzg3axkuqx6hbyrgc6dpixb2q5pitrxjm@fcn2u3lbjawh>
References: <20251016074152.8759-1-clamor95@gmail.com>
 <20251016074152.8759-2-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="efwuts6eddagfwxj"
Content-Disposition: inline
In-Reply-To: <20251016074152.8759-2-clamor95@gmail.com>


--efwuts6eddagfwxj
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 1/4 RESEND] dt-bindings: display: tegra: document EPP,
 ISP, MPE and TSEC for Tegra114+
MIME-Version: 1.0

On Thu, Oct 16, 2025 at 10:41:49AM +0300, Svyatoslav Ryhel wrote:
> The current EPP, ISP and MPE schemas are largely compatible with Tegra114=
+,
> requiring only minor adjustments. Additionally, the TSEC schema for the
> Security engine, which is available from Tegra114 onwards, is included.
>=20
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
> ---
>  .../display/tegra/nvidia,tegra114-tsec.yaml   | 68 +++++++++++++++++++
>  .../display/tegra/nvidia,tegra20-epp.yaml     | 14 ++--
>  .../display/tegra/nvidia,tegra20-isp.yaml     | 15 ++--
>  .../display/tegra/nvidia,tegra20-mpe.yaml     | 18 +++--
>  4 files changed, 102 insertions(+), 13 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/tegra/nvidi=
a,tegra114-tsec.yaml

Applied, thanks.

Thierry

--efwuts6eddagfwxj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmkXP3UACgkQ3SOs138+
s6FXGA/7BggCUZev0gQB4+nubn15T4/Uomy1O7up6ad5zYYm9jlQzcdQuR0H2DMp
+d6zQi9or0Cu7PoCV7TXRefukOmOK96NjxXJhe8yeMIE7SvS+GgLtBO/M3aKw4YJ
z51yZqqLUAwt0TGYWI817h/TWSNN3NVINjQhM40Kxq24+Ixg9FSpH7KE22ST2DVA
3fo6SNTs8qQZ6s6Y81duUZqe6gJEfNoQbj7OEFQ5++BMIl7UF5cFUqoNa9gLoSZc
NUSHVANkw9PsQ70LVmgcoMxPeVeisO4MOehFnsCNCwGvipv4KVyI2haqCU1DRnGa
7pKT6fkdDs1gdR1ul7m55T++eYzbzfEiwnc3AC2tOvAxfO6bBX5n7NWAtvmfpwDO
IGgtiTen+zU1Z2vZVz+3qiVZWb10BTGfkpmK0wAQ41vHganHUGHhMbURGDKkcDcl
CUasQPWxFRpHvFKpwcm4YzYrunk+zVUfzyRnCZdkRazKRYQPKUrr6tmzwVYa6B35
u/zaxxkhLnOVVMZ1G74PPvnE1iqOZLOOyIx7Vnt/1HY5Rxa8uiVtkcsjHxMAn3qT
G51Ettazq8+00Epu38gUNwAMWPVOMm39e1+8y7IBKqN9R859V9pOLEF0WRq30bwx
ThRAp0CZ1qafLfHHaxdB77pRgeDIUdGNXPxAB4e+DgH8OBki/G4=
=Cedg
-----END PGP SIGNATURE-----

--efwuts6eddagfwxj--

