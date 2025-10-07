Return-Path: <devicetree+bounces-224103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF78BC0B80
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 10:39:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DB1D134E039
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 08:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 813CE2D9EE1;
	Tue,  7 Oct 2025 08:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DDo6RDzK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83ED12D9787
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 08:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759826102; cv=none; b=o0bmMoAdV0puQZ3AlHN3M1G6RMt5DLbm1gjtY6Ny24xTuN/TDZm9lfS16M1KxUaGcUw5tbxsp4Coqq2TMAlp3d75Wp/aSm2xL3Nxs5wpZSGcj4M+/IYeYKpN5MO10lljgBkjqM8GwQivlTfZeeA8careum2HGvoxbnVaO4sz+qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759826102; c=relaxed/simple;
	bh=fMwGdCHxW6MohES2gJ+t6jTXcg1ARbhvMneIwOskBWs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DZarE77f56gAHaKnjZig/ws29WwQiHT+l83aeJwto6x03wGgPnkLoEhI22+Xa3kdXRZlhbdKgBIwn/Xey1XdomKL2oqz1gaK7bUYNwPcidkE1j626OS5Hc+7hNi0MN4OEKgi//fPc3NiY2LE0s5kILASHNe5/WBVvp5n2aOyun0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DDo6RDzK; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-57db15eeb11so7393386e87.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 01:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759826099; x=1760430899; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kcGIK7vGgNItvss7aw1s/UA59XuZ3yqeQ2L8mlry6dY=;
        b=DDo6RDzKLMxcXJ86L6Y39g8g6DMEhIHvdAWtTbvTsNiNPQ1KUSj7zaSuskbF0W4f1F
         slvwDRUGHv5xxqcEsbuariWD5j6ZibeyIpc9r4iuxqOieELM3XmuJNjC1IWU+7ZBqBWp
         lLgM10DKe55aZf1zmwpV859DEFBEDdJXh3G4pqYfdvAMQgmmB0wiQNCe/7mM3NvtSQ5R
         XVFlFdiSJtMaoXJQzjSJISd5XUjOrnSeSiznsBr0495gisBzzv4LHHvS0/H/ihYwr8ti
         zQy6KjvKnBQn5d+Ixz4Heve0+H1YEOCNDoR3nOEDOzrTJLhZRvIii/gRvyn+cIZaJiCR
         byDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759826099; x=1760430899;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kcGIK7vGgNItvss7aw1s/UA59XuZ3yqeQ2L8mlry6dY=;
        b=eMZNUOpDMXBQazsLYlyLeAHR86Sl1tdngFAPZ5/VZJCgYwT9dIin05TNkwhYiym6IN
         dLI3LmMt3cEjuxByVl0nQQmXk0JAi0XWAs7/dhyPOiiQ+PLJw6SBg1tjGs7xVPb8pVF2
         OurjqRzlVQ+TUBnJp87IphZLUBewAwPRgV/sE+//+Fg6DJoqXa0ShfQmkFDzz9l39N62
         o5zTKP1dGjR1P3uA+0IlGLcisH1h+3R41Ux4Ff8hUY7VBI/euFqtTvDFxgrKzNfqijVd
         oqy7do2/nEAvS8WwNM8eWZrJRkawij2+FmW/k798I3ez9sQR2a7AzQHgAValwT9pY+aj
         wSiw==
X-Forwarded-Encrypted: i=1; AJvYcCWvXURkpAYKLJBq3PvLDLrskt/mymx60Fe4TjvvbWkGbPz0NeTRAEUDSeiU2AWzorwDhP2der01H6F7@vger.kernel.org
X-Gm-Message-State: AOJu0YwJfxM1/8kdAnWlOejlsFyVaD7pbT/0EzKHW1FMWsA1ltcaeOUp
	igHigs7Bxmzo5DeUa1XHSk41BFBoQEdsaZSiRxPv5Q3ZH3FJQIhTfnYa
X-Gm-Gg: ASbGncvOm/7zWcCEnj9e9H8yTIf8Xh05PbmmShj644U1J9GqIZfFR2W2G0Y+aXfZEMg
	TVz00Mq84rXRBNA1kCcffkX8yCcWj3+u+ZJ+lZry8YB6jZaSYqIY6bPjS/TPzUV5yy6yViXGy3z
	RBh69R06lnImx+MmbushVe7k0ebEhVDS51THvrKLtRz7jpMi+h7MORWrzGN5gqHZrbCkdDdSYII
	k318IdB0XBxzsWuvRp7Cq/IiANvLuKeZ9eX3pHwLlo56E0CdA7SlRUjqnVwK29hLOjvEo4mW6QF
	VnLPRVvTm/ktPhCsAUODt1nNq69B/ARKojLo5tphSke9R6ZiLiJYq11+l5D1c6sggRQx843jZ8z
	NbjztAMYULYdVSUkdqstMuGFQXAQCQgY2ifC6kXkcig1DIjfkwpls0A==
X-Google-Smtp-Source: AGHT+IGCbWe72EPI8Kp5w6LOnXEcbYgJJAxOm5elS0846ZapppkzFMhVx/E//4GlXKMS6GDX9s2FtA==
X-Received: by 2002:a05:6512:2242:b0:57b:b4da:2712 with SMTP id 2adb3069b0e04-58cb9f0b31emr4945789e87.4.1759826098553;
        Tue, 07 Oct 2025 01:34:58 -0700 (PDT)
