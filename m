Return-Path: <devicetree+bounces-236902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E22C490B0
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 20:30:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5A93534B1F5
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 19:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D530733C52E;
	Mon, 10 Nov 2025 19:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oDz8IoDU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9E73396E4
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 19:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762802955; cv=none; b=GXA05UtdLDTcxishxIpc7TkuzjBqKA0ZQH/Tu4N7QrZw1VEMz7+fes7xfKNndtPDLBzdJhjMb1YSucw1xnSWaZvfJYbf5wKrVxdZvPkOWhChpBqqY/uMfUx5eyNpWHnP0LsLzJ8Oli+O/5DZM/tG6ewpV3uzvVaNHaogVJPclt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762802955; c=relaxed/simple;
	bh=Rkw9WFZoXp+5InFPPXxrxAJqP9DWE+hJyBAEvtT6sRE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GSim4vf1W2BAwRlmlV8t/NMOkQ1UWxKLvMSa/OyDgU+ITnteTcNn7S2oHBIQ6yFwrwoO4zjwfeasQRqIfTCFjmZlLsi6sNpzg3zkcMI66tBBAuPvH2eK6/DclSBA51EcoVk06HJMc/EPGZnkLe5DW4LXf9vl/pZLnGrh2hFQt0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oDz8IoDU; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b3e7cc84b82so641566066b.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762802948; x=1763407748; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9GRGFlvExyifoBhuyafidhUoY1iG6eXyVZefzJBFYOs=;
        b=oDz8IoDUazH9p5kgYCIvBiK1g0HMsJ6aUJpQ3ZpW4XziCtpineqk2MaQAkJzO59x5b
         IyazJNUSQ04oMKvPXIsg/0yIHjGCOZkMF5NJ/avKdMLuf6tW/2A/LrK77BPkvEG+MSC2
         83YyPf3Dsso/suNWZfKgahuwhmQuacIrYKuZqHQ2kiGaWMXhiBcrEfi8pDYWxM0KURrx
         aZz4hk8eK15/JkNWOD1y0goJtYCb1rF2Hn3g9/eZlSYO+W+oegHmu6FyPw9S1GdRtWYA
         p9eRJF8H2BQmSO0igetho3Du5aW2xQ8cNymjioAxW6hGxJYmlYWpUjrvIZTCqmwLo2N9
         VCug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762802948; x=1763407748;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9GRGFlvExyifoBhuyafidhUoY1iG6eXyVZefzJBFYOs=;
        b=WhDzemjsXI7CECkZJuKWdRoEjH3SdsnBzpQ9mBUYne5Svw7qj6gt0DxasN+8koQY/l
         S2Teu78/7fR+3ygitRUYpss8t7OY1WYyVJVPO7QNjJQmkWf0c6Hkhz64mtxwQiidA2yc
         h+48cgFg8n/h7zRgPOMOZ3FnNZSSjQ4+IcLkazoJ6Wb/ftsf7d+mG3nK1mIuPgSpWC7t
         3J6gYZ89a9XZaewUNZwt/DHXFxusTSMwTnw1nhFI2xozylb5nO2tuHdncnCiIZkI75qm
         uTeFAUxcP1t4fO7GDva5yVUFA6JkpzbmqqWcemWJKQRKRr+jxTWxTe11JdcDkcAKypuy
         U5rw==
X-Forwarded-Encrypted: i=1; AJvYcCUBbzccYyyvg08AFda7e/ih9TYzL+qBKVukefGbnYo4E4IC+4c5grKfxU+SO9d3+AyWMhI23TevoP5h@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0rDLl+SySEP+H3MR70SiTyGtOIxbBz27odCD5NiT8d4tgfskP
	efIDBLT2RE2rBkiwLmvZCc/KoAKIghnEZKZ0dHakq4jJu+lBRbCamz3dHxRPC/dYS0k=
X-Gm-Gg: ASbGncvpRbYEp7lFPx2le1obNDtJQJB4G8d0Ub57RlMEtDns4UOnrmLqXf2GTnemB4O
	K0WLOZnSm457xAzVFr1ajROoTy3Mv++EO52P2DvChUIWtv9i50ftNMALy9WpgqMdGis1GX4aOjO
	Nb8E6W7kWyi59On7vQ1VOPpGM5eb0kS9cvEBfKuIJv+QOmTevLexKTI68AC6Y5AddBv+ltJbJBJ
	4lHQXRNAfQR2GmEEoJbSvglhybP7zB7/7LnwXWExxmY1xHLnPVq10xsjGFb3u1l0WZzAXk98ZGG
	wRfhYGo2unR4DvX4B3G7HXZMKPo2EEnJBVlL5nqiyhaSIBXJcyPgH1d5DqCp48KSVjA0LOqUfCj
	FIEPFbUNhmwFntYLWGMwxx+J32CSaVolkMbGh3plcwv1K1UvrLXTuesNPhT9AxGrfHIWGuiC6fV
	LQxpZJnrWKzGSkKsVe0+XGGNyk0dEQyOgeXIkYjf9Z++q6aj6SxjYxmiWsDxas5q0/kbIT6fs=
X-Google-Smtp-Source: AGHT+IECpKLFUmLjNWELv2Vm5UCSytpZeRz/kU6StwzL1uQ1NedMDX8f/lYYWPod5BD9l7i7CF9NzQ==
X-Received: by 2002:a17:907:7fa6:b0:b72:b6ae:266 with SMTP id a640c23a62f3a-b72e036bc01mr885816066b.10.1762802948072;
        Mon, 10 Nov 2025 11:29:08 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d16esm1168178166b.35.2025.11.10.11.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 11:29:07 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 10 Nov 2025 19:29:00 +0000
Subject: [PATCH v4 17/20] regulator: s2mps11: refactor S2MPG10
 ::set_voltage_time() for S2MPG11 reuse
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251110-s2mpg1x-regulators-v4-17-94c9e726d4ba@linaro.org>
References: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
In-Reply-To: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
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
2.51.2.1041.gc1ab5b90ca-goog


