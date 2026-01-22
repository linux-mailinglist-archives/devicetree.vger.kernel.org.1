Return-Path: <devicetree+bounces-258482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMF2AZdLcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:08:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7F069A1E
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:08:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B85FB303989D
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75C8834F262;
	Thu, 22 Jan 2026 15:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h2oTlG5j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7F330F53F
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769095650; cv=none; b=Zhc19LJifSpqwEI4MNgfx2wPXuElWZGjU3Zk0GTrU/LgB+KGPQu4kFHf9vvxfoDhC/DyV4nxXbNClYgMe1eqHKcHF52ViFHoOFHnMRPR6wx+dK+aWekBdNILIv0Stcx5+Z94tMHXxOoZr1sFm3jtotR6jp7dRnKRcrnz5FFSUNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769095650; c=relaxed/simple;
	bh=eGM/EBqMEDcFmuDjFBM1kZSkKLO4wV+nQKaKtiOH3KM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VSS7MkDfiapFbHS/Qb8L+WxdfURpHGeKFqWk7h5ozUC2NZjhmVDq2Ze8aYxZAK9aefFYdxSUv1jZOndEvmeXeOj/6fcVjalHcIv0SDe6jQ/uct49VuJcB+9QUn65S/Nu34HXgdiCbd5YZCGZB2wz35X6ISkEkpGcABcF1sv3zLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h2oTlG5j; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-432d2670932so1050153f8f.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:27:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769095646; x=1769700446; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eSZwviFf1x4T/s2toJik0HTAfoFK/jhdfg8B2E1Bx7s=;
        b=h2oTlG5jFtxpa5seM6TZUoLqhkBJX4ixn4XmbeQGiKJM/Je/xjBYK36Qhxx6lwPujo
         /XKxlUouRmoimsO9yudNlX/BI33MO+yQZmwval+yfjibiSA7HABBUBPMGptVvDe/Et+b
         LmS33MsFNh6NzLTSyR+A6wnv2r4E9xfp9VU0+Yl914IHks8CQIYZ7KLuHUzzbIRym2Rm
         gMdfW/1W6/yTXfBp9F2aBvaaKXDgIc29lEWQ7Ok47VyEJfBmJhFPjrb3/WNEa/ukkH2R
         O/aHY2uvT9eb9ELhEM8IaxnEDvMXo4nU/IZ4GLekMtszb9u8ZdBBkDhv2gBq5EctiSN0
         mTWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769095646; x=1769700446;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eSZwviFf1x4T/s2toJik0HTAfoFK/jhdfg8B2E1Bx7s=;
        b=Lj1+10bafP4AJqcREMt0ttyKYnVqgM4cD2CYjcTfnVMJwaqedfJXOEGRK11lYfJBr5
         b4Mxy/bPpEfdJbEcgrSGkXfpKkyHBc1H6e+Q/PUQBf36bB4AGWRmyfYIvFYGXEUvIXfd
         nEvGfB6x6qMSl9Oaa1OidiMZrH+pz1+Iz1huyUpm5sZ40/AlpmwAvOhIkTd1iFDsX5i0
         P408ySwCSnfMbiLcSZWef5pWfLxeozEb9JmhHX08WzrjY0bwBlioySc0lvAXbuA/oTCG
         bn0V1HpILwau99Cx7/XTdKPcXW93ja2vSXKyREo7ZTIHcaS0dgN5awP3/HGDt8XCP3J0
         eNQA==
X-Gm-Message-State: AOJu0YyQ0T98zHQWO/qF9Znc8SUGAKDmw8da3uPbKK9uiWdtPBUKisPi
	uXsiCTvPagNsrlgK5umu+5eyaLVojkTgS/gJDyR+Gg0yPBg7YQMMiJ8G
