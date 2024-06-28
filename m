Return-Path: <devicetree+bounces-81533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7517A91C92C
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 00:35:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 055381F240F2
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 22:35:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E351B81ABA;
	Fri, 28 Jun 2024 22:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wKsBpnhb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3334212EBE8
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 22:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719614116; cv=none; b=tcgWCrhsx69KlnY25efeRHqexX4V1JECtLHtCc/XYmg66xZ6bL112VOz0f85chmRv8iB4chL/BzxoFvCOMmF09Qoec4UIlaDmAAkpZWbBAvoFHYiSfpWi4+inE1aGJP9/TEYmsnnrFtgtcYNGNOh5OgrhymsVRc+WmRvuO6vCGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719614116; c=relaxed/simple;
	bh=TP4zX82sz2PZVjrl2jE5lJBopK2VfJohRegfp+vWgXA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AKXbhfTHSobx6l5f4wn1qRygfLWB9t2i+GMx6e9VcWP8NCQYXRizgNuqUrcHSV2Ih44yfN0JTSAKnS4OyPblK9AP0pSJaMEcIuZFsr0pJ85DmAVKjJ0wdqwkHw6orqaG5z2QWfC2cx0VXLuTWW9Qjzj2Vj5XUxv0HSpA9bjqnHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wKsBpnhb; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-36532d177a0so689220f8f.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 15:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719614114; x=1720218914; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AWg6K4lF7Ia2UQmGAEMoRHt0caBd3GiOuDYrWDdJIgc=;
        b=wKsBpnhbQvyO9dAHCC7p1t4ACzVlQCMOnVu5/VRVomy2/p0xRt4qexaejwh29KghC1
         3ffBT5CpUyZArSEOtzpHY2hTEHkKUNJUlWoZT3xE4Jqoq/iKkVtFmAZbxBImPrXeXh5N
         R2zWXYwMvFuGSZ7lSjmWmoF4jvMj24M9a8CRSPoZReoU+RzhSbN0uKje/sbgb8uq7/8D
         JJLTt9extG3WwbyMMNxRrT+iD3GjjXZy3iICrb1/tpHtm5cZ93YsDxtQLjCfAVOu5KFz
         3UCwuMOu2QGU56Q6Zefh8hgZqSIhhOGTNSPYVxJX1Y9EJo1aBLQmprVRawJQ0FpDexSU
         cDxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719614114; x=1720218914;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AWg6K4lF7Ia2UQmGAEMoRHt0caBd3GiOuDYrWDdJIgc=;
        b=S7SDjencr/yDxeTndvBi5atqRf4tRtve4KI0qdf9oxRFSi4FL93U1EULITapYQn5uF
         Pp88DLedocHnrk/GBq9+BDhpZ74Dse+uL02nubvzVO30W2UFF/nrBMoAPdn68/bdGfFo
         Rtb1BqVL62e0BwT6zQzdCBeL0kd6e24fdJAIqGLoD+M9HOnGBhCKCRS93DEFczkmbwNu
         1a/aOrYDXg3XnOZFspbJFn/SA6L/3BLQ8/IBelIOB71bpxSgXnnPrtVTe3/g2Q0Vz0Kp
         2jW51jrWaaf7Bs94pvR0SguUmxwmfpLSY+CZ2amiuCEpvdW36mjPAvTFRJnJF2XCDwFG
         GD2Q==
X-Forwarded-Encrypted: i=1; AJvYcCW+mHckLKutky5J77ROaF5LSzKBMBCtlFQFTKZFLPTzjM8v81Wa1cUja/4O8rg1SQtfmJv5KKJzGIMlWgEqhatlC/JW7R13+zRVMA==
X-Gm-Message-State: AOJu0YzLL847muFV4VMwvYYA6rCPUvmlnCwOSoJ/lt1nbyvYrLi42xjF
	pvYurKBuBveCDpN0zfBdPfG5VIZZqbzaJ7emuEFw0ziOwIHcMkbKnnmFYYkUltw=
