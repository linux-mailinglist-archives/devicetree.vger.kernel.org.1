Return-Path: <devicetree+bounces-183390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 59406AD049B
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 17:05:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DADFF17B040
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 15:05:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC45728AB03;
	Fri,  6 Jun 2025 15:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B1yAVPmC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A0D19D07A
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 15:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749222206; cv=none; b=GX2ONcm6umzQ3j7WWuHDWW/lAhEbYHb9ny4lIXcc+lS+VHAtu+qFEd8QN7iYPPzSrhyS+P06cvh00+6OK3JNMUUh/6O4ywHGDnqjn2C/XgOB847sKkgBdp3ecxQQM/z352qSebyb6oedfE0gR/aRvqeChTmwb4DHdJ+OGTYkM7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749222206; c=relaxed/simple;
	bh=DtlBkmeFf9pjAxGCgmCN5Tg4/h2onm9CJStRVS1CP9s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KKA3dbhrYLzmRjkRKsfk5UT9a64y2SlDm+UCvFyuzvSNuS/LhcX6IJl8Js6wQ4RoPa7d53a7gIHZ3Bs4WVLbMqJK/FyV0F5rF1SPhbBE3DMFm5ubO0UKc/bQvH9vMgCmGRR7o8B0qnFnfFd5GnupyNPbgLX2Gv2JIRVEV758n0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B1yAVPmC; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ad88d77314bso433831766b.1
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 08:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749222201; x=1749827001; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7btE5VBq3UbP0k1jf4CzhHOohoUdya+2IgQP8EiGSvc=;
        b=B1yAVPmCn7q80Q46pfamFbOoJ/Hh3nPHnt3sW6UK+hbaCn70FYvVqGxYPoIcq+Cv/C
         FofI2H87hL+DOeqtIOhYILkDcYNu9icRb09QWVkFjlgeeGHfSbnMBhFBGMsN8D+Qgdmx
         porGVnj66Ijd/CFoFCjag2xQjx8J6s14mcWmXV8X7PzWPdzhzyrK+/jNizM31gpmnDAw
         2ppdkyJbG0rNGnzOh+YRp92rR21n4C6z+/xapj50CPj9CyvaW78DbkEB6C62tgPMJHX6
         KUMAEspgBxTlwCq6e2FlzHtYfk6Njhwt8UrR1uJ4yUzZgcJBwfcZ/KZ7Jbn96nfsNRP9
         Y68A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749222201; x=1749827001;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7btE5VBq3UbP0k1jf4CzhHOohoUdya+2IgQP8EiGSvc=;
        b=UCeWQsB27FIsDYQw3Nd/XlAHsGdTxw4KEI43MrB6oBg653sZHiPjKLCn41IuPR5z8g
         T393c3vrXBjD2hCONKedT+vRPZkA9QL9/VqeaGMC54TSZvzF3xntyC6OG6hx/g6g9fIs
         /2r2X0/ikwUefAdQBn4S3e/5pF52Ft45t43rSTkxcp5+i/lD/WfZNjuu434t2Iy8BmgA
         KwURz2VKi6jBepLH1n4/yFkqBYmPTVyfNBJqevXRhq1hG6mztIclhH0126Eg9K5Y1kxm
         QBLtRFnDXtRp/GQ2zJ9exHtSXPtFJKx1VS1pg87LzqKVNLea3la+dHD8FXg3HSg36atU
         oeKw==
X-Forwarded-Encrypted: i=1; AJvYcCW3n0RJK9uJ3CEs6C3n2dwZ/YBoEReF2SKZjgAAfBvIqOxzHzS6VMzUvgMoXXKJYAh8MkDonCdJLFOr@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7OUYSdubafDMHxQ5KKu+/jdmUMpXT5mmhRki8Y5z7Z77kfZjP
	r1+U+bguPtG3JPFdv8j0GHBH7sNxTy3lIJk6czWoJr71nAwAj3voQID3aa8xb9gItVI=
X-Gm-Gg: ASbGncsUfd9o/TSevsJhdgkT1AsalNx1la9cQOUNOwJt9MNft8ygK0AZ5t3HHWkGh5w
	yYwf2Q8FDYhcHXsc4yP4BVdMMV8I5cgeSY69oCh+3XGLKFleimoWbaMZvw74Xx1ZsFtm29WTRwR
	cf5BOpnOD6DRUGa/wDjNaw1LAqQp+E5qjKNGczMr2to52eYW0iHytZFx9BR6gxpzV9IsWFlbgdO
	2SzMDr73r/SjdfAMYRHUxprLgPNar/mZw2bVCWv/vtAD9foDJaY10m7kyhclQh70s77U4QBqQMK
	JZyvjO4C546/0bYHEvD9zM4qcl4f8x2+yMJhnLqQ9UFaxtkERQd+QA0VzMkR0hhUKkIxuFUj/Sr
	WmUuNHlTZm32kyYPPRLA/Tm9SLSk+K4pt49mtwnt2OT5bjA==
X-Google-Smtp-Source: AGHT+IGxnm6pBbHVIYIIe9hkMQ8JxTW7peP3cR4UL9qPSHSxqgc6/znfqj1QohdocTUC3/x18Pe/gQ==
X-Received: by 2002:a17:907:8694:b0:ad8:8529:4f73 with SMTP id a640c23a62f3a-ade1aa0e3e8mr353586166b.49.1749222199472;
        Fri, 06 Jun 2025 08:03:19 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc38cf2sm127735066b.121.2025.06.06.08.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 08:03:19 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Jun 2025 16:03:10 +0100
Subject: [PATCH v2 14/17] regulator: s2mps11: refactor S2MPG10
 ::set_voltage_time() for S2MPG11 reuse
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250606-s2mpg1x-regulators-v2-14-b03feffd2621@linaro.org>
References: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
In-Reply-To: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
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
index 3f2993b96c3e54427f5c0af7bb045e2278daa671..76be81c75c898fddc9570a62a64da787bacad7d7 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -562,26 +562,23 @@ static int s2mpg10_regulator_buck_enable_time(struct regulator_dev *rdev)
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
@@ -591,6 +588,21 @@ static int s2mpg10_regulator_buck_set_voltage_time(struct regulator_dev *rdev,
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
2.50.0.rc0.604.gd4ff7b7c86-goog


