Return-Path: <devicetree+bounces-263483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPYqC2IvhmkTKQQAu9opvQ
	(envelope-from <devicetree+bounces-263483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:13:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A489E101AD9
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:13:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EDD1A300EF95
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 18:13:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D4E8426EA0;
	Fri,  6 Feb 2026 18:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XusMf3Vl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB70426D23
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 18:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770401629; cv=none; b=Zd89aWDAqEuCC0qypWfpPS6UHNhbSPx2zT0qaDxz6IMi/glXN7hzS5VkX0dLnf7u9+LkiiRnVgdLEioYNL5XbhWsdBBL42kCVZ+KcNJJ9DgkEkLbBPKCHl8D4ZpyUBUA4ceytm0rPzHAY9rrAu5jemJS/D3U54PVytDx1oID85Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770401629; c=relaxed/simple;
	bh=J6Wa5muffRTeSzx7M5VS6HvrGGH4sFfGcIX+vwAMfsE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IR71/NjpWVp+GL5HuqNHHIRG/vk/xtvm+80W57PgBI35UnoJvBQ/XhsyL2C5xMMDx1vqVdeT0sFR+QeCzTrzfiBaoSEVtWH/1TNf+LNHT38yAAhed+KmXLNC5JQC3U3MZ/Op8i8TnGexWLrDtDeycj4KMdaJ5NoaU9kliz05X38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XusMf3Vl; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2b7070acfdcso984744eec.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 10:13:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770401628; x=1771006428; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nmH9HE8aRrFDo8WqIQGTJHc6NT8j7v+2KlTAuAaPNkE=;
        b=XusMf3VlLF2nkecVjF9PT7kcvUMcdDCPKneOemt7BTcBpOvSDoXx0GBeccj9lgNJNk
         i4hHThtjC+BNK2lFs/EQXTa9S8PWt4g0IiW5MW8iLYFHtvseVoK8oadjxRfEfrKtB5eA
         Si60ZZ5tLks4UYjnS4RgKcdbr7GCgaEKTEqUtVCnXmWQmdiwtVvkynenP3XISV/8U3CN
         zk+977ob31m7S2TiH01kCZMSyiJhPonQi9Zk43f39rRRmmNFvfPuuEI4EiFuo7wbqWQc
         PuJixIKpx0YATGXSmWZZDvIOGn8xRTAoT5T9gZH7akvX/xKO7KldZNEmQUaxcNIBs6h0
         TEuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770401628; x=1771006428;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nmH9HE8aRrFDo8WqIQGTJHc6NT8j7v+2KlTAuAaPNkE=;
        b=Al4yEsbrICmogF2JDrwtgBOHZyo5TvxAiS/R0ZO+aQNVJfLQt/IoF+6VC5Ca4TayDr
         6kj94D3GXDP65eGxpN2EvplUqTuGiNKuJ53GK638gLqTFFznJpg4GmF+tzuKSMUny3xR
         5L2tqZbugtVz7qCMesRUz7RGAz4CceSJ432LPizOf+KypYUnf8OX6EREmDrhvKAW8KGv
         oNASRgqYdT+dnvwgCDnqiS/grzV6vY/yQ0kkWbGkrMFHKVvUC1MSIYDQn2C797lj+ye2
         Ljp1E4pfYAlXZ22q5if7SM6vki8uQwQPrgnwHuj/mY6sYy5kB8UqYR5omIRxdsnaW2Iy
         s6gQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsHgy6dng6ABTwZmQFJGuYkokyevxA7g9B67iJezdCPEgMmyMVBP0gHoopGw4GsYjOEBB+KwLpL2Wv@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6j7sb6KZ7A/sdDEJssdSvGfbWnhzN4QgRYRQ2hc9yoyn1UQZR
	E95FN2o5gIJlv+g1Jrzpm5pFwtpN3kgBDZ1uFksUv8irE0Y5BofjFrHtqRq+OA==
X-Gm-Gg: AZuq6aJoh6SURBLy8kfziLH4bHY3V58bmpH4cokNCim6zg1LOL+8sTc9HdSXJ6sg/iG
	qkYYWGdekRF7FcGMDpVcpPYTqXaW95KJhj0AKcEIaOA3PFxSBqhISwZ8peJ2tObUsBVYNpzn8gm
	x9ajlu1VwaK4n4l1ieP5+nhk77mObcsLd8/blNSTAWHePt4xVSEmd5tP1lnPulleoqLN9Ny5xyV
	8NUjjE10URvLbeE3XzwELpNzYd5iICCOILFgEO58H8ctjtsDBcdPa7gEHBDjheVyz0o7laLHQKn
	4uCN12uUifUrCs5sesJ50/9vEVtIiCPLkLg8P4XNOgXU5MIA7P3YasegWez87Tezqs63zVnNRd5
	KMR7Nlckjn5J03XjFKizx5lyXlDhEoeJINmozPW42mMu9EHN0Vjd/LjiOLRjfg+HI8YiaDRKGJR
	pSW4kcpIIDbdcUoSCs/EnffqDa
X-Received: by 2002:a05:7300:7b94:b0:2b0:5028:bafd with SMTP id 5a478bee46e88-2b856453d5cmr1456268eec.8.1770401628272;
        Fri, 06 Feb 2026 10:13:48 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:47 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 09/11] ARM: dts: rockchip: Add support for RV1103B