X-Gm-Gg: AZuq6aJVzUKRW79iO6fe4qkLwbt0drvq/0HBmocnaoRjSdaaR9RgpscF25oN2J3I2Gz
	umNNcVrwepPI1UTomXHMjLpcvL34hKwQ5P04zFhua3dy63ELRK+Kq7zgzkM4EGg9obcN03KGacN
	E+CxrdIheQrb9mGbgqzYvkUyxoG6zz5mtDbKCEDiwyOZSIDiwowTLAwvcKVf7+m5i3Rul6lDszj
	B6Nw/0pL5Gkr5i+e6qcZZ8a/Iwn1LaxdGQSCvvwpZtMvmobzkKIlF9zXlTQihFZ/pkK4udh5FGC
	atqh20zwcbhMB6kFiv7s75pupaRt1+1+GwTneiyY6r7Dgi9z89CZYiw7/aCtLxhCoevHew8q2aH
	NEcHzL4SDExiQMD4GpsRPH3vUjLfGRWolC+SG9lVVO22NhO3KqGrXFKeWBOehSQAW8vJA8wbkCx
	sh
X-Received: by 2002:a05:6000:2386:b0:435:a9ad:d20f with SMTP id ffacd0b85a97d-435a9add46amr4495671f8f.19.1769095645427;
        Thu, 22 Jan 2026 07:27:25 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4358f138e26sm20762642f8f.17.2026.01.22.07.27.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:27:25 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] ARM: tegra: lg-x3: add panel and bridge nodes
Date: Thu, 22 Jan 2026 17:27:11 +0200
Message-ID: <20260122152713.8311-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260122152713.8311-1-clamor95@gmail.com>
References: <20260122152713.8311-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[bounces-258482-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com,yahoo.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_PROHIBIT(0.00)[0.0.0.11:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.2:email,3.59.6.192:email,7000e400:email,7000e000:email,6001a000:email,7000f000:email,7000dc00:email,2.250.240.128:email,0.0.0.0:email,0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bfe00000:email]
X-Rspamd-Queue-Id: EF7F069A1E
X-Rspamd-Action: no action

Add RGB-DSI bridge and panel nodes to LG Optimus 4X and Vu device tees.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 arch/arm/boot/dts/nvidia/tegra30-lg-p880.dts | 23 ++++++
 arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts | 27 +++++++
 arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi  | 81 +++++++++++++++++++-
 3 files changed, 130 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nvidia/tegra30-lg-p880.dts b/arch/arm/boot/dts/nvidia/tegra30-lg-p880.dts
index c6ef0a20c19f..cc14e6dca770 100644
--- a/arch/arm/boot/dts/nvidia/tegra30-lg-p880.dts
+++ b/arch/arm/boot/dts/nvidia/tegra30-lg-p880.dts
@@ -116,6 +116,29 @@ rmi4-f11@11 {
 		};
 	};
 
