Return-Path: <devicetree+bounces-162842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C76A79F13
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 11:01:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F36C18961D9
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791C7248176;
	Thu,  3 Apr 2025 08:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kLk3EfJW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5672459F4
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670758; cv=none; b=V7RJ2hP+ug51fMU6YxIw5Q6+2IeVFXbApdDA4LO9lqWfTR2hDZu178s9wgSa/wq+TW6lszmn1PPvxujpYifd9aGGGlEjc0UaRlLb//hTS51+2FEurfTUVqgXFBWg5taM35/IE4JXB/Q7OlBXq+uroW3X3Sp3oBi3BZZKFSRak2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670758; c=relaxed/simple;
	bh=G2VDOjAPimv/kPRtxt/LX8SDH6NDkA0IsfX7EDPKEaQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gBX1jcM2ofXejnbXLMmjDSO7jpKSu784aqJO/RohDqfVq5e38gU+Z7PpZpBIkKPkkaFOAAXdvGQ7tVJN/ulSgCwhaqAMFJMHx3D4dQcBeswSF64I9qeuO0hzn/Bpz+2YnAVEe6o0qQQxcEdGo7QgKMZvedIAQdNw7c04Vv0HyeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kLk3EfJW; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e5e22e6ed2so1027249a12.3
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670750; x=1744275550; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EqGhx5PJ7AN26XxBcQwRDT/hvBtSHvxnm6hLozkr74A=;
        b=kLk3EfJWTjU2iYikUQe+drlwEuNkbxBQ97uf6xS+cs5zxyJJCuNPPxKtI6KgboUVRB
         hUx/NaLTndbrIG7BXMT5d+8FLxjSDuBFGqP0ElQ4ENIBHfpKL01ZyzUfH0dxgsYQAazv
         Mftq+n10tP0TxIubR7wRbi7BzHIq+v/FimHjsSb7b5Ip3A4poiQcB7FO9P7DqOTTDN9n
         g4GP0pIIXrSekkrHAvpWMQ868+Frmwxfp/Ycmy/cMsNhUbk7acgZ/YNXYVQ2P+tFxNPO
         IWGT/9VYZLNh4nngk/j3Ir58K82dR+zIVYzGL9H3KgcI8ZtdHuxlEw3kxZhxWt4FXGja
         d+Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670750; x=1744275550;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EqGhx5PJ7AN26XxBcQwRDT/hvBtSHvxnm6hLozkr74A=;
        b=OvPboDQN2Sm6qzIykJv1YpASMxcJprcpFASk3NIDU7+06n2gj2e82mFz2BiPL7TuJf
         sXPfUNTg67VykFCJRvvUlVTgnqgSQdX4nI+/2ahQmwjNLfCYShEQaILMbnoqjr3n8oCt
         0nYFAULox1i0ZGRN4lNN9GcKU00NhSRyo7KDPmFworJM73PNxtMYIkmCns57IPiYRHw9
         umzXgs8SdIpvpyHMbPZl+6Pb7hFJH0UgN7n4U/sH36sM7kVdiT7hEp25HfsPE3RGLI81
         27IcS6q1HEZcXhKtKSbAh8BkNZdbf2B1uggtP0j4OtTKHj/229ihbzMCkzYBDtrtETfo
         K89A==
X-Forwarded-Encrypted: i=1; AJvYcCXYWFFyXfG6FoTKuzWXIiKdWKUw9VvaOU3kDTzv9Zmb7wgvp40xvaGLqWHvAkOV49TWM7hLeL+yS0xq@vger.kernel.org
X-Gm-Message-State: AOJu0YzqQ0fSWlpvgMObZu6SK2x4IIlll4GotTX0fZLVL0knwtaYyDDk
	K/5EkRSMU/05cPRhDFAv0prhHnXrtYQmabWBhAE9vK0YJs45zHYpeXmGNsyNZu8=
X-Gm-Gg: ASbGncvjRcfAFqu0HfcyCBURLIVNMogrDp/GnJdlqJdezHZ9RLPhoW2ibl73Q0PDSzY
	iJNUeXj7XTjgMTCyXiUwBsb4bJ5BWIEDcuOqJhyhUSfI6X34Ol8e01ZQ4JNgybvrJy4jImDwUqj
	Xqu3IZodn+VXlS6YytDPK3S3b5Dty/o9VkO3/ICVSkQsO+FTbv5tykgiRD0jFrGbEunXNk5DoOE
	v4EcFsEt7JcV4tbveTxmtV/ZMZ0f/S3wcsrGytMQuu60BUOn282CfcJSk5N0GFjI04r7SUaTFwF
	lIW1YkDMiM7RsWLU8Cj6f0y4ALq05Awu3vezlN4Y4Q3BjtrxxF6Up2IaIOYfCnFCnblgLYUHOUL
	MlM4TaIKdyXGjjCMZ0J/lIdfebgsT
X-Google-Smtp-Source: AGHT+IHqq5xE17qMmS1fs14R51Ih6MAYPGlP5NH+CbKlyAqH2jZK+FRszx7kpSpBogd0Ourruy0TcQ==
X-Received: by 2002:a05:6402:40cc:b0:5ed:1444:7914 with SMTP id 4fb4d7f45d1cf-5edfdd23b76mr19122813a12.28.1743670749730;
        Thu, 03 Apr 2025 01:59:09 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:09 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:59:07 +0100
Subject: [PATCH v3 15/32] mfd: sec: s2dos05: doesn't support interrupts (it
 seems)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-15-b542b3505e68@linaro.org>
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


