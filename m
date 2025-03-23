Return-Path: <devicetree+bounces-159949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 871F5A6D1C6
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:41:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 391E73AA179
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24A5B1EE7AA;
	Sun, 23 Mar 2025 22:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ytCHdf13"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A25981E573B
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769581; cv=none; b=MWyc+Zy/DjwrWuwVmy5YTSs6UsT4ob7K8211hMo7Lz3lc0rdyAhBXxOY0OawxpcNq7h8MFHlWw/is3OCTliZoMVYD6+Hs5qVOJOEHDQdaOWWig8Lv8/cSxV/ecbqK3p8I9OfYn0hGzlJCWybOt8cDwgI1Sm2xpThxDkkUrL07js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769581; c=relaxed/simple;
	bh=CNr8O5YK2JQvgLnYqrPn1/s+31iKPD62ZA/NdspWTmA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H+yZL1tK8157yJ8nt8pLtDYS20eCzObRck8bnW1CH9QrxEX9bEpyajCSvop/o8WvEhv75w5vQJW8bPDt7JphHn3VLwofWezmlc1MF0V7ZRlkEy7f16Gz/zrMuZ/5bFch4t5U52vxB18llRocm5Vd3E4j0C+vsmUwsueGeo/VcYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ytCHdf13; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ac29af3382dso635617866b.2
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769574; x=1743374374; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ma2h8YcPyNzHzzZtNTsrMSq+4WFWkERbNAUqbwhG/XE=;
        b=ytCHdf13wQ6wy9w2OC+acXO/7QQuQ964Lje7iCXaJKOv5ibrRpLS397TcfRJR1kq7u
         PbKza7+Uyomr8s+8ztSGfVZw/Nbf0nhi2lv/16WaVGbdKhKdI6ifWqXtKbo0KsseLr1d
         olViCTOQvQenLyUjQzkPyfTmTlk4F7LjSDoThJoTkHYv0hERy8wl8Fj6AiApIK483BTi
         S9TSqX6zG24ms89OZcRG2kK/gtpI82ihdfAFTpk3QCWwRXBkfxp/X0gX71r0l+LLX144
         YzEGBviX+jBTOmnS/oZL/Z+6kAWCvkTDVryEmVCth79Ks/ALcUNRO7qtZJt4gDgzunDP
         p5eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769574; x=1743374374;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ma2h8YcPyNzHzzZtNTsrMSq+4WFWkERbNAUqbwhG/XE=;
        b=ZUW95brrEkXPe56EqFAX54UdbHbwPu8Xct2ayJeTjGWPH2T7o91+3quyoeh5f3oT3u
         C5UwuLrq1ngM6Hz0mjlHlAI8dQQhEm4LLtN4Bcp0pinU1yleS4ApV/gm96DDEKLXF8/a
         nJ9qVCnKpxzwVC1W4SIVSuVq9+GaGQZY0MdE5aLeGGghc7yxUDafKwLM6jRgLZOo9UVt
         lrApk7JYm+MCMm4/9E/ue7jEDWqDfGuZrF2bOyAtzF8XED+m4zl0G1GpboqZUc5Kxqdx
         KdBui3GeZm6ZXB/KI280NzgvVyShjv7Zdtn/dfCxekFMBGJHAyLv40vIK09q/jtB0BLu
         ZiKg==
X-Forwarded-Encrypted: i=1; AJvYcCUT1PCadxerwAOwhx+8j5lbNMAgrxSKHQFJaZqyrSumcFxr760KqSOuHerwMs+sJMbX50kDV6+IWrz0@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ1oEtESTkC4yQ3nFre504PDWAK59F0D2DU2WzUKsxxDuTKevj
	af3Af/aND94R/iAM0dUaADDhrVnQBeZ4yIvOIOcUFRhFqGJxeEJkW2L6MV1NCNg=
X-Gm-Gg: ASbGnct1I22twW96iMu7jl5Kub/v2ERPrT6eRN7LYRu64N5hWe0j6JxVi9gdzwtNBOP
	OxRqNKUDAgg/hdiTD/96SFYQSToAQJZuHOXGgO7NRLWg2NiffHxm7R8Ns9i+rVxILT0udLL9zsM
	n2fpRp3ASrs6tJpU+9VKAIbw26Wb9ohdKnUt14tftF6jXxJ6Ah71eRENZPfOtX0j/xp7QKFWCVT
	VgdnR4SY1UbBO1bSn1ExY4jL8kKj6CvfEK4wamsNENiEh3ygng0jJp4kV//GJyZJsMPyOgGqD07
	d0CfpUW5LQlXIjFo3RRf7g23oPAR2MxKZYLpyiEYjS+gbKV3x9LaDhxC5HqvLswHixRPjSX9N7c
	YWT93Lzel/FPn6CpAdwKWPGhy8/3h
X-Google-Smtp-Source: AGHT+IEAdjv9xEbMYB+Oz8xJ1E35q2wdeD2HNBvV+6r3g5vXOlzMcwWya0yXpD0Ui6X7vYMMVnjHVw==
X-Received: by 2002:a17:907:d91:b0:ac2:a4c2:604f with SMTP id a640c23a62f3a-ac3f24a7838mr974893166b.46.1742769573704;
        Sun, 23 Mar 2025 15:39:33 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:33 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:33 +0000
Subject: [PATCH 17/34] mfd: sec: drop generic regmap config
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-17-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

When support for PMICs without compatibles was removed in
commit f736d2c0caa8 ("mfd: sec: Remove PMICs without compatibles"),
sec_regmap_config effectively became an orphan, because S5M8763X was
the only user left of it before removal, using the default: case of the
switch statement.

Subsequently, the accidental new users have been updated, so
sec_regmap_config is an orphan again, and can and should be removed
from the code. Doing so will also ensure future additions to support
new devices in this driver don't forget to add a regmap config.

Drop this fallback regmap config.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-i2c.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/mfd/sec-i2c.c b/drivers/mfd/sec-i2c.c
index 3912baa5c2f918b7ad345e2bbbbe4daf2e49ca6d..1bdd6ea36fcd9f56ea5ec1159a87723f4c09a0bd 100644
--- a/drivers/mfd/sec-i2c.c
+++ b/drivers/mfd/sec-i2c.c
@@ -61,11 +61,6 @@ static bool s2mpu02_volatile(struct device *dev, unsigned int reg)
 	}
 }
 
-static const struct regmap_config sec_regmap_config = {
-	.reg_bits = 8,
-	.val_bits = 8,
-};
-
 static const struct regmap_config s2dos05_regmap_config = {
 	.reg_bits = 8,
 	.val_bits = 8,
@@ -196,8 +191,9 @@ static int sec_pmic_i2c_probe(struct i2c_client *client)
 		regmap = &s5m8767_regmap_config;
 		break;
 	default:
-		regmap = &sec_regmap_config;
-		break;
+		return dev_err_probe(&client->dev, -ENODEV,
+				     "Unsupported device type %lu\n",
+				     device_type);
 	}
 
 	regmap_pmic = devm_regmap_init_i2c(client, regmap);

-- 
2.49.0.395.g12beb8f557-goog


