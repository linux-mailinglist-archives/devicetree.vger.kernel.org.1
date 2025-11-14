Return-Path: <devicetree+bounces-238736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 060F1C5DB62
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:00:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9D6993663AE
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF65032825E;
	Fri, 14 Nov 2025 14:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TU3ahgRA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C4E325713
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763131529; cv=none; b=dc1cK2COrgrg1+Ib78BT3fPue002SjEfzi1LJjXvktATqlxZi1iGoguzzXf2CphBAWfCAC7+kxGzxzDvrDfSaDxDvQZwJ/5DvnRChFdh3+C+Xnc30GAHP/iSsyp5b+VyxzXsiVQ+uBkf42a7rRc9DYc8WBfr1PJvaOwisxnS7ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763131529; c=relaxed/simple;
	bh=/8fTrKl32AYfmZ+JOPItTi+DGwmLh4U+5Eurt3NQikA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OWki+vgQMUEPL70gr+eFvBJGmWur01T+91wqdMIBII6mDP+jguLgYLZ0ZTPzNXK/LckS/cXeCBG+0PipY/pnxDjGS6TebNtzBZjBNk63FYrBDtXIGZdLlK0HEEinnRcAKcNI5N6kNW2m96IkEfgKVJAidw+jgUryzC3OBa51r/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TU3ahgRA; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-63c489f1e6cso3485208a12.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763131526; x=1763736326; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7Tk51PdNGO35AHnU9TdGMHBjl7SifZZJFLFafuvE9vs=;
        b=TU3ahgRAZFea6FVleBMHLcKCDx2IGdnfVJxtvFibYLisvcwEQcPqYILKjFly9GoMTL
         Im13IowC0R7r+MVf5SX8U0lThVbKD5NLifImZgVYgFklEBuLOQcGq7Enh6zLLUOnsIGO
         3vT5EHGEcUMGTl6pVQeGrgvbq9LgYfftDNXX19zkHjM4UXVVRIvy7UOstpSzLl92UhWy
         hl/wZvLIuOvHgdHp+N2MDy/R4114T2JKKiG7PdmkOY/h700uPZDj6mXLXs8SsVrDE9iv
         Sc67eMlJMUKDBqmDh63zrUHP381JoOCVBDIeS5uWBVh1CX+1fY0sVgauFfj1VKjLAeR4
         BhSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763131526; x=1763736326;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Tk51PdNGO35AHnU9TdGMHBjl7SifZZJFLFafuvE9vs=;
        b=GtMEP6DEa6h2+oV2tiY7eq2r361R+aUbHx9Qgulruh7l9faVgGyujpCtM6x4hB3RZa
         528tLT7X1E0/fMECy3NSxCJQzzOM3tyZa/IjQl4KE1gU4M2rveemCWGZ3eMpYqaIjQYG
         PY4E1M2YIiv8u9dmvLKW6UFjfmsCvVcslpuOl5elAWL/cSg5TPTI+nJWTzxFJAUzJGqu
         wzLwElpORqHdSuY5tI+K5ZBfUo6lzYqSyH8QWnN9JQS/M0cbO2hVAHdhGQMLnyUQDX5w
         Cyj4ZmcSXeEpvdEBe6x8+D6LTeYNrBAJjqHpwKBZuEwxI6dC1bh01N9W0YqPK2c/peIh
         nYBA==
X-Forwarded-Encrypted: i=1; AJvYcCW/OYn6qrWXkAqRuPjzxIDqBUYdvbASLE6aZc8KT76YdTfppyEa+E0RymAwHgkC828UWHXxjwxJgr6+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1ztVRtdr2ylm3eW8rJyWEkQZnMbSg114y+8HOYJzNvMNSnL4F
	NhJATcMVxITo0XAelit83Vrvluslqb01kYOGLyW1kD5uXfLOHnTPjRjt
