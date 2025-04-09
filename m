Return-Path: <devicetree+bounces-165018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D60A83252
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:39:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 080C48A2E12
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:38:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB18D21B9FD;
	Wed,  9 Apr 2025 20:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OTdhWDRD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0405E21766A
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231067; cv=none; b=qxkkyN9X8V1n+xRIiwewRb0OlJxb2d+2He+kXM+bAXfzkUQjHMKx8mVtwR8sH3qx7OlVL3eUjqSvZMKxru6nu80U4McxxfBnBD5LnYvlkIvozivTpaY21bN2e84vLsYxc+ssaKhzBjbiCru/agnNOAGEQ3PzJjgp2roJAU9OEWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231067; c=relaxed/simple;
	bh=XNPLpibedDTSu7S33NUIPTJnGACKRxAom0wu7hI1PCg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PF7+RbNw7hJRSXpr/MzaabbDg0ETicBcnOAYdZMH7cAKeV2wTOAZ8GlHpLJZa1SYTpidpZEL8d+e9L+vzvoyrH3/1wV8goQQxfanLP9UYPd+V81vcxo8BroXjkQoQgUrSgNg/KhNZfa/J1GGuJtld8UWO0HYzl/5zcut9khqQ+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OTdhWDRD; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac41514a734so19042766b.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231057; x=1744835857; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VzEjXNkLNu9GbyJRrsPm3OGWMuRzZZwPEzkpfwqOZVo=;
        b=OTdhWDRDj8cUyEoBcRy7n2oKEqS8SgsRPrT6JDTUeTBOAMtzCua5No5Q6xxgkkjQ30
         ySFmmvi/cjO70Cux0AUtba6idIXfriM/xq0dEAeX2uJTeaA7ykRJ4PephyEEdtXyuB1p
         SWeee4xi5TdhVVehwgKKaiTo+k3Pc9xccaLl/pS9H+2MhcZLNxCSvreS0WAR9IapoLM8
         3mu1bBm9SlQv0x5/Gwjp6IinFBKpCn0aMxdsrBAZZJyUoAUrd8H/AOf66634XKwo47IM
         XTo/OABATYwfv/mfMFBnarXmOCfk5+HKV9ux4YldAG7mBKTmISLFOgKENqHiShYIXf0O
         8HZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231057; x=1744835857;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VzEjXNkLNu9GbyJRrsPm3OGWMuRzZZwPEzkpfwqOZVo=;
        b=GLe28qVKt2gUq53rIB9xdZpGaTeuuBYebB/pmvboO86fpRSm3UvQpBFdH9yRNEc015
         veQsNa1l4v3KLT4/RgmRE0Aaf3IQAqaOUHQ8iRu/qKYm11Q4N/VdKt+q78NE24tzBMB3
         qnINKtC7/Fpg5d6IH8PzMR83b6fPnMDafHyeP4EyXG7vea/ZR80XYMP3EIMwq6Zqrp4s
         xjcoLomFsdhqxgdsD0jtpRsXkk5jIVTQMuvqnVRiyPoYaHlUSm1ouPz9UMYAGKNZAlxQ
         jm+esLdqSnSDujED9AlQh1znQqk/GPEPZkNnrNYU6x93PkYKZAX2QbriMWpaftatU9Sz
         NAaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmLcjc8Sb6ya3HjrTr5I+Xx1n7t4nRn227fvP6+sKq1YpJdsmrpCc55rl5CM2fxUTlKDweILZDUEJ8@vger.kernel.org
X-Gm-Message-State: AOJu0YxPAV64u6e5i0SvTsqB71amdt0n0krji7OJ8FBCAkLn6IXil28h
	mDcEbipK3u67169MgQF77X8x4AXpcTT53HtOdqj/eoLGIdPc3JUYlubBGl8CmTY=
X-Gm-Gg: ASbGncuPXgNFM+rBISw2te8eJwTlQ6O6jUBg02r+6TwRXH+OAqlauIX8qtV7Y1yxB4Z
	HrMruE/E7guSZ7hIWbo+PA041vi/9iqJO2Gk7PR3zAXY1xn7JduPjBVPWzsuD7TqmZZ3GSwcQ6T
	4I5baAu3/q7VQo8rPMAnWSvBx5pHeKS4czqRHx6163ObXKotjknhzraEoJwlnnyIRBLtxEKkpqx
	FE2Z9EFoqo4ZAxfDWyVOQg5DV+j7wnUKZMqk0Am9ajliYkWqQ2T8UBtG6RXT6Y4msQonwVnNt9D
	WCJNRJ2Eb/DWVc63BtoTtobytiqVL+uIeSXbI6a9HeXhWE0Vjv6Wnh3X0TCMC2f/+N/ZiSVy3B/
	d1dFcXbS6GyE0uKO2cGdW1WAsm/5m3xCgK8mpEg==
X-Google-Smtp-Source: AGHT+IGzaRFtKWEVWYdD0lu6CSjddwUa5mqgDytfA0O5AR616wmqNvg2sZQEFHwPTrDOE7dwUEpCcw==
X-Received: by 2002:a17:907:3d09:b0:ac7:edc4:3d42 with SMTP id a640c23a62f3a-acabd24cb8amr9037566b.24.1744231056790;
        Wed, 09 Apr 2025 13:37:36 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:36 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:35 +0100
Subject: [PATCH v4 14/32] mfd: sec-i2c: s2dos05/s2mpu05: Use explicit
 regmap config and drop default
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-14-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
In-Reply-To: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
2.49.0.604.gff1f9ca942-goog