Date: Fri,  6 Feb 2026 15:13:07 -0300
Message-Id: <20260206181309.2696095-10-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263483-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.991];
	DBL_PROHIBIT(0.00)[1.62.115.112:email,1.57.106.96:email,1.51.197.16:email,1.62.154.128:email,1.57.28.64:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1.49.45.0:email,nabladev.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,210f6000:email,20d80000:email,20d40000:email,1.61.254.64:email,1.59.24.16:email,1.55.114.120:email,1.50.179.160:email,0.0.0.0:email]
X-Rspamd-Queue-Id: A489E101AD9
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Add the initial RV1103B devicetree.

Based on the 5.10 Rockchip vendor kernel driver.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 .../boot/dts/rockchip/rv1103b-pinctrl.dtsi    | 831 ++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1103b.dtsi       | 266 ++++++
 2 files changed, 1097 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b.dtsi

diff --git a/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
new file mode 100644
index 000000000000..bc4d8fcdfaf7
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
@@ -0,0 +1,831 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2024 Rockchip Electronics Co., Ltd.
+ */
+
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <arm64/rockchip/rockchip-pinconf.dtsi>
+
+/*
+ * This file is auto generated by pin2dts tool, please keep these code
+ * by adding changes at end of this file.
+ */
+&pinctrl {
+	cam_clk0 {
+		cam_clk0_pins: cam-clk0-pins {
+			rockchip,pins =
+				/* cam_clk0_out */
+				<1 RK_PB5 1 &pcfg_pull_none>;
+		};
+	};
+
+	cam_clk1 {
+		cam_clk1_pins: cam-clk1-pins {
+			rockchip,pins =
+				/* cam_clk1_out */
+				<1 RK_PB6 1 &pcfg_pull_none>;
+		};
+	};
+
+	cam_spi {
+		cam_spi_bus4_pins: cam-spi-bus4-pins {
+			rockchip,pins =
+				/* cam_spi_d0 */
+				<0 RK_PB5 4 &pcfg_pull_up_drv_level_2>,
+				/* cam_spi_d1 */
+				<0 RK_PB2 4 &pcfg_pull_up_drv_level_2>,
+				/* cam_spi_d2 */
+				<0 RK_PB1 4 &pcfg_pull_up_drv_level_2>,
+				/* cam_spi_d3 */
+				<0 RK_PB0 4 &pcfg_pull_up_drv_level_2>;
+		};
+		cam_spi_clk_pins: cam-spi-clk-pins {
+			rockchip,pins =
+				/* cam_spi_clk */
+				<0 RK_PB4 4 &pcfg_pull_none>;
+		};
+		cam_spi_cs0n_pins: cam-spi-cs0n-pins {
+			rockchip,pins =
+				/* cam_spi_cs0n */
+				<0 RK_PB3 4 &pcfg_pull_none>;
+		};
+	};
+
+	clk {
+		clk_32k_pins: clk-32k-pins {
+			rockchip,pins =
+				/* clk_32k */
+				<0 RK_PA0 2 &pcfg_pull_none>;
+		};
+	};
+
+	clk_24m {
+		clk_24m_out_pins: clk-24m-out-pins {
+			rockchip,pins =
+				/* clk_24m_out */
+				<0 RK_PA0 3 &pcfg_pull_none>;
+		};
+	};
+
+	cpu {
+		cpu_pins: cpu-pins {
+			rockchip,pins =
+				/* cpu_avs */
+				<0 RK_PA1 2 &pcfg_pull_none>;
+		};
+	};
+
+	emmc {
+		emmc_bus4_pins: emmc-bus4-pins {
+			rockchip,pins =
+				/* emmc_d0 */
+				<1 RK_PA1 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d1 */
+				<1 RK_PA2 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d2 */
+				<1 RK_PA3 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d3 */
+				<1 RK_PA0 1 &pcfg_pull_up_drv_level_2>;
+		};
+		emmc_clk_pins: emmc-clk-pins {
+			rockchip,pins =
+				/* emmc_clk */
+				<1 RK_PA4 1 &pcfg_pull_up_drv_level_2>;
+		};
+		emmc_cmd_pins: emmc-cmd-pins {
+			rockchip,pins =
+				/* emmc_cmd */
+				<1 RK_PA5 1 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+
+	emmc_testclk {
+		emmc_testclk_clk_pins: emmc-testclk-clk-pins {
+			rockchip,pins =
+				/* emmc_testclk_out */
+				<1 RK_PA7 3 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+
+	emmc_testdata {
+		emmc_testdata_out_pins: emmc-testdata-out-pins {
+			rockchip,pins =
+				/* emmc_testdata_out */
+				<1 RK_PB0 3 &pcfg_pull_none>;
+		};
+	};
+
+	eth_led {
+		eth_led_dpx_pins: eth-led-dpx-pins {
+			rockchip,pins =
+				/* eth_led_dpx */
+				<2 RK_PA4 6 &pcfg_pull_none>;
+		};
+		eth_led_link_pins: eth-led-link-pins {
+			rockchip,pins =
+				/* eth_led_link */
+				<2 RK_PA6 6 &pcfg_pull_none>;
+		};
+		eth_led_spd_pins: eth-led-spd-pins {
+			rockchip,pins =
+				/* eth_led_spd */
+				<2 RK_PA7 6 &pcfg_pull_none>;
+		};
+	};
+
+	flash_trig {
+		flash_trig_pins: flash-trig-pins {
+			rockchip,pins =
+				/* flash_trig_out */
+				<2 RK_PB0 6 &pcfg_pull_none>;
+		};
+	};
+
+	fspi {
+		fspi_bus4_pins: fspi-bus4-pins {
+			rockchip,pins =
+				/* fspi_d0 */
+				<1 RK_PA1 2 &pcfg_pull_none>,
+				/* fspi_d1 */
+				<1 RK_PA2 2 &pcfg_pull_none>,
+				/* fspi_d2 */
+				<1 RK_PA3 2 &pcfg_pull_none>,
+				/* fspi_d3 */
+				<1 RK_PA0 2 &pcfg_pull_none>;
+		};
+		fspi_cs0_pins: fspi-cs0-pins {
+			rockchip,pins =
+				/* fspi_cs0n */
+				<1 RK_PA5 2 &pcfg_pull_up>;
+		};
+		fspi_clk_pins: fspi-clk-pins {
+			rockchip,pins =
+				/* fspi_clk */
+				<1 RK_PA4 2 &pcfg_pull_none>;
+		};
+	};
+
+	fspi_testclk {
+		fspi_testclk_out_pins: fspi-testclk-out-pins {
+			rockchip,pins =
+				/* fspi_testclk_out */
+				<1 RK_PA7 5 &pcfg_pull_none>;
+		};
+	};
+
+	fspi_testdata {
+		fspi_testdata_out_pins: fspi-testdata-out-pins {
+			rockchip,pins =
+				/* fspi_testdata_out */
+				<1 RK_PB0 5 &pcfg_pull_none>;
+		};
+	};
+
+	i2c0 {
+		i2c0m0_xfer_pins: i2c0m0-xfer-pins {
+			rockchip,pins =
+				/* i2c0_scl_m0 */
+				<0 RK_PA5 3 &pcfg_pull_none_smt>,
+				/* i2c0_sda_m0 */
+				<0 RK_PA6 3 &pcfg_pull_none_smt>;
+		};
+		i2c0m1_xfer_pins: i2c0m1-xfer-pins {
+			rockchip,pins =
+				/* i2c0_scl_m1 */
+				<1 RK_PB4 5 &pcfg_pull_none_smt>,
+				/* i2c0_sda_m1 */
+				<1 RK_PB3 5 &pcfg_pull_none_smt>;
+		};
+		i2c0m2_xfer_pins: i2c0m2-xfer-pins {
+			rockchip,pins =
+				/* i2c0_scl_m2 */
+				<1 RK_PB5 2 &pcfg_pull_none_smt>,
+				/* i2c0_sda_m2 */
+				<1 RK_PB6 2 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c1 {
+		i2c1m0_xfer_pins: i2c1m0-xfer-pins {
+			rockchip,pins =
+				/* i2c1_scl_m0 */
+				<0 RK_PB0 1 &pcfg_pull_none_smt>,
+				/* i2c1_sda_m0 */
+				<0 RK_PB1 1 &pcfg_pull_none_smt>;
+		};
+		i2c1m1_xfer_pins: i2c1m1-xfer-pins {
+			rockchip,pins =
+				/* i2c1_scl_m1 */
+				<2 RK_PA4 4 &pcfg_pull_none_smt>,
+				/* i2c1_sda_m1 */
+				<2 RK_PA5 4 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c2 {
+		i2c2m0_xfer_pins: i2c2m0-xfer-pins {
+			rockchip,pins =
+				/* i2c2_scl_m0 */
+				<0 RK_PB2 1 &pcfg_pull_none_smt>,
+				/* i2c2_sda_m0 */
+				<0 RK_PB3 1 &pcfg_pull_none_smt>;
+		};
+		i2c2m1_xfer_pins: i2c2m1-xfer-pins {
+			rockchip,pins =
+				/* i2c2_scl_m1 */
+				<2 RK_PA6 4 &pcfg_pull_none_smt>,
+				/* i2c2_sda_m1 */
+				<2 RK_PA7 4 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c3 {
+		i2c3m0_xfer_pins: i2c3m0-xfer-pins {
+			rockchip,pins =
+				/* i2c3_scl_m0 */
+				<0 RK_PB4 1 &pcfg_pull_none_smt>,
+				/* i2c3_sda_m0 */
+				<0 RK_PB5 1 &pcfg_pull_none_smt>;
+		};
+		i2c3m1_xfer_pins: i2c3m1-xfer-pins {
+			rockchip,pins =
+				/* i2c3_scl_m1 */
+				<2 RK_PB3 4 &pcfg_pull_none_smt>,
+				/* i2c3_sda_m1 */
+				<2 RK_PB2 4 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c4 {
+		i2c4m0_xfer_pins: i2c4m0-xfer-pins {
+			rockchip,pins =
+				/* i2c4_scl_m0 */
+				<2 RK_PB0 4 &pcfg_pull_none_smt>,
+				/* i2c4_sda_m0 */
+				<2 RK_PB1 4 &pcfg_pull_none_smt>;
+		};
+		i2c4m1_xfer_pins: i2c4m1-xfer-pins {
+			rockchip,pins =
+				/* i2c4_scl_m1 */
+				<1 RK_PB7 2 &pcfg_pull_none_smt>,
+				/* i2c4_sda_m1 */
+				<1 RK_PC0 2 &pcfg_pull_none_smt>;
+		};
+	};
+
+	jtag {
+		jtagm0_pins: jtagm0-pins {
+			rockchip,pins =
+				/* jtag_tck_m0 */
+				<0 RK_PA5 5 &pcfg_pull_none>,
+				/* jtag_tms_m0 */
+				<0 RK_PA6 5 &pcfg_pull_none>;
+		};
+		jtagm1_pins: jtagm1-pins {
+			rockchip,pins =
+				/* jtag_tck_m1 */
+				<0 RK_PB4 3 &pcfg_pull_none>,
+				/* jtag_tms_m1 */
+				<0 RK_PB5 3 &pcfg_pull_none>;
+		};
+		jtagm2_pins: jtagm2-pins {
+			rockchip,pins =
+				/* jtag_tck_m2 */
+				<1 RK_PB4 3 &pcfg_pull_none>,
+				/* jtag_tms_m2 */
+				<1 RK_PB3 3 &pcfg_pull_none>;
+		};
+	};
+
+	pmu_debug_test {
+		pmu_debug_test_pins: pmu-debug-test-pins {
+			rockchip,pins =
+				/* pmu_debug_test_out */
+				<0 RK_PB1 5 &pcfg_pull_none>;
+		};
+	};
+
+	prelight_trig {
+		prelight_trig_pins: prelight-trig-pins {
+			rockchip,pins =
+				/* prelight_trig_out */
+				<2 RK_PB1 6 &pcfg_pull_none>;
+		};
+	};
+
+	psram_spi {
+		psram_spi_bus4_pins: psram-spi-bus4-pins {
+			rockchip,pins =
+				/* psram_spi_d0 */
+				<0 RK_PA2 4 &pcfg_pull_none>,
+				/* psram_spi_d1 */
+				<0 RK_PA1 4 &pcfg_pull_none>,
+				/* psram_spi_d2 */
+				<0 RK_PA5 4 &pcfg_pull_none>,
+				/* psram_spi_d3 */
+				<0 RK_PA6 4 &pcfg_pull_none>;
+		};
+		psram_spi_clk_pins: psram-spi-clk-pins {
+			rockchip,pins =
+				/* psram_spi_clk */
+				<0 RK_PA0 4 &pcfg_pull_none>;
+		};
+		psram_spi_cs0n_pins: psram-spi-cs0n-pins {
+			rockchip,pins =
+				/* psram_spi_cs0n */
+				<0 RK_PA4 4 &pcfg_pull_none>;
+		};
+	};
+
+	pwm0 {
+		pwm0m0_ch0_pins: pwm0m0-ch0-pins {
+			rockchip,pins =
+				/* pwm0m0_ch0 */
+				<0 RK_PA1 1 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm0m0_ch1_pins: pwm0m0-ch1-pins {
+			rockchip,pins =
+				/* pwm0m0_ch1 */
+				<0 RK_PA5 2 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm0m0_ch2_pins: pwm0m0-ch2-pins {
+			rockchip,pins =
+				/* pwm0m0_ch2 */
+				<0 RK_PA6 2 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm0m0_ch3_pins: pwm0m0-ch3-pins {
+			rockchip,pins =
+				/* pwm0m0_ch3 */
+				<0 RK_PA2 1 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm0m1_ch0_pins: pwm0m1-ch0-pins {
+			rockchip,pins =
+				/* pwm0m1_ch0 */
+				<2 RK_PA0 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm0m1_ch1_pins: pwm0m1-ch1-pins {
+			rockchip,pins =
+				/* pwm0m1_ch1 */
+				<2 RK_PA1 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm0m1_ch2_pins: pwm0m1-ch2-pins {
+			rockchip,pins =
+				/* pwm0m1_ch2 */
+				<2 RK_PA2 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm0m1_ch3_pins: pwm0m1-ch3-pins {
+			rockchip,pins =
+				/* pwm0m1_ch3 */
+				<2 RK_PB0 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm0m2_ch1_pins: pwm0m2-ch1-pins {
+			rockchip,pins =
+				/* pwm0m2_ch1 */
+				<1 RK_PB7 1 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm0m2_ch2_pins: pwm0m2-ch2-pins {
+			rockchip,pins =
+				/* pwm0m2_ch2 */
+				<1 RK_PC0 1 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwm1 {
+		pwm1m0_ch0_pins: pwm1m0-ch0-pins {
+			rockchip,pins =
+				/* pwm1m0_ch0 */
+				<0 RK_PB0 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm1m0_ch1_pins: pwm1m0-ch1-pins {
+			rockchip,pins =
+				/* pwm1m0_ch1 */
+				<0 RK_PB1 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm1m0_ch2_pins: pwm1m0-ch2-pins {
+			rockchip,pins =
+				/* pwm1m0_ch2 */
+				<0 RK_PB2 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm1m0_ch3_pins: pwm1m0-ch3-pins {
+			rockchip,pins =
+				/* pwm1m0_ch3 */
+				<0 RK_PB3 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm1m1_ch0_pins: pwm1m1-ch0-pins {
+			rockchip,pins =
+				/* pwm1m1_ch0 */
+				<2 RK_PA3 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm1m1_ch1_pins: pwm1m1-ch1-pins {
+			rockchip,pins =
+				/* pwm1m1_ch1 */
+				<2 RK_PA4 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm1m1_ch2_pins: pwm1m1-ch2-pins {
+			rockchip,pins =
+				/* pwm1m1_ch2 */
+				<2 RK_PA5 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm1m1_ch3_pins: pwm1m1-ch3-pins {
+			rockchip,pins =
+				/* pwm1m1_ch3 */
+				<2 RK_PB1 3 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwm2 {
+		pwm2m0_ch0_pins: pwm2m0-ch0-pins {
+			rockchip,pins =
+				/* pwm2m0_ch0 */
+				<1 RK_PB0 4 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm2m0_ch1_pins: pwm2m0-ch1-pins {
+			rockchip,pins =
+				/* pwm2m0_ch1 */
+				<1 RK_PA7 4 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm2m0_ch2_pins: pwm2m0-ch2-pins {
+			rockchip,pins =
+				/* pwm2m0_ch2 */
+				<1 RK_PB4 4 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm2m0_ch3_pins: pwm2m0-ch3-pins {
+			rockchip,pins =
+				/* pwm2m0_ch3 */
+				<1 RK_PB3 4 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm2m1_ch0_pins: pwm2m1-ch0-pins {
+			rockchip,pins =
+				/* pwm2m1_ch0 */
+				<2 RK_PA6 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm2m1_ch1_pins: pwm2m1-ch1-pins {
+			rockchip,pins =
+				/* pwm2m1_ch1 */
+				<2 RK_PA7 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm2m1_ch2_pins: pwm2m1-ch2-pins {
+			rockchip,pins =
+				/* pwm2m1_ch2 */
+				<2 RK_PB2 3 &pcfg_pull_none_drv_level_0>;
+		};
+		pwm2m1_ch3_pins: pwm2m1-ch3-pins {
+			rockchip,pins =
+				/* pwm2m1_ch3 */
+				<2 RK_PB3 3 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwr {
+		pwr_pins: pwr-pins {
+			rockchip,pins =
+				/* pwr_ctrl0 */
+				<0 RK_PA3 1 &pcfg_pull_none>,
+				/* pwr_ctrl1 */
+				<0 RK_PA4 1 &pcfg_pull_none>;
+		};
+	};
+
+	rtc_32k {
+		rtc_32k_pins: rtc-32k-pins {
+			rockchip,pins =
+				/* rtc_32k_out */
+				<0 RK_PA0 1 &pcfg_pull_none>;
+		};
+	};
+
+	sai {
+		sai_pins: sai-pins {
+			rockchip,pins =
+				/* sai_lrck */
+				<2 RK_PB1 5 &pcfg_pull_none>,
+				/* sai_mclk */
+				<2 RK_PB0 5 &pcfg_pull_none>,
+				/* sai_sclk */
+				<2 RK_PA7 5 &pcfg_pull_none>,
+				/* sai_sdi */
+				<2 RK_PA6 5 &pcfg_pull_none>,
+				/* sai_sdo */
+				<2 RK_PB2 5 &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc0 {
+		sdmmc0_bus4_pins: sdmmc0-bus4-pins {
+			rockchip,pins =
+				/* sdmmc0_d0 */
+				<1 RK_PB0 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc0_d1 */
+				<1 RK_PA7 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc0_d2 */
+				<1 RK_PB4 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc0_d3 */
+				<1 RK_PB3 1 &pcfg_pull_up_drv_level_2>;
+		};
+		sdmmc0_clk_pins: sdmmc0-clk-pins {
+			rockchip,pins =
+				/* sdmmc0_clk */
+				<1 RK_PB1 1 &pcfg_pull_up_drv_level_2>;
+		};
+		sdmmc0_cmd_pins: sdmmc0-cmd-pins {
+			rockchip,pins =
+				/* sdmmc0_cmd */
+				<1 RK_PB2 1 &pcfg_pull_up_drv_level_2>;
+		};
+		sdmmc0_det_pins: sdmmc0-det-pins {
+			rockchip,pins =
+				/* sdmmc0_det */
+				<1 RK_PA6 1 &pcfg_pull_up>;
+		};
+	};
+
+	sdmmc1 {
+		sdmmc1_bus4_pins: sdmmc1-bus4-pins {
+			rockchip,pins =
+				/* sdmmc1_d0 */
+				<2 RK_PA1 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d1 */
+				<2 RK_PA0 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d2 */
+				<2 RK_PA5 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d3 */
+				<2 RK_PA4 1 &pcfg_pull_up_drv_level_2>;
+		};
+		sdmmc1_clk_pins: sdmmc1-clk-pins {
+			rockchip,pins =
+				/* sdmmc1_clk */
+				<2 RK_PA2 1 &pcfg_pull_up_drv_level_2>;
+		};
+		sdmmc1_cmd_pins: sdmmc1-cmd-pins {
+			rockchip,pins =
+				/* sdmmc1_cmd */
+				<2 RK_PA3 1 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+
+	sdmmc0_testclk {
+		sdmmc0_testclk_clk_pins: sdmmc0-testclk-clk-pins {
+			rockchip,pins =
+				/* sdmmc0_testclk_out */
+				<1 RK_PA0 3 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+
+	sdmmc0_testdata {
+		sdmmc0_testdata_out_pins: sdmmc0-testdata-out-pins {
+			rockchip,pins =
+				/* sdmmc0_testdata_out */
+				<1 RK_PA3 3 &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc1_testclk {
+		sdmmc1_testclk_clk_pins: sdmmc1-testclk-clk-pins {
+			rockchip,pins =
+				/* sdmmc1_testclk_out */
+				<2 RK_PA6 7 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+
+	sdmmc1_testdata {
+		sdmmc1_testdata_out_pins: sdmmc1-testdata-out-pins {
+			rockchip,pins =
+				/* sdmmc1_testdata_out */
+				<2 RK_PA7 7 &pcfg_pull_none>;
+		};
+	};
+
+	spi0 {
+		spi0m0_clk_pins: spi0m0-clk-pins {
+			rockchip,pins =
+				/* spi0_clk_m0 */
+				<2 RK_PB0 2 &pcfg_pull_none>,
+				/* spi0_miso_m0 */
+				<2 RK_PB3 2 &pcfg_pull_none>,
+				/* spi0_mosi_m0 */
+				<2 RK_PB1 2 &pcfg_pull_none>;
+		};
+		spi0m0_cs0_pins: spi0m0-cs0-pins {
+			rockchip,pins =
+				/* spi0_cs0n_m0 */
+				<2 RK_PB2 2 &pcfg_pull_none>;
+		};
+		spi0m0_cs1_pins: spi0m0-cs1-pins {
+			rockchip,pins =
+				/* spi0_cs1n_m0 */
+				<2 RK_PA7 2 &pcfg_pull_none>;
+		};
+		spi0m1_clk_pins: spi0m1-clk-pins {
+			rockchip,pins =
+				/* spi0_clk_m1 */
+				<2 RK_PA2 5 &pcfg_pull_none>,
+				/* spi0_miso_m1 */
+				<2 RK_PA4 5 &pcfg_pull_none>,
+				/* spi0_mosi_m1 */
+				<2 RK_PA1 5 &pcfg_pull_none>;
+		};
+		spi0m1_cs0_pins: spi0m1-cs0-pins {
+			rockchip,pins =
+				/* spi0_cs0n_m1 */
+				<2 RK_PA3 5 &pcfg_pull_none>;
+		};
+		spi0m1_cs1_pins: spi0m1-cs1-pins {
+			rockchip,pins =
+				/* spi0_cs1n_m1 */
+				<2 RK_PA0 5 &pcfg_pull_none>;
+		};
+	};
+
+	uart0 {
+		uart0m0_xfer_pins: uart0m0-xfer-pins {
+			rockchip,pins =
+				/* uart0_rx_m0 */
+				<0 RK_PA6 1 &pcfg_pull_up>,
+				/* uart0_tx_m0 */
+				<0 RK_PA5 1 &pcfg_pull_up>;
+		};
+		uart0m1_xfer_pins: uart0m1-xfer-pins {
+			rockchip,pins =
+				/* uart0_rx_m1 */
+				<0 RK_PB5 2 &pcfg_pull_up>,
+				/* uart0_tx_m1 */
+				<0 RK_PB4 2 &pcfg_pull_up>;
+		};
+		uart0m2_xfer_pins: uart0m2-xfer-pins {
+			rockchip,pins =
+				/* uart0_rx_m2 */
+				<1 RK_PB3 2 &pcfg_pull_up>,
+				/* uart0_tx_m2 */
+				<1 RK_PB4 2 &pcfg_pull_up>;
+		};
+	};
+
+	uart1 {
+		uart1m0_xfer_pins: uart1m0-xfer-pins {
+			rockchip,pins =
+				/* uart1_rx_m0 */
+				<0 RK_PB2 2 &pcfg_pull_up>,
+				/* uart1_tx_m0 */
+				<0 RK_PB3 2 &pcfg_pull_up>;
+		};
+		uart1m0_ctsn_pins: uart1m0-ctsn-pins {
+			rockchip,pins =
+				/* uart1m0_ctsn */
+				<0 RK_PB5 5 &pcfg_pull_none>;
+		};
+		uart1m0_rtsn_pins: uart1m0-rtsn-pins {
+			rockchip,pins =
+				/* uart1m0_rtsn */
+				<0 RK_PB4 5 &pcfg_pull_none>;
+		};
+		uart1m1_xfer_pins: uart1m1-xfer-pins {
+			rockchip,pins =
+				/* uart1_rx_m1 */
+				<1 RK_PA7 2 &pcfg_pull_up>,
+				/* uart1_tx_m1 */
+				<1 RK_PB0 2 &pcfg_pull_up>;
+		};
+		uart1m1_ctsn_pins: uart1m1-ctsn-pins {
+			rockchip,pins =
+				/* uart1m1_ctsn */
+				<1 RK_PB2 2 &pcfg_pull_none>;
+		};
+		uart1m1_rtsn_pins: uart1m1-rtsn-pins {
+			rockchip,pins =
+				/* uart1m1_rtsn */
+				<1 RK_PB1 2 &pcfg_pull_none>;
+		};
+		uart1m2_xfer_pins: uart1m2-xfer-pins {
+			rockchip,pins =
+				/* uart1_rx_m2 */
+				<2 RK_PA7 1 &pcfg_pull_up>,
+				/* uart1_tx_m2 */
+				<2 RK_PA6 1 &pcfg_pull_up>;
+		};
+		uart1m2_ctsn_pins: uart1m2-ctsn-pins {
+			rockchip,pins =
+				/* uart1m2_ctsn */
+				<2 RK_PA5 2 &pcfg_pull_none>;
+		};
+		uart1m2_rtsn_pins: uart1m2-rtsn-pins {
+			rockchip,pins =
+				/* uart1m2_rtsn */
+				<2 RK_PA4 2 &pcfg_pull_none>;
+		};
+		uart1m3_xfer_pins: uart1m3-xfer-pins {
+			rockchip,pins =
+				/* uart1_rx_m3 */
+				<2 RK_PA3 2 &pcfg_pull_up>,
+				/* uart1_tx_m3 */
+				<2 RK_PA2 2 &pcfg_pull_up>;
+		};
+		uart1m3_ctsn_pins: uart1m3-ctsn-pins {
+			rockchip,pins =
+				/* uart1m3_ctsn */
+				<2 RK_PA1 2 &pcfg_pull_none>;
+		};
+		uart1m3_rtsn_pins: uart1m3-rtsn-pins {
+			rockchip,pins =
+				/* uart1m3_rtsn */
+				<2 RK_PA0 2 &pcfg_pull_none>;
+		};
+	};
+
+	uart2 {
+		uart2m0_xfer_pins: uart2m0-xfer-pins {
+			rockchip,pins =
+				/* uart2_rx_m0 */
+				<0 RK_PB1 2 &pcfg_pull_up>,
+				/* uart2_tx_m0 */
+				<0 RK_PB0 2 &pcfg_pull_up>;
+		};
+		uart2m0_ctsn_pins: uart2m0-ctsn-pins {
+			rockchip,pins =
+				/* uart2m0_ctsn */
+				<0 RK_PB3 5 &pcfg_pull_none>;
+		};
+		uart2m0_rtsn_pins: uart2m0-rtsn-pins {
+			rockchip,pins =
+				/* uart2m0_rtsn */
+				<0 RK_PB2 5 &pcfg_pull_none>;
+		};
+		uart2m1_xfer_pins: uart2m1-xfer-pins {
+			rockchip,pins =
+				/* uart2_rx_m1 */
+				<2 RK_PB1 1 &pcfg_pull_up>,
+				/* uart2_tx_m1 */
+				<2 RK_PB0 1 &pcfg_pull_up>;
+		};
+		uart2m1_ctsn_pins: uart2m1-ctsn-pins {
+			rockchip,pins =
+				/* uart2m1_ctsn */
+				<2 RK_PB3 1 &pcfg_pull_none>;
+		};
+		uart2m1_rtsn_pins: uart2m1-rtsn-pins {
+			rockchip,pins =
+				/* uart2m1_rtsn */
+				<2 RK_PB2 1 &pcfg_pull_none>;
+		};
+		uart2m2_xfer_pins: uart2m2-xfer-pins {
+			rockchip,pins =
+				/* uart2_rx_m2 */
+				<1 RK_PB6 3 &pcfg_pull_up>,
+				/* uart2_tx_m2 */
+				<1 RK_PB5 3 &pcfg_pull_up>;
+		};
+		uart2m2_ctsn_pins: uart2m2-ctsn-pins {
+			rockchip,pins =
+				/* uart2m2_ctsn */
+				<1 RK_PC0 3 &pcfg_pull_none>;
+		};
+		uart2m2_rtsn_pins: uart2m2-rtsn-pins {
+			rockchip,pins =
+				/* uart2m2_rtsn */
+				<1 RK_PB7 3 &pcfg_pull_none>;
+		};
+	};
+};
+
+&pinctrl {
+	sdmmc0 {
+		sdmmc0_clk_idle_pins: sdmmc0-clk-idle-pins {
+			rockchip,pins =
+				/* sdmmc0_clk */
+				<1 RK_PB1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+		sdmmc0_cmd_idle_pins: sdmmc0-cmd-idle-pins {
+			rockchip,pins =
+				/* sdmmc0_cmd */
+				<1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+		sdmmc0_bus1_pins: sdmmc0-bus1-pins {
+			rockchip,pins =
+				/* sdmmc0_d0 */
+				<1 RK_PB0 1 &pcfg_pull_up_drv_level_2>;
+		};
+		sdmmc0_bus1_idle_pins: sdmmc0-bus1-idle-pins {
+			rockchip,pins =
+				/* sdmmc0_d0 */
+				<1 RK_PB0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+		sdmmc0_bus4_idle_pins: sdmmc0-bus4-idle-pins {
+			rockchip,pins =
+				/* sdmmc0_d0 */
+				<1 RK_PB0 RK_FUNC_GPIO &pcfg_pull_down>,
+				/* sdmmc0_d1 */
+				<1 RK_PA7 RK_FUNC_GPIO &pcfg_pull_down>,
+				/* sdmmc0_d2 */
+				<1 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>,
+				/* sdmmc0_d3 */
+				<1 RK_PB3 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	sdmmc1 {
+		sdmmc1_bus1_pins: sdmmc1-bus1-pins {
+			rockchip,pins =
+				/* sdmmc1_d0 */
+				<2 RK_PA1 1 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/rockchip/rv1103b.dtsi b/arch/arm/boot/dts/rockchip/rv1103b.dtsi
new file mode 100644
index 000000000000..380637b63ef5
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b.dtsi
@@ -0,0 +1,266 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2024 Rockchip Electronics Co., Ltd.
+ */
+
+#include <dt-bindings/clock/rockchip,rv1103b-cru.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+/ {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	compatible = "rockchip,rv1103b";
+
+	interrupt-parent = <&gic>;
+
+	arm-pmu {
+		compatible = "arm,cortex-a7-pmu";
+		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>;
+	};
+
+	xin32k: oscillator-32k {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		clock-output-names = "xin32k";
+		#clock-cells = <0>;
+	};
+
+	xin24m: oscillator-24m {
+		compatible = "fixed-clock";
+		clock-frequency = <24000000>;
+		clock-output-names = "xin24m";
+		#clock-cells = <0>;
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0x0>;
+			clocks = <&cru ARMCLK>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv7-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>;
+		clock-frequency = <24000000>;
+	};
+
+	cru: clock-controller@20000000 {
+		compatible = "rockchip,rv1103b-cru";
+		reg = <0x20000000 0x81000>;
+		#clock-cells = <1>;
+		#reset-cells = <1>;
+
+		assigned-clocks = <&cru PLL_GPLL>, <&cru CLK_GPLL_DIV12>;
+		assigned-clock-rates = <1188000000>, <100000000>;
+	};
+
+	/*
+	 * Merge all GRF, each independent GRF offset is shown as bellow:
+	 * VEPU_GRF:		0x20100000
+	 * NPU_GRF:		0x20110000
+	 * VI_GRF:		0x20120000
+	 * CPU_GRF:		0x20130000
+	 * DDR_GRF:		0x20140000
+	 * SYS_GRF:		0x20150000
+	 * PMU_GRF:		0x20160000
+	 */
+	grf: syscon@20100000 {
+		compatible = "rockchip,rv1103b-grf", "syscon", "simple-mfd";
+		reg = <0x20100000 0x61000>;
+
+		reboot_mode: reboot-mode {
+			compatible = "syscon-reboot-mode";
+			offset = <0x60200>;
+		};
+	};
+
+	ioc: syscon@20170000 {
+		compatible = "rockchip,rv1103b-ioc", "syscon";
+		reg = <0x20170000 0x60000>;
+	};
+
+	gic: interrupt-controller@20411000 {
+		compatible = "arm,gic-400";
+		interrupt-controller;
+		#interrupt-cells = <3>;
+		#address-cells = <0>;
+
+		reg = <0x20411000 0x1000>,
+		      <0x20412000 0x2000>,
+		      <0x20414000 0x2000>,
+		      <0x20416000 0x2000>;
+		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>;
+	};
+
+	uart0: serial@20540000 {
+		compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
+		reg = <0x20540000 0x100>;
+		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		clock-frequency = <24000000>;
+		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
+		clock-names = "baudclk", "apb_pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart0m0_xfer_pins>;
+		status = "disabled";
+	};
+
+	sdmmc1: mmc@20650000 {
+		compatible = "rockchip,rv1103b-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x20650000 0x4000>;
+		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_SDMMC1>, <&cru CCLK_SDMMC1>;
+		clock-names = "biu", "ciu";
+		fifo-depth = <0x100>;
+		max-frequency = <150000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc1_clk_pins &sdmmc1_cmd_pins &sdmmc1_bus4_pins>;
+		status = "disabled";
+	};
+
+	uart1: serial@20870000 {
+		compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
+		reg = <0x20870000 0x100>;
+		interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		clock-frequency = <24000000>;
+		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
+		clock-names = "baudclk", "apb_pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart1m0_xfer_pins>;
+		status = "disabled";
+	};
+
+	uart2: serial@20880000 {
+		compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
+		reg = <0x20880000 0x100>;
+		interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		clock-frequency = <24000000>;
+		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
+		clock-names = "baudclk", "apb_pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart2m0_xfer_pins>;
+		status = "disabled";
+	};
+
+	wdt: watchdog@208d0000 {
+		compatible = "snps,dw-wdt";
+		reg = <0x208d0000 0x100>;
+		clocks = <&cru TCLK_WDT_NS>, <&cru PCLK_WDT_NS>;
+		clock-names = "tclk", "pclk";
+		interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+		status = "disabled";
+	};
+
+	sdmmc0: mmc@20d20000 {
+		compatible = "rockchip,rv1103b-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x20d20000 0x4000>;
+		interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_SDMMC0>, <&cru CCLK_SDMMC0>;
+		clock-names = "biu", "ciu";
+		fifo-depth = <0x100>;
+		max-frequency = <150000000>;
+		pinctrl-names = "normal", "idle";
+		pinctrl-0 = <&sdmmc0_det_pins
+			     &sdmmc0_clk_pins
+			     &sdmmc0_cmd_pins
+			     &sdmmc0_bus4_pins>;
+		pinctrl-1 = <&sdmmc0_det_pins
+			     &sdmmc0_clk_idle_pins
+			     &sdmmc0_cmd_idle_pins
+			     &sdmmc0_bus4_idle_pins>;
+		status = "disabled";
+	};
+
+	emmc: mmc@20d30000 {
+		compatible = "rockchip,rv1103b-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x20d30000 0x4000>;
+		interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_EMMC>, <&cru CCLK_EMMC>;
+		clock-names = "biu", "ciu";
+		fifo-depth = <0x100>;
+		max-frequency = <150000000>;
+		status = "disabled";
+	};
+
+	fspi0: spi@20d40000 {
+		compatible = "rockchip,sfc";
+		reg = <0x20d40000 0x4000>;
+		interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_SFC_2X>, <&cru HCLK_SFC>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	system_sram: sram@210f6000 {
+		compatible = "mmio-sram";
+		reg = <0x210f6000 0x8000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x210f6000 0x8000>;
+	};
+
+	pinctrl: pinctrl {
+		compatible = "rockchip,rv1103b-pinctrl";
+		rockchip,grf = <&ioc>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		gpio0: gpio@20520000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x20520000 0x200>;
+			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_PMU_GPIO0>, <&cru DBCLK_PMU_GPIO0>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&pinctrl 0 0 32>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio1: gpio@20d80000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x20d80000 0x200>;
+			interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&pinctrl 0 32 32>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio2: gpio@20840000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x20840000 0x200>;
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&pinctrl 0 64 32>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+};
+
+#include "rv1103b-pinctrl.dtsi"
-- 
2.34.1


