Return-Path: <devicetree+bounces-170491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 248F0A9B1A8
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 17:07:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54F301705FE
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 15:07:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22B6A19ABD4;
	Thu, 24 Apr 2025 15:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="g4mppRT6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278DB2701C1
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 15:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745507224; cv=none; b=D6ejbc4yeEH+nF2EdmbNddLwEKohyqnlqbr38QNPmwmtjT6pXGV9Ln/bvVe8bPdnKtYOegBs9GEoVObmThcmXJuRuRk0OShyIe1Qz97UYSK/GWU6AaEIwWMdFRdWRj2rA3lyQLOWeCqooVX0PRtveC8NLcW1xb6GiIoaW9Q0rfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745507224; c=relaxed/simple;
	bh=tekmdgu4SmGOyXOMrvYH8AEv488OvXUmZd+ZMk/jzkg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MTklSC5fa/GcNtXEQW/n3rc7QYbiNi6Xy9OIGjwRU031DF8IAST2yA4keIIwVflrX7ldyCVHy5Kt1qu+l34Fr0RuUUpPBWYRWt5YT/caQ+90ZIREJbLe2LHPkJh14iCF0v1Cn37X07Z4ueGU43KfsNr7LBZM28KbMq1ANxpFmcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=g4mppRT6; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43d2d952eb1so8220505e9.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745507220; x=1746112020; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tekmdgu4SmGOyXOMrvYH8AEv488OvXUmZd+ZMk/jzkg=;
        b=g4mppRT6Ezdi9xpFVB8wtBou2WGtbZs/94VOF6/Ghjtfxu3SJhRoPpLuFxqohH2Xhh
         tA2dknoYmHEWJmxZtIYvMqifC90lXB/eQvsz9lrY4CFWnhx2L+zK+gK2G3PbNjFwTXs7
         G3SAhadAFHy6U6+aY7kOKgL8q5OrepxtGjaj6PJcsBfoQvVkwd181wx/t/WqfEhlOwQC
         puYSwvoNSIKtMHmQgN//c8uaDvcBRRLYFXLR0BQLfQMXEtzUURJ7QbtmGeKb6xwMeyRY
         4rfuaCylcxUR6dI796eV3m2emBuNBMKUWJLhiHJDVd+NvxXnLToscN3eFzgCdMWQK4ua
         HCwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745507220; x=1746112020;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tekmdgu4SmGOyXOMrvYH8AEv488OvXUmZd+ZMk/jzkg=;
        b=K9895rx1Zd3DPEAbMuYLURK1lHPwxTknyZ155fAK0kvKpw9Jkx0VyyHa8QWKyJHkZn
         XHyAckO7VAORfHB4Qe/jgvKjCjyhRKOKPHkzp0hnv7S8J99EkQZmwMOuiBuyrWl8cDJY
         oOZfmx0ZJZv5sJXPhB0x7KbQtqWM8yrzxmbd8eBrIzMzq/iaIAioNggA/I17IR5LSPhn
         kESK18ZxuyXGdsBX/mvFk8zZpFE/kDCMP3D2X74bI7V64k4dNxMq7cel3RiTy/zvlTGk
         mj45/IkFXFWHCgiLBs+YpMgDkx6gVl/hnbQbbgTwwx5cRR/RuNpkQ0ci6FX9BgHM8nwN
         Qb9A==
X-Forwarded-Encrypted: i=1; AJvYcCVmVRTJrMiy+CFSNFGltpCNmKkdJTIi6qqNrQq1WTW/tZwx8TrwZz+PBkXkC2v4DFd3jIfQ64hQTYdp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/BSSXvS3FrJ7Sc2XzRCElseXSvjOl6SQM/iLvpUaCXytLDfMh
	aoz3mJFZlZRvUtlExTdUc6KZftOuyUxalrlVvvOBTVWzMudfC8LFrEticLblDaU4mLV8LWbFqTn
	+
X-Gm-Gg: ASbGncvSAO0QolZ5c6SPdyH5tny8hYymeR/2ClZlR/esySstew9tGzo3Jnb/NETW4/T
	oVdqJwAFcmmO8ZFfsaOz1HzJxyopj5BVh/q4B0OL/SNvf+x2ZiJSNRsS6z1GS0aT34pYGprICFN
	fk55zvMcyrzwq/Z1S+Z2i+XuyYQggBUeokJwmnczB4JPGxgGF1jGv+rb+aU5O4WoywZEJiolhd/
	nF0r5+RZhnSjfWRzPqSEj3XvF/1NapRJaKtFpEBkcxeRumrsxr1KluuBwqq9Rs5hN7JQiXhLQQl
	rD8FYQtw1MlMcXElvn3DB7nTP+T7BG5SXppCkH7pSiQhHHVoDf569X4ArISg+7KW3AF9TamuoEM
	wnpJZ8rA=
X-Google-Smtp-Source: AGHT+IFyIihiWZtzqCaT0+c5gR5qS0i6N2HGB8bIr4D+Ljl1JMZ+cLPlHv9drJDs1OWf2iLRUT3wng==
X-Received: by 2002:a05:600c:4e48:b0:43c:fceb:91a with SMTP id 5b1f17b1804b1-4409bd21f8fmr30871065e9.11.1745507220162;
        Thu, 24 Apr 2025 08:07:00 -0700 (PDT)
Received: from localhost (p200300f65f00780800000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f00:7808::1b9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4409d2bfaf4sm24338135e9.36.2025.04.24.08.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 08:06:59 -0700 (PDT)
Date: Thu, 24 Apr 2025 17:06:58 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: stm32: Add nvmem-cells to ethernet nodes for
 constant mac-addresses
Message-ID: <xvhstvgs5bpfebeolozdbxh2empviijqq6hg2k2kuav5xykpqw@a3jgkrqzj4xm>
References: <20250328171406.3307778-2-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jf4746uwztvxbhk3"
Content-Disposition: inline
In-Reply-To: <20250328171406.3307778-2-u.kleine-koenig@baylibre.com>


--jf4746uwztvxbhk3
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] ARM: dts: stm32: Add nvmem-cells to ethernet nodes for
 constant mac-addresses
MIME-Version: 1.0

Hello,

On Fri, Mar 28, 2025 at 06:14:05PM +0100, Uwe Kleine-K=F6nig wrote:
> The efuse device tree description already has the two labels pointing to
> the efuse nodes that specify the mac-addresses to be used. Wire them up
> to the ethernet nodes. This is enough to make barebox pick the right
> mac-addresses and pass them to Linux.
>=20
> Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

I wonder if this patch is on someone's radar?!

Best regards
Uwe

--jf4746uwztvxbhk3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmgKU48ACgkQj4D7WH0S
/k4KqQgAh+AwCxuJsOtZS4t76OvBR42DI7PxQQ1v6/IsFyAA8afEf+7e9zgLaGZu
DJlNzT2e74nbDdcbaCDOLOM6VKrJ082DI+Sk5TfSuz8/KQeC5ljjKfoS4Srem16C
QDRhMNzYgTUC1GCxXE8CY46syIHB07mA6uuNndjxI2MFUG8jA0tO//dGkfWzzxUi
17RqErahedYndDxyopbtce05CvZHvNoZ+zcmxJItvijX1JWpUW5utouFgFsO40Xj
6H/hmScaWYagqW9CMyoUcgmnvDoWDx+aq2XRmWXIG5USJzc48wUynpZAHd/rvpRS
dYA59U3ESpZ/3M+zMWEjDvaKnGw27A==
=DXp2
-----END PGP SIGNATURE-----

--jf4746uwztvxbhk3--

