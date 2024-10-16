Return-Path: <devicetree+bounces-111948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A199A05D9
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 11:43:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A53CFB277E7
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:43:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FCEE205E33;
	Wed, 16 Oct 2024 09:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XwzIRXg0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68EA9205E20
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 09:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729071774; cv=none; b=Je5SZaxmN2baQugV86ZEwKUICPBtG9/MoPEk/y20Wb9ZOyJ5IUttt3vj1z3riLTF5AUL7NpzVI3AV+UgrRgoQFLRaDyXinN3f8O9lI5fihiEu2wlALDa4pMLTvUoPoZSSkhkCbeNA8itMyyas/Ie+h1jZmWe+eUILr/wNdkzjYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729071774; c=relaxed/simple;
	bh=4xIAM5pNqvMEv0HpuFsspU0wQu/ksWAfjmz6gy5Oxn8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iz7a0sDSB2p7xPpdTtLXkJPJKcKGWoHUvGdsrDtdPe8LWyoXkgcSyfHFGb+putCmbE3jIfJ44A7nvo2u01uB6/MxIdjK4+6vJ/4B/4Is3IMiGdJLaqKrhgAuINkimA8BAo9ibMnt+dce7vkcEABu7aTH7QJIiM0X/GUioLERKsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XwzIRXg0; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5c9404c0d50so6633238a12.3
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 02:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729071771; x=1729676571; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y+nQ/TeUc4unHc0CviCK96FS6Nvx0I+2yJNdAgUGoGM=;
        b=XwzIRXg0ONXr9rQ1YWW8TkCfdUyWeLSH3K3llSQNufr+c4IgbTaR4u+DFI4tWqgzu1
         r2oJl2c+/g/NS/ChEeZXJgcH28vR+lrW1JbmmbrRKv51znSq4d5LfQGkei7mxZX3zNoY
         pyvAd9+dhyat5HeCRtpdzatql1kyxpFqqqgcryp12WqTeVcjyB9jNv92rQcJf9eNYFFl
         ITluoR7nureO+4qySTIweIejh28zv5g57H5twKx8fiZWizri7QqzH9fdrDFJR5VT2QHe
         qpdNjZns9aRXkVvTQA31XZckgtllOHGJQejz+ePfIPXPXF6Alh2slQ65W5ZOSswIDX+d
         hPQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729071771; x=1729676571;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y+nQ/TeUc4unHc0CviCK96FS6Nvx0I+2yJNdAgUGoGM=;
        b=aD9xJJQz3x9+Py25I3ZSftJdodaEBBa1L1GoDIJOBI7WpMdK6A2AhtLV3agpiktqZi
         nrUT+vlHS8aT+EnP4N6bydgEiwU19tRtVzjPNy0CVBANQtgRT7EtUmQpDKXN0gT0dKUL
         3owZaSD/znIweHgF16zLMaK3faMUOVhmrWMTu3BynBIa8QpuV0x85eyiHl4Kz4PlqpG3
         /F/VxLI8gaIj2ef67h5vvbi2iuoIUluPgrbcWIQFinMmHJf+NNN9HWpvoGnH/9Yt8oPz
         pht1KbfFliYwadekh1o4L5rpp0HX1Br9MfOMLbdcUnrECvA6GT78Brg07sB6LtM3RNkz
         Qh8g==
X-Forwarded-Encrypted: i=1; AJvYcCXXkAXq8IBwYXyCsptNLjg0paIbQyNizG5MmH4QkRQ2UZO3h6osSDlp2dClVIGMlmKxyXwDIx4kEaFu@vger.kernel.org
X-Gm-Message-State: AOJu0YwT+JJ0bd+tosxqCm3TgiZgj7PZnQ13CuDOh9W6GSvDmtdhO943
	WHGbhz2l/p/Bq5V3I8LROp2Zrd0k48cfZm/6ridkLLksrJcBC3+snIob4OKZSKY=
