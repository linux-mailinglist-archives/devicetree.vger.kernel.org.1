Return-Path: <devicetree+bounces-161597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06845A74B08
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 14:42:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 381F21774F1
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:38:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A89E2356AB;
	Fri, 28 Mar 2025 13:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bvKneH+s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D336321B8F7
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 13:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743168668; cv=none; b=mINAO5yR1saMGOfmIw/StZ3T0Pdc66oVEcrPOb54y9bNmEd6kR7eOb0XwDV4TQb0eiSGd4hdche6wIkYAQHO/TcHJVgFPe7iKLuMuOhBKFBUDgO0HCf256QWyhh2o2e+C102MlN+L5ZU6tJ95rdNiXLnVMj15YeDdMstX8aSyJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743168668; c=relaxed/simple;
	bh=acDeJKyeAKIRosg5ADxV9Zz9Wij86n9v8Z9fpq/Qhv4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qGJWaeHLhSjFididK/zEJcXVZh7OvinZCvdxezCqv+R5jWGTCh2R3lKVfBRNHaYND4czy3FEfxcT4l+aqON0Fb8rdx5DeYR7a3xBwKG5/ityKNEDz/ofatysztytw9Lfdt6UP+S6cCSvxowfo5Wshoek/DP6Cc3QvBJ9qWBbHxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bvKneH+s; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5e61d91a087so3544554a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 06:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743168661; x=1743773461; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GcW1mWBfWGvNcEl9sJWjMnkVLrjIE7eEENFwEaEA4Go=;
        b=bvKneH+sQ0S+FWIi4x7KGXFixQX7Hfjyx1Dn4wGs6ifhM6U32D7OrnFVvpZz9fJQUJ
         KLcgVGGCOJ7txjPe2H9WjZiMkXJbb4O1j0LRdDX+SCE99S78R0+dNP6PQpJnuqxllcUG
         wV4g5CvKUd0+pvMcVShUnNfdLVPiA+CUMwdaK5AxYktMhxLeokopLhGhE66z4MDg4FrA
         m3dwfx8QNFQEXOWnYpJalKYVhwJhwjcOhntlzc5RVWDp/aNl0lHUdI8zzZJnwZ8jopeB
         yLlD1rFGHIgp8mfrh/8gtkFuUjcBuHeyXxxovrxhtYUNWa9CI4f7thV61wZN0cUJsCcH
         c53Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743168661; x=1743773461;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GcW1mWBfWGvNcEl9sJWjMnkVLrjIE7eEENFwEaEA4Go=;
        b=l4iSTarW38W07ZREPdeMifFpPqnyA8kWmD0SADKOE+H783yp5PewesLyNWHPbtM896
         FHIvABmcESqreIIvo2yPZh6ZtSi+RcNeKF3M7/7Ydlao4t8NnNJ4N7qQFVMzXNed5q6A
         tJoP4WjYK30zlNX3R3PeqcqTz3spCdG2yXBTdZ80dk+GR1C/2RU2IOEefhtSjnT2foTw
         ZQDxtMJZ92wKwo9M2v0BbBiejDqkEwP6QXS9osnt3/XawtbPDJJFxvgZ5vosdqMhqq0H
         k/V+If+TRZ3cZd+31eIBRJ/p+5LMt/0YyyA0eJ7jlPhtDmdr1jV1LUFU/JnESS69DGfd
         wrUw==
X-Forwarded-Encrypted: i=1; AJvYcCUfxxW5uv9E/BJrBPzhJs3uyK1m2qHxKaZ3trnIHezsvZhhhvFrMJiJnF7uMrrYmVO8aiUP28VBMwSR@vger.kernel.org
X-Gm-Message-State: AOJu0YyIzACixRqKWglBMw1R32C7Ys3/6U0RIeb+YxPA2BJ+Tqif8St+
	3qi2INP3lgDWkoAvSD47xDvLKUGBOzZLebCGm3YUbmEr09Fktp14KKnC1ht8A/s=
