Return-Path: <devicetree+bounces-117273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 360929B5C1C
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 07:59:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A0ED1C21054
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 06:59:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E50F01DC07D;
	Wed, 30 Oct 2024 06:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bewQAceO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D791DAC8E
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 06:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730271566; cv=none; b=QVRHsK/7BVxY/sSMiAOOvPxP6pJAcW+Zqz9BJI5NhTcYUVwl5E3GO2Q4Va8nZf++qI7D7hRHIaRhmVqwG81e/9MBcqSx+lGLJSrZi/S6XNCLezDvK13zSXGkwEptI+mT0Av3Zow6ndRxOcEtpyLyL4ovL/YsgeaGRNXqKwJiarE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730271566; c=relaxed/simple;
	bh=i16pYFlL+2GPz4u0u591aWQv0tNB7ELcsGAfV5zdSA0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pRszyeUVNNF0ZNwFw2HAT/CtqjW1KzxATH/+VxO5GGq7Tz/qrQibW4ToXwQ6kR7FFRuaPd92486vz5Nkbjood9rLrBFYAgKJ37Lp0JdMXSteOUtsbMlgBn5a++tU59s/hLEzrnnd5WA7TeuBE9VTitnIpOzlxjjf9UmTjx1UR6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bewQAceO; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-37d462c91a9so4456100f8f.2
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 23:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730271562; x=1730876362; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=i16pYFlL+2GPz4u0u591aWQv0tNB7ELcsGAfV5zdSA0=;
        b=bewQAceOUlkCq4sGvFwKgJAvRCBs+2FMXbT/xf/xKK2+bG9J6UNQCE9Ob6wEX7Hr7d
         6m3iZ9P+KrWnZ6dxEdOYQiYXeiPGM8PHmhqF5jcT6wk8fapUjJ2pPI4xjEPUEX+l8STD
         3cuCw32RsLK467pJ4nu7b6uVo+Zlg57pAeqMoOVwnpw3GVNVeViDeAGVJyBNJCsmpzvb
         Exsqt4SLG+/rOoy2kOTYS20YsdEX7UlDopAJRk4leXtxDWYb46z7HfA0zmZCe0V9ILA0
         uQ9gWfULPHIbjNtAblCsCzEUA/1yo/E06ZDL3BM60maIHdbi0Ze7dBs8QShIT46X6zgD
         4VfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730271562; x=1730876362;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i16pYFlL+2GPz4u0u591aWQv0tNB7ELcsGAfV5zdSA0=;
        b=ItXqQKXY9Ydh06T5Lvc3MoGRJrInto4OuVmQPRsWbefo6WBLEdesY5wSbu8oAnXXxA
         8Ko5oxRtlUlSxjliLP5D9WctMRol1cbVCQLMTabkLMTvhnTI7at2MgsEVQ/8z16eGPjI
         W1nbSWgCdAfHuEaMHuNSquGxbgOhrKvG63v3KMUNYrMwuvKDiqOOEr6kPu1e8wBA0M3D
         XpB6dL0Uz2XEAg76ytGrHt/MYeDCLCRfeGDXgpT6KiLrT9fYZ140SleE1IV8ZxPUNTa8
         54SlsoJhwAc1efBLCeSz+k8e3/ExOhpUcxGXLoL6HwUFd2QQ/bSjnYNbFCDQ8rVYrDXq
         CBNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTYp4HpVG+NStUNXxf+taZAm0pqwi4y8VMRy8J5k9vFMb3kJAlpVuIoZ+FmfZ6mo3yjtaQl2I4uAix@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkk3fR9WXvVzW/jxll89h5A/GfQlE8e9bHZ0u/kZsYBHUkXip/
	UagUDOwyK8ZKt4tT6bJTgrwyrT/kjYotDHfyw42xQrDLgpL36tJxiftITJ2rzzo=
X-Google-Smtp-Source: AGHT+IFyqfOrZ4MI+sXiINodrY0EVZIGOc3drYiZoKJHu/kEVijxTqjjc6wOezZxjLb6iMiKoIcUbQ==
X-Received: by 2002:a5d:638b:0:b0:37d:387b:f080 with SMTP id ffacd0b85a97d-381b7075edfmr1643140f8f.15.1730271562350;
        Tue, 29 Oct 2024 23:59:22 -0700 (PDT)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b70f25sm14695531f8f.67.2024.10.29.23.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 23:59:21 -0700 (PDT)
Date: Wed, 30 Oct 2024 07:59:19 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sean Wang <sean.wang@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, linux-mediatek@lists.infradead.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	upstream@airoha.com, benjamin.larsson@genexis.eu, ansuelsmth@gmail.com, 
	linux-pwm@vger.kernel.org
Subject: Re: [PATCH v9 3/6] dt-bindings: pwm: airoha: Add EN7581 pwm
Message-ID: <jzihr7yp5ftyl6ojhtnv2r4duos6or6hozip7yxxodycokwjms@nfa5clftyocy>
References: <20241023-en7581-pinctrl-v9-0-afb0cbcab0ec@kernel.org>
 <20241023-en7581-pinctrl-v9-3-afb0cbcab0ec@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xv6ynghrtwc3g4ok"
Content-Disposition: inline
In-Reply-To: <20241023-en7581-pinctrl-v9-3-afb0cbcab0ec@kernel.org>


--xv6ynghrtwc3g4ok
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v9 3/6] dt-bindings: pwm: airoha: Add EN7581 pwm
MIME-Version: 1.0

Hello,

On Wed, Oct 23, 2024 at 01:20:03AM +0200, Lorenzo Bianconi wrote:
> Introduce device-tree binding documentation for Airoha EN7581 pwm
> controller.
>=20
> Co-developed-by: Christian Marangi <ansuelsmth@gmail.com>
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

LGTM

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

Thanks
Uwe

--xv6ynghrtwc3g4ok
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmch2UMACgkQj4D7WH0S
/k4AsAf/WTL0HrSsNuwSLR9YrYS9gYAReyTQAnpm7wbARGWjQE5VLwUF+noWxWP/
AWmOyJdCsgTFs3fXzuToK5SrEPTcsLv3lMAZl48Q7n6NNxMfHFFQSnLp7h+ZRKxu
OQcfRE0N2VD/4NNDTlKZ9/LoTUTCFhJzjlGnhI6YlEe9Rj97KA1GlBrpneUUfXJ/
ukXdcpGeN4W8DzvrzZSLjZYKT5EfDoFA0UFX6cDS1dZbe9LeCH/v13KFM5f7p1HU
+rs9IqNp62uk4YBbsaRjExCK9pcQsQMK/zxcTUn+jMbqR5wweK0wtulbSUdgChQE
Q1oE4Hk6LfFUUnRHCMrbhDER34YMOA==
=rEHm
-----END PGP SIGNATURE-----

--xv6ynghrtwc3g4ok--

