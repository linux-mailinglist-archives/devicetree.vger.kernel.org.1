Return-Path: <devicetree+bounces-162848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B72A79F2A
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 11:01:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C2AC7A6025
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E15F24E014;
	Thu,  3 Apr 2025 08:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r5DHmoiO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B4024A07D
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670763; cv=none; b=pdPg+1pHIlsAT0pF4rLRM3p72vAkQLwWlia8orEwil4CclisjWI2L473q7TKuPoXIQs/2jX6BaCMo9Dqa3lBK7eOzka9OEOQh492qzFqo7lsfAOgDHbcVumZjHZb3lMWXmmEFyGNYPL46UbKci8g5+EKKC36HkEYGkomHmC+at0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670763; c=relaxed/simple;
	bh=uZPaCVbPHBGfSgOGE/h2z8oZIqJdXRNHkC3wOcm11eI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=isBgnpZUE7FWZ4j0Dw5AgJIU8zV9m0pq+wQKkEqET0QajjDEDTtLRhowdcHYbrlekNDAKunkLVy6s61F0wYH+jEte5GzBmkOcpHb/qJJStpWjaBb7t+OeCLRJ7iDKknK/ihQ6GajJaAZK4TGUrkW1TJzzENDmcrEJi9Mv1lThgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r5DHmoiO; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac41514a734so109055866b.2
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670753; x=1744275553; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AGZF3iY+lrce/peuoGWoI8dxWV9rSVtCllywJ68wEfI=;
        b=r5DHmoiODxaHsy2jUz9U6uGinpNsTG8t7Rgx05pLFXLsh1Vr5scyqvahIQXq9i776e
         h+v0ITFLa9aNuN03UKLIF6Jlq9A7/AHbxUlKN4UyNHV3DimYKzdd9I/StgLnRjbJDj6P
         rnbrMTpFM0ecFIHTtj5E+A+E8ANw3BynCMNDJtoKhQqxVIMgAKbAO5lEkNf0tv/3WeYl
         950Um8azpVGsFWTSJA44Y8yDZ8Bj+q4Lxt/839vNZ4XXYJKaMvhgAGhsI9FVri9eKE0o
         YIVo7OAKu5AWKKTfbuqUqenu0E+pwq+8fIjnUzM7WqR1gh3qYSAO4p3uuDgshPaQ0RRh
         W6Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670753; x=1744275553;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AGZF3iY+lrce/peuoGWoI8dxWV9rSVtCllywJ68wEfI=;
        b=sCwYSNIbPG2Ib2io6UER5RQmA6nKpu6iqZsRsKDqqgbhbcDTzpYWfY5dqBy6N2MGTJ
         DYl6sOraQYc6FqBjlHpCDDX1+Unt3K9LoUtkZfUfUng6L4ERPnzKVETLLUPfqZAYsZcC
         KyDL3gixaEWp7dxLd13vhEffpEAluWZ66ofq3vWmzJoLuXXWZDYtavUX7NTwD0cXRIPS
         Dt6oJ5MiT7EFADzkv2m2RJ0R4z8MnzILR6J+V2GlrmWZfoD3clnnkVCHjIZSR1t85Ifm
         YDAFXFVjTwoa5t7+hW9GgZUcvR2boQowLR++XO8ocOAZLdN9UGOUbLactvNgipJkz9fY
         noAQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9zuGxHLp8N70J2WHPn8tMkA95t6HhVomYeMierFek+eRBN+KiX6NrJlHrRhrdkWLRvvLdzlAXg8QQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxTmwrkbU1OI0oEvX6UM4VpZ6iuT5M5FE7M9vXFwhnly633gla0
	MCe1leSfGpUwAvmIQ4m4zQ8BSwjpiEMh4KgRYmtzCOqiCKTPo7+XQVtcT9H6Ne0=
X-Gm-Gg: ASbGnctKwjtT6naet6dmlZzGDwNgg5I/DAab//mzT4IkB+unjXoF0xnC6Mfuvb7SlnT
	+jagV4OWP1S5ECXZv8gcFWmQcN/Imuy3Mpue61KfzdCLv507ExrV3RpkH1UDPyNe09kaKMVSJGT
	VMh6gMyOpzIu7jQCrcJBTq16GYVVxeLkGHbctxXhAQvHPF83PVa3cT5+rgh+TycywbefzQkOTEc
	Oq+637HkRtT8fTPEQRoUSAOPVFQxtpfRaNpIaSZfPGkqt0KLepBqaydDbwOe8Ta+scbz/hsbIF9
	iDhyId1cTuX8wqkSZOoXNiE+iXZWEjoStbL7VbonedO538E4bz00SDpJbv1bwKCPGLF20DlaX3U
	73MbX4k78uCBHM/5VvnrkjcxqRvVD
X-Google-Smtp-Source: AGHT+IFRyOdwPcEz80NSYeNSO9OIEAqrNZz0SsyzqP2x0gvOEZiZralRMKMAb8SO2ti+oPAesT2BCw==
X-Received: by 2002:a17:907:cc1a:b0:ac7:c59e:fc3e with SMTP id a640c23a62f3a-ac7c59efdf6mr46064366b.25.1743670753150;
        Thu, 03 Apr 2025 01:59:13 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:12 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:59:13 +0100