Received: from mva-rohm ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d857sm5845292e87.84.2025.10.07.01.34.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 01:34:57 -0700 (PDT)
Date: Tue, 7 Oct 2025 11:34:53 +0300
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
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andreas Kemnade <andreas@kemnade.info>, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: [RFC PATCH 11/13] rtc: bd70528: Support BD72720 rtc
Message-ID: <bdafe71d478386aded6a72e1de8b70b31e00f366.1759824376.git.mazziesaccount@gmail.com>
References: <cover.1759824376.git.mazziesaccount@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="07FidvfY5dUcjP6S"
Content-Disposition: inline
In-Reply-To: <cover.1759824376.git.mazziesaccount@gmail.com>


--07FidvfY5dUcjP6S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The BD72720 has similar RTC block as a few other ROHM PMICs.

Add support for BD72720 RTC.

Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
---
 drivers/rtc/Kconfig       |  3 ++-
 drivers/rtc/rtc-bd70528.c | 21 ++++++++++++++-------
 2 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index 64f6e9756aff..bf7d78a65ac3 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -541,7 +541,8 @@ config RTC_DRV_BD70528
 	depends on MFD_ROHM_BD71828
 	help
 	  If you say Y here you will get support for the RTC
-	  block on ROHM BD71815 and BD71828 Power Management IC.
+	  block on ROHM BD71815, BD71828 and BD72720 Power
+	  Management ICs.
=20
 	  This driver can also be built as a module. If so, the module
 	  will be called rtc-bd70528.
diff --git a/drivers/rtc/rtc-bd70528.c b/drivers/rtc/rtc-bd70528.c
index 954ac4ef53e8..4c8599761b2e 100644
--- a/drivers/rtc/rtc-bd70528.c
+++ b/drivers/rtc/rtc-bd70528.c
@@ -7,6 +7,7 @@
 #include <linux/bcd.h>
 #include <linux/mfd/rohm-bd71815.h>
 #include <linux/mfd/rohm-bd71828.h>
+#include <linux/mfd/rohm-bd72720.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
@@ -262,13 +263,13 @@ static int bd70528_probe(struct platform_device *pdev)
=20
 		/*
 		 * See also BD718XX_ALM_EN_OFFSET:
-		 * This works for BD71828 and BD71815 as they have same offset
-		 * between ALM0 start and ALM0_MASK. If new ICs are to be
-		 * added this requires proper check as ALM0_MASK is not located
-		 * at the end of ALM0 block - but after all ALM blocks so if
-		 * amount of ALMs differ the offset to enable/disable is likely
-		 * to be incorrect and enable/disable must be given as own
-		 * reg address here.
+		 * This works for BD71828, BD71815, and BD72720 as they all
+		 * have same offset between the ALM0 start and the ALM0_MASK.
+		 * If new ICs are to be added this requires proper check as
+		 * the  ALM0_MASK is not located at the end of ALM0 block -
+		 * but after all ALM blocks. If amount of ALMs differ, the
+		 * offset to enable/disable is likely to be incorrect and
+		 * enable/disable must be given as own reg address here.
 		 */
 		bd_rtc->bd718xx_alm_block_start =3D BD71815_REG_RTC_ALM_START;
 		hour_reg =3D BD71815_REG_HOUR;
@@ -278,6 +279,11 @@ static int bd70528_probe(struct platform_device *pdev)
 		bd_rtc->bd718xx_alm_block_start =3D BD71828_REG_RTC_ALM_START;
 		hour_reg =3D BD71828_REG_RTC_HOUR;
 		break;
+	case ROHM_CHIP_TYPE_BD72720:
+		bd_rtc->reg_time_start =3D BD72720_REG_RTC_START;
+		bd_rtc->bd718xx_alm_block_start =3D BD72720_REG_RTC_ALM_START;
+		hour_reg =3D BD72720_REG_RTC_HOUR;
+		break;
 	default:
 		dev_err(&pdev->dev, "Unknown chip\n");
 		return -ENOENT;
@@ -337,6 +343,7 @@ static int bd70528_probe(struct platform_device *pdev)
 static const struct platform_device_id bd718x7_rtc_id[] =3D {
 	{ "bd71828-rtc", ROHM_CHIP_TYPE_BD71828 },
 	{ "bd71815-rtc", ROHM_CHIP_TYPE_BD71815 },
+	{ "bd72720-rtc", ROHM_CHIP_TYPE_BD72720 },
 	{ },
 };
 MODULE_DEVICE_TABLE(platform, bd718x7_rtc_id);
--=20
2.51.0


--07FidvfY5dUcjP6S
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEIx+f8wZb28fLKEhTeFA3/03aocUFAmjk0K0ACgkQeFA3/03a
ocXDUgf/ZbkPG920ohos13zRqVRAQv+HF6pfsQERzwzHlzfgMSY3VkeeJm3b9kxN
Ue5IgVM6nwFTNtrr4SRu1raabFMIyBLeIzwxwsO6XimDtaeTbCkYsvkz9th4IMAB
cXun1LA/d/NBCXS/tiR+sofrpCPnAB1Mug2/U2I8yimHWHTYWOok3xkLIAbl10H9
iDeH8HPaRR2QQgHJcYexf8uoq9vR3PQfT+qJnOFVaCDqYZLr+jdG5TPtoB7avWL4
B0BjmJ/Wg5RhqN8aWTlBldxjJeUKlBW/+ITEZYcZjUKCXr30Z2TYx9jHV7378hLh
lU7OZE9Yd/96TA6C2NbsUg5cs6ONLQ==
=koec
-----END PGP SIGNATURE-----

--07FidvfY5dUcjP6S--

