Return-Path: <devicetree+bounces-43281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 061EC859DC7
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:03:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B1E11C2209D
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 08:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95D582374E;
	Mon, 19 Feb 2024 08:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="GZEXgv+f"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip43b.ess.de.barracuda.com (egress-ip43b.ess.de.barracuda.com [18.185.115.247])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D917621115
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 08:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.185.115.247
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708329629; cv=none; b=JYemJcmgJ9jmdBsKFG/QU0M+1zobR+slcUv2CuWIshCkeWHg+g6TMIzXR2TIGr585m9hP/wXdVJ+/coj8doRdf0Zf57H1NNw+9um3rF8o93sd/IodzE2VNBxMopwxIi2nUcjYnfC4cM4kjkPiQi5jT8677jDxprsn3eaKVUOYVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708329629; c=relaxed/simple;
	bh=FqVikFmzluRuWznuQC1YJtnaJWBrWCiiS+vEsKl0JGs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=IpfJZlQXIh4rIQiRl96onxngt+Ea3YBGPYxAriA97TF+0jV0djZQcUKGR0k3FV2DgeaA2Gknv00p1TH+pxgUcCpqrGxqH10eTzEOUwFYoNeNoU1SJn1TTXlU0smzuIAVxatAVDKZO28SrKcgOAbs4Y5u6QENOeaf8UCiaiRt5Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=GZEXgv+f; arc=none smtp.client-ip=18.185.115.247
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69]) by mx-outbound47-163.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 19 Feb 2024 07:59:41 +0000
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5998b7ad6b4so4930814eaf.1
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 23:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1708329580; x=1708934380; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=miyKJdiB2gWRsatSJx8FIbILVUc1DBSiCVFq0Gs7BZA=;
        b=GZEXgv+fukIYpTQm8MGonD67Rl3SYrEND3Sg/yVQS04uAmFcP0URDq4ES/RFYCRIYl
         LNnKka06jkLGF+/zVaL95hQ0QW2cOEBNSRxGC3PKlbUb1+MaTmZ77gsuG6kw5agDW94+
         x7PksF+6LtgSwIZOfqMDPqd/D7rwihJ/Y7xVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708329580; x=1708934380;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=miyKJdiB2gWRsatSJx8FIbILVUc1DBSiCVFq0Gs7BZA=;
        b=UjOd+2o7Up0Q0ywN1RzzGG0WxfQI4LHxPqAE7ZfPmIak+wHAjiJC5kfCvLFvjCXSYq
         KmcpizgbaxM2RAY07s5ijD+3O3AT03+KbzAAvY/lzrHYdXsEy/vQIJikYMgnDo2gkIEj
         6bmlECUQKM61OTo2tCPpFqKLvwc7DI1V4VnJMfIwhx43XNhgO+BHBZXj7ZBpmopSLfkq
         FdSoJr7yBDhhbpfgsJH/RO9b5EwnUNkcmif3al7zaYLbWik0YeYYNrFuaFuf5xVNjjrc
         8N1FLuYPYxNJiEx/RC9Vy1HHq1qmxRe7KmBWyoSws5SiLsJTY1dad8uiTDTaKfao6sbh
         UpSg==
X-Forwarded-Encrypted: i=1; AJvYcCWwnvE2SH0GW29/Md6i2fvNz0eZgv3l8ViSfU883NwLlMQsSR7UWTSZntAXQHRfwVZAPd3w7+b6KHuge2MHC6R7oeV0f7dGkEeLKw==
X-Gm-Message-State: AOJu0Yxs/kt3gbFUccZs9tcwdq7qgUBJIEgGpvGKEesyo/94iKisDtst
	biNf9Ge+llXJ3WDkVSGKxggzfQfdV57N+RrDoDkxDtUfYRVXnLbzaY4j963VNRjTP0iCa1BTJIN
	FWIwDkOi/xe5R/Omna79OylNIKbmOekp/YYbxq0ff94C8YvwRbN27UEBgt7gJ8/UBhuJo0n/N/F
	bxx5DbR6KDQ3SiHqWDzw==
X-Received: by 2002:a05:6358:63a2:b0:17b:c8d:f39c with SMTP id k34-20020a05635863a200b0017b0c8df39cmr13687165rwh.28.1708329580095;
        Sun, 18 Feb 2024 23:59:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFR6bba8F48zsG94/WmE1CDv0XWbi4wAXc6sfLANAc3WjiY1EOsy5WvWL/JajzxA6qW8Wqobw==
X-Received: by 2002:a05:6358:63a2:b0:17b:c8d:f39c with SMTP id k34-20020a05635863a200b0017b0c8df39cmr13687153rwh.28.1708329579761;
        Sun, 18 Feb 2024 23:59:39 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id n12-20020a63ee4c000000b005dc4b562f6csm4072525pgk.3.2024.02.18.23.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Feb 2024 23:59:39 -0800 (PST)
