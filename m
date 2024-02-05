Return-Path: <devicetree+bounces-38845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8658A84A813
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 22:52:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 065451F2A0E9
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 21:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32E15136658;
	Mon,  5 Feb 2024 20:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="LZ0o8P57"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip43a.ess.de.barracuda.com (egress-ip43a.ess.de.barracuda.com [18.185.115.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0968713664A
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 20:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.185.115.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707165587; cv=none; b=iSLgu/6HQD89D4pttSCQFAPQsy+j+U27+JVgefInhYx5O9xIPZ2Eqgop2Zs+qdBX3flPh4L7ix2B5y8lTUT3TqFfAAtk4EtbS3ihkyUSRKkbL8oOpyt56vhRQHjgogipchfP6DxyQuzpr7ftokJisQS3imnG39LzWPTZq/UYAo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707165587; c=relaxed/simple;
	bh=1jqizwfQ+c6Q0OkvZZEEQNJguvmRguC+Fg/Y3Oaxf64=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fNRYV0pQ77p5QJr9YGTLi8mfCw29H6dJbF7Wwr5JwsPUGWVy08hQwZ8xE6GTA8aUQS4ueqH05Na+qMt71lSi0s4nELzSdqgUWZMeFdLU65I+tYpt6v0IjEJURaRMFDSPPm8aNohyfx95BXbKoIls2iGfypynowMa3miGhAs48ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=LZ0o8P57; arc=none smtp.client-ip=18.185.115.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72]) by mx-outbound45-34.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 05 Feb 2024 20:39:42 +0000
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-6e12e45a8e0so3874575a34.1
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 12:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1707165581; x=1707770381; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vs9QQhw4M4FWqaWliwpzwmw2s69GQGFmwNivTz/YgYc=;
        b=LZ0o8P57rKS8eKYvsoArlhoW56zXi4knjjZ5BhA678afbT0m/JRnMLh0dZ6XpOhbcR
         qcO0Eqh/OSx8HS3o8P2ZAyTUqp/wmcpDBIONp7IV21VxJ/bFeJKAGMNfMD1d9RFfhFlf
         jxtuDhNyne8EQayv5w4wReOQf2vH4UoqlAa54=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707165581; x=1707770381;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vs9QQhw4M4FWqaWliwpzwmw2s69GQGFmwNivTz/YgYc=;
        b=TL68anyO6IgnCQw1DZugvUgDIH6igyMpTvUInyGfoCatifDXGZMwG5ZE9ffk8XyCQl
         LpEOwmtVwIo2Ep/km4vRwoIvwyNMS9x7BNhqh2xbDKa1kS48V13dTQ3bYkRIWUelWcs7
         hs++9ox8s2tCBbMIsSoXM2MrI2CFP96bqBc8Pm9ooHJz3AF7gkvgvNnbAK7LsgS8CtIR
         vBMcBnS99n4/veGUHAt8Nc/GDUjQkm6e++R2aqdYsokadmQjfBX+OOsJtWnhwydvzzNS
         e3bQmj6bCGmUmG3pfgS1pPBmiR+KKoKuyWpbmhUQ1cMiI/1kJQTOXeAY4r8AhNv/VqmG
         3XXw==
X-Gm-Message-State: AOJu0YztK2/0Kgeq6hh9eVm0CLPo6dSPQ+6Poqwq46FaconiION17VAo
	sX4XU4gE50F/7z2SvrDG34hU5wgrQxuWIfRLqstYY8esFoR2NaN03TCE9RV8TIO4Xxe5j5y1vGR
	4j2Fpe0PL3dY5dMR9T6lH7gipmJEGd4yHZ8wP0zbz0jPD1jfb92CcihQJciQHNvuQ6Pc7g/7Rwi
	AG2QGvNIPsxSTtAd30qw==
X-Received: by 2002:a17:902:e5d0:b0:1d7:15ea:4249 with SMTP id u16-20020a170902e5d000b001d715ea4249mr596356plf.7.1707163699297;
        Mon, 05 Feb 2024 12:08:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+TbU6NmX6W2bzIYIQRyWAElFQs/FQQEtJfQK8Kn6rtpLl8gL33k0Yu+6JqwoRfB3jaJcd9A==
X-Received: by 2002:a17:902:e5d0:b0:1d7:15ea:4249 with SMTP id u16-20020a170902e5d000b001d715ea4249mr596335plf.7.1707163699019;
        Mon, 05 Feb 2024 12:08:19 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUVNmuGupMxQg5vulrHPonr+3p+V+sHMd6H4tUdzU62/we5NXpd84XL+ZNIUsQ9+augtOsbYIikx6K2KEpkCGhWLGhrvcYvGFeJf4Ef3TIIhfL6AT9dp18G7T7m4qkx4MdFQnCgg7etS3T2Wy8IZsd5y8Zm/R2BxU997Zg+B5d/zvPUsf0+WDx2/8dcgmGTNDKhlOXuOoeB9WP4I7NY1H0nFwMBTuTPH6TdPhUAybGejRFJdR8OiaEcA/GU1gP3i0Zymq7CsaVb8Q7h72Id5g9gi0+me7XXI+eAwdShqTGrVZ5vzs+SwmRfALWINy/Y7nUGek9dBfBysA+A4aQGEmoKyZM=
