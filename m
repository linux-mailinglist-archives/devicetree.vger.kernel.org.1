Return-Path: <devicetree+bounces-249843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 52409CDFADA
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:28:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B231303A8C1
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C10F31328F;
	Sat, 27 Dec 2025 12:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a5D2lvHh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC51732ED59
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 12:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766838287; cv=none; b=PPXnKTlUyMMW0vPhEOJfoFtWSzUZvxgWNtwTMdlr+3nLSaKn33x+Q6PD2hdwqH2HfrKRjNVgEzaWuucLkNnVUlx/UVuH+5OPWyNYKYpQWih3+lRW6BBzk9G1z0YhpJcZQdjzsC7mV2gt05seBd3xlN/FlDwg2yln1zSjy9zHs9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766838287; c=relaxed/simple;
	bh=ZtimU7gm1PrFcEfk0MV7OaApuuKINQ3TVVyW7YAfhJo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=crkjmvGuGyBHMJ2L8iCV1fM1r7T/TX1xMrrxzLJSFeC0QJPiWYvVb774jrc0QXy+tQ36JNRr9k4QJw/2bOUTr+HObDrIraBPpODS0oTMZZBUk2n9S5FcYTExAykQdYQpvq7FAVZgxgC/naMq4qQqCJ1IFbQXFInmBmRJ/hThDjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a5D2lvHh; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-64b5ed53d0aso11233070a12.3
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 04:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766838279; x=1767443079; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mqjJPQ+Kki9Vjm0bw/2XeIC3VM9xGuMuLb0QgtHhylQ=;
        b=a5D2lvHht8oyyQOW/Q3Ixnu7h8kTS2EvkzTL3e+uzTSWZl5rcG99yzWmr2RV85MGag
         mOGcmnNIBOYxsP0sb/ElwrPjtazrr8DzV9SxwkxDgGZ9mOYSGc6B1tZ3D48bWlchpYDa
         YCBhOYc+1OLDktZ+PvAXVPqViAORGU/rdkC+za3nOe8HqeGWik9bneFxuHm8rks5oU2u
         9kNjb3yC56rRC+gef1xI3/czxoFFh7hWZwOJqJRGgHSegl6qFiEvJLBBTUTSjszGyeDY
         DyB8Rwtr/IgEa9mWH5xMwfeiQ2xr/NRia1uNx73et+uW8X0ZeDsRT95dQL5zP29hjMwW
         zaXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766838279; x=1767443079;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mqjJPQ+Kki9Vjm0bw/2XeIC3VM9xGuMuLb0QgtHhylQ=;
        b=pSmbpVwc7fuRLLLmfYKudLs8Tr3hH0A7QEPwusLJQYXEAiInNcZmd5Z1qDccetfciv
         SzQ+Nm68o+ctnHBJ2DSqCib/dpF13JvpYfNt7otR0WRKoYphDK3Vfyf5LYrI4IInRElH
         y0mkdRDW9Sl1W7ngh6qqa89NH00iFz+f8ytAH408CkESe+HCv7iXXT0fS1PaaWuCh0fB
         UlY8SZm9/ZTCE1s1QTDNqa1cEIuEvajntXzUGQmgLqmaFQQBC41hkFBLKoy60LEm8dAl
         NjpK2qJrRYfTIGA61ngPFLjNap6kCH58r2QwEABXKCfHUEKvL3Gj+XH2Tc2QAp2pSSN5
         pR+w==
X-Forwarded-Encrypted: i=1; AJvYcCUlRzyoftHvNdxzJbsCQMn4JntK0ifC78fzsWhrDW02sTT06QqYxxrupAU62RepfeluTnAn3//T+a7s@vger.kernel.org
X-Gm-Message-State: AOJu0YzzlXMt1FCQYrXh4DSiVgVslnsEDJN8PTEZY1duX0hc0jykjUK7
	XK444CDeTHYKiIqSboHEZULV9xaEbRzmACrygy2F2nBqVLPWoiLrfdS/eXcTgpw+BEA=
X-Gm-Gg: AY/fxX7lEQMgIwEi1jGB2OZQG48TicgGULJ7RcqPigAIDf4ZIzpx94J6pmbOvJk+oIi
	m8uiOPi3vt92lNtxNjX3CZ+wa9JJiUo8CFhz/aeRIUMyEM+rBbo2KxubrY5uI8TFcI0UFISrT0I
	0xhY5iNPAUar516k4X3cgBzJ68IfgZdf/eop0KxPpuW98bLpb6aLIT5qPasCjNEFR6bpmSrW+kq
	OcFVOLKmYUzK0KG48X40Nqb37U4QzKh/hZGa65PrrLqhlqfZnA1FW4OuXGkAsNJ3DpRNNRuoR+6
	UTcb0w/erGDwns30dfEGbxY0wOEYNF/BjkbitwndaIgMZF+kXHAqSIhpC9Vis5vj2bv85dYr5/x
	LNLfp4j1P9SOVYeY92OsmXTMloiTMbXSebTpS3sMigXDUVtY8Tg/WfCj/qNZqA5C/MNwhfsy5Fb
	JmvqohF0rBY2VDDVsc/W0Zn1K3q8J35cpCvAaXjkx8fPKxVe4GKWH+hJTpnj56ex1orpxE9D4SP
	99FZw==
X-Google-Smtp-Source: AGHT+IE+QRrVPaBCy56QCbI4QkrRX7vUwMKYczTApOAlpziFFNN55uPCnxuQ1egJcYibXo+YhY/13A==
X-Received: by 2002:a05:6402:2755:b0:64d:4894:774c with SMTP id 4fb4d7f45d1cf-64d48947a3emr18801609a12.7.1766838279224;
        Sat, 27 Dec 2025 04:24:39 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm25932659a12.31.2025.12.27.04.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 04:24:38 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 27 Dec 2025 12:24:39 +0000
Subject: [PATCH v5 17/21] regulator: s2mps11: refactor S2MPG10
 ::set_voltage_time() for S2MPG11 reuse
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251227-s2mpg1x-regulators-v5-17-0c04b360b4c9@linaro.org>
References: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org>
In-Reply-To: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>
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
index 4924c48ee7502c63f7a1fc620a2d252b7d8ed828..beff85c72580efaa0bbfaaefe6b4386edcb00919 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -560,26 +560,23 @@ static int s2mpg10_regulator_buck_enable_time(struct regulator_dev *rdev)
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
@@ -589,6 +586,21 @@ static int s2mpg10_regulator_buck_set_voltage_time(struct regulator_dev *rdev,
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


