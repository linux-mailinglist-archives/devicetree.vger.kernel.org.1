Return-Path: <devicetree+bounces-231461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8E1C0D4C4
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:53:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8ACAF4F4649
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAE0A2FFDFA;
	Mon, 27 Oct 2025 11:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DOl6EGX/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929852EFDB2
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761565727; cv=none; b=FTKdtWjTY4t8ZiaTnhkONRb7VEIkoYKHEhjY04xSrzttRCzWfUxqgWc2Ix65ZXXOy+rwpblj6YM4BGsABKP9A3oM5uQ+f/mLEx2tMsvDimd3XI7fDdJHh9aXZf8fFcJH6qvC/4Ysbh4egMSjdGw7GQ9lXwQgtPedD8+go7onCvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761565727; c=relaxed/simple;
	bh=i5F5XSjM3QJPOTTHFDn4pVZhOuKFqmtvKFMtVhcqG/c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=coC6ld+QQwOaNf1CDcjAv1t0Zg0HTR+a72cLriOqzFk+as1VGBtH6bWPDUQTA8eFJoO89H7s2ym95MQlaa6csGPEos2L6i8xsSaK6R3V0EqzGH5IGN2OmXvkkVo4r85+cZ4gIY6aTlJC98z75XdTDHQqBcpmohiHCd22mPT9Ob8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DOl6EGX/; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-592f098f7adso5531590e87.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 04:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761565724; x=1762170524; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PgT9stFn/poAbljDOlAYgxNBl2XctKW6jluiWQlJc8k=;
        b=DOl6EGX/+8+hk8eLbTOmrd6+VL7zsHouc81K8c5OcjjiueeAXDnY7m8eDgA5Wd8d7H
         +3wZPJo90Glu3zmfecJpvT4HxmuAuXgpuoAQkYVaF6ww0/W+xo6yjB3YdYKymx5++Sj7
         8AXOI5K+ge/VGlEJPngZhoawc2kNlWQH0coozlMTTejMMFy0adF41dEPhrNAjFxMRivZ
         3ZP7peyNbIbNQ73fOzB6RuHHbCVcO/C34cp5JIdJM1F/5q3sEfDyhBqy5s+RF+/Xc80a
         XougV/F30ZSrwg3FmpXyLLJPeqAhxPul3Gdqqzhuf5xxpcaXyubqyuqT2f3oyg3I8HGx
         WqUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761565724; x=1762170524;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PgT9stFn/poAbljDOlAYgxNBl2XctKW6jluiWQlJc8k=;
        b=bNPfyaXMH8EpoxOU0CvwDQEQ8o3rUwRABJss+j9Ap3GuWfE2qEWPowumHiGNlu/oh7
         nCX/q4ywron5XdyA3PlQkm5uWhXMS6gAqIcLeyFx8E0VGKJ22wd2oE27JrJu6/XEiikJ
         YjIqXW2Z3QnVwoLOKzbbHP43616U6kNHJ1bcVvQIWzw65zN2F3S1tjKIelzgFSBSb8i0
         jDAZk5GKeNd+xnTnRYam2N2TzrycESdGA7oG6JCGTRl783+M/sXSJEwTvXfxMWYR1Rca
         mv7/i3IAnAmxEn9ER4fW99BSQzbD6JteHF0+EIrKd2J7023JiUeYvA8CMkJzKuBShnuk
         yRCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOoOChnrdG1vXewWjE+CoAU30up4tQzEBhQ+PWyr3RGmj3yu9ynevUsPyE+PdaFStaWKdUkd0YbnhE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn+NHxX7BeFrPv+84tx9mgrF+Ex1qQgFu9OwXyPlUrRjzFmCI7
	yFm036TLLYCIfHT3nzBBn9h4BojSQXilUvdway1CMzImDy+xG0CjUOeJ
