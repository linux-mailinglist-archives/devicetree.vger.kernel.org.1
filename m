Return-Path: <devicetree+bounces-7432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 646D37C44C8
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 00:50:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84A0B1C20EB1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 22:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2F5631599;
	Tue, 10 Oct 2023 22:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IKLgTVum"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F64C315A1
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 22:50:19 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C232E99
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:50:10 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-32799639a2aso5989983f8f.3
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696978208; x=1697583008; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Yz4b7BED9jsghCGjgLwMYVCtDwHU07Y49FyrJSbNT8=;
        b=IKLgTVum2ttPvimQZq8eBFzl8J4D8KbP58oDUVHgcdqmPMTE5GBC1C8xZpA3ztD65z
         +1vnv5McoEYJmuj5gf34TnqSAEcyZDSLYQoRrQU8y+xrzQuz5F5MZ/TEuqUebJt0E0un
         9OOKNe+LJrEujgmnv6BsMNrMA9lzuLkW2hGIgECtUgJ+B4vz3lK1pIWjs7jEde+1dE/l
         OCThPVrEA/aWDCPF7kBouBQmfYuFY1s8XAUegVOgHR4NCUXR3XJzP1jrl0TZUgoTBxxo
         xbpYcwWiqaVpyRtUHNX9ddusH3+3aKO78XB2ajO7e8teERao8VrvW61n9ucY9k1JynMD
         kT6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696978208; x=1697583008;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Yz4b7BED9jsghCGjgLwMYVCtDwHU07Y49FyrJSbNT8=;
        b=Jkg4RdovTMvx9cHs7xC660JDivhKDrbDzlwdIsxAmhvFf5bhZXj3tzBEMyFOrgo9oY
         Qpf5OCdIelzDpp1OxoFFjvVWU8DNk+KX/Jw65UrtihHN3AWAMvqyi72WR/Q7dOrIFjMs
         zjSGQHtk+yqLwxx4FrAeF8YRKs1tAMg3hmTjxEMYI4O0+DNYcG/PbV1H1bX0tH5TomrG
         d2CzBtWT4oi2EYu8jykTfHHIQdumPcZfoPaTmaHCCqpoYP8tgprDUD3hq1PGNN9pGyt6
         q8fKfnAedabPXgNHZAO5ikE5Rt5RhBXcQqjbaoe2/U04glppkVJZCgAJuv6v5OhHfffd
         7VZg==
X-Gm-Message-State: AOJu0YxQ2BWyaSPGjQChsZvSBtFG3MIgM7gF9q4uq+qgrM9RRwKCMVg7
	gizh+8FFwzoqNsQE6Sp2WEKvcA==
X-Google-Smtp-Source: AGHT+IFNG3Qwaia/Qp5LslJC4XL4+/xLKXhHt71kJ8NYLHVL9Auls2DQpn5ckGNsA3FzbkhegrJYCg==
X-Received: by 2002:a5d:4f85:0:b0:31a:ea9a:b602 with SMTP id d5-20020a5d4f85000000b0031aea9ab602mr19104135wru.1.1696978208076;
        Tue, 10 Oct 2023 15:50:08 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id j13-20020adfe50d000000b003196b1bb528sm13689547wrm.64.2023.10.10.15.50.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 15:50:07 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	conor+dt@kernel.org,
	sboyd@kernel.org,
	tomasz.figa@gmail.com,
	s.nawrocki@samsung.com,
	linus.walleij@linaro.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	catalin.marinas@arm.com,
	will@kernel.org,
	arnd@arndb.de,
	olof@lixom.net,
	cw00.choi@samsung.com
Cc: peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel-team@android.com,
	linux-serial@vger.kernel.org
Subject: [PATCH v2 15/20] watchdog: s3c2410_wdt: Add support for Google tensor SoCs
Date: Tue, 10 Oct 2023 23:49:23 +0100
Message-ID: <20231010224928.2296997-16-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.42.0.609.gbb76f46606-goog
In-Reply-To: <20231010224928.2296997-1-peter.griffin@linaro.org>
References: <20231010224928.2296997-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This patch adds the compatibles and drvdata for the Google
gs101 & gs201 SoCs found in Pixel 6 and Pixel 7 phones. Similar
to Exynos850 it has two watchdog instances, one for each cluster
and has some control bits in PMU registers.

The watchdog IP found in gs101 SoCs also supports a few
additional bits/features in the WTCON register which we add
support for and an additional register detailed below.

dbgack-mask - Enables masking WDT interrupt and reset request
according to asserted DBGACK input

windowed-mode - Enabled Windowed watchdog mode

Windowed watchdog mode also has an additional register WTMINCNT.
If windowed watchdog is enabled and you reload WTCNT when the
value is greater than WTMINCNT, it prompts interrupt or reset
request as if the watchdog time has expired.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/watchdog/s3c2410_wdt.c | 104 ++++++++++++++++++++++++++++++---
 1 file changed, 95 insertions(+), 9 deletions(-)

diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wdt.c
index 0b4bd883ff28..08a775c01c57 100644
--- a/drivers/watchdog/s3c2410_wdt.c
+++ b/drivers/watchdog/s3c2410_wdt.c
@@ -31,12 +31,14 @@
 #define S3C2410_WTDAT		0x04
 #define S3C2410_WTCNT		0x08
 #define S3C2410_WTCLRINT	0x0c
-
+#define S3C2410_WTMINCNT	0x10
 #define S3C2410_WTCNT_MAXCNT	0xffff
 
-#define S3C2410_WTCON_RSTEN	(1 << 0)
-#define S3C2410_WTCON_INTEN	(1 << 2)
-#define S3C2410_WTCON_ENABLE	(1 << 5)
+#define S3C2410_WTCON_RSTEN		(1 << 0)
+#define S3C2410_WTCON_INTEN		(1 << 2)
+#define S3C2410_WTCON_ENABLE		(1 << 5)
+#define S3C2410_WTCON_DBGACK_MASK	(1 << 16)
+#define S3C2410_WTCON_WINDOWED_WD	(1 << 20)
 
 #define S3C2410_WTCON_DIV16	(0 << 3)
 #define S3C2410_WTCON_DIV32	(1 << 3)
@@ -67,6 +69,12 @@
 #define EXYNOSAUTOV9_CLUSTER0_WDTRESET_BIT	25
 #define EXYNOSAUTOV9_CLUSTER1_WDTRESET_BIT	24
 
+#define GS_CLUSTER0_NONCPU_OUT			0x1220
+#define GS_CLUSTER1_NONCPU_OUT			0x1420
+#define GS_CLUSTER0_NONCPU_INT_EN		0x1244
+#define GS_CLUSTER1_NONCPU_INT_EN		0x1444
+#define GS_CLUSTER2_NONCPU_INT_EN		0x1644
+#define GS_RST_STAT_REG_OFFSET			0x3B44
 /**
  * DOC: Quirk flags for different Samsung watchdog IP-cores
  *
@@ -106,6 +114,8 @@
 #define QUIRK_HAS_PMU_RST_STAT			(1 << 2)
 #define QUIRK_HAS_PMU_AUTO_DISABLE		(1 << 3)
 #define QUIRK_HAS_PMU_CNT_EN			(1 << 4)
+#define QUIRK_HAS_DBGACK_BIT			(1 << 5)
+#define QUIRK_HAS_WTMINCNT_REG			(1 << 6)
 
 /* These quirks require that we have a PMU register map */
 #define QUIRKS_HAVE_PMUREG \
@@ -263,6 +273,54 @@ static const struct s3c2410_wdt_variant drv_data_exynosautov9_cl1 = {
 		  QUIRK_HAS_PMU_RST_STAT | QUIRK_HAS_PMU_CNT_EN,
 };
 
+static const struct s3c2410_wdt_variant drv_data_gs101_cl0 = {
+	.mask_reset_reg = GS_CLUSTER0_NONCPU_INT_EN,
+	.mask_bit = 2,
+	.mask_reset_inv = true,
+	.rst_stat_reg = GS_RST_STAT_REG_OFFSET,
+	.rst_stat_bit = 0,
+	.cnt_en_reg = GS_CLUSTER0_NONCPU_OUT,
+	.cnt_en_bit = 8,
+	.quirks = QUIRK_HAS_PMU_RST_STAT | QUIRK_HAS_PMU_MASK_RESET | QUIRK_HAS_PMU_CNT_EN |
+		  QUIRK_HAS_WTCLRINT_REG | QUIRK_HAS_DBGACK_BIT | QUIRK_HAS_WTMINCNT_REG,
+};
+
+static const struct s3c2410_wdt_variant drv_data_gs101_cl1 = {
+	.mask_reset_reg = GS_CLUSTER1_NONCPU_INT_EN,
+	.mask_bit = 2,
+	.mask_reset_inv = true,
+	.rst_stat_reg = GS_RST_STAT_REG_OFFSET,
+	.rst_stat_bit = 1,
+	.cnt_en_reg = GS_CLUSTER1_NONCPU_OUT,
+	.cnt_en_bit = 7,
+	.quirks = QUIRK_HAS_PMU_RST_STAT | QUIRK_HAS_PMU_MASK_RESET | QUIRK_HAS_PMU_CNT_EN |
+		  QUIRK_HAS_WTCLRINT_REG | QUIRK_HAS_DBGACK_BIT | QUIRK_HAS_WTMINCNT_REG,
+};
+
+static const struct s3c2410_wdt_variant drv_data_gs201_cl0 = {
+	.mask_reset_reg = GS_CLUSTER0_NONCPU_INT_EN,
+	.mask_bit = 2,
+	.mask_reset_inv = true,
+	.rst_stat_reg = GS_RST_STAT_REG_OFFSET,
+	.rst_stat_bit = 0,
+	.cnt_en_reg = GS_CLUSTER0_NONCPU_OUT,
+	.cnt_en_bit = 8,
+	.quirks = QUIRK_HAS_PMU_RST_STAT | QUIRK_HAS_PMU_MASK_RESET | QUIRK_HAS_PMU_CNT_EN |
+		  QUIRK_HAS_WTCLRINT_REG | QUIRK_HAS_DBGACK_BIT | QUIRK_HAS_WTMINCNT_REG,
+};
+
+static const struct s3c2410_wdt_variant drv_data_gs201_cl1 = {
+	.mask_reset_reg = GS_CLUSTER1_NONCPU_INT_EN,
+	.mask_bit = 2,
+	.mask_reset_inv = true,
+	.rst_stat_reg = GS_RST_STAT_REG_OFFSET,
+	.rst_stat_bit = 1,
+	.cnt_en_reg = GS_CLUSTER1_NONCPU_OUT,
+	.cnt_en_bit = 7,
+	.quirks = QUIRK_HAS_PMU_RST_STAT | QUIRK_HAS_PMU_MASK_RESET | QUIRK_HAS_PMU_CNT_EN |
+		  QUIRK_HAS_WTCLRINT_REG | QUIRK_HAS_DBGACK_BIT | QUIRK_HAS_WTMINCNT_REG,
+};
+
 static const struct of_device_id s3c2410_wdt_match[] = {
 	{ .compatible = "samsung,s3c2410-wdt",
 	  .data = &drv_data_s3c2410 },
@@ -278,6 +336,10 @@ static const struct of_device_id s3c2410_wdt_match[] = {
 	  .data = &drv_data_exynos850_cl0 },
 	{ .compatible = "samsung,exynosautov9-wdt",
 	  .data = &drv_data_exynosautov9_cl0 },
+	{ .compatible = "google,gs101-wdt",
+	  .data = &drv_data_gs101_cl0 },
+	{ .compatible = "google,gs201-wdt",
+	  .data = &drv_data_gs201_cl0 },
 	{},
 };
 MODULE_DEVICE_TABLE(of, s3c2410_wdt_match);
