Return-Path: <devicetree+bounces-137459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CF1A09152
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:00:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 82C3418856AF
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D226020DD47;
	Fri, 10 Jan 2025 13:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="r/dECvPx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314A020B7F8
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 13:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736514038; cv=none; b=GHUla1FNcL+8G/kCEP0Qqs4DofiyDlm9vM9pIw1tLVILYPXZF4B+3Hau6DZfglztZxfpOQgNJzGtMLopE9BLsdDKtVdwnoR9C1S7VO5chcUlEQZjAJQXb0K1zyMj4h5kyoC4P3Xct+rJMdtsLmCsdH53D5aRd49JZGaxqokVHww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736514038; c=relaxed/simple;
	bh=Ox0b+t8m6a7nsdtijT2HhmYrccXzYcL5Kx6tcfsgmzE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oa9i/0J9PsJ8uyKSI7gSjBGOVbX4PCZibA3zskGhn2vNNW/95nyN2ZUIy8eTlRD0Fv3gDpPgrq+DKZ1ffigd8Bya1Gv76kqWdanbDeyw9sU/8HwsQLTzP4Ttx/L77dOGAzXFf0/tKPL7k+5AEN3qa/nKaeS9oMu47uRMavNoRNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=r/dECvPx; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43635796b48so13260075e9.0
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 05:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1736514035; x=1737118835; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UumBL8EipTk8x3xnWxwvytHrJarKXZ95qoxDRHZZGmU=;
        b=r/dECvPxzlgH+eUJHTTCJqP9HTd2e5jNEV3LTvfvyBZwuOshbRm/TkUXYWWr/19ulA
         ixqu3KauKwViACzYGDFHJUvN3brDIPo2UnK7DtbYOM6qJchpg+dWtFDIH5gLzAYEnBFm
         zpHljJQt/37I8AZTRMPvkgZtmAxF2l5s3vYm43g/fCRTpyGJCchjTfciY8DpAQI7Djlj
         x/cILZk1lZVHBrNIgEc8qRr1+rVYBA83CTmEL1q1+TXGehUJKAhy47FdLW/3o2Af//Cm
         /5T81N2t2xIFFMk7QrE5VJCDjiBBOEVDG1+GlFFPuRwdD1oQ59TJMX1inBQQZ3jHIUxm
         fveg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736514035; x=1737118835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UumBL8EipTk8x3xnWxwvytHrJarKXZ95qoxDRHZZGmU=;
        b=uLyGosaER1eIbDfMGsngGMuNytr7wSfksZu4HTVmejk8YaGKlNpK7msrbk4QLLqkAE
         A05DUsNXQpxp0A70x1+EJ5o60LotXVSk6Jtjjs+oIkvepLYUkbBESI28HJglFNPeK6RZ
         oNDlwD1QankNIYVOFQ0e89Xg+rpUW2pvS/wsYXxtWFPtY7YQl4NjSr/ds3uBHcO72Jr1
         WEKu9P9tN2zRIdb/4aRJLXx/eoNUDqnBBPYOaVwmXPMhcHspSsXag9xiDsGhPXwLUvhs
         KZYIWTg72viaEaZQpVfnP8B1QzuoP3xrhFYcO9WWudGd7Pglvxx8g9y5al4V3Xk9LDca
         chGg==
X-Forwarded-Encrypted: i=1; AJvYcCXIzclDgU0rS3Bua2GgKicijC32QlnKQmbozjT11CN0KQdqeg5viKg68kjVVJMFH1wu69SLFyEGVVyd@vger.kernel.org
X-Gm-Message-State: AOJu0YykxVhH0UNoD4PvBjgza6CWbujM+PYhRo6aqhCuP8ACzZpO6aXb
	LrZrZpxW2lRBuKb+Kd6N4P1LQGPoaZjfX/WIApWdJFGM03/vNd7mmzFABzRxul0=
X-Gm-Gg: ASbGnct+dUQMBXaYVGtyhdAeH9s82AXYW9ygt4VcqCzcZCi6mFT4VMh1b2jagM+mEcx
	uuIhDV6Y2CS5KPCzer8tQIS3mLpFmXm+YQ+OVRU23GeedMwIDsVXUv0nnfAoJWHBhKYLzpgtPCY
	iz9LoTlCf8wDhDinJ+Jka6jz7AUJYKyPc2Pq8nxgTE9UmC30Mg+kaAj3rHhZfVa7cXPFzbeZbec
	j5omHTaUkAvdsJHa5p75U0btVhqKynq/YiePtXGY+pzkLy87K+IQyk=
X-Google-Smtp-Source: AGHT+IHu+3YW9KFmIbdwXeSMENWMKFjtkxFiR3VHsAUnnkL2+C4k2bV8dvw7WIeaSgTQI82r7Xq/fQ==
X-Received: by 2002:a05:600c:83ca:b0:42c:b8c9:16c8 with SMTP id 5b1f17b1804b1-436e9d7b51bmr54548015e9.10.1736514035335;
        Fri, 10 Jan 2025 05:00:35 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:5581:e96f:97e:b3a7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9e37c2esm51360745e9.28.2025.01.10.05.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 05:00:34 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	=?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
	=?UTF-8?q?Cs=C3=B3k=C3=A1s=20Bence?= <csokas.bence@prolan.hu>,
	"Geert Uytterhoeven via gmail . com" <geert@linux-m68k.org>
Cc: linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 1/2] Revert "gpio: 74x164: Add On Semi MC74HC595A compat"
Date: Fri, 10 Jan 2025 14:00:24 +0100
Message-ID: <20250110130025.55004-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110130025.55004-1-brgl@bgdev.pl>
References: <20250110130025.55004-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

This reverts commit b1468db9d865deb5271c9a20d05201b1c0636895.

There's no need to add a new compatible to the driver code, we can
handle it with a DT fallback.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/gpio/gpio-74x164.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpio/gpio-74x164.c b/drivers/gpio/gpio-74x164.c
index 2ce00e90ea56..fca6cd2eb1dd 100644
--- a/drivers/gpio/gpio-74x164.c
+++ b/drivers/gpio/gpio-74x164.c
@@ -165,7 +165,6 @@ static void gen_74x164_remove(struct spi_device *spi)
 
 static const struct spi_device_id gen_74x164_spi_ids[] = {
 	{ .name = "74hc595" },
-	{ .name = "74hc595a" },
 	{ .name = "74lvc594" },
 	{},
 };
@@ -174,7 +173,6 @@ MODULE_DEVICE_TABLE(spi, gen_74x164_spi_ids);
 static const struct of_device_id gen_74x164_dt_ids[] = {
 	{ .compatible = "fairchild,74hc595" },
 	{ .compatible = "nxp,74lvc594" },
-	{ .compatible = "onnn,74hc595a" },
 	{},
 };
 MODULE_DEVICE_TABLE(of, gen_74x164_dt_ids);
-- 
2.45.2