X-Google-Smtp-Source: AGHT+IGQaEcZtkAMiKM9GSQOooFZeBRh3tTeuC+Xc/kCGO4xJ60dXrICAPaXg5XqxZbcHv05RyTqvw==
X-Received: by 2002:a5d:4e8c:0:b0:360:8dba:af69 with SMTP id ffacd0b85a97d-366e4f0ce68mr11178993f8f.61.1719614113724;
        Fri, 28 Jun 2024 15:35:13 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510::3aa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a043a16sm3496711f8f.0.2024.06.28.15.35.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 15:35:13 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 2/3] soc: samsung: exynos-pmu: add support for PMU_ALIVE non atomic registers
Date: Fri, 28 Jun 2024 23:35:05 +0100
Message-ID: <20240628223506.1237523-4-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.45.2.803.g4e1b14247a-goog
In-Reply-To: <20240628223506.1237523-1-peter.griffin@linaro.org>
References: <20240628223506.1237523-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Not all registers in PMU_ALIVE block support atomic set/clear operations.
GS101_SYSIP_DAT0 and GS101_SYSTEM_CONFIGURATION registers are two regs
where attempting atomic access fails.

As documentation on exactly which registers support atomic operations is
not forthcoming. We default to atomic access, unless the register is
explicitly added to the tensor_is_atomic() function. Update the comment
to reflect this as well.

Reviewed-by: Will McVicker <willmcvicker@google.com>
Tested-by: Will McVicker <willmcvicker@google.com>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v2
 - Move PMUALIVE_MASK check into tensor_is_atomic() (William)
---
 drivers/soc/samsung/exynos-pmu.c            | 22 ++++++++++++++++++---
 include/linux/soc/samsung/exynos-regs-pmu.h |  4 ++++
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/samsung/exynos-pmu.c b/drivers/soc/samsung/exynos-pmu.c
index 624324f4001c..d8c53cec7f37 100644
--- a/drivers/soc/samsung/exynos-pmu.c
+++ b/drivers/soc/samsung/exynos-pmu.c
@@ -129,14 +129,30 @@ static int tensor_set_bits_atomic(void *ctx, unsigned int offset, u32 val,
 	return ret;
 }
 
-static int tensor_sec_update_bits(void *ctx, unsigned int reg,
-				  unsigned int mask, unsigned int val)
+static bool tensor_is_atomic(unsigned int reg)
 {
 	/*
 	 * Use atomic operations for PMU_ALIVE registers (offset 0~0x3FFF)
-	 * as the target registers can be accessed by multiple masters.
+	 * as the target registers can be accessed by multiple masters. SFRs
+	 * that don't support atomic are added to the switch statement below.
 	 */
 	if (reg > PMUALIVE_MASK)
+		return false;
+
+	switch (reg) {
+	case GS101_SYSIP_DAT0:
+	case GS101_SYSTEM_CONFIGURATION:
+		return false;
+	default:
+		return true;
+	}
+}
+
+static int tensor_sec_update_bits(void *ctx, unsigned int reg,
+				  unsigned int mask, unsigned int val)
+{
+
+	if (!tensor_is_atomic(reg))
 		return tensor_sec_reg_rmw(ctx, reg, mask, val);
 
 	return tensor_set_bits_atomic(ctx, reg, val, mask);
diff --git a/include/linux/soc/samsung/exynos-regs-pmu.h b/include/linux/soc/samsung/exynos-regs-pmu.h
index aa840ed043e1..f411c176536d 100644
--- a/include/linux/soc/samsung/exynos-regs-pmu.h
+++ b/include/linux/soc/samsung/exynos-regs-pmu.h
@@ -657,4 +657,8 @@
 #define EXYNOS5433_PAD_RETENTION_UFS_OPTION			(0x3268)
 #define EXYNOS5433_PAD_RETENTION_FSYSGENIO_OPTION		(0x32A8)
 
+/* For Tensor GS101 */
+#define GS101_SYSIP_DAT0					(0x810)
+#define GS101_SYSTEM_CONFIGURATION				(0x3A00)
+
 #endif /* __LINUX_SOC_EXYNOS_REGS_PMU_H */
-- 
2.45.2.803.g4e1b14247a-goog