+	spi@7000dc00 {
+		dsi@2 {
+			/*
+			 * JDI 4.57" 720x1280 DX12D100VM0EAA MIPI DSI panel
+			 */
+			panel@1 {
+				compatible = "jdi,dx12d100vm0eaa", "renesas,r69328";
+				reg = <1>;
+
+				reset-gpios = <&gpio TEGRA_GPIO(W, 0) GPIO_ACTIVE_LOW>;
+
+				vdd-supply = <&vcc_3v0_lcd>;
+				vddio-supply = <&iovcc_1v8_lcd>;
+
+				port {
+					panel_input: endpoint {
+						remote-endpoint = <&bridge_output>;
+					};
+				};
+			};
+		};
+	};
+
 	memory-controller@7000f000 {
 		emc-timings-0 {
 			/* SAMSUNG 1GB K4P8G304EB FGC1 533MHz */
diff --git a/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts b/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
index e32fafc7f5e0..e300a2c49edf 100644
--- a/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
+++ b/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
@@ -112,6 +112,33 @@ rmi4-f11@11 {
 		};
 	};
 
+	spi@7000dc00 {
+		dsi@2 {
+			/*
+			 * HITACHI/KOE 5" 768x1024 TX13D100VM0EAA MIPI DSI panel
+			 */
+			panel@1 {
+				compatible = "koe,tx13d100vm0eaa", "renesas,r61307";
+				reg = <1>;
+
+				reset-gpios = <&gpio TEGRA_GPIO(W, 0) GPIO_ACTIVE_LOW>;
+
+				renesas,gamma = <3>;
+				renesas,inversion;
+				renesas,contrast;
+
+				vcc-supply = <&vcc_3v0_lcd>;
+				iovcc-supply = <&iovcc_1v8_lcd>;
+
+				port {
+					panel_input: endpoint {
+						remote-endpoint = <&bridge_output>;
+					};
+				};
+			};
+		};
+	};
+
 	memory-controller@7000f000 {
 		emc-timings-2 {
 			/* Hynix 1GB H9TCNNN8JDMMPR LPDDR2 533MHz */
diff --git a/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi b/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
index 909260a5d0fb..d71d1d6694f8 100644
--- a/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
@@ -20,6 +20,8 @@ aliases {
 		rtc0 = &pmic;
 		rtc1 = "/rtc@7000e000";
 
+		display0 = &lcd;
+
 		serial0 = &uartd; /* Console */
 		serial1 = &uartc; /* Bluetooth */
 		serial2 = &uartb; /* GPS */
@@ -71,6 +73,21 @@ trustzone@bfe00000 {
 		};
 	};
 
+	host1x@50000000 {
+		lcd: dc@54200000 {
+			rgb {
+				status = "okay";
+
+				port {
+					dpi_output: endpoint {
+						remote-endpoint = <&bridge_input>;
+						bus-width = <24>;
+					};
+				};
+			};
+		};
+	};
+
 	vde@6001a000 {
 		assigned-clocks = <&tegra_car TEGRA30_CLK_VDE>;
 		assigned-clock-parents = <&tegra_car TEGRA30_CLK_PLL_P>;
@@ -1357,7 +1374,58 @@ spi@7000dc00 {
 		status = "okay";
 		spi-max-frequency = <25000000>;
 
-		/* DSI bridge */
+		dsi@2 {
+			compatible = "solomon,ssd2825";
+			reg = <2>;
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			spi-max-frequency = <1000000>;
+
+			spi-cpha;
+			spi-cpol;
+
+			reset-gpios = <&gpio TEGRA_GPIO(O, 2) GPIO_ACTIVE_LOW>;
+
+			dvdd-supply = <&vdd_1v2_rgb>;
+			avdd-supply = <&vdd_1v2_rgb>;
+			vddio-supply = <&vdd_1v8_vio>;
+
+			solomon,hs-zero-delay-ns = <300>;
+			solomon,hs-prep-delay-ns = <65>;
+
+			clocks = <&tegra_pmc TEGRA_PMC_CLK_OUT_3>;
+
+			assigned-clocks = <&tegra_car TEGRA30_CLK_EXTERN3>,
+					  <&tegra_pmc TEGRA_PMC_CLK_OUT_3>;
+			assigned-clock-rates = <24000000>;
+
+			assigned-clock-parents = <&tegra_car TEGRA30_CLK_PLL_P>,
+						 <&tegra_car TEGRA30_CLK_EXTERN3>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					bridge_input: endpoint {
+						remote-endpoint = <&dpi_output>;
+						data-lines = <24>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					bridge_output: endpoint {
+						remote-endpoint = <&panel_input>;
+					};
+				};
+			};
+		};
 	};
 
 	pmc@7000e400 {
@@ -1617,6 +1685,17 @@ vdd_1v8_sen: regulator-sen1v8 {
 		vin-supply = <&vdd_3v3_vbat>;
 	};
 
+	vdd_1v2_rgb: regulator-rgb1v2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v2_rgb";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-boot-on;
+		gpio = <&gpio TEGRA_GPIO(B, 1) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_3v3_vbat>;
+	};
+
 	vcc_3v0_lcd: regulator-lcd3v {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_3v0_lcd";
-- 
2.51.0


