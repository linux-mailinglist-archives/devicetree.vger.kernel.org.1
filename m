Return-Path: <devicetree+bounces-238737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4A2C5DB65
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:00:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 522CA4F6F90
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:48:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87711325721;
	Fri, 14 Nov 2025 14:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KA5+ua01"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36592116F4
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763131560; cv=none; b=TsjwVqsP3nNZA8EbmGMfwLLlEuvhJ7oKI5F/JsEkU3TJLFahk3WUShqI5DPEvD5rTAgcxTKB9cCkZq6veX/FRIMu1HR7dQa9jfPqOyggbbuvOB9XwcTNel6iDfVfydD66iW9kUGGmvxqC3wMgCh943p11miG8Oxq8uROq09grQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763131560; c=relaxed/simple;
	bh=eGQaJAhgLC/8WdyNNs7f6oRYf3M1D0ppgkOuE5t5C/U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kQnOme2Y0du3yk/VtrNmMdrbXx7U4MiQfg6kULtrr9meMcmh27hiHtUe/80v18hcMyB68Z5mHeTrYYwRhWT+hoS8SsUoh20cA5BbngKcVCEmZQtl37+8nW7MBA0BvePbeqYeLrceqqNNMZ8cu8x3uugqRKJAUmkFKHdlM7woio0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KA5+ua01; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b725ead5800so257191266b.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763131557; x=1763736357; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NcqTFzdPUrrebECSTzlvrk3vTPk5gx55tgqtcHOukdI=;
        b=KA5+ua01cJQjQjsZ1UoBrtKEOu4aJhMyOPcweX6edADCVSQkHZYyrl/4H8cI0Uh+bb
         7X/CrlYPLgbMhxgdy5WYfUt9KHWnLOhjbar6y3hQugdFDnQYzry2g9S1qNC/qaXeoj2o
         UP8rxzd/bg/+msgro9hCW8hDjx7q1Ht/p65S7PIg5ZAOZ2KumibEfp32l6iP6k7LtZFD
         3LG4j32zAk9wuh86y94SqrF5QJsAnWWdfjNfFoGqh8FFbhGKAFF8AmSDVrS0KgU11OTk
         XHJJd3U+dXfo+cgi9BUBwc9oJEoQNRnBtfdv1Pxa0Wqxrjc0xr70hZJjUus77+FDlsSB
         Tv5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763131557; x=1763736357;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NcqTFzdPUrrebECSTzlvrk3vTPk5gx55tgqtcHOukdI=;
        b=bTLp9/CTomBTDvmO73n9gOO39NmnHo2UkXq0W6hn+LGlxF6Asup43JSHvuUpm+wVXt
         Yq46JauNhTpDQ9tdGA+SpneH+SEz/SVTo8hDdVE1uYT7AANKmV3qPBM95NpOi4XnGR6R
         aX/Nt+xNXT/F4kMc4Fs16C+U4z/N1bnl7noxHt0sGCfyMF9Xvz4TsLpqphuJxxeqlUi5
         ZFfyrwD9nA4TSzP5BN9zK1K44vDzyvHfJb6WXez5Q3VfLC3QyP4akYoHm/KjxNNrQWAS
         jmVVSZaXbnq++ndWVf4Zx64qdV/oW82tr1uft32V2G+OH6Dz/wbQIAUlD7pKAensY8Io
         akDg==
X-Forwarded-Encrypted: i=1; AJvYcCXlPUbmfMnxnOI/jzEOUAjzlQUTfwYxQCAo/IAOzp58mTKP/8XE7tTdP9TdS1K0B1LeM++iQskWGoie@vger.kernel.org
X-Gm-Message-State: AOJu0YwxYTPi8fLtr6OsgxV3OMTuhmeY5vb9arl4vVaX+KnrWd2FwCVT
	US5D8kDDnGytmx/u7JTb7r7fJett+E1GY/l0c8d6Bwzj10/OoiSXI21a