From: Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To: Nishanth Menon <nm@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V2] arm64: dts: ti: k3-am68-sk-som: Add support for OSPI flash
Date: Mon, 19 Feb 2024 13:29:32 +0530
Message-Id: <20240219075932.6458-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1708329580-312195-12448-829-1
X-BESS-VER: 2019.1_20240214.1700
X-BESS-Apparent-Source-IP: 209.85.161.69
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIyNjQ3AbIygILGRobmaYZmRh
	ZplikG5mZmpmZJSWnJhqaJKeYpxiYmaUq1sQCIw3SbQQAAAA==
X-BESS-BRTS-Status:1

From: Sinthu Raja <sinthu.raja@ti.com>

AM68 SK has an OSPI NOR flash on its SOM connected to OSPI0 instance.
Enable support for the same. Also, describe the OSPI flash partition
information through the device tree, according to the offsets in the
bootloader.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---

Changes in V2:
=============
1. Address review comments
   a. remove pin E20, which is not connected.

V1: https://patchwork.kernel.org/project/linux-arm-kernel/patch/20240206092334.30307-1-sinthu.raja@ti.com/

 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi | 78 ++++++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
index 0f4a5da0ebc4..afaf702cfc9d 100644
--- a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
@@ -130,6 +130,24 @@ rtos_ipc_memory_region: ipc-memories@a8000000 {
 	};
 };
 
+&wkup_pmx0 {
+	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-pins-default {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x000, PIN_OUTPUT, 0) /* (D19) MCU_OSPI0_CLK */
+			J721S2_WKUP_IOPAD(0x02c, PIN_OUTPUT, 0) /* (F15) MCU_OSPI0_CSn0 */
+			J721S2_WKUP_IOPAD(0x00c, PIN_INPUT, 0) /* (C19) MCU_OSPI0_D0 */
+			J721S2_WKUP_IOPAD(0x010, PIN_INPUT, 0) /* (F16) MCU_OSPI0_D1 */
+			J721S2_WKUP_IOPAD(0x014, PIN_INPUT, 0) /* (G15) MCU_OSPI0_D2 */
+			J721S2_WKUP_IOPAD(0x018, PIN_INPUT, 0) /* (F18) MCU_OSPI0_D3 */
+			J721S2_WKUP_IOPAD(0x01c, PIN_INPUT, 0) /* (E19) MCU_OSPI0_D4 */
+			J721S2_WKUP_IOPAD(0x020, PIN_INPUT, 0) /* (G19) MCU_OSPI0_D5 */
+			J721S2_WKUP_IOPAD(0x024, PIN_INPUT, 0) /* (F19) MCU_OSPI0_D6 */
+			J721S2_WKUP_IOPAD(0x028, PIN_INPUT, 0) /* (F20) MCU_OSPI0_D7 */
+			J721S2_WKUP_IOPAD(0x008, PIN_INPUT, 0) /* (E18) MCU_OSPI0_DQS */
+		>;
+	};
+};
+
 &wkup_pmx2 {
 	wkup_i2c0_pins_default: wkup-i2c0-default-pins {
 		pinctrl-single,pins = <
@@ -152,6 +170,66 @@ eeprom@51 {
 	};
 };
 
+&ospi0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_fss0_ospi0_pins_default>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0x0>;
+		spi-tx-bus-width = <8>;
+		spi-rx-bus-width = <8>;
+		spi-max-frequency = <25000000>;
+		cdns,tshsl-ns = <60>;
+		cdns,tsd2d-ns = <60>;
+		cdns,tchsh-ns = <60>;
+		cdns,tslch-ns = <60>;
+		cdns,read-delay = <4>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "ospi.tiboot3";
+				reg = <0x0 0x80000>;
+			};
+
+			partition@80000 {
+				label = "ospi.tispl";
+				reg = <0x80000 0x200000>;
+			};
+
+			partition@280000 {
+				label = "ospi.u-boot";
+				reg = <0x280000 0x400000>;
+			};
+
+			partition@680000 {
+				label = "ospi.env";
+				reg = <0x680000 0x40000>;
+			};
+
+			partition@6c0000 {
+				label = "ospi.env.backup";
+				reg = <0x6c0000 0x40000>;
+			};
+
+			partition@800000 {
+				label = "ospi.rootfs";
+				reg = <0x800000 0x37c0000>;
+			};
+
+			partition@3fc0000 {
+				label = "ospi.phypattern";
+				reg = <0x3fc0000 0x40000>;
+			};
+		};
+	};
+};
+
 &mailbox0_cluster0 {
 	status = "okay";
 	interrupts = <436>;
-- 
2.36.1


