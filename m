Return-Path: <devicetree+bounces-38983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3033384B113
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 10:24:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 546ED1C235FE
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 09:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B378612D142;
	Tue,  6 Feb 2024 09:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="ZU44W1Mt"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip43b.ess.de.barracuda.com (egress-ip43b.ess.de.barracuda.com [18.185.115.247])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE6E83CCC
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 09:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.185.115.247
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707211429; cv=none; b=YQUAVi5r3Ug7GwAymJEekRa85vELXZJymbhE0UdRXrsoEKZW03n8+PbjGRYLs5M6oxn8zMa0hNJwdafHWExcXz8TqDfYvyUyt+94xOjOTG5E6qJqFN7JWskcvqmjzD8mU8RQLer7jb6gquwHiVM00aBBy14wlTi3BSI32dnRELo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707211429; c=relaxed/simple;
	bh=fNc/6Pc9VCl6HzTg3CC6Gpd9Gmf49+v9PFWelq2ov3o=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=eilOmV9M3ZXQblKypQ0guKAf5R+QEY9DS5aJrt9q2WJC+SPsYNEzUNc3T9CVLGd+VeyMuEZ4IIUoCqTqd/RD1PuLsdQJPmr3sM0eFLL1YmYchLJtlQ7eJmDtnocU73k7iwlLCnEMelPmEGh5WXXCvW0OY1xDgCOCVtl1FAKZNCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=ZU44W1Mt; arc=none smtp.client-ip=18.185.115.247
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198]) by mx-outbound17-0.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 06 Feb 2024 09:23:44 +0000
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-6e04e1ac09fso1313624b3a.0
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 01:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1707211423; x=1707816223; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eLR7NoGZT/8JoUn3Uf2bBEtjROgQUHEqybAlPKSbqdg=;
        b=ZU44W1Mt+zyJxqZKk4YNoVqTSHeOexTnP4N1NVwCdEK9qfs4GMREaBACsPtNfm1uZl
         HTvByBthE7Fdwisu1ogiBkU9JpMHXKsll3VuEQSMDt3Bn/ppvh00nPhJGH3aiML26+J6
         fL3Auijksv/pc5DB0c6YHauCe09zMrc/xaaCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707211423; x=1707816223;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eLR7NoGZT/8JoUn3Uf2bBEtjROgQUHEqybAlPKSbqdg=;
        b=H/rG8DdkK+qLLTQtYfBdsQbm7OB4ovIAMyWB4JQry7lwkWmrVQsmurMP6yLlUEeDju
         QIcd/410ExkcUYcoGjeFe7XYXL/2fNqp8lJlFrUiI3ffuSFTkBZ/4jO2QhOpQPSSAI8F
         jhgXrJSehazEajPrIttqLKzhCqZp7Nu3Hfqxb6zFrcQnQzNJdhYyCnnAwGMLQa0Yep7r
         BlUkScG1wwF1UweAX/hudCWftsJVVX6hwgNIJKRKpcIbXBBS/vFgL5Py1V9YLurPurdP
         S/X5Pg+jFCo3u4V8ditdESmVJVgiQ/9uU1/3cFCF4PvuOtFQVNVvsRMcwHVWo0Nhs+vY
         /vZA==
X-Gm-Message-State: AOJu0YzHZ4/ZpwFwAMqFURWs8e1DOGJwcdIzL+NGUOt+lmYSVazc9pSi
	p2emmvT9dJrimLRuKc0lwhlBJe0W0cnUdWKoNyfBFWADvyDMPhr0EUEGDH+miHwdw/rGgsh9xop
	1NXyLdW9ms2y0kRfBW1McduyxjHUyRoQXA7WC4mSqPTXMEjCi2+Z8ay77EguLuXrjlOvA464ekx
	0Pbs8PNsHW71z3cZFNWw==
X-Received: by 2002:a62:848f:0:b0:6db:af73:bd9a with SMTP id k137-20020a62848f000000b006dbaf73bd9amr1893463pfd.30.1707211423448;
        Tue, 06 Feb 2024 01:23:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFpjJ8JIkBbiCYh/1qtrayoW/kvTX3LsBtoOAHAQjf2+/lJfvTCTsNhJJjr93Q/PI+WMd8Obw==
X-Received: by 2002:a62:848f:0:b0:6db:af73:bd9a with SMTP id k137-20020a62848f000000b006dbaf73bd9amr1893457pfd.30.1707211423126;
        Tue, 06 Feb 2024 01:23:43 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVV3qv16AOmIuv8F63Xrt+qOqHB1NfMJVkhmtqINylET7rEXFiGG6MMhF8oNStus33yzsttnb/T1TvE6qHWM0rQ3Co+dYbKU4dBHv1XcBSJyZC8v7FYxJoU4zcXpBhzMeeoavZ8RnDwwTZf5F+I3u542zohU/wQ/nOW2V9I87QeiWPDVe84tIP0+X6AQSSmSkyBgKJfVn8ve1dt7BnbfFpN
Received: from LAP568U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id w20-20020aa78594000000b006e02da39dbcsm1418493pfn.10.2024.02.06.01.23.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 01:23:42 -0800 (PST)
From: Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To: Nishanth Menon <nm@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am68-sk-som: Add support for OSPI flash
Date: Tue,  6 Feb 2024 14:53:34 +0530
Message-Id: <20240206092334.30307-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1707211424-304352-12432-6013-1
X-BESS-VER: 2019.1_20240206.0113
X-BESS-Apparent-Source-IP: 209.85.210.198
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIyNjA2AbIygIKpSckWaclJho
	ZGxmZJxoZmiZYmhsnmiYkpBqlJFmlmRkq1sQBce/OXQQAAAA==
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.254018 [from 
	cloudscan10-54.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status:1

From: Sinthu Raja <sinthu.raja@ti.com>

AM68 SK has an OSPI NOR flash on its SOM connected to OSPI0 instance.
Enable support for the same. Also, describe the OSPI flash partition
information through the device tree, according to the offsets in the
bootloader.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi | 79 ++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
index 20861a0a46b0..84011d5e1b3b 100644
--- a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
@@ -130,6 +130,25 @@ rtos_ipc_memory_region: ipc-memories@a8000000 {
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
+			J721S2_WKUP_IOPAD(0x004, PIN_INPUT, 0) /* (E20) MCU_OSPI0_LBCLKO */
+		>;
+	};
+};
+
 &wkup_pmx2 {
 	wkup_i2c0_pins_default: wkup-i2c0-default-pins {
 		pinctrl-single,pins = <
@@ -152,6 +171,66 @@ eeprom@51 {
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


