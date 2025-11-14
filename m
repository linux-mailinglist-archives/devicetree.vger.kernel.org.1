Return-Path: <devicetree+bounces-238735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0250AC5DAEB
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:50:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DE4F3A9012
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6889A328242;
	Fri, 14 Nov 2025 14:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K7YqAPKp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A7D70830
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763131509; cv=none; b=cmdHi4MAIkf3JIThXJIvWIyRmqe18OpfsG4od/JKZav/LHRPObR1K+M5TNOFcrBbjfjzwq8rvS9MhSVR2qG+UGUjkoI6xN3JYDkNuKk8J/HsC1XPu4AZZtf2rc1WfgLmCbAFzr/eHvbF5sRVbJpVabA58RgzlHdiQWQymcSbFrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763131509; c=relaxed/simple;
	bh=scs02jbzUUK5MYCuVGXVgJ037lLxK1ex3dOIb++3rEY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LqY1cffJJ34abFFiu9h4tCSin+2kmLfV2fGOPRFqUlQ+083ROESGOOZr2Es60lciGofn/b5ZJo/gaOiIoz83eybv+w3CR8rq0gqMec4YIoX5yGPudFD7m7IIsslpCXNOubvZ7krGn/DsqxvSjHvcz08jZq2btU/ubGmAwCEkoXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K7YqAPKp; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47754e9cc7fso12872135e9.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763131506; x=1763736306; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=D9Ybyyj+kFTd6FCwlnA1T6++3p3ZYy9IHGTYfoCqMXs=;
        b=K7YqAPKpsBA0XOqjPSxANndWUeWqaRLlK4UnBZ1YplH4aNVLwmoy1kjAyr/Ic8niOe
         M11GS0E55PqLS/59bwftORFIEqlxMSG1O7uWFrCpjNiLgco3b5iASvzKPq7f+JV7OwcJ
         449N4Xt5O0tQ4mddW2w46pknB5F0FnRPwDg5l/wd7Bm34JlGk6Prti0JPVuDfafKpc+C
         5Lj3oOJDLbQiohCw4HhH29XrYmaS7Xd6ajTQGgFs4evaRA0qSk+JLV8K4Czyo223SdYT
         4hav+5vQO1CLn3sW6BkPiW+EQih84KE9fAl9bomoYmfdKFj6GhHuTFWywmjsTCmefj+v
         Gw0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763131506; x=1763736306;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D9Ybyyj+kFTd6FCwlnA1T6++3p3ZYy9IHGTYfoCqMXs=;
        b=qnmdcbYvlR+CJesHDjug1IBh6h0pfPxang8u0CvsIO4ItNeZcH+lvYxgknCG9b+yCM
         Ayos2fCbwxtWKO4Zz+JKyLrbOoLeguug82ZhtVLTgYeqy1Ge3RMFjrsLou2Svn7skxEi
         uafO2YSin8fSzbcrDqzhbgRGGrJaDVzwSKZr3J3W+KuCigOZBQN/0rB7KfzUNjSSuiM3
         cXnU5UP1GHFoxtTD7Pn9AcABPGXDmsJyfg5v7yiqqh9xCCzh5s7b0biZznMcCdIl2rG0
         uSmtyQyzoVpGpYPdloPHDkUkYXD7Ef5pGOJU+OKZLSleJ3X8h5f/i5PdP6sKoLneU9+b
         mb9g==
X-Forwarded-Encrypted: i=1; AJvYcCXSLKRgMFCz7EVo9j25I2fPK4iZO3RZJbUEnfa3Fuga3fRyqkADseWC2d50sf6Khn0bKvSuk1In1G2Z@vger.kernel.org
X-Gm-Message-State: AOJu0YyvY4SxRfaSApKQ0fhMqp9+5oIK2O1YcxnN8AI7GpyPiVJUqlC/
	FR+5tu3dY99U6tGhrRuEo92+R0yWuTytkesQDfLl3E5uMqs5E2ppGCKS
