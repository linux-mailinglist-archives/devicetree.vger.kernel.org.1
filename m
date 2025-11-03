Return-Path: <devicetree+bounces-234503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1E8C2DDBA
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 20:16:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A9821898A1D
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 19:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F6983271E3;
	Mon,  3 Nov 2025 19:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FeU0Rh2r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC44322C66
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762197301; cv=none; b=e9TQNNf8Fk/6JEQNv/bO7canvTubBZSKvDcvlGMktCVG/M8RFxZzKtlSFY2mu0PADpKYARjm7c/RF2+Wy0meUeqE77aGHhw81dK3RkkHmv7g1BTwrJ7uenVM3Elf5Ro3Y3uF5WesB/oqH35W2HTXxmMZQeb1cvoTgv+qFwFYqhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762197301; c=relaxed/simple;
	bh=uixOjz+0SA3kol75tGPJYrKw2nQ7/TJl/7ttl7R4sL4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=a1TvYL3tWmCvFc74VZwD99DuTcR4nToz1BJ5orKQ4oK88rA1CQsVY6zT86uVAZU7yWWsYvE9e36XhNw0Osy2i7+iHsWAuweyweMnibdUU+JzgJQf0UECCobyK1H352qYamCc0Podl6bXfGnDjQUTuU0DkPmUaJpSRXCObts+pyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FeU0Rh2r; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b7200568b13so55964966b.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762197292; x=1762802092; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AKs9Oj5VQmkz0sdNNGYCgivttboDuokbmkOd/J1Ks54=;
        b=FeU0Rh2rGj8JXLich+y0mnw5ejIH7qM69QDIpPiTZG0u0bab46Iryi5HaOUybkKRcT
         WohJ4bvClqcrpBJEGARjaGc4gjsrMxFfxGFr6vWjCQ0ZQV1+HvAEr+zr1NWEthqjba+A
         THKIyg2+tjJ7uez6s6WTnOKHZvhonzMoi6S2mtH0SzSO/NqBgMsoO2wyunc1E15VuWdH
         zaD0QgLKcgtC5HQoZQHd5M2+5T0rITdUQ3uK0IriVNoMQVFPDTEuAonbGZF2/1FjgDdx
         7vW+yKdwHb6U2T+WrzAFADWyBPM6WB+msZPuppOMXfbsZFA9yjG1azYTRjxh0/n5YGLb
         V5pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762197292; x=1762802092;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AKs9Oj5VQmkz0sdNNGYCgivttboDuokbmkOd/J1Ks54=;
        b=bgISfU/8S/vDP4V57N9CFO0mqJZyADlKbt/Yci6BnUjFxsA+0LtXidxzoWDzr9bjbr
         j/+VBL6UOacu+HNz5JquRWChXRiBC68s/kGP+lryrOWbMOH2MwDE/3UCn1U53sGU9qZR
         ESCyCIRZFncaNpObKW8VI4M9bor2eqmYkCDR47mifL3N9ez05uGLQYQ8pcxqWHTP0JZK
         yh0fUtkw6qT5++rcggXRhOdVS7Fh54pV3564chjrb/d7U6sCNw1Eg0Z3M3s/mkyc03Jw
         06kBw2rHuhX9AlABOkHOxXLlach9j8RLKIjutJTACUSjMnzecRdAeI/JGemTbip9ksnw
         T3Uw==
X-Forwarded-Encrypted: i=1; AJvYcCUKUWigekABi8kxEKfeBsxFRzZI9007eXvO1ucAVpzLtrWk0fwlHhAICaRi4oks0gehvSoSw8BJ2X2k@vger.kernel.org
X-Gm-Message-State: AOJu0Yzsd8IekW+l0ABbHLgtLh7KCNuvZ9MymKx6xVYTb8JVV9D6d3SN
	gS3FgnqNtxqBQrhSTEMpDU1YfhN1SEsxlN5Vcp4zGuFt/DUQxcHKfBLGVLWVsLP3nRg=
X-Gm-Gg: ASbGncvTJBSc1ny7gnSBZ/LjLpnwrqk8sUB9GiBFxzgBVhj9AZBftmGLkWSFVAaCp7G
	9D94veK07iRjt4srkLUzwMAp66leO72cdxsPjsuorGY6pGVg0WCSlNOpqEWpdyyv0Ga+GEuXgkH
	twoCTWH0ERShd0HcyZ8krzTlk0SvmyghluJNIWTF1xnpFDeA2qJU9sI9y/sVmoEFHFxni6qW+U7
	9TjA4ybZDZ/vXrZFti1ylmdwTcOmxo6zGsNg73SM0L3+5n668CpBdOAUga66D1J+xkWNVVZgER0
	88lsRtJhCXamftT1M9posmW6OtpkQ61o3JECCMqaziHJbTyv1rB36Gi6Zkzc4OSITxqZUbel3O4
	ZU/oQXkoFlvAKqaahe6GT7wQErKHSxi1NHxln9WDj6V7FaMQ50LzL/8qVp9eXFjCaYX7HzZm4Zh
	Ayg/4fkNa8fyC1+/5kOChFGsF2hjYLDC0zXhmgCmmLaP9Bvdqk7fGdpvasL8xxCv9Z4tHhIDM=
X-Google-Smtp-Source: AGHT+IEMpLKo6meLeuMeJSonvGyQzXHsq8uVBF9rWMxpzcbCATS3mtMOj7CfCciTHrODaqgmdS5IMQ==
X-Received: by 2002:a17:907:928d:b0:b6d:7f24:8428 with SMTP id a640c23a62f3a-b707082fba9mr1447423966b.54.1762197291687;
        Mon, 03 Nov 2025 11:14:51 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70b9f29c8asm466765066b.8.2025.11.03.11.14.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 11:14:51 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 03 Nov 2025 19:14:56 +0000
Subject: [PATCH v3 17/20] regulator: s2mps11: refactor S2MPG10
 ::set_voltage_time() for S2MPG11 reuse
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251103-s2mpg1x-regulators-v3-17-b8b96b79e058@linaro.org>
References: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
In-Reply-To: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
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
index aff85138fa5da4cff83bdec5cdb3086a58afc7ce..d840aec236dcbdc8b460f89b4cd04e42e3b3da7d 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -561,26 +561,23 @@ static int s2mpg10_regulator_buck_enable_time(struct regulator_dev *rdev)
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
@@ -590,6 +587,21 @@ static int s2mpg10_regulator_buck_set_voltage_time(struct regulator_dev *rdev,
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
2.51.2.997.g839fc31de9-goog