X-Gm-Gg: ASbGncvN7Z2L3hQN/KN1TH1fv43ThYpDp6vM6QTSWVhkgPmca/W+BW+BSEzfqR0tBSf
	fvoYuLjENB9cJWbkovRxuGMED9xch8s30vL4mMstQbb29mgm/mMwePpYX2azCKJDX3ucnua5H6O
	coGvdqsYofqgeYtplsIBSjDCBidgSfMY2dqPsgv+tvQ0N+zCH3LFZWwUVzDMvFZWhCY/dA6hZOz
	D85FSDjiq5HB7tJtVP8KpkKhW2EwBy8uR7HlTrXQL+8uMCHhk4kUmNeFB7TlENzsXR8nlKkrooR
	LhLmpXrp9nr5Hc+gDw+W4P50vxs5oYl0SZIWilkYg4pj21HqARynMPViwNp9E0p/wDE5Xw0eroW
	qcSWSQmYXBJCLiWehCqwKkRXqaQxu
X-Google-Smtp-Source: AGHT+IFoyjCdv6rnlWEUloFhpOSmsaTb0sh0cSCSk2tmwmMxrnGI+F5Pjs7eau9btRCy52IBbxAE/A==
X-Received: by 2002:a05:6402:1d4a:b0:5e5:ba77:6f24 with SMTP id 4fb4d7f45d1cf-5ed8e59e28cmr8076694a12.16.1743168660911;
        Fri, 28 Mar 2025 06:31:00 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17e01f7sm1355284a12.79.2025.03.28.06.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 06:31:00 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 13:29:00 +0000
Subject: [PATCH v2 14/32] mfd: sec: s2dos05/s2mpu05: use explicit regmap
 config and drop default
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-s2mpg10-v2-14-b54dee33fb6b@linaro.org>
References: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
In-Reply-To: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
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

When s2dos05 and s2mpu05 support was added in commit bf231e5febcf
("mfd: sec-core: Add support for the Samsung s2dos05") and commit
ed33479b7beb ("mfd: sec: Add support for S2MPU05 PMIC"), they ended up
using that orphaned regmap_config in a non-obvious way due to the
default: case of the device type switch matching statement taking
effect again.

To make things more obvious, and to help the reader of this code while
reasoning about what the intention might be here, and to ensure future
additions to support new devices in this driver don't forget to add a
regmap config, add an explicit regmap config for these two devices, and
completely remove the generic regmap config as it becomes an orphan
again that shouldn't be used by any device.

Note that this commit doesn't fix the issue that s2dos05_regmap_config
ands2mpu05_regmap_config really are incomplete, but I have no
documentation on them.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2:
* squash two previously separate patches into this one (Krzysztof)
---
 drivers/mfd/sec-i2c.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/mfd/sec-i2c.c b/drivers/mfd/sec-i2c.c
index a107a9c1e760f90fcb59a9944b74e9a39a0d946c..81f90003eea2a40f2caaebb49fc9494b89370e7f 100644
--- a/drivers/mfd/sec-i2c.c
+++ b/drivers/mfd/sec-i2c.c
@@ -61,7 +61,7 @@ static bool s2mpu02_volatile(struct device *dev, unsigned int reg)
 	}
 }
 
-static const struct regmap_config sec_regmap_config = {
+static const struct regmap_config s2dos05_regmap_config = {
 	.reg_bits = 8,
 	.val_bits = 8,
 };
@@ -120,6 +120,11 @@ static const struct regmap_config s2mpu02_regmap_config = {
 	.cache_type = REGCACHE_FLAT,
 };
 
+static const struct regmap_config s2mpu05_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+};
+
 static const struct regmap_config s5m8767_regmap_config = {
 	.reg_bits = 8,
 	.val_bits = 8,
@@ -138,6 +143,9 @@ static int sec_pmic_i2c_probe(struct i2c_client *client)
 	device_type = (unsigned long)of_device_get_match_data(&client->dev);
 
 	switch (device_type) {
+	case S2DOS05:
+		regmap = &s2dos05_regmap_config;
+		break;
 	case S2MPA01:
 		regmap = &s2mpa01_regmap_config;
 		break;
@@ -156,12 +164,16 @@ static int sec_pmic_i2c_probe(struct i2c_client *client)
 	case S2MPU02:
 		regmap = &s2mpu02_regmap_config;
 		break;
+	case S2MPU05:
+		regmap = &s2mpu05_regmap_config;
+		break;
 	case S5M8767X:
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
2.49.0.472.ge94155a9ec-goog


