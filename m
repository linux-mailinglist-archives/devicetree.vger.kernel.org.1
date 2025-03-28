Return-Path: <devicetree+bounces-161603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4C9A74B18
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 14:42:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE3911782FE
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:38:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1356236431;
	Fri, 28 Mar 2025 13:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bNTT9IK3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009DB21C160
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 13:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743168671; cv=none; b=UL1oq+zXmrjy9fdp2E8CpLQTEOYXJf82epZ1Uw8dgyS1Vnk6Fvjzec8MCvf63weflDhf+JjyRdp8x5U6sldmzVuJHUEJtbtQB0CNlONa+OJMmBQiIwNu637WFpDqE6++7wz4YAfP6awQF5Z9jeIXJhQi9/QBegBAXw+QpIx33D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743168671; c=relaxed/simple;
	bh=G2VDOjAPimv/kPRtxt/LX8SDH6NDkA0IsfX7EDPKEaQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=otYWyWdE8YeL5QP8AwezqmZzeCO7eGi0dTTkG8wzPcAomFn7EMzsKNNFBp6n1aeR2TOz4jCeFLmP4sNnnfDGLkw8522R9Hy27Zo5vOjHEJDM2XtSd4q+6br1ufm5vLIo8IbdZQaeAc32WTTgdkef/er86mTa5MOMJT2ztF0+neA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bNTT9IK3; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e6c18e2c7dso3969777a12.3
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 06:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743168662; x=1743773462; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EqGhx5PJ7AN26XxBcQwRDT/hvBtSHvxnm6hLozkr74A=;
        b=bNTT9IK3d5KvOh4LkL5bwbUA0xwVp6rc8YlTIemkkKqSI3HneRgnFc50spAhVeq+y7
         atLwhSkREpPPIPxNQnT2FWbAe5nWC5yz9zjHEV9gb9qhZiPVq6v+uvDYQWvptBoova5/
         X5LMl3RwbGPnWMyyLO1xxgP0aLr3komhMLoAtoLwA6iRVg3y+sf16azZ/Y7xbwt/Xh6X
         QkXWfJ8qWjEXghiZPLWr1H/jxOZPCV7njBpVMsjO58LZ+7+JXpXQEYI6FksUx8Ptjvne
         2RYSiXjR5qumJZSDyfUeWD4PLeLfyl89w/FgwcL86R0J7D/VE7bEPx5Xf+0EmXBBONve
         pMTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743168662; x=1743773462;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EqGhx5PJ7AN26XxBcQwRDT/hvBtSHvxnm6hLozkr74A=;
        b=UmupPMnuoszrryCSI6kubzVvejPDzyLkMnNZ04xEra5kWhNFy8fO539674DBF+8JIx
         XaVAJ2IJOtLJsnhFfTFls4zXq5nsMf7hCv0bsAFEJv+sepZwnK6soPfdmXk84SEJ1b4n
         aGT3crS28NHXpdDRor1P94/u2rsPcHlaYwe0pYmM6Tp5q6TeHFoLiapf2yUi/6vJ4vxN
         As8khH8DF5qU6AY3GmXcVSddG3625BZTJHpTfb2PLwmd6IVEy5OSHjUv5KWJ1tGrB0mI
         +7byX5OOauvmMYRAG7lcntMi28aVVoVmPbMrZjEpxHSp5H+syrsEuM3dMQbfHEDHxfQB
         Yu7A==
X-Forwarded-Encrypted: i=1; AJvYcCUrp6b+xApXX15ZDyYS6g4jSCNzj5iTRX63CrXk9PLeVcuUsFkve5LdfGBT6vn03WV5+mQeH+vMgOLk@vger.kernel.org
X-Gm-Message-State: AOJu0YwzYBRwYNH+8eOAL4lp/bhjRBMofHJ7uukuPB2i4QP0dN1yWc7D
	vNBviLwV6y+NXzsrsXR/co5WayoZZZSlvhvjHhjTqBLtQo7pLKQspxjX7Sy2ldU=