@@ -375,6 +437,21 @@ static int s3c2410wdt_enable(struct s3c2410_wdt *wdt, bool en)
 	return 0;
 }
 
+static void s3c2410wdt_mask_dbgack(struct s3c2410_wdt *wdt, bool mask)
+{
+	unsigned long wtcon;
+
+	if (!(wdt->drv_data->quirks & QUIRK_HAS_DBGACK_BIT))
+		return;
+
+	wtcon = readl(wdt->reg_base + S3C2410_WTCON);
+	if (mask)
+		wtcon |= S3C2410_WTCON_DBGACK_MASK;
+	else
+		wtcon &= ~S3C2410_WTCON_DBGACK_MASK;
+	writel(wtcon, wdt->reg_base + S3C2410_WTCON);
+}
+
 static int s3c2410wdt_keepalive(struct watchdog_device *wdd)
 {
 	struct s3c2410_wdt *wdt = watchdog_get_drvdata(wdd);
@@ -585,9 +662,11 @@ s3c2410_get_wdt_drv_data(struct platform_device *pdev, struct s3c2410_wdt *wdt)
 	}
 
 #ifdef CONFIG_OF
-	/* Choose Exynos850/ExynosAutov9 driver data w.r.t. cluster index */
+	/* Choose Exynos850/ExynosAutov9/gsx01 driver data w.r.t. cluster index */
 	if (variant == &drv_data_exynos850_cl0 ||
-	    variant == &drv_data_exynosautov9_cl0) {
+	    variant == &drv_data_exynosautov9_cl0 ||
+	    variant == &drv_data_gs101_cl0 ||
+	    variant == &drv_data_gs201_cl0) {
 		u32 index;
 		int err;
 
@@ -600,9 +679,14 @@ s3c2410_get_wdt_drv_data(struct platform_device *pdev, struct s3c2410_wdt *wdt)
 		case 0:
 			break;
 		case 1:
-			variant = (variant == &drv_data_exynos850_cl0) ?
-				&drv_data_exynos850_cl1 :
-				&drv_data_exynosautov9_cl1;
+			if (variant == &drv_data_exynos850_cl0)
+				variant = &drv_data_exynos850_cl1;
+			else if (variant == &drv_data_exynosautov9_cl0)
+				variant = &drv_data_exynosautov9_cl1;
+			else if (variant == &drv_data_gs101_cl0)
+				variant = &drv_data_gs101_cl1;
+			else if (variant == &drv_data_gs201_cl0)
+				variant = &drv_data_gs201_cl1;
 			break;
 		default:
 			return dev_err_probe(dev, -EINVAL, "wrong cluster index: %u\n", index);
@@ -700,6 +784,8 @@ static int s3c2410wdt_probe(struct platform_device *pdev)
 	wdt->wdt_device.bootstatus = s3c2410wdt_get_bootstatus(wdt);
 	wdt->wdt_device.parent = dev;
 
+	s3c2410wdt_mask_dbgack(wdt, true);
+
 	/*
 	 * If "tmr_atboot" param is non-zero, start the watchdog right now. Also
 	 * set WDOG_HW_RUNNING bit, so that watchdog core can kick the watchdog.
-- 
2.42.0.609.gbb76f46606-goog


