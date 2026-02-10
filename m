Return-Path: <devicetree+bounces-264450-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAw8EZhFi2mfRwAAu9opvQ
	(envelope-from <devicetree+bounces-264450-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:50:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D00F111C132
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:49:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 487D6303B5CC
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00051327C1C;
	Tue, 10 Feb 2026 14:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iCiQJZbQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F56E30AD10
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 14:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770734959; cv=none; b=N1ZR9fQmipoquVK68FHrYWeNEzvvdVX5yj7JSNrLdcWB0vWVgrSEe7c4pqrVrYDHmx1+60rK7uuvqBA+SBo2q9SXbSr+wSigPrQlBWAyP5vCPhJJhFp8HZROJn1vFLIPLs3ReiqVfSueJtXe/hSMl0LA21GcenS5GxuiEhAxikc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770734959; c=relaxed/simple;
	bh=wq1AygdCYz1fOACDcGTtPYIv7VF5Fcr/bxI5U7SxdPo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ovQCAsZT25bC1IV1Eq9ACejAuvQHQzc7e2rVuD5NuPRpxsMj/bUzmHvu2n9Km1QcW6jbG+rRXjQAXWqIxSC98R1pQmoup3QwLNJNFWo6mJ/0ZTMDgvTopMf/73DSlHUrri7ag1cUk4FQRc90qp5QFoUaEkK/bFFLLOIFEGMIj/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iCiQJZbQ; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-7950881727cso6175807b3.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 06:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770734955; x=1771339755; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=St+yrbVIwdbAMb1dxMGO/rSH1zT+lmixw0XzUyN0lQU=;
        b=iCiQJZbQWsQ2xlYGtCe9AqvwrQnk3m8LIZEmLdmEtWfB55mQ53L74WspnD0Fz4R3My
         S/k/P2bQD//qPHKKQ82B5C7dGS9/PJ6H4+gsRnrog7ztmibDf/92PGLiJ8YrsOzr8L6l
         68q6kHkZxtiPFVBL7gnPfv6c6iv0tmweTBPcDyF4uVZH/6A9ORaektDNNQ80cbdO+LjF
         HwleHs1w1HJf5oci8mYPfvQFzSXLDD0PzVnPqSLfz/VrXeeRfEavxiaCBl2YBYDH5vLj
         g3phd8P7AACWvbCskP1lsxUhKhFHz9fSeGJP53U04OGnDYvh8Smaiedqwn9ezn981Bsi
         ozJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770734955; x=1771339755;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=St+yrbVIwdbAMb1dxMGO/rSH1zT+lmixw0XzUyN0lQU=;
        b=W5R8S09nbZxTvY52EPpkeBRx620IwZy26bnH3Ir485Qz+VIOuWH8/3e+OA6Mre4MMs
         y9CsZvx169mjx60twrZH6WOVQgQIb4RRQ+a9hpUG6uV6W3EOzs9CqToqjeHQH9hQt1CJ
         s2ruAw6CNHfR02a6Q1PeTdjRKDhpChedEJponbwZYsxsZJ+psL2g7dSmUra+2cbwz5D0
         Vv3HpPY4T8iOprPwf3O9PKq1i1lW1g92IvOQCMYvlWqctxt5wAzbL2IsDE+PNfC8Imhx
         UmIfZSdb2zKGW9Ot3JAsJ/3EhfwEFb23xbDErZeYul4REmyK6nqI+vJdn69QfQtbTC8q
         brCg==
X-Forwarded-Encrypted: i=1; AJvYcCVKpNXBjCCMVDJYs5ENuA0C/KRuzSDyHOr9LgeAGuPOKgkPCYzewCNoY7F6TDvQuSmLFWob1rA48p7C@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv72VNMVmYxqb2MnQHrxmN5i4JunFdvPX6OsRNu3GjUDGUyAq0
	yx+bXuucu4z7oclgNPOfQ3UGiiAa3lbXtYftRQfTp2m/Botd7oKQCCST
X-Gm-Gg: AZuq6aJXO5lkl9TAoYNDQVZkZB71cRLWoOccjWZFaPISTtj1i0QdH+ZPCF2qWraz2TS
	YfwdDUXBsAyj+ONWPZlzYVmLc4DPo/QEECynJMvSkKQZhjvSCkwnkMETHw6xiazd9Y+68jSfjpP
	e4LTwCoZ+9fjQEX9GryPjppw4WNTfEbUusVYyc/56zJWjXZZYBw2zLGQYw1WHakwrFHr71qDsWR
	O6asDWld1+h+LbvQnE2jDGgeK/Rp9n1rQdjudeJZf0RoHqm2i0VKHIk1IFb/fANcNgdu6BoffGE
	AlKTr6EADSp2xg99pPypVkA9Z38ZkmKPbPdlEy+3J20w3sigxeA+TR0KAVjWVuHWlK5kkBEbXRu
	8HOOJHA6qbQOH0VR42u3i7TDWz7ziR77e6B6RdmJ5pS1fcPiMe/03SSdnt4LTpkYYcBNeTyJWY9
	ulTsz8L90UVC0wvEow1Z6BN7K8SbAXk+EX7KPpqySqs6Ab/es=
X-Received: by 2002:a05:690c:9b01:b0:794:71b7:2adb with SMTP id 00721157ae682-7952ab24f48mr283530127b3.38.1770734955180;
        Tue, 10 Feb 2026 06:49:15 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:7e95:428c:8802:872e])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64acd247ee5sm12086263d50.6.2026.02.10.06.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 06:49:13 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v3 2/4] ARM: dts: rockchip: Add support for RV1103B
