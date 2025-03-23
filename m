Return-Path: <devicetree+bounces-159948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F352A6D1B9
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:40:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94ECE3AA1B9
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 282901DEFE8;
	Sun, 23 Mar 2025 22:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wHd0oSTl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0AA11DFDA1
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769580; cv=none; b=rp/JG4mTfU+B9MVOAhr8E0mGHBjeBthID2oKCQ3RMVoO+1VvT/8lCGYXYLAuhp999lEx1RpYY/4n8MCHVHdq/eiyGwTzcOj0GJHYEVWVpmQc2iFFUp+IInwPRILt7YlwUL6DcCNCaKQ3nqHFswuWTAAknsU8HoMLZylFqVdQbCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769580; c=relaxed/simple;
	bh=QKL8Ytaf6dGtPsAh1+74H/LNJepm9+/T3Tzf5JXAhIU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iUtgv68yAZHuD4zitC3IUWgZUGFJati+d023gdREZdQiMHhwuE76Ratw9l0adVI2gc8GiInAVtDBGEqgDtAcsKGcqZpuRLf4YXKvJQy9hYshF2ajsQ05zcSKNU+ORQOp/ZZQYkZ6kCVVKcEFMPamKjLQkAfsER5GTdpldYqePxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wHd0oSTl; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-abbd96bef64so675918466b.3
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769573; x=1743374373; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hTxU1W+gue/BWMRsVQK9iOH//Nw2cf3wcu3aMwThOM8=;
        b=wHd0oSTldpBEK5QJca6xnISTHeraeFQFVQnjZt+SY6MY7+JUtabMdmulosGwhZ9DA6
         9bPOBIXY2zbcSv3Vbbqg1w47xaMHu4BHi2AvF2hZgb+kQg/OvBD+hZzHNwNoBRdTUCKj
         i5b+VrluoDcovZV0C8feIAsVHAx6hBKqBbrgxEQ4viTtYtqNCY4ZmyIdWh07fZtgFEAI
         ytyTII+kLIGQDFmXwgD5GT/D4LaiV0C4tUAQITML60U1piwk+rW94KiMti2AcrwgoFFu
         zp9eEBDIHmNIMkTmy9MWF5L6+KSxxOCBEkvCht0d1Qo2kfoExM8ziQTPDf8dsgHnNVhQ
         rNzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769573; x=1743374373;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hTxU1W+gue/BWMRsVQK9iOH//Nw2cf3wcu3aMwThOM8=;
        b=hNKJL6sVOSVz8OGZuFcpdZF67ImmqlQuF0GLbA10EpGE2AEQK8Idq0/VlTJnP8Y+iO
         mmsNdbMsYY/AO8jF4vZOP68w0F8VCCy8ZLsARQn9y6vX2XdarwN5orAW/bgLEF93j2L5
         8w9+JC60IiYjpgMd48FaAFXwMWTnkVJGCC8oK180nfzZJiXmGmRmb7e6fWmznQ7XPUBQ
         NoVrNYFntcHKBsl8xaPHOOvDDcb73frSyFDjVxOx4xdf257a27iRp4SfSJIJE8JUMZiu
         dO9DdFjbuAyzWDvxMgYPaAYhNTf1Gk5G1cLiNT9moQzO4xOjGfg3RPHN2uBu2JhVsQ1S
         jLPQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3kmmwyojPMlOiMo7ltE93bOfi+OhwUBBQ7nKAIwvJowhFalTY0IpDLIdjcOF11W5P/AvsIMvrNr41@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4hEv1kdKofJMCBeITCUc8eNGFaXDQencWMg1+eQadn0uiYM97
	T+v7ssy8IdTaOfhvUHmMSiVqCcpaOe1AWlXbbPVah28dY2fqn36UUsb3LwgDSkE=