Subject: [PATCH v3 21/32] mfd: sec: convert to using MFD_CELL macros
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-21-b542b3505e68@linaro.org>
References: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
In-Reply-To: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
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

Use MFD_CELL macro helpers instead of open coding. This makes the code
a bit shorter and more obvious.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-common.c | 57 ++++++++++++++++++------------------------------
 1 file changed, 21 insertions(+), 36 deletions(-)

diff --git a/drivers/mfd/sec-common.c b/drivers/mfd/sec-common.c
index e8e35f7d5f06b522a953e8f21603e6904401c983..448300ab547c10d81f9f2b2798d54c8a03c714d8 100644
--- a/drivers/mfd/sec-common.c
+++ b/drivers/mfd/sec-common.c
@@ -24,16 +24,13 @@
 #include "sec-core.h"
 
 static const struct mfd_cell s5m8767_devs[] = {
-	{ .name = "s5m8767-pmic", },
-	{ .name = "s5m-rtc", },
-	{
-		.name = "s5m8767-clk",
-		.of_compatible = "samsung,s5m8767-clk",
-	},
+	MFD_CELL_NAME("s5m8767-pmic"),
+	MFD_CELL_NAME("s5m-rtc"),
+	MFD_CELL_OF("s5m8767-clk", NULL, NULL, 0, 0, "samsung,s5m8767-clk"),
 };
 
 static const struct mfd_cell s2dos05_devs[] = {
-	{ .name = "s2dos05-regulator", },
+	MFD_CELL_NAME("s2dos05-regulator"),
 };
 
 static const struct mfd_cell s2mpg10_devs[] = {
@@ -45,53 +42,41 @@ static const struct mfd_cell s2mpg10_devs[] = {
 };
 
 static const struct mfd_cell s2mps11_devs[] = {
-	{ .name = "s2mps11-regulator", },
-	{ .name = "s2mps14-rtc", },
-	{
-		.name = "s2mps11-clk",
-		.of_compatible = "samsung,s2mps11-clk",
-	},
+	MFD_CELL_NAME("s2mps11-regulator"),
+	MFD_CELL_NAME("s2mps14-rtc"),
+	MFD_CELL_OF("s2mps11-clk", NULL, NULL, 0, 0, "samsung,s2mps11-clk"),
 };
 
 static const struct mfd_cell s2mps13_devs[] = {
-	{ .name = "s2mps13-regulator", },
-	{ .name = "s2mps13-rtc", },
-	{
-		.name = "s2mps13-clk",
-		.of_compatible = "samsung,s2mps13-clk",
-	},
+	MFD_CELL_NAME("s2mps13-regulator"),
+	MFD_CELL_NAME("s2mps13-rtc"),
+	MFD_CELL_OF("s2mps13-clk", NULL, NULL, 0, 0, "samsung,s2mps13-clk"),
 };
 
 static const struct mfd_cell s2mps14_devs[] = {
-	{ .name = "s2mps14-regulator", },
-	{ .name = "s2mps14-rtc", },
-	{
-		.name = "s2mps14-clk",
-		.of_compatible = "samsung,s2mps14-clk",
-	},
+	MFD_CELL_NAME("s2mps14-regulator"),
+	MFD_CELL_NAME("s2mps14-rtc"),
+	MFD_CELL_OF("s2mps14-clk", NULL, NULL, 0, 0, "samsung,s2mps14-clk"),
 };
 
 static const struct mfd_cell s2mps15_devs[] = {
-	{ .name = "s2mps15-regulator", },
-	{ .name = "s2mps15-rtc", },
-	{
-		.name = "s2mps13-clk",
-		.of_compatible = "samsung,s2mps13-clk",
-	},
+	MFD_CELL_NAME("s2mps15-regulator"),
+	MFD_CELL_NAME("s2mps15-rtc"),
+	MFD_CELL_OF("s2mps13-clk", NULL, NULL, 0, 0, "samsung,s2mps13-clk"),
 };
 
 static const struct mfd_cell s2mpa01_devs[] = {
-	{ .name = "s2mpa01-pmic", },
-	{ .name = "s2mps14-rtc", },
+	MFD_CELL_NAME("s2mpa01-pmic"),
+	MFD_CELL_NAME("s2mps14-rtc"),
 };
 
 static const struct mfd_cell s2mpu02_devs[] = {
-	{ .name = "s2mpu02-regulator", },
+	MFD_CELL_NAME("s2mpu02-regulator"),
 };
 
 static const struct mfd_cell s2mpu05_devs[] = {
-	{ .name = "s2mpu05-regulator", },
-	{ .name = "s2mps15-rtc", },
+	MFD_CELL_NAME("s2mpu05-regulator"),
+	MFD_CELL_NAME("s2mps15-rtc"),
 };
 
 static void sec_pmic_dump_rev(struct sec_pmic_dev *sec_pmic)

-- 
2.49.0.472.ge94155a9ec-goog


