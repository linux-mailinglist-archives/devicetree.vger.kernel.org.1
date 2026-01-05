Return-Path: <devicetree+bounces-251395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADE4CF29C1
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:07:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8099301E931
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:02:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BA5932E690;
	Mon,  5 Jan 2026 09:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UjhoWzjG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256A132D0DE
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603718; cv=none; b=QgGxDPUFmF8CrodxWohywLHLYx/6N3m6eZqCNmDPdKiT7gzqKtYdM1qB7OatuSUm2A6kWhn6rYL97Vu5M36+mNFQeJloc+e/U5idmWB3ZMLSeGR2+dnP4v51AXrJWSdF0lg3OlzV4TDDEDRUWIt26RNnT7Qdi1b+z71/2HDlTgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603718; c=relaxed/simple;
	bh=EbkA79tZJb99W8QY1jSkN69mbuMKBY7QYKTImhSxzUg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NTyWkiXdBJTw9aX9NHsPYVRm6tRk4QKZ/WCjA4nk54FxB6rxAXIC+SkEUvqaQxJ04fj44c2g3iGAyKZEF95dtZeeWfrXQcgXL7/VhiHkaBbch0R7lI6BBdi0OfgKC0OfRVRWnyHzKoyBuwr2s97Bm/YdOQb5mlnhX+S0MpzNojo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UjhoWzjG; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-64fabaf9133so3952133a12.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767603710; x=1768208510; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FKm6UbDQAJQzpK/ySeYAg6jnja8QC36f4+JR5r/3xCE=;
        b=UjhoWzjGpM8xMCOj7KIBJFZ0SUo76s7NsAYcqLli71Kjrnm+jyixvh01bxQiN1i/g6
         +4EygEmcRWS6ps+q8bAR9ffSOL7Ux1kd76jpqjdCGC6LRjW5wKLq0UCliiBl5mLxmVZJ
         ziwY6cOaVKmTyw4GKJWAuNHfT6gmTZWoolMHnvyW6Ld5cfIvfb7Lad9d0Q1khtP4yLAF
         zzLX3YFStg/OovLu9ZKB1iYNuIsYgPlUivwRz3XdMln+et013FzS2OpNKlKJG9V57pZg
         0VxUmBEebFQoeYrNqpMFJAlcSdUL8xUU/dHUFNl2r1ZitVmsmiU4fW3D3ysK4P3kcntc
         Ui3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603710; x=1768208510;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FKm6UbDQAJQzpK/ySeYAg6jnja8QC36f4+JR5r/3xCE=;
        b=Ei3wxlFjV8LR/HOZRT5+yfbX3Crc2UIxDk6mNslbma2TYZsD10UaTIjuXKqQQ1POY6
         JqaBb0LTyTSLJq8ADVzvfC5eX+ZrmwPj00AvcIAe+CpkHy7SAklOXAyxpydaDMmPdKmI
         GYO65KGTn4fAO+R6hVT1ewW71yb4xglejqz7327IRA/VUHHbWl5IruifTg2fi7dkP485
         fli674xIrIzJT/AoeG822LKfvq/blZvpnKuagV0V/VG8/mGNIDJ/GRoKfB1iS7AQBN8S
         xPeIqJu9zzno9nYudy5BopyzfC2d7TlqkeWnvJl8DA916u17Xtr8f1cSye4Zew3FOzd6
         oNbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWMH0o5m9WOGqyqe9juaFtymlw7PX1/2+vbB49azmLz88BMAC5LC5OeI/3Tr2jJB2TOBAzLorZGQa5@vger.kernel.org
X-Gm-Message-State: AOJu0YxgqItqj0RrawMTtImD+orUye0gEEtjW7NmOLm29S2vPE26m4vd
	aXo92yHA387DxbHdCuY34OGhEzBqp6KTYq9PKmvj6SsFo9NYv1yzC7u1wWAI1f2dnfVGPsfgv0k
	WsjWtmbs=
X-Gm-Gg: AY/fxX6cf4HkD961sXoc2j0+SoqTCB6PRxs6WtH55Kj7Hj7yNXtza5KAITlnR4YX6FZ
	11eC4cNF8Jk40yTw2seTv1PrqbpU9K0xuQh/NQ+NoFSpJB1ALzZbF0OucO8k+tFDh8jf0/84JJQ
	EikQRkYje9rYWfIlv+KhYDYibs/sEXmlsCwAAFVPBVP/aGpbuiayuJkwgmZiXsbjqn+4EvD+dvX
	rzsOneMOXcE7i76lwtNX3eKdji5ZbSVmmmiMoDi6rq29PQo2rFosmfUHYxy08SvNnBP89AGDJV8
	XfswFJT/FNZ5XMp587KI7/TQCDn6X1CSEVHXEMN7ladINRYAosFb6TBBShq8HBJOGA8//lGn6z3
	qYc8wXAx1i7tROoTPC3j7Pvy7UuA55OfKYduRziqGg/fVsDRgqr0LrR8H1s6af1JPyAQbyCLLnX
	BuJ8pro3VNXc+FYPd3mYljk/wyOjuRRPPE2XHriUI9za71SME4cUl1GmqSZsmi7nYFC1+KlOECk
	oGiCg==