X-Gm-Gg: ASbGnctTHHZIJ7J3gSASk14Hvgb0LRsVXlGVSMJpk0EdH5wwY6SRBctKewRunEb7j6V
	2FCLIleQZBUoqQatMbYRGNlHX+2b6VbWySX2AnlGArYM5VpPulDf2Bs7PsCfDdU4XnN1uUk3bLQ
	5ZeONjk1jzws0vMBVbguVa2ErsI1MKQ5hTLIx7Y+n61WMuKHqQkEm6Cc02ZTEVoUsuT4Y7c5wvd
	dIIXxF9O7R17yvbX/H00nAjzT1x7ngJhsg0C7H2N13dAneKxxfdCWn43UxiioVAFfxsWfpG3j6A
	/K+HLyukMSAU7Nj1JgCYsAcvW8LWHOum3ZLuBpJh0vavG+G6Do2DZtn0gOFEaqv/sP7Taoy+62O
	OKg16fKYXGc5xuTd0Ur0o6HvJlFo8
X-Google-Smtp-Source: AGHT+IFRwsk7g0/V5N71R/aeNk5DfXRJnWzrEBdlGqW+YmGP+K8r15zEhceKjqCGxIHr3ot1FPPH7A==
X-Received: by 2002:a17:907:96a5:b0:ac3:5c8e:d3f5 with SMTP id a640c23a62f3a-ac3f2238ac9mr1051718066b.27.1742769573042;
        Sun, 23 Mar 2025 15:39:33 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:32 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:32 +0000
Subject: [PATCH 16/34] mfd: sec: s2dos05/s2mpu05: use explicit regmap
 config
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-16-d08943702707@linaro.org>
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

When s2dos05 and s2mpu05 support was added in commit bf231e5febcf
("mfd: sec-core: Add support for the Samsung s2dos05") and commit
ed33479b7beb ("mfd: sec: Add support for S2MPU05 PMIC"), they ended up
using that orphaned regmap_config in a non-obvious way due to the
default: case of the device type switch matching statement taking
effect again.

To make things more obvious, and to help the reader of this code while
reasoning about what the intention might be here, and to ensure future
additions to support new devices in this driver don't forget to add a
regmap config, add an explicit regmap config for these two devices, so
that we can ultimately remove the generic regmap config.

Note that this commit doesn't fix the issue that s2dos05_regmap_config
ands2mpu05_regmap_config really are incomplete, but I have no
documentation on them.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-i2c.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/mfd/sec-i2c.c b/drivers/mfd/sec-i2c.c
index ce1e5af9215a305fbb55157ae4e7bfb9aace86b8..3912baa5c2f918b7ad345e2bbbbe4daf2e49ca6d 100644
--- a/drivers/mfd/sec-i2c.c
+++ b/drivers/mfd/sec-i2c.c
@@ -66,6 +66,11 @@ static const struct regmap_config sec_regmap_config = {
 	.val_bits = 8,
 };
 
+static const struct regmap_config s2dos05_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+};
+
 static const struct regmap_config s2mpa01_regmap_config = {
 	.reg_bits = 8,
 	.val_bits = 8,
@@ -120,6 +125,11 @@ static const struct regmap_config s2mpu02_regmap_config = {
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
@@ -158,6 +168,9 @@ static int sec_pmic_i2c_probe(struct i2c_client *client)
 	device_type = (unsigned long)of_device_get_match_data(&client->dev);
 
 	switch (device_type) {
+	case S2DOS05:
+		regmap = &s2dos05_regmap_config;
+		break;
 	case S2MPA01:
 		regmap = &s2mpa01_regmap_config;
 		break;
@@ -176,6 +189,9 @@ static int sec_pmic_i2c_probe(struct i2c_client *client)
 	case S2MPU02:
 		regmap = &s2mpu02_regmap_config;
 		break;
+	case S2MPU05:
+		regmap = &s2mpu05_regmap_config;
+		break;
 	case S5M8767X:
 		regmap = &s5m8767_regmap_config;
 		break;

-- 
2.49.0.395.g12beb8f557-goog