X-Gm-Gg: ASbGncu68DEb8av52WueC+LPPxBmplkYDB0RKO8vdUhw6CD1KTRlZX2Ie9Kgk9mQ6Ch
	0SOhJn83IJwjA/SJqUAD88MU+T5alisORjQHr7QJWuLcwcadlva2P6Xtj6GIzfzYefZV5Pzg30Q
	QbnMbpmROBlx2DfTKeRM6iuI6QRR4cSHahOiIbK8lmmS1qAOv7M1KSYzIdYFmgd+JIylFLJI9YY
	RnDAHT0zjf8wieT2vJquJvwrm0wUpI+QsoG4BMplfwo4ulPVnjGznihafFIIJhT7AERq38g/s6/
	c8YQlXpLaaX1MCSDaG97i4hFx/w+BmPP0pzfgqCJfHWsmU4rePp6dB12Nh55Blrsv/AvCVyecwy
	4ywALZHZk8OZzrWfQCeWP2savufSoHNaiFIBlZ0YiMQYGTrJTUYQEL2/XwY4Vy+LYz7/3jmIPIG
	vcFXmo64aqwCFLJN2cI6QlH3U7k+OlCGw8etj/IQYTX5kOR8dpJuW+7MGXrqEGyVdAV2DWnjJk4
	g==
X-Google-Smtp-Source: AGHT+IF8RfeGPT/xDN51L06SoeBJUH89RQTSdNzCsTHFgENOPsN3MHVpSEVSUnaLsvgo3iPGAK9slQ==
X-Received: by 2002:a05:600c:c4a3:b0:477:fcb:2256 with SMTP id 5b1f17b1804b1-4778fe6094cmr32151805e9.17.1763131505992;
        Fri, 14 Nov 2025 06:45:05 -0800 (PST)
Received: from orome (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f17291sm10242664f8f.32.2025.11.14.06.45.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:45:05 -0800 (PST)
Date: Fri, 14 Nov 2025 15:45:03 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <treding@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/4 RESEND] ARM: tegra114: add missing HOST1X device
 nodes
Message-ID: <lqyhuizpaaz6ltbxxq2dt3njmtnzdi5jllos22ome4fz6wmrhs@irfuylndk5yx>
References: <20251016074152.8759-1-clamor95@gmail.com>
 <20251016074152.8759-3-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bfyhnwazp5pss532"
Content-Disposition: inline
In-Reply-To: <20251016074152.8759-3-clamor95@gmail.com>


--bfyhnwazp5pss532
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 2/4 RESEND] ARM: tegra114: add missing HOST1X device
 nodes
MIME-Version: 1.0

On Thu, Oct 16, 2025 at 10:41:50AM +0300, Svyatoslav Ryhel wrote:
> Add nodes for devices on the HOST1X bus: VI, EPP, ISP, MSENC and TSEC.
>=20
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
> ---
>  arch/arm/boot/dts/nvidia/tegra114.dtsi | 64 ++++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)

Applied (with slightly modified subject), thanks.

Thierry

--bfyhnwazp5pss532
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmkXQG8ACgkQ3SOs138+
s6FwcQ/5Ack/UYsnMFcgaOiFU5wt01fDcDESAIBwjPpzj4UkCdLdtBSGNagyjcbd
2c7C8Wb9Y9L9cOA7PcGPI+pPhuRszg61h1oTa8IDE16iNDGztIMCUwdV7tAia11j
b8UMQRMyuqJSiBLSfz2H9CwvqFzKF4D3pkDaGyH3fPWrl+1WJOi+KZCPq1NjYqge
OEaLDPIQOVOJCK9Ft7/s3VM57snl/Lyg1M9p0YmiqrwEQS3EoX4cI0uZBgCEwgS0
WqnPy4ZuGzfhtiI01dwqmopZH33Ral6jEDdLUtw7DPHrNZEZKA3+dY4ZEOJcKQAs
n+C6jrz76WWMezdHhfv2PMrobk4awg4KrkeJNmProOmEOm7OYoNQFFvsWuM7rLnD
KJ9OYcFTmzhpV9iaii+wBgBa55bUUdLFabJiIwC9UvInLwZox0xT6MpqFR8AUfqM
8tsKd+vvvaIil6Ur0L9KMyEY80JOZpxnznqcsLR8atF422JVNEaefihfKgor77Rd
YGKzMtLZ8ftsvp5GP1qes+wsjUF31cJv35PYSL/iC0kyOerGKG6nH4xshko5x03n
tnnRREQKzrqBL7iUPcmbZ3GPaUC/PNnbcH7QIjxf04egAkz2kMkZGZ6BLcHJ6z5b
Btabbfcssh2uP5TxCSiiZmGPZpsAVw+hwm4NvPsGzu9oKi4UwSo=
=N0s7
-----END PGP SIGNATURE-----

--bfyhnwazp5pss532--

