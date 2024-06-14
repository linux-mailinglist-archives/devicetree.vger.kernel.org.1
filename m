Return-Path: <devicetree+bounces-75723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0057F9086EB
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 11:02:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26C421C20EF4
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 09:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB54D18C32B;
	Fri, 14 Jun 2024 09:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="J1MbRS8J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD9D148844
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 09:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718355726; cv=none; b=Cueru+opRQhuVPu2DvoMv7ncjYVViBl50nj1W3R9+lPzlzT397TFov007f+a520HSjSXnUsT4BTCHp5bW1CLYFy3WACzEXz0F4TABU3gimdutVgEBWsV1vILe2iFUiuUfKTLfGgUsxaI3iPXeIVdHkgbqHqvZgm58KXfIvSt07o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718355726; c=relaxed/simple;
	bh=X7ORb1Koe6okLnwKX0hTqfYjYrzzPwimwJD21J2gqGM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IXra8gHKhNjjfHSHDBkTpBXfqOr2z0675tg1DCF63jkm9LrImu6QX++ePJevNyFGxREf1/4OZhTdEOhThXDPVVijF7fLbxf+Qz25Gj0YhbhrA6qD3lLFtKJ1ez/zMwXI3DEqgXyvEW31JE/UaWofz05U232M+kAGOxoqccHruoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=J1MbRS8J; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a6f04afcce1so251425166b.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 02:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718355723; x=1718960523; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4GkufYcYiROPgUdoe4VOWKumgL9VxD9lLUKtk5IkCI0=;
        b=J1MbRS8JYXTr8w4Xa1MrIl7DbU1N8d3Pa0sNLTdBu3IzHxTKSljAJaALcaLBUzhxOV
         TWFHHVIeIx6fBzbrnUoMrinmT0UYMMsyz42cIJwEdLVHFavH0B20B6PglERDcT89qXsf
         m5FK58boIqd8rM1XHtbfN15c5VEyNNmHifgvcm/lhmu3iC/A/eWXD7jh5EArhWS5ehKD
         IbGYZYRrNM5jKla4j9RuROkSzSS+UwhXW+lNRLgOXhktms/jO3oogE1FfDE3k1uRm4pm
         Ye9IqhJR70DDvFhv6XIPiSuCQmQAnltP3UPsBicvO5qzrn1gE/P8KTQAzrXwuq795OeM
         mpsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718355723; x=1718960523;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4GkufYcYiROPgUdoe4VOWKumgL9VxD9lLUKtk5IkCI0=;
        b=Qv6vWjfJ87Fy3P0d7LJaPSBXjYswLD/GdIBtH/jBaDb+iP2pd0lM7dSggMlxbE3fvN
         DneODGDWaTxGPjEtKmkKO/yvJRcKXVfaTriL3CIl2xSW/MaPUZTc2Dbix6N7N5yC5jJ4
         jNx5K+HSuCZ2gpTwFH5+AoTaxJKt1Ih6iwIJis0qf/Ghl9ls4nt7Bw/3bp3MrNDxz0iq
         sRVKwHNtB84mS+Nfzbu2zubtMdAz99AYGqE6seIZ8uUSXtWOOItKcYbv3tlwhIylgadJ
         k5KNhu0Vk8WAPpl3rpNTDBhoUTxTY6GKfurCdj2HFOyA57L7sSzcg4LsBuPTmZLHLQil
         d/BA==
X-Forwarded-Encrypted: i=1; AJvYcCWu9eUEkIl8uPnGAJInd3zEW2fKiHYOjd5fW4pAVeDWjb8pnnvasm56T9uZcUj7A2vprtkFuDCjLK9y5Xq4A1UebvlKqE1C/WyDYw==
X-Gm-Message-State: AOJu0YxW4KPAnJBhcFUsjknpfoe1q/18lMMuN5VUozndEvfUI0Hd+Nqv
	STC3R+QUQpMZUm+uWqq3bVH/qBF6YX3j3wpsfQgiQmVKDMyOgNIfdmJzJWpUCo8=
X-Google-Smtp-Source: AGHT+IEgu+SEeuiOCn/D1qY0pc7gkYG3Zs7Fw5IldGNciNZjurJw8DVlWWCmF1sWH2Oat7hbi2sUlQ==
X-Received: by 2002:a17:906:c34b:b0:a6f:14b8:a017 with SMTP id a640c23a62f3a-a6f60de601emr158636966b.74.1718355723412;
        Fri, 14 Jun 2024 02:02:03 -0700 (PDT)
Received: from localhost (p509153eb.dip0.t-ipconnect.de. [80.145.83.235])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56ed0d7csm161412166b.115.2024.06.14.02.02.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 02:02:02 -0700 (PDT)
Date: Fri, 14 Jun 2024 11:02:01 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: 
	Kelvin Zhang via B4 Relay <devnull+kelvin.zhang.amlogic.com@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, kelvin.zhang@amlogic.com, linux-pwm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Junyi Zhao <junyi.zhao@amlogic.com>
Subject: Re: [PATCH v8 1/2] pwm: meson: Add support for Amlogic S4 PWM
Message-ID: <agnl6gfipf3fyykdssnml6eibc2x7kva4nf7hpajiimoaavge4@lvajpt6tiszh>
References: <20240613-s4-pwm-v8-0-b5bd0a768282@amlogic.com>
 <20240613-s4-pwm-v8-1-b5bd0a768282@amlogic.com>
 <1jfrtgj0so.fsf@starbuckisacylon.baylibre.com>
 <tnwdnwiruoty5yd42bmkupgg6hjxib5lblhqcyouoyx5y3zvnq@2d7cnrei24m4>
 <1jbk44htqr.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oz7u3unvpzgczlnj"
Content-Disposition: inline
In-Reply-To: <1jbk44htqr.fsf@starbuckisacylon.baylibre.com>


--oz7u3unvpzgczlnj
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Jer=F4me,

On Fri, Jun 14, 2024 at 09:24:28AM +0200, Jerome Brunet wrote:
> My point here is also that devm_add_action_or_reset() can only fail on
> memory allocation, like (devm_)kzalloc. Looking around the kernel, we
> tend to not add messages for that and just return the error code,
> presumably because those same 'out of memory' messages would proliferate
> everywhere.

I took your first message in this thread as opportunity to resend a
patch improving the situation here. See

	https://lore.kernel.org/lkml/3d1e308d45cddf67749522ca42d83f5b4f0b9634.1718=
311756.git.u.kleine-koenig@baylibre.com/

Best regards
Uwe

--oz7u3unvpzgczlnj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmZsBwUACgkQj4D7WH0S
/k4l2wf6AmvkZU5HnDzh5pUZtIQAnaTIqw7xQlIVCPO0cdSS6agRG3SUyEETcbGu
RoXED/lTCL16XBBJ6XVo8OEV1Genk9lIi11g6w/Ep5EsQSAgpZ/Vl2JgGvXLLJrF
/p5HKP8VYBRpzUE8ss+9f8UI/1F39qwR3dUB6S6beBqq/2/dmTGmZehn281lvw0o
a4eAdl4PTFmwdw2XnVbDiAEZsyapV/iUXPqDd4t0Op4MoW9fuAWkNSvPk9BqOp1x
THfg5npVz7yjG/DS9LmUrVzb3O/ZFwRmHSpCixFoC5JQ0lEHtGanX07YF4V9trME
pvtXzMcajGQH936vjemB8MN7Z4Dnaw==
=Hk1f
-----END PGP SIGNATURE-----

--oz7u3unvpzgczlnj--

