Return-Path: <devicetree+bounces-110869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B5399C273
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 10:02:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D91C01C239EA
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 08:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06B9314A60C;
	Mon, 14 Oct 2024 08:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="x9gGR+60"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D421D374D1
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 08:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728892963; cv=none; b=ufbAdz0qdcNvOVj01tUzHsUHKNY0N+h4o+r8So/6INtcnELZYm890A9jG2zz3kExt7zwE1QnNUmu0T2ga/eoCyMAUEpGhpxngkuu6vtyKkPkLYzafKONcqk9W/ZlYp1gW8wsii29JsnBSs9Zeu8xBNVo/IEBuYcumQmt2Npi9WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728892963; c=relaxed/simple;
	bh=4RlZOlgSupAxgWagLLro/53S7NCRTENxGSsZn/UbRdU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UJptux8gGNegn9/bI+7jp4m+cBiL8yZN3v6d4KB/tfyK5E3DNkGNNY9FxXDKZ8sad6B0mNxDYot7568z67Kj2SudDTWckDadyehLPpVXT2S2CtsEbnOHIz8BT3YB9Vq3hcRci/7ki+TY8ufFAttMGfs0jERBJ8IRRFRPEZcpeQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=x9gGR+60; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-431195c3538so26613335e9.3
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 01:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728892960; x=1729497760; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4RlZOlgSupAxgWagLLro/53S7NCRTENxGSsZn/UbRdU=;
        b=x9gGR+60wvZ0qvORTFqLbGAuzN6S8gV1lxEAC4RKEBoMyxHIoOaj4QsmCkHzd55Rc8
         DWZlqJatAQKUfek39+uEEj/e7LSG6y2RImsjhSXE1PVGfU4tfAEUazfrPHXzXy2Zhtw/
         RWlog6JyJCqfmbwkyd8MdNhybTXTQXUylD6i0WYRYfakR/HU7/98LTvdLaEYT4+aemTo
         ft8+FtvlOaXsNEmRSUEBLUVPGNKzNa2Sl/zKfFCqp05ROgNeqDH17I6WZ+R4evuj32ry
         P4GhhgILIDg1e9G6tKLtCaHFl644ngITrGkLKslQ1puYXoGThT6hWh8XsAVkmZ1SulXX
         nqfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728892960; x=1729497760;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4RlZOlgSupAxgWagLLro/53S7NCRTENxGSsZn/UbRdU=;
        b=ovHcD7pylFNv1dFHMJu7L/sRyRY9MQpTB5FkUeH0Fyybn3hXpn44zCjQ1OONt/VQch
         W2xvva1g5tSsB/JzpO+QMLsppteTKT3r8V2pxQOnK3p+JzqasgYdsWNMV08RJGUglpO7
         E2ow5iu5I5kgA1JyEq1U3pqT2YbQp6ZtFXDrbjlT5EsoDsSDeCWu+6gXw3sA9ID9IQXs
         LyfB3D5FEPFKkLY5iEXS8nXWBJvBP1D+9Uh5HcDOYhMs24+ASn1DOHDk4lVzkW9ibOws
         Gdwq8YRxWSPRtt/9PhFawxEsRdPQMjiIiBu8EgpMr01FCaLH+pfEGY0E2ay3nx5FB6ss
         2CRw==
X-Forwarded-Encrypted: i=1; AJvYcCUu8UflCZ8lLSUFxD5OrCv8mwYV7TXBgzB/ShtU8f4rXqN6cuuPIoLjNSiibaINIt/qlHqn2qK7ZImF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw83oQCPSGJ8gGwtc3fqPVB298NaY0jsFHBC0lcAcDzIxlj+J1N
	LhPRByGJEyjQhUY3SPGTD6TeD74Jp+zHTJL6ZoQeudtJy8qoVKLmeFV1Gy5x2zQ=
X-Google-Smtp-Source: AGHT+IGHI1oWFXV9DcSfHKsT0K9KY6FX9DQ9bVpIzkaaGAOafugiZ3ojqGus5aCjg1CPitlaHNm9Qg==
X-Received: by 2002:a5d:688b:0:b0:37d:462a:9bc6 with SMTP id ffacd0b85a97d-37d552fd82dmr7764949f8f.36.1728892959854;
        Mon, 14 Oct 2024 01:02:39 -0700 (PDT)
Received: from localhost (p509151f9.dip0.t-ipconnect.de. [80.145.81.249])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b79fe7csm10751841f8f.70.2024.10.14.01.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 01:02:39 -0700 (PDT)
Date: Mon, 14 Oct 2024 10:02:38 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Alex Lanzano <lanzano.alex@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Mehdi Djait <mehdi.djait@bootlin.com>, 
	linux-kernel-mentees@lists.linuxfoundation.org, skhan@linuxfoundation.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org
Subject: Re: [PATCH v10 2/2] drm/tiny: Add driver for Sharp Memory LCD
Message-ID: <zlgxam2ph67gbxaf64tznc6gaediik5vzfus3kgbanu6ke4vxs@6emuicykaike>
References: <20241008030341.329241-1-lanzano.alex@gmail.com>
 <20241008030341.329241-3-lanzano.alex@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nfdjdy6igf2fhtdw"
Content-Disposition: inline
In-Reply-To: <20241008030341.329241-3-lanzano.alex@gmail.com>


--nfdjdy6igf2fhtdw
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v10 2/2] drm/tiny: Add driver for Sharp Memory LCD
MIME-Version: 1.0

Hello,

On Mon, Oct 07, 2024 at 11:03:11PM -0400, Alex Lanzano wrote:
> Add support for the monochrome Sharp Memory LCDs.
>=20
> Co-developed-by: Mehdi Djait <mehdi.djait@bootlin.com>
> Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> Signed-off-by: Alex Lanzano <lanzano.alex@gmail.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

The pwm bits look ok now.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

Best regards
Uwe

--nfdjdy6igf2fhtdw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcM0BsACgkQj4D7WH0S
/k5wWQf9FfmMItjVRgRZH9tOPUX8zANyqph7Rsnz7icv4muLFmBRJDz3p4s02Ifw
vnjzp3F3ONPAom9POqZn5akcxHl+98+LD9D/fX4eKwdQVxYZsPlFi72VcoQ1Bree
tIfmZxTDoP0HWpqDB4zDyVbvRlnYgtPHteFddN4vCa81Ua0K5zOqgl1lqTyen/FX
XfhKS3GGBml9wTgjQ31Us0EXkQaELjXwURwCRobwCRiEm5j5bJ5o7juVymoKwLSc
c07MB/X1DR7G0Z2CegTx88SCcpBq/wd68vzn5bn8fbf+JoMvJ3YGp1j9pdjyJpQK
RRVObhQN7P7/nIVqvo8XhmUk3Rf2Yg==
=IozP
-----END PGP SIGNATURE-----

--nfdjdy6igf2fhtdw--

