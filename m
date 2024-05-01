Return-Path: <devicetree+bounces-64207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0FC8B8778
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 11:19:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 019C8284972
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 09:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E52B51C46;
	Wed,  1 May 2024 09:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uzSOTTFo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2798F502B1
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 09:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714555181; cv=none; b=nQK9v8OLNLKj+xxnq1iaoA1ZL7FijIftawnCbGlo9brIDgLi6VuuZar/XyZNz8IifN8y8FZtyuXeQSgaGA67IGhlCD7k8BeJRWSUjLZcbrWovR4XSQhk7S3G2bfrgsMQ4+KTOMe8zaVg/afppIUF42SAN5rasNpxEaSCxHHvDyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714555181; c=relaxed/simple;
	bh=ZyNnKgvZCiDg/WDXGvirLjjH/RMUJBnGJV7fcumvd3Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s2scs3NIaW3rwqyeyTgRLtsn7F+csK/AJBl843bqqL7QJ26EewhkLXED63CtxTEM+2q6CWVpy8FtzEf7890P0xb2IHGoZeObNKw3t9Cdv9qaQQ/iIPR8To3B1Vdb0i5xrWQL/QBrV9CEaRz1gs4/dTIQEesnp5qPphGI+ndcVGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uzSOTTFo; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-516d2600569so8203551e87.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 02:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714555178; x=1715159978; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gDKjYuMOOvQueQlZtzxRYnLgIlA8f7Ari39jSEC+hu0=;
        b=uzSOTTFoK92qHI92dtkOeF92jCEN56Wr5hUJRtqQ3dj3uJ16/8vWw1a7XbodQ7GVuN
         X/akwxanJiw3BXxTcNywCkq317Cv6J4HwYCVCFPyCGA+BCdyOguWhH6KXxCkyu+d5HCB
         RUoBo4+VJGImn4BpDSG6CNscGwWNgH69D+5MJ8esbO4E4phrJJ6clnP3AW1XlAn7sh81
         kiFVCEJRxh5eVgBxVgYqBW4uISpKyq7tfgjgvaq5kliTCF79Nu+PXlV7K2+YKeZb8kTl
         pYM2kfmP0vvfyJfGPGdBKsvHlXnHpKivCuedQqjzKT4dqbaVOWCGxnHBBsMPK+iT9RHJ
         JIDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714555178; x=1715159978;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gDKjYuMOOvQueQlZtzxRYnLgIlA8f7Ari39jSEC+hu0=;
        b=CRhy/XndteCl71A1+W/S5j1IqbJBhZfXu+/O8ko9CnUmL1vm8bgAQh1yo5stST2phh
         Z8mgDBOJ9qevS502loRuBz32+vk1HJwRe2SVpZCurTGJJ2Lo3QIjgT51gYAI8JwWRzYp
         Mmnwl9b6LXcUL3Ko0p0CCmVN5iYq4EUqLiKJYPPaQtGdrQutTDHdYAVXhfMnkVGJntiW
         OAmFo2UWi4UuIz5ZW4hOVCwhho/Ur4UlDptDap4Sj39Gg3fqFVu3f2JJtUSlVxvwBsZr
         S/goHWD2KfWGndtebY6HiewYX/dx6PBLbD/ev4nLzm4L4WbqTk3q0RT/vh/BD26hsLir
         pVCw==
X-Forwarded-Encrypted: i=1; AJvYcCV0QErsvVIcyBTLnEGu37eYz3OJ5Q3AlD1veZbMroCxvoPutTVdcDANyeyzClSiqyYOCHI+Djt/ZQ8CuLIsaKvy8SrBKLfPPkIHyQ==
X-Gm-Message-State: AOJu0Yx9z66l1/UkSfNnFLzHC7Oie1h9AuXOTauVsqp4GEUMJJ9oH9KV
	z39r6Bi+EOMkA0VS938K9eyyK810ZbyFW6TqExm6l2qVYvLgbNqCZKZYCylt8z0=
X-Google-Smtp-Source: AGHT+IG35wPVpTgwkzCXgj+m93i9OP3q32II4vi8eJQ5xijSDEEE5d2Q9QmPaTZNA6Hi++3pKyY3vg==
X-Received: by 2002:a19:ca53:0:b0:51b:396e:2880 with SMTP id h19-20020a19ca53000000b0051b396e2880mr1133041lfj.63.1714555178313;
        Wed, 01 May 2024 02:19:38 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id bw13-20020a170906c1cd00b00a58de09fd92sm5425674ejb.27.2024.05.01.02.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 02:19:37 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 01 May 2024 10:19:37 +0100
Subject: [PATCH v2 2/7] phy: exynos5-usbdrd: use
 exynos_get_pmu_regmap_by_phandle() for PMU regs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240501-usb-phy-gs101-v2-2-ed9f14a1bd6d@linaro.org>
References: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
In-Reply-To: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Arnd Bergmann <arnd@arndb.de>, lee@kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

Some Exynos based SoCs like Tensor gs101 protect the PMU registers for
security hardening reasons so that they are only write accessible in
EL3 via an SMC call.

The Exynos PMU driver handles this transparently when using
exynos_get_pmu_regmap_by_phandle().

Switch to using that API to support such SoCs. As this driver now no
longer depends on mfd syscon remove that header and Kconfig dependency.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/phy/samsung/Kconfig              | 1 -
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 4 ++--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
index f10afa3d7ff5..bb63fa710803 100644
--- a/drivers/phy/samsung/Kconfig
+++ b/drivers/phy/samsung/Kconfig
@@ -82,7 +82,6 @@ config PHY_EXYNOS5_USBDRD
 	depends on HAS_IOMEM
 	depends on USB_DWC3_EXYNOS
 	select GENERIC_PHY
-	select MFD_SYSCON
 	default y
 	help
 	  Enable USB DRD PHY support for Exynos 5 SoC series.
diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 04171eed5b16..ac208b89f5a6 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -18,9 +18,9 @@
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/mutex.h>
-#include <linux/mfd/syscon.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
+#include <linux/soc/samsung/exynos-pmu.h>
 #include <linux/soc/samsung/exynos-regs-pmu.h>
 
 /* Exynos USB PHY registers */
@@ -1034,7 +1034,7 @@ static int exynos5_usbdrd_phy_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	reg_pmu = syscon_regmap_lookup_by_phandle(dev->of_node,
+	reg_pmu = exynos_get_pmu_regmap_by_phandle(dev->of_node,
 						   "samsung,pmu-syscon");
 	if (IS_ERR(reg_pmu)) {
 		dev_err(dev, "Failed to lookup PMU regmap\n");

-- 
2.45.0.rc0.197.gbae5840b3b-goog