X-Gm-Gg: ASbGncvmTTu3wYKbnXJpL42e2P197D+0GbauL70CjJvYgeEyZ+LKOGV+4R2+f9yNIF/
	RdkP59H1sSKbhe/MRBe0QJ/GkOQ6oNpuGGqkgbmTgFA8G2IxyUMVuTfCS3uPn1VEIasCnDYq7Eo
	JUE5LPLpFx4eYFrtXFQ3s5AMsfNzeA1GLlefBbA5T//Z0oPDH6Vt6ZXFmDw939UttPBQXs2sEzV
	XIyxRpWdVXbQQG80tQQxq58dbPuvG7BuigChpYMqa0oipu7WQE2KTdPswkuKMTC7gh05jkbXCY5
	J1kqNlibeg/bcBHCH2MtssvRS+mnCYQtDUNcJJ7gn8nMj6TiL6sjnJbeIc/UaWht5vok8CGispL
	sV/OjjKrFy/fEjBQg4zCo4QJsP+CSWUvDTXqDgVukXPTkfLmU0XUNO28MeRm+hx71oapLnV427w
	R3nPxTj4/i2rHzuSu3gA==
X-Google-Smtp-Source: AGHT+IGSnZ+yAlMhSP89/zGsbZ8XNjjCkf1vNfg2R/zfGqQhGr2QeTscx5csNq8cRoakqqj6FfPRlQ==
X-Received: by 2002:a05:6512:3054:b0:592:f74f:a49a with SMTP id 2adb3069b0e04-592fc9e8f2bmr2863532e87.13.1761565723504;
        Mon, 27 Oct 2025 04:48:43 -0700 (PDT)
Received: from mva-rohm ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f41cbbsm2306417e87.2.2025.10.27.04.48.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 04:48:41 -0700 (PDT)
Date: Mon, 27 Oct 2025 13:48:37 +0200
From: Matti Vaittinen <mazziesaccount@gmail.com>
To: Matti Vaittinen <mazziesaccount@gmail.com>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sre@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andreas Kemnade <andreas@kemnade.info>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v2 15/15] MAINTAINERS: Add ROHM BD72720 PMIC
Message-ID: <a664a836ba419ea1eae1d8325f246c0955ec660a.1761564043.git.mazziesaccount@gmail.com>
References: <cover.1761564043.git.mazziesaccount@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PVPHd8ApeQQcOqGz"
Content-Disposition: inline
In-Reply-To: <cover.1761564043.git.mazziesaccount@gmail.com>


--PVPHd8ApeQQcOqGz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Add the ROHM BD72720 PMIC driver files to be maintained by undersigned.

Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>

---
Revision history:
 RFCv1 =3D>:
 - No changes
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fe01aa31c58b..7e3c1eac7cda 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22353,6 +22353,7 @@ S:	Supported
 F:	drivers/clk/clk-bd718x7.c
 F:	drivers/gpio/gpio-bd71815.c
 F:	drivers/gpio/gpio-bd71828.c
+F:	drivers/gpio/gpio-bd72720.c
 F:	drivers/mfd/rohm-bd71828.c
 F:	drivers/mfd/rohm-bd718x7.c
 F:	drivers/mfd/rohm-bd9576.c
@@ -22369,6 +22370,7 @@ F:	drivers/watchdog/bd96801_wdt.c
 F:	include/linux/mfd/rohm-bd71815.h
 F:	include/linux/mfd/rohm-bd71828.h
 F:	include/linux/mfd/rohm-bd718x7.h
+F:	include/linux/mfd/rohm-bd72720.h
 F:	include/linux/mfd/rohm-bd957x.h
 F:	include/linux/mfd/rohm-bd96801.h
 F:	include/linux/mfd/rohm-bd96802.h
--=20
2.51.0


--PVPHd8ApeQQcOqGz
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEIx+f8wZb28fLKEhTeFA3/03aocUFAmj/XBUACgkQeFA3/03a
ocX1rAf+OKqdSASLkvANGwIB/trs/JiLB0LQhsIiEMY6ZwKNN3UlkIbvSSEjJpmn
nGD+STZZhVbwJP7cpf/Uz9omS2lSQDMtoCTzkzd2+8zXQuuHU0qt/EP20le9J6V6
P/wHiPXOVDfIfD/Gr6JdPQ5XtPEhyPZdY478JbR0bQyzA1AskbLKvmRKZZfsISej
QEzG1Qvzw2hj3tke8B+M51Gf+pJ9Gw+bILA9b96+BTI/JmHENSIEHxok2bSC2oZE
0jJKnTR3LAtUkx7UCmvK8bgnaDTbHb5Es1tbd+ob6I4QuaUemtoDzgEILVMiXvx7
ZY462g3yI8d+cYed3UTXxIuDnsHC2w==
=qVnM
-----END PGP SIGNATURE-----

--PVPHd8ApeQQcOqGz--