Received: from LAP559U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id t21-20020a170902dcd500b001d739667fc3sm263900pll.207.2024.02.05.12.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 12:08:18 -0800 (PST)
From: sabiya.d@mistralsolutions.com
X-Google-Original-From: sabiya.d@ti.com
To: nm@ti.com,
	vigneshr@ti.com,
	kristo@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linus.walleij@linaro.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	u-kumar1@ti.com,
	sabiya.d@mistralsolutions.com,
	Dasnavis Sabiya <sabiya.d@ti.com>
Subject: [PATCH V2 2/2] arm64: dts: ti: k3-am69-sk: Add support for OSPI flash
Date: Tue,  6 Feb 2024 01:37:43 +0530
Message-Id: <20240205200744.216572-3-sabiya.d@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240205200744.216572-1-sabiya.d@ti.com>
References: <20240205200744.216572-1-sabiya.d@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1707165581-311554-12417-30578-1
X-BESS-VER: 2019.1_20240201.2150
X-BESS-Apparent-Source-IP: 209.85.210.72
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIysjQxBLIygIKWBkmJKWaJqU
	lGRknJ5hZJlsapZmnJZkkGFmZm5onJZkq1sQC4+3ihQQAAAA==
X-BESS-Outbound-Spam-Score: 0.50
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.254009 [from 
	cloudscan18-189.eu-central-1b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.50 BSF_RULE7568M          META: Custom Rule 7568M 
	0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.50 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_RULE7568M, NO_REAL_NAME, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status:1

From: Dasnavis Sabiya <sabiya.d@ti.com>

AM69 SK has S28HS512T OSPI flash connected to MCU OSPI0.
Enable support for the same. Also describe the partition
information according to the offsets in the bootloader.

Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 81 +++++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index 64c737cc3d49..9ef9aec0b5bd 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -470,6 +470,25 @@ J784S4_IOPAD(0x09C, PIN_OUTPUT, 0) /* (AF35) MCAN7_TX */
 	};
 };
 
+&wkup_pmx0 {
+	bootph-all;
+	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-default-pins {
+		pinctrl-single,pins = <
+			J784S4_WKUP_IOPAD(0x000, PIN_OUTPUT, 0) /* (E32) MCU_OSPI0_CLK */
+			J784S4_WKUP_IOPAD(0x02c, PIN_OUTPUT, 0) /* (A32) MCU_OSPI0_CSn0 */
+			J784S4_WKUP_IOPAD(0x00c, PIN_INPUT, 0) /* (B33) MCU_OSPI0_D0 */
+			J784S4_WKUP_IOPAD(0x010, PIN_INPUT, 0) /* (B32) MCU_OSPI0_D1 */
+			J784S4_WKUP_IOPAD(0x014, PIN_INPUT, 0) /* (C33) MCU_OSPI0_D2 */
+			J784S4_WKUP_IOPAD(0x018, PIN_INPUT, 0) /* (C35) MCU_OSPI0_D3 */
+			J784S4_WKUP_IOPAD(0x01c, PIN_INPUT, 0) /* (D33) MCU_OSPI0_D4 */
+			J784S4_WKUP_IOPAD(0x020, PIN_INPUT, 0) /* (D34) MCU_OSPI0_D5 */
+			J784S4_WKUP_IOPAD(0x024, PIN_INPUT, 0) /* (E34) MCU_OSPI0_D6 */
+			J784S4_WKUP_IOPAD(0x028, PIN_INPUT, 0) /* (E33) MCU_OSPI0_D7 */
+			J784S4_WKUP_IOPAD(0x008, PIN_INPUT, 0) /* (C34) MCU_OSPI0_DQS */
+		>;
+	};
+};
+
 &wkup_pmx2 {
 	bootph-all;
 	pmic_irq_pins_default: pmic-irq-default-pins {
@@ -1073,3 +1092,65 @@ &main_mcan7 {
 	pinctrl-0 = <&main_mcan7_pins_default>;
 	phys = <&transceiver4>;
 };
+
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
+			bootph-all;
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
+				bootph-pre-ram;
+				label = "ospi.phypattern";
+				reg = <0x3fc0000 0x40000>;
+			};
+		};
+	};
+};
-- 
2.34.1