X-Google-Smtp-Source: AGHT+IGjvIAGvupchOOrFftG/YtkeYR3yC8EXM4cSwDm3fV3fNPQfnkzPLc0+5C+INuB5lyzg9eeMQ==
X-Received: by 2002:a17:907:e109:b0:b80:3846:d46 with SMTP id a640c23a62f3a-b80384610eamr3935579266b.20.1767603709843;
        Mon, 05 Jan 2026 01:01:49 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0ecb9sm5384010466b.56.2026.01.05.01.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:01:49 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 05 Jan 2026 09:01:53 +0000
Subject: [PATCH v6 17/20] regulator: s2mps11: refactor S2MPG10
 ::set_voltage_time() for S2MPG11 reuse
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260105-s2mpg1x-regulators-v6-17-80f4b6d1bf9d@linaro.org>
References: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
In-Reply-To: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>, Linus Walleij <linusw@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The upcoming S2MPG11 support needs a similar, but different version of
::set_voltage_time(). For S2MPG10, the downwards and upwards ramps for
a rail are at different offsets at the same bit positions, while for
S2MPG11 the ramps are at the same offset at different bit positions.

Refactor the existing version slightly to allow reuse.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 32 ++++++++++++++++++++++----------
 1 file changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 0b6b28ce6465bdbc98ed72f627dc5565479ec7c0..5e35840605472e20019ef936d283be2c38146854 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -566,26 +566,23 @@ static int s2mpg10_regulator_buck_enable_time(struct regulator_dev *rdev)
 		+ DIV_ROUND_UP(curr_uV, s2mpg10_desc->enable_ramp_rate));
 }
 
-static int s2mpg10_regulator_buck_set_voltage_time(struct regulator_dev *rdev,
-						   int old_uV, int new_uV)
+static int s2mpg1x_regulator_buck_set_voltage_time(struct regulator_dev *rdev,
+						   int old_uV, int new_uV,
+						   unsigned int ramp_reg,
+						   unsigned int ramp_mask)
 {
-	unsigned int ramp_reg, ramp_sel, ramp_rate;
+	unsigned int ramp_sel, ramp_rate;
 	int ret;
 
 	if (old_uV == new_uV)
 		return 0;
 
-	ramp_reg = rdev->desc->ramp_reg;
-	if (old_uV > new_uV)
-		/* The downwards ramp is at a different offset. */
-		ramp_reg += S2MPG10_PMIC_DVS_RAMP4 - S2MPG10_PMIC_DVS_RAMP1;
-
 	ret = regmap_read(rdev->regmap, ramp_reg, &ramp_sel);
 	if (ret)
 		return ret;
 
-	ramp_sel &= rdev->desc->ramp_mask;
-	ramp_sel >>= ffs(rdev->desc->ramp_mask) - 1;
+	ramp_sel &= ramp_mask;
+	ramp_sel >>= ffs(ramp_mask) - 1;
 	if (ramp_sel >= rdev->desc->n_ramp_values ||
 	    !rdev->desc->ramp_delay_table)
 		return -EINVAL;
@@ -595,6 +592,21 @@ static int s2mpg10_regulator_buck_set_voltage_time(struct regulator_dev *rdev,
 	return DIV_ROUND_UP(abs(new_uV - old_uV), ramp_rate);
 }
 
+static int s2mpg10_regulator_buck_set_voltage_time(struct regulator_dev *rdev,
+						   int old_uV, int new_uV)
+{
+	unsigned int ramp_reg;
+
+	ramp_reg = rdev->desc->ramp_reg;
+	if (old_uV > new_uV)
+		/* The downwards ramp is at a different offset. */
+		ramp_reg += S2MPG10_PMIC_DVS_RAMP4 - S2MPG10_PMIC_DVS_RAMP1;
+
+	return s2mpg1x_regulator_buck_set_voltage_time(rdev, old_uV, new_uV,
+						       ramp_reg,
+						       rdev->desc->ramp_mask);
+}
+
 /*
  * We assign both, ::set_voltage_time() and ::set_voltage_time_sel(), because
  * only if the latter is != NULL, the regulator core will call neither during

-- 
2.52.0.351.gbe84eed79e-goog