X-Google-Smtp-Source: AGHT+IHuQUwNqVXDGfNnrsLMBWvMT3Rt4PH0OsGQcCtq/cBUbz9Oasr9CWvqqQlecwsti+WIotAZBA==
X-Received: by 2002:a17:907:f1dc:b0:a99:4780:1af with SMTP id a640c23a62f3a-a9a34d0d06fmr260498066b.31.1729071770678;
        Wed, 16 Oct 2024 02:42:50 -0700 (PDT)
Received: from localhost (p200300f65f19e3002f38cf427133ca7b.dip0.t-ipconnect.de. [2003:f6:5f19:e300:2f38:cf42:7133:ca7b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a2974a49asm162647566b.89.2024.10.16.02.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 02:42:50 -0700 (PDT)
Date: Wed, 16 Oct 2024 11:42:49 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Ciprian Costea <ciprianmarian.costea@oss.nxp.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	NXP S32 Linux Team <s32@nxp.com>, Christophe Lizzi <clizzi@redhat.com>, 
	Alberto Ruiz <aruizrui@redhat.com>, Enric Balletbo <eballetb@redhat.com>, 
	Bogdan Hamciuc <bogdan.hamciuc@nxp.com>, Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>
Subject: Re: [PATCH v2 2/4] rtc: s32g: add NXP S32G2/S32G3 SoC support
Message-ID: <turfqcpjz2dxrng73v5iphpsh3pvhhv73guo4m2vvzplqycsa3@iyrzsimppo57>
References: <20241015105133.656360-1-ciprianmarian.costea@oss.nxp.com>
 <20241015105133.656360-3-ciprianmarian.costea@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="af47a2hrdy2esf76"
Content-Disposition: inline
In-Reply-To: <20241015105133.656360-3-ciprianmarian.costea@oss.nxp.com>


--af47a2hrdy2esf76
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v2 2/4] rtc: s32g: add NXP S32G2/S32G3 SoC support
MIME-Version: 1.0

Hello,

On Tue, Oct 15, 2024 at 01:51:31PM +0300, Ciprian Costea wrote:
> +static void rtc_disable(struct rtc_priv *priv)

A very generic name for a driver specific function. I'm a big fan of
driver specific prefixes and I wonder why this isn't called
s34g_rtc_disable().

Also a comment about what is actually disabled here would be nice (or
maybe a better name). I hope this doesn't stop the RTC ticking??

> +static struct platform_driver rtc_driver = {
> +	.driver		= {
> +		.name			= "s32g-rtc",
> +		.pm				= &rtc_pm_ops,
> +		.of_match_table = rtc_dt_ids,
> +	},
> +	.probe		= rtc_probe,
> +	.remove_new	= rtc_remove,
> +};

After commit 0edb555a65d1 ("platform: Make platform_driver::remove()
return void") .remove() is (again) the right callback to implement for
platform drivers. Please just drop "_new".

Best regards
Uwe

--af47a2hrdy2esf76
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcPipYACgkQj4D7WH0S
/k4bKggAlZ0dNrVMhxkUcOgNHdnZPmocMix0MolUyuwACDvLltKjsR3ytfo+npI6
Nq3Dh//oMITtQoRk2As0cx/Vxohwu6tbB5Cw+3QAXDVjrVwDF2qyp1Jt61r47UUh
2fAC5bDFVKS3Y4fC98KBQHDNQQLXdjT39zofsEyGJPsJZJfwYhGMvcT1sMc5cVyV
Ecp5uh+Tveo6kEkIzZxCQZNwY/vnnYmHoUBCcEoq4vjAI+I84KEa+cKWTLK937Bm
ok/d7R26aSCjmjRbBoGqpzohnAC7EwWFcfdQb0D5QSoEgDVyIjHENg8chlk3alcE
seCjwzOM3DEgdrZf12g9G5PNWgYHsQ==
=nTI6
-----END PGP SIGNATURE-----

--af47a2hrdy2esf76--