X-Gm-Gg: ASbGnctd54r3dHp59EQWv7l6QJSBGP0Vk+z6adInZF7zYaakDbPC7hqDtUKvCAv2T2T
	LCmkrW4xuRx6Hy+GsZCQrzh4XWzFJYH8ZOjrxE9jzSFnrqm8BxZjzaFrlRoSDc+vn07ot5wrTMo
	tTxXFCpYtaTZCTM4j0NFRJfoRgDs7TaqsJA2JCjOPsJk+22Xjy9F0lrAgTdXhwY0zjE1RZ1lrEV
	nhvFnITLllnlC3jFNOYhSNvtjb+VzTWMgGhZMFLMGgvHncqXojMvp0rCR6yJqy36yBP06xEqJSN
	Eo3HSwSlSmpGMyLa2XZCn758wzhusXkVWhCRbIdWdRqVJ6Xi4fUSo21hmf0rth9/JPwmLN9qmeh
	ut519BhCr/XWxNXiR+3bJpE92Pbze4oDvWv2KqB9CI/Wq705MVG7xchlsLxnZXK00oUFuZcWeR9
	68ireCJbx32D3/0yExFYx4zh0XilgsZ2GyN3W4vjlfY3cn8QPKLZwynDOfGtdHTCc=
X-Google-Smtp-Source: AGHT+IECGRp2VkHdcpMnxy+9lKviJilSbUG9J75N+N6tFZ3+Ma91NvJiRQIj8MoUNErZO8sLouaqQw==
X-Received: by 2002:a05:6402:1469:b0:63c:3f02:60e7 with SMTP id 4fb4d7f45d1cf-6434fa7f209mr3600412a12.17.1763131526117;
        Fri, 14 Nov 2025 06:45:26 -0800 (PST)
Received: from orome (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a4b28bbsm3733440a12.28.2025.11.14.06.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:45:24 -0800 (PST)
Date: Fri, 14 Nov 2025 15:45:22 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <treding@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/4 RESEND] ARM: tegra124: add missing HOST1X device
 nodes
Message-ID: <r3u5slhvazfnkxxeisndhgnuulackua3pe6iglfwmgpepqoyaw@ynm7vouilarp>
References: <20251016074152.8759-1-clamor95@gmail.com>
 <20251016074152.8759-4-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y46ujsge2wpndcqb"
Content-Disposition: inline
In-Reply-To: <20251016074152.8759-4-clamor95@gmail.com>


--y46ujsge2wpndcqb
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 3/4 RESEND] ARM: tegra124: add missing HOST1X device
 nodes
MIME-Version: 1.0

On Thu, Oct 16, 2025 at 10:41:51AM +0300, Svyatoslav Ryhel wrote:
> Add nodes for devices on the HOST1X bus: VI, ISP, ISPB, MSENC and TSEC.
>=20
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
> ---
>  arch/arm/boot/dts/nvidia/tegra124.dtsi | 64 ++++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)

Applied (with slightly modified subject), thanks.

Thierry

--y46ujsge2wpndcqb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmkXQIIACgkQ3SOs138+
s6HEhw/9FMRFDhExTUdrfX2hp2eziEhkDgGiVKBNI441pHj8Lfj8ULrF17kSTMKU
lqANmRAWFllRqTxDvrStf097wrW/LZKVmv/xevMmjj0gw2FRLx/WayLzrN6aUvB2
R0vE8sn58USftIo+7VmCewaAAxE6VfFaxN1GegNFyePqFchaFTnsUvXxZf8n5vDT
uhpmY7KKQK20z/w/BrzvFB31T2sfjHC7ZEtytmZ51TiI+zRdZkCsHXW8wTBxkAUr
CZs27fIdHYiBX3YKYtGuz31RwiFh1/HLJMGek5GL77Dr7XtU6Pv6tuiK3oRZtBuW
F5cIHr4f69PFz7HXOjIxTORv7GTX8mUlAYnmB4Q9mnhG4ilyMuH/d6EJPUkUcqRJ
r1vvAw4nCrt6BtQh1/hWYOM1PO+JoXo4y807DlD8YqftHyeJx0gqmpu42AEQe5bP
LAB32Fnb0FQc/66jOt9tK+epo8Douhae1cJ7jAWvHWT1tKDQTypSO6ZDcrpnGwhi
3jBKKps7aYnOtbgUxCtiH3uhba1xSc+8t5yJoS0e9IOjWsT0KT6Tu6HfHqD0U2IA
oKZgk9DJ1Zidc7eoS89haJZyxmqG5z/N/LAVVIM0bSNHSGGnJui/JEoWzPapkBR2
P3EGYEOqu6Ey4ouIKm2FoYRe1eKfRxDnECAregel9jTjgwXxZAE=
=F1ok
-----END PGP SIGNATURE-----

--y46ujsge2wpndcqb--