Date: Tue, 10 Feb 2026 11:48:43 -0300
Message-Id: <20260210144845.317048-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260210144845.317048-1-festevam@gmail.com>
References: <20260210144845.317048-1-festevam@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264450-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D00F111C132
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Add the initial RV1103B devicetree.

Based on the 5.10 Rockchip vendor kernel.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
The <dt-bindings/clock/rockchip,rv1103b-cru.h> header comes from another
series:

https://lore.kernel.org/linux-devicetree/20260210022620.172570-1-festevam@gmail.com/

Maybe Heiko could apply the clock series as well?

Changes since v1:
- Pass /omit-if-no-ref/
- Removed redundant _pins suffix.
- Dd not merge all GRF region.
- Removed unnecessary clock rate from the UART nodes.
- Removed "normal" and "idle" pinctrl entries and used "default" instead.
- Added missing default pinctrl entries for emmc, sd and fspi.
- Removed gpio-ranges.
 
 .../boot/dts/rockchip/rv1103b-pinctrl.dtsi    | 962 ++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1103b.dtsi       | 250 +++++
 2 files changed, 1212 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b.dtsi

diff --git a/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
new file mode 100644
index 000000000000..d859df6b6a97
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
@@ -0,0 +1,962 @@
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
+		/omit-if-no-ref/
+		cam_clk0: cam-clk0 {
+			rockchip,pins =
+				/* cam_clk0_out */
+				<1 RK_PB5 1 &pcfg_pull_none>;
+		};
+	};
+
+	cam_clk1 {
+		/omit-if-no-ref/
+		cam_clk1: cam-clk1 {
+			rockchip,pins =
+				/* cam_clk1_out */
+				<1 RK_PB6 1 &pcfg_pull_none>;
+		};
+	};
+
+	cam_spi {
+		/omit-if-no-ref/
+		cam_spi_bus4: cam-spi-bus4 {
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
+
+		/omit-if-no-ref/
+		cam_spi_clk: cam-spi-clk {
+			rockchip,pins =
+				/* cam_spi_clk */
+				<0 RK_PB4 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		cam_spi_cs0n: cam-spi-cs0n {
+			rockchip,pins =
+				/* cam_spi_cs0n */
+				<0 RK_PB3 4 &pcfg_pull_none>;
+		};
+	};
+
+	clk {
+		/omit-if-no-ref/
+		clk_32k: clk-32k {
+			rockchip,pins =
+				/* clk_32k */
+				<0 RK_PA0 2 &pcfg_pull_none>;
+		};
+	};
+
+	clk_24m {
+		/omit-if-no-ref/
+		clk_24m_out: clk-24m-out {
+			rockchip,pins =
+				/* clk_24m_out */
+				<0 RK_PA0 3 &pcfg_pull_none>;
+		};
+	};
+
+	cpu {
+		/omit-if-no-ref/
+		cpu: cpu {
+			rockchip,pins =
+				/* cpu_avs */
+				<0 RK_PA1 2 &pcfg_pull_none>;
+		};
+	};
+
+	emmc {
+		/omit-if-no-ref/
+		emmc_bus4: emmc-bus4 {
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
+
+		/omit-if-no-ref/
+		emmc_clk: emmc-clk {
+			rockchip,pins =
+				/* emmc_clk */
+				<1 RK_PA4 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		emmc_cmd: emmc-cmd {
+			rockchip,pins =
+				/* emmc_cmd */
+				<1 RK_PA5 1 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+
+	emmc_testclk {
+		/omit-if-no-ref/
+		emmc_testclk_clk: emmc-testclk-clk {
+			rockchip,pins =
+				/* emmc_testclk_out */
+				<1 RK_PA7 3 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+
+	emmc_testdata {
+		/omit-if-no-ref/
+		emmc_testdata_out: emmc-testdata-out {
+			rockchip,pins =
+				/* emmc_testdata_out */
+				<1 RK_PB0 3 &pcfg_pull_none>;
+		};
+	};
+
+	eth_led {
+		/omit-if-no-ref/
+		eth_led_dpx: eth-led-dpx {
+			rockchip,pins =
+				/* eth_led_dpx */
+				<2 RK_PA4 6 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		eth_led_link: eth-led-link {
+			rockchip,pins =
+				/* eth_led_link */
+				<2 RK_PA6 6 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		eth_led_spd: eth-led-spd {
+			rockchip,pins =
+				/* eth_led_spd */
+				<2 RK_PA7 6 &pcfg_pull_none>;
+		};
+	};
+
+	flash_trig {
+		/omit-if-no-ref/
+		flash_trig: flash-trig {
+			rockchip,pins =
+				/* flash_trig_out */
+				<2 RK_PB0 6 &pcfg_pull_none>;
+		};
+	};
+
+	fspi {
+		/omit-if-no-ref/
+		fspi_bus4: fspi-bus4 {
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
+
+		/omit-if-no-ref/
+		fspi_cs0: fspi-cs0 {
+			rockchip,pins =
+				/* fspi_cs0n */
+				<1 RK_PA5 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		fspi_clk: fspi-clk {
+			rockchip,pins =
+				/* fspi_clk */
+				<1 RK_PA4 2 &pcfg_pull_none>;
+		};
+	};
+
+	fspi_testclk {
+		/omit-if-no-ref/
+		fspi_testclk_out: fspi-testclk-out {
+			rockchip,pins =
+				/* fspi_testclk_out */
+				<1 RK_PA7 5 &pcfg_pull_none>;
+		};
+	};
+
+	fspi_testdata {
+		/omit-if-no-ref/
+		fspi_testdata_out: fspi-testdata-out {
+			rockchip,pins =
+				/* fspi_testdata_out */
+				<1 RK_PB0 5 &pcfg_pull_none>;
+		};
+	};
+
+	i2c0 {
+		/omit-if-no-ref/
+		i2c0m0_xfer: i2c0m0-xfer {
+			rockchip,pins =
+				/* i2c0_scl_m0 */
+				<0 RK_PA5 3 &pcfg_pull_none_smt>,
+				/* i2c0_sda_m0 */
+				<0 RK_PA6 3 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c0m1_xfer: i2c0m1-xfer {
+			rockchip,pins =
+				/* i2c0_scl_m1 */
+				<1 RK_PB4 5 &pcfg_pull_none_smt>,
+				/* i2c0_sda_m1 */
+				<1 RK_PB3 5 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c0m2_xfer: i2c0m2-xfer {
+			rockchip,pins =
+				/* i2c0_scl_m2 */
+				<1 RK_PB5 2 &pcfg_pull_none_smt>,
+				/* i2c0_sda_m2 */
+				<1 RK_PB6 2 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c1 {
+		/omit-if-no-ref/
+		i2c1m0_xfer: i2c1m0-xfer {
+			rockchip,pins =
+				/* i2c1_scl_m0 */
+				<0 RK_PB0 1 &pcfg_pull_none_smt>,
+				/* i2c1_sda_m0 */
+				<0 RK_PB1 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c1m1_xfer: i2c1m1-xfer {
+			rockchip,pins =
+				/* i2c1_scl_m1 */
+				<2 RK_PA4 4 &pcfg_pull_none_smt>,
+				/* i2c1_sda_m1 */
+				<2 RK_PA5 4 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c2 {
+		/omit-if-no-ref/
+		i2c2m0_xfer: i2c2m0-xfer {
+			rockchip,pins =
+				/* i2c2_scl_m0 */
+				<0 RK_PB2 1 &pcfg_pull_none_smt>,
+				/* i2c2_sda_m0 */
+				<0 RK_PB3 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c2m1_xfer: i2c2m1-xfer {
+			rockchip,pins =
+				/* i2c2_scl_m1 */
+				<2 RK_PA6 4 &pcfg_pull_none_smt>,
+				/* i2c2_sda_m1 */
+				<2 RK_PA7 4 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c3 {
+		/omit-if-no-ref/
+		i2c3m0_xfer: i2c3m0-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m0 */
+				<0 RK_PB4 1 &pcfg_pull_none_smt>,
+				/* i2c3_sda_m0 */
+				<0 RK_PB5 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c3m1_xfer: i2c3m1-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m1 */
+				<2 RK_PB3 4 &pcfg_pull_none_smt>,
+				/* i2c3_sda_m1 */
+				<2 RK_PB2 4 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c4 {
+		/omit-if-no-ref/
+		i2c4m0_xfer: i2c4m0-xfer {
+			rockchip,pins =
+				/* i2c4_scl_m0 */
+				<2 RK_PB0 4 &pcfg_pull_none_smt>,
+				/* i2c4_sda_m0 */
+				<2 RK_PB1 4 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c4m1_xfer: i2c4m1-xfer {
+			rockchip,pins =
+				/* i2c4_scl_m1 */
+				<1 RK_PB7 2 &pcfg_pull_none_smt>,
+				/* i2c4_sda_m1 */
+				<1 RK_PC0 2 &pcfg_pull_none_smt>;
+		};
+	};
+
+	jtag {
+		/omit-if-no-ref/
+		jtagm0: jtagm0 {
+			rockchip,pins =
+				/* jtag_tck_m0 */
+				<0 RK_PA5 5 &pcfg_pull_none>,
+				/* jtag_tms_m0 */
+				<0 RK_PA6 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		jtagm1: jtagm1 {
+			rockchip,pins =
+				/* jtag_tck_m1 */
+				<0 RK_PB4 3 &pcfg_pull_none>,
+				/* jtag_tms_m1 */
+				<0 RK_PB5 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		jtagm2: jtagm2 {
+			rockchip,pins =
+				/* jtag_tck_m2 */
+				<1 RK_PB4 3 &pcfg_pull_none>,
+				/* jtag_tms_m2 */
+				<1 RK_PB3 3 &pcfg_pull_none>;
+		};
+	};
+
+	pmu_debug_test {
+		/omit-if-no-ref/
+		pmu_debug_test: pmu-debug-test {
+			rockchip,pins =
+				/* pmu_debug_test_out */
+				<0 RK_PB1 5 &pcfg_pull_none>;
+		};
+	};
+
+	prelight_trig {
+		/omit-if-no-ref/
+		prelight_trig: prelight-trig {
+			rockchip,pins =
+				/* prelight_trig_out */
+				<2 RK_PB1 6 &pcfg_pull_none>;
+		};
+	};
+
+	psram_spi {
+		/omit-if-no-ref/
+		psram_spi_bus4: psram-spi-bus4 {
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
+
+		/omit-if-no-ref/
+		psram_spi_clk: psram-spi-clk {
+			rockchip,pins =
+				/* psram_spi_clk */
+				<0 RK_PA0 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		psram_spi_cs0n: psram-spi-cs0n {
+			rockchip,pins =
+				/* psram_spi_cs0n */
+				<0 RK_PA4 4 &pcfg_pull_none>;
+		};
+	};
+
+	pwm0 {
+		/omit-if-no-ref/
+		pwm0m0_ch0: pwm0m0-ch0 {
+			rockchip,pins =
+				/* pwm0m0_ch0 */
+				<0 RK_PA1 1 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m0_ch1: pwm0m0-ch1 {
+			rockchip,pins =
+				/* pwm0m0_ch1 */
+				<0 RK_PA5 2 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m0_ch2: pwm0m0-ch2 {
+			rockchip,pins =
+				/* pwm0m0_ch2 */
+				<0 RK_PA6 2 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m0_ch3: pwm0m0-ch3 {
+			rockchip,pins =
+				/* pwm0m0_ch3 */
+				<0 RK_PA2 1 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm0m1_ch0: pwm0m1-ch0 {
+			rockchip,pins =
+				/* pwm0m1_ch0 */
+				<2 RK_PA0 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m1_ch1: pwm0m1-ch1 {
+			rockchip,pins =
+				/* pwm0m1_ch1 */
+				<2 RK_PA1 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m1_ch2: pwm0m1-ch2 {
+			rockchip,pins =
+				/* pwm0m1_ch2 */
+				<2 RK_PA2 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m1_ch3: pwm0m1-ch3 {
+			rockchip,pins =
+				/* pwm0m1_ch3 */
+				<2 RK_PB0 3 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm0m2_ch1: pwm0m2-ch1 {
+			rockchip,pins =
+				/* pwm0m2_ch1 */
+				<1 RK_PB7 1 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m2_ch2: pwm0m2-ch2 {
+			rockchip,pins =
+				/* pwm0m2_ch2 */
+				<1 RK_PC0 1 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwm1 {
+		/omit-if-no-ref/
+		pwm1m0_ch0: pwm1m0-ch0 {
+			rockchip,pins =
+				/* pwm1m0_ch0 */
+				<0 RK_PB0 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm1m0_ch1: pwm1m0-ch1 {
+			rockchip,pins =
+				/* pwm1m0_ch1 */
+				<0 RK_PB1 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm1m0_ch2: pwm1m0-ch2 {
+			rockchip,pins =
+				/* pwm1m0_ch2 */
+				<0 RK_PB2 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm1m0_ch3: pwm1m0-ch3 {
+			rockchip,pins =
+				/* pwm1m0_ch3 */
+				<0 RK_PB3 3 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m1_ch0: pwm1m1-ch0 {
+			rockchip,pins =
+				/* pwm1m1_ch0 */
+				<2 RK_PA3 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm1m1_ch1: pwm1m1-ch1 {
+			rockchip,pins =
+				/* pwm1m1_ch1 */
+				<2 RK_PA4 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm1m1_ch2: pwm1m1-ch2 {
+			rockchip,pins =
+				/* pwm1m1_ch2 */
+				<2 RK_PA5 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm1m1_ch3: pwm1m1-ch3 {
+			rockchip,pins =
+				/* pwm1m1_ch3 */
+				<2 RK_PB1 3 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwm2 {
+		/omit-if-no-ref/
+		pwm2m0_ch0: pwm2m0-ch0 {
+			rockchip,pins =
+				/* pwm2m0_ch0 */
+				<1 RK_PB0 4 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm2m0_ch1: pwm2m0-ch1 {
+			rockchip,pins =
+				/* pwm2m0_ch1 */
+				<1 RK_PA7 4 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm2m0_ch2: pwm2m0-ch2 {
+			rockchip,pins =
+				/* pwm2m0_ch2 */
+				<1 RK_PB4 4 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm2m0_ch3: pwm2m0-ch3 {
+			rockchip,pins =
+				/* pwm2m0_ch3 */
+				<1 RK_PB3 4 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m1_ch0: pwm2m1-ch0 {
+			rockchip,pins =
+				/* pwm2m1_ch0 */
+				<2 RK_PA6 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm2m1_ch1: pwm2m1-ch1 {
+			rockchip,pins =
+				/* pwm2m1_ch1 */
+				<2 RK_PA7 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm2m1_ch2: pwm2m1-ch2 {
+			rockchip,pins =
+				/* pwm2m1_ch2 */
+				<2 RK_PB2 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm2m1_ch3: pwm2m1-ch3 {
+			rockchip,pins =
+				/* pwm2m1_ch3 */
+				<2 RK_PB3 3 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwr {
+		/omit-if-no-ref/
+		pwr: pwr {
+			rockchip,pins =
+				/* pwr_ctrl0 */
+				<0 RK_PA3 1 &pcfg_pull_none>,
+				/* pwr_ctrl1 */
+				<0 RK_PA4 1 &pcfg_pull_none>;
+		};
+	};
+
+	rtc_32k {
+		/omit-if-no-ref/
+		rtc_32k: rtc-32k {
+			rockchip,pins =
+				/* rtc_32k_out */
+				<0 RK_PA0 1 &pcfg_pull_none>;
+		};
+	};
+
+	sai {
+		/omit-if-no-ref/
+		sai: sai {
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
+		/omit-if-no-ref/
+		sdmmc0_bus4: sdmmc0-bus4 {
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
+
+		/omit-if-no-ref/
+		sdmmc0_clk: sdmmc0-clk {
+			rockchip,pins =
+				/* sdmmc0_clk */
+				<1 RK_PB1 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc0_cmd: sdmmc0-cmd {
+			rockchip,pins =
+				/* sdmmc0_cmd */
+				<1 RK_PB2 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc0_det: sdmmc0-det {
+			rockchip,pins =
+				/* sdmmc0_det */
+				<1 RK_PA6 1 &pcfg_pull_up>;
+		};
+	};
+
+	sdmmc1 {
+		/omit-if-no-ref/
+		sdmmc1_bus4: sdmmc1-bus4 {
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
+
+		/omit-if-no-ref/
+		sdmmc1_clk: sdmmc1-clk {
+			rockchip,pins =
+				/* sdmmc1_clk */
+				<2 RK_PA2 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc1_cmd: sdmmc1-cmd {
+			rockchip,pins =
+				/* sdmmc1_cmd */
+				<2 RK_PA3 1 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+
+	sdmmc0_testclk {
+		/omit-if-no-ref/
+		sdmmc0_testclk_clk: sdmmc0-testclk-clk {
+			rockchip,pins =
+				/* sdmmc0_testclk_out */
+				<1 RK_PA0 3 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+
+	sdmmc0_testdata {
+		/omit-if-no-ref/
+		sdmmc0_testdata_out: sdmmc0-testdata-out {
+			rockchip,pins =
+				/* sdmmc0_testdata_out */
+				<1 RK_PA3 3 &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc1_testclk {
+		/omit-if-no-ref/
+		sdmmc1_testclk_clk: sdmmc1-testclk-clk {
+			rockchip,pins =
+				/* sdmmc1_testclk_out */
+				<2 RK_PA6 7 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+
+	sdmmc1_testdata {
+		/omit-if-no-ref/
+		sdmmc1_testdata_out: sdmmc1-testdata-out {
+			rockchip,pins =
+				/* sdmmc1_testdata_out */
+				<2 RK_PA7 7 &pcfg_pull_none>;
+		};
+	};
+
+	spi0 {
+		/omit-if-no-ref/
+		spi0m0_clk: spi0m0-clk {
+			rockchip,pins =
+				/* spi0_clk_m0 */
+				<2 RK_PB0 2 &pcfg_pull_none>,
+				/* spi0_miso_m0 */
+				<2 RK_PB3 2 &pcfg_pull_none>,
+				/* spi0_mosi_m0 */
+				<2 RK_PB1 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m0_cs0: spi0m0-cs0 {
+			rockchip,pins =
+				/* spi0_cs0n_m0 */
+				<2 RK_PB2 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m0_cs1: spi0m0-cs1 {
+			rockchip,pins =
+				/* spi0_cs1n_m0 */
+				<2 RK_PA7 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m1_clk: spi0m1-clk {
+			rockchip,pins =
+				/* spi0_clk_m1 */
+				<2 RK_PA2 5 &pcfg_pull_none>,
+				/* spi0_miso_m1 */
+				<2 RK_PA4 5 &pcfg_pull_none>,
+				/* spi0_mosi_m1 */
+				<2 RK_PA1 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m1_cs0: spi0m1-cs0 {
+			rockchip,pins =
+				/* spi0_cs0n_m1 */
+				<2 RK_PA3 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m1_cs1: spi0m1-cs1 {
+			rockchip,pins =
+				/* spi0_cs1n_m1 */
+				<2 RK_PA0 5 &pcfg_pull_none>;
+		};
+	};
+
+	uart0 {
+		/omit-if-no-ref/
+		uart0m0_xfer: uart0m0-xfer {
+			rockchip,pins =
+				/* uart0_rx_m0 */
+				<0 RK_PA6 1 &pcfg_pull_up>,
+				/* uart0_tx_m0 */
+				<0 RK_PA5 1 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart0m1_xfer: uart0m1-xfer {
+			rockchip,pins =
+				/* uart0_rx_m1 */
+				<0 RK_PB5 2 &pcfg_pull_up>,
+				/* uart0_tx_m1 */
+				<0 RK_PB4 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart0m2_xfer: uart0m2-xfer {
+			rockchip,pins =
+				/* uart0_rx_m2 */
+				<1 RK_PB3 2 &pcfg_pull_up>,
+				/* uart0_tx_m2 */
+				<1 RK_PB4 2 &pcfg_pull_up>;
+		};
+	};
+
+	uart1 {
+		/omit-if-no-ref/
+		uart1m0_xfer: uart1m0-xfer {
+			rockchip,pins =
+				/* uart1_rx_m0 */
+				<0 RK_PB2 2 &pcfg_pull_up>,
+				/* uart1_tx_m0 */
+				<0 RK_PB3 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart1m0_ctsn: uart1m0-ctsn {
+			rockchip,pins =
+				/* uart1m0_ctsn */
+				<0 RK_PB5 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart1m0_rtsn: uart1m0-rtsn {
+			rockchip,pins =
+				/* uart1m0_rtsn */
+				<0 RK_PB4 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart1m1_xfer: uart1m1-xfer {
+			rockchip,pins =
+				/* uart1_rx_m1 */
+				<1 RK_PA7 2 &pcfg_pull_up>,
+				/* uart1_tx_m1 */
+				<1 RK_PB0 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart1m1_ctsn: uart1m1-ctsn {
+			rockchip,pins =
+				/* uart1m1_ctsn */
+				<1 RK_PB2 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart1m1_rtsn: uart1m1-rtsn {
+			rockchip,pins =
+				/* uart1m1_rtsn */
+				<1 RK_PB1 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart1m2_xfer: uart1m2-xfer {
+			rockchip,pins =
+				/* uart1_rx_m2 */
+				<2 RK_PA7 1 &pcfg_pull_up>,
+				/* uart1_tx_m2 */
+				<2 RK_PA6 1 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart1m2_ctsn: uart1m2-ctsn {
+			rockchip,pins =
+				/* uart1m2_ctsn */
+				<2 RK_PA5 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart1m2_rtsn: uart1m2-rtsn {
+			rockchip,pins =
+				/* uart1m2_rtsn */
+				<2 RK_PA4 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart1m3_xfer: uart1m3-xfer {
+			rockchip,pins =
+				/* uart1_rx_m3 */
+				<2 RK_PA3 2 &pcfg_pull_up>,
+				/* uart1_tx_m3 */
+				<2 RK_PA2 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart1m3_ctsn: uart1m3-ctsn {
+			rockchip,pins =
+				/* uart1m3_ctsn */
+				<2 RK_PA1 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart1m3_rtsn: uart1m3-rtsn {
+			rockchip,pins =
+				/* uart1m3_rtsn */
+				<2 RK_PA0 2 &pcfg_pull_none>;
+		};
+	};
+
+	uart2 {
+		/omit-if-no-ref/
+		uart2m0_xfer: uart2m0-xfer {
+			rockchip,pins =
+				/* uart2_rx_m0 */
+				<0 RK_PB1 2 &pcfg_pull_up>,
+				/* uart2_tx_m0 */
+				<0 RK_PB0 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart2m0_ctsn: uart2m0-ctsn {
+			rockchip,pins =
+				/* uart2m0_ctsn */
+				<0 RK_PB3 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart2m0_rtsn: uart2m0-rtsn {
+			rockchip,pins =
+				/* uart2m0_rtsn */
+				<0 RK_PB2 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart2m1_xfer: uart2m1-xfer {
+			rockchip,pins =
+				/* uart2_rx_m1 */
+				<2 RK_PB1 1 &pcfg_pull_up>,
+				/* uart2_tx_m1 */
+				<2 RK_PB0 1 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart2m1_ctsn: uart2m1-ctsn {
+			rockchip,pins =
+				/* uart2m1_ctsn */
+				<2 RK_PB3 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart2m1_rtsn: uart2m1-rtsn {
+			rockchip,pins =
+				/* uart2m1_rtsn */
+				<2 RK_PB2 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart2m2_xfer: uart2m2-xfer {
+			rockchip,pins =
+				/* uart2_rx_m2 */
+				<1 RK_PB6 3 &pcfg_pull_up>,
+				/* uart2_tx_m2 */
+				<1 RK_PB5 3 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart2m2_ctsn: uart2m2-ctsn {
+			rockchip,pins =
+				/* uart2m2_ctsn */
+				<1 RK_PC0 3 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart2m2_rtsn: uart2m2-rtsn {
+			rockchip,pins =
+				/* uart2m2_rtsn */
+				<1 RK_PB7 3 &pcfg_pull_none>;
+		};
+	};
+};
+
+/*
+ * This part is edited manually.
+ */
+&pinctrl {
+	sdmmc0 {
+		/omit-if-no-ref/
+		sdmmc0_bus1: sdmmc0-bus1 {
+			rockchip,pins =
+				/* sdmmc0_d0 */
+				<1 RK_PB0 1 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+
+	sdmmc1 {
+		sdmmc1_bus1: sdmmc1-bus1 {
+			rockchip,pins =
+				/* sdmmc1_d0 */
+				<2 RK_PA1 1 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/rockchip/rv1103b.dtsi b/arch/arm/boot/dts/rockchip/rv1103b.dtsi
new file mode 100644
index 000000000000..c3de700ade46
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b.dtsi
@@ -0,0 +1,250 @@
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
+#include <dt-bindings/soc/rockchip,boot-mode.h>
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
+		bootph-all;
+	};
+
+	pmu_grf: syscon@20160000 {
+		compatible = "rockchip,rv1103b-pmu-grf", "syscon", "simple-mfd";
+		reg = <0x20160000 0x1000>;
+
+		reboot_mode: reboot-mode {
+			compatible = "syscon-reboot-mode";
+			offset = <0x200>;
+			mode-normal = <BOOT_NORMAL>;
+			mode-recovery = <BOOT_RECOVERY>;
+			mode-bootloader = <BOOT_FASTBOOT>;
+			mode-loader = <BOOT_BL_DOWNLOAD>;
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
+		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
+		clock-names = "baudclk", "apb_pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart0m0_xfer>;
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
+		pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
+		status = "disabled";
+	};
+
+	uart1: serial@20870000 {
+		compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
+		reg = <0x20870000 0x100>;
+		interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
+		clock-names = "baudclk", "apb_pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart1m0_xfer>;
+		status = "disabled";
+	};
+
+	uart2: serial@20880000 {
+		compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
+		reg = <0x20880000 0x100>;
+		interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
+		clock-names = "baudclk", "apb_pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart2m0_xfer>;
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
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc0_det &sdmmc0_clk &sdmmc0_cmd &sdmmc0_bus4>;
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
+		pinctrl-names = "default";
+		pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus4>;
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
+		pinctrl-names = "default";
+		pinctrl-0 = <&fspi_bus4 &fspi_cs0 &fspi_clk>;
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
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+};
+
+#include "rv1103b-pinctrl.dtsi"
-- 
2.34.1