X-Gm-Gg: ASbGncsXxBki4e3ldcwpbYbiaeZDpd0AM+QldTOmY6yBLcKwrZFZZtI8h/s+jgPkd82
	LFFKXbasUlGvhsFhhYvDnUMMiKEOJ28RwNVdJe/jdxQ7DK2lZJ8DzimPiRLFeEWiWOWfYYDz+FA
	WHzyTF17X4h1vtlIYeDoUMshsFlyimqYMTXnyNXWsIqCjI4oUef6rfLv/Rx12g/MQR7J6MdMYK2
	HcXrRoOufes9MgkioROMKdlsdJukY9jKnFE3B7nj6sbdqoCCS1SyE2ck3V3zVeUFrDM5dIr7bIp
	I6KRktM9siI2uRcE/7dNqGlN41EPIrsmpQcjyhP8y0uF/TJBfAtK3fJcMQ24REu0BesdmxbpM0E
	l3nOO6Wb7bbowdeyuLUIBvS6Wa3SPOO1oYP3IC79cVJuNrbunQszJ7ehwLhXSZSNwD+LtB6zokz
	OKiq0q2M81Y6G96wcyQp5TSrQQqjYTlIfMwCpBYm3Rg5QLqbF2h3PHp7iBfCTiu+4=
X-Google-Smtp-Source: AGHT+IEiqgysoj6mPdEkUsxYCa5ADJtuXMMmC6+1HxORZ8MAAKJwUZz6yC9o54OrnVXBiK+ukmjfzw==
X-Received: by 2002:a17:907:1b20:b0:b4e:d6e3:1670 with SMTP id a640c23a62f3a-b736780a342mr350350766b.11.1763131556912;
        Fri, 14 Nov 2025 06:45:56 -0800 (PST)
Received: from orome (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fa80e3fsm408901566b.2.2025.11.14.06.45.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:45:55 -0800 (PST)
Date: Fri, 14 Nov 2025 15:45:54 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <treding@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 4/4 RESEND] arm64: tegra210: drop redundant clock and
 reset names from TSEC node
Message-ID: <u7yzyienfouxcz6h75xfetcdsiptgeix5v4sx23i563od7zrcq@hfp2ae3fk5lt>
References: <20251016074152.8759-1-clamor95@gmail.com>
 <20251016074152.8759-5-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ywavfycjlmfz22ry"
Content-Disposition: inline
In-Reply-To: <20251016074152.8759-5-clamor95@gmail.com>


--ywavfycjlmfz22ry
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 4/4 RESEND] arm64: tegra210: drop redundant clock and
 reset names from TSEC node
MIME-Version: 1.0

On Thu, Oct 16, 2025 at 10:41:52AM +0300, Svyatoslav Ryhel wrote:
> Clock and reset names are not needed if node contains only one clocks and
> one reset.
>=20
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra210.dtsi | 2 --
>  1 file changed, 2 deletions(-)

Applied (with slightly modified commit message), thanks.

Thierry

--ywavfycjlmfz22ry
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmkXQKEACgkQ3SOs138+
s6Em8A/+Ipde3xuVzE4XtJZYiINOPv0t1OJhnFJVyZG3fnIl60MPRbtKfNp9bwBD
kmPyMG/XLwluGueZxbq69LfqP85lVbogFcnhwccby2woXXtSvZzzaKG5t6r3Q6aa
nTm4xlsoPeh7jEAE7HEbgHH9wqtIbwMhw5SA5DhD6nocg8ggmLhVXP6cy6+k7WZo
QsZPySBmTM4GGXtau7nWXFuaoQsE2bxTBhSHw07Gyx7rKoE4L23/Cw5k5xgj3Mcn
Q9P/PVJX6fItddWPQeKVqYPyGpwTqjRxHZdu1VhioJKAozxRrFe4vQD0oqKUK8Nx
MSJNJSf1bGAWDjr/Q8aRLVqJcjBD1ClQRBJMRSNYNNLDGStf5LIXOT99LA+AbV6K
RAJ29WTX5V3LsbIxaoX8bu3pM5n2HkayLTzunw+SuNBGog7ip040t26NRxqh9nUR
ukfHVju6bFACsN24pm0VCLzhTvx440/ABY3fWSirOjQyN5yj3zL9CgR/52GIeqgS
U2pFwpt9xLA4EoDUQ7R6INyUBT503OcIUk3kP96BpFnlVgsWXitqy0UXfPbWP6sF
d4v4MJR4rkka50fQusiw0xuKgiTWx99kidJulFfJeUx1kfSi48f7uvDyDEesuy2L
pj98WV8xkNgoaS+vpcMHRUdNTjBBo8VhJ3geBaqYWsqC7wA/Xog=
=/F5w
-----END PGP SIGNATURE-----

--ywavfycjlmfz22ry--