X-Gm-Gg: ASbGncv8WTtGaku+Y+L3eOoB4LvXYxfUXA9l9bvjmNts5SPp76ZqW7MYV8YtDqIaFyy
	Z0hxn2wy19cxkHFJNvXiyqpw8fQ3r5H2HlYeJQxuCCj8YZ/LoQlxPevcyVB26sI8ACq38ZT7j6l
	+q3Ko1ei1JUV+5JyjC3mPrOuwMAVd5nxjK19LHbexJ8i/v/y7gO/9NSm8oxE4c2XgPFmZHBquvf
	28PgSLoOSFNuoOV+P6zu28qMYoTPS7y0eNi06dJEY2kjhZbQ7gYPFnKlYApTnx9FtG5I2CmJqaO
	EpBLL4DV566Fq2wxj6NeCRcWfU0q1bil61CZR/o9kBUwIAOU3kRBi0QlRJW3aAntO08p5+LsWPA
	iHJZpuMDxUb99mA4OYnXr9Gz3ZoZB
X-Google-Smtp-Source: AGHT+IFFA9eoxZ8yzHOxTpOhNTpQABoRUZClQa2WX7rYpC3RMUD7CguVMWSVn/HPqyoqjb3+u3RckA==
X-Received: by 2002:a05:6402:5187:b0:5ec:922f:7a02 with SMTP id 4fb4d7f45d1cf-5ed8e496a71mr7840054a12.10.1743168661407;
        Fri, 28 Mar 2025 06:31:01 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17e01f7sm1355284a12.79.2025.03.28.06.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 06:31:01 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 13:29:01 +0000
Subject: [PATCH v2 15/32] mfd: sec: s2dos05: doesn't support interrupts (it
 seems)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-s2mpg10-v2-15-b54dee33fb6b@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

The commit bf231e5febcf ("mfd: sec-core: Add support for the Samsung
s2dos05") adding s2dos05 support didn't add anything related to IRQ
support, so I assume this works without IRQs.

Rather than printing a warning message in sec_irq_init() due to the
missing IRQ number, or returning an error due to a missing irq chip
regmap, just return early explicitly.

This will become particularly important once errors from sec_irq_init()
aren't ignored anymore in an upcoming patch and helps the reader of
this code while reasoning about what the intention might be here.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-irq.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/mfd/sec-irq.c b/drivers/mfd/sec-irq.c
index 9f0173c48b0c8186a2cdc1d2179db081ef2e09c4..79a3b33441fa5ab48b4b233eb8d89b4c20c142ed 100644
--- a/drivers/mfd/sec-irq.c
+++ b/drivers/mfd/sec-irq.c
@@ -452,16 +452,12 @@ int sec_irq_init(struct sec_pmic_dev *sec_pmic)
 	int type = sec_pmic->device_type;
 	const struct regmap_irq_chip *sec_irq_chip;
 
-	if (!sec_pmic->irq) {
-		dev_warn(sec_pmic->dev,
-			 "No interrupt specified, no interrupts\n");
-		return 0;
-	}
-
 	switch (type) {
 	case S5M8767X:
 		sec_irq_chip = &s5m8767_irq_chip;
 		break;
+	case S2DOS05:
+		return 0;
 	case S2MPA01:
 		sec_irq_chip = &s2mps14_irq_chip;
 		break;
@@ -492,6 +488,12 @@ int sec_irq_init(struct sec_pmic_dev *sec_pmic)
 				     sec_pmic->device_type);
 	}
 
+	if (!sec_pmic->irq) {
+		dev_warn(sec_pmic->dev,
+			 "No interrupt specified, no interrupts\n");
+		return 0;
+	}
+
 	ret = devm_regmap_add_irq_chip(sec_pmic->dev, sec_pmic->regmap_pmic,
 				       sec_pmic->irq, IRQF_ONESHOT,
 				       0, sec_irq_chip, &sec_pmic->irq_data);

-- 
2.49.0.472.ge94155a9ec-goog


