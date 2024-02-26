Return-Path: <devicetree+bounces-45850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AC7867057
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 11:16:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 252301C2571B
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 10:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54EF3D55B;
	Mon, 26 Feb 2024 09:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="i5ik96/D"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip12b.ess.de.barracuda.com (egress-ip12b.ess.de.barracuda.com [18.185.115.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5280D2D029
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 09:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.185.115.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708941178; cv=none; b=kOHBhG+QfYP1mv0j7O+bEGTcoXUi9DqXxD2hvICNf0arxfJ7vx4bBLqwf8FzgZIvmfYJVFtL6XuXRONyqomgMUco6/XH6z19HAFsg2wERznb3Ah3TojyQ7ouRi+l9AWvPkWdVcT5kt5f+Ut44ul/9U5759VB30gDt+v5PT7S5kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708941178; c=relaxed/simple;
	bh=KPcwfWdpX8YK0QQBA1KIIQNBU2j+KBxkMlHqfMTxePI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=HkJoDzVjS89Rgiz/O3ksMdddQTUZ9xmIzOcnycsd+L+FKDK0JliCoRU3bRi2r9WFK0jpm51Oqdog6VBMu1xe1AdJkgGKGLfDTuBoEbf6+ga6ug8D/ISfw6hntCii2J0DvzlA86V2DHLiKch61huHLVanAL5OEUhSXDWzXpVo2bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=i5ik96/D; arc=none smtp.client-ip=18.185.115.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71]) by mx-outbound19-13.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 26 Feb 2024 09:52:47 +0000
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-214d020850eso3048671fac.2
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 01:52:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1708941167; x=1709545967; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tKQNwvH/UeIkXyNOqlphLDdRi9b8R2L805pgQZbjTtE=;
        b=i5ik96/DhzPZ5kT8NW0/sjtd7DSqIy3gfBWYSivpaCF1zQyYttXkrPIIteEpyqznjw
         0g/6cQaS9Kixxon54k5SCaqEnYSO1ofJMlEXXdgtPTSrN3NaP3osA6AE4K3RL2xHaRev
         w5vNA03fCWe3TUN82ZCzrubhZS1I7XigQBlYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708941167; x=1709545967;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tKQNwvH/UeIkXyNOqlphLDdRi9b8R2L805pgQZbjTtE=;
        b=wcyOZZgXr3ZQoDjrF6nIV4yR+RQXO43JHgnM8KnBYWxF/dQ7nnGeYq8ncUCJBxkBqG
         e2XzguBVZfpT0IBIpZsEii79++uGp0ywG+9nFWAGHuUGX9z0ldWI/keLCMVVGLMiHX5X
         jpoDPxEVCs1E5TpSA+JTPyVB+oJ+t81O3WKfo7V7IqCH4ASejK2rmC0Naazo9y0nJg8W
         m+bFiy8X0Plnl1OYgSZJ5dOJR/rYFFkAgDYAZF74XspsFdcvzfJ1pedmhMJjQ/m6W1nl
         +gKsbhClaanqQzx0ZsQfw1ikzgxGcg1P4JSL2WnRhg2nzrbphnXC0T+zqWJrN94aNK/5
         +qGg==
X-Forwarded-Encrypted: i=1; AJvYcCVIgiJYgyHTix++mXgvGRa18HhGs5i6ovZulc0vgBOOb584skkkUtNWsJ/j6SQ2/mA6oSQSDqKItTWStPtYWH2OSlNMtvvIJjVUJQ==
X-Gm-Message-State: AOJu0YzxEh+v2FnzO3HJhdCZ2SesSYA1MtwkfDYzJveJTTo+ZERyFLuY
	3G4aTYWzp6hhe5ok/aHfZB8B6zQw5x9Btdes8N8QOP/yDxTImfw/emFCjr2Uauam7fakt6Iz4yY
	8uQhC83atyd1jhtgJPPH5lEHQ/lkv6nMocfR1utjzyO2v0kXNZ7AfFSPF/HGXt4yPED5W/jd1EJ
	ZToXwK8KWdRWX+XTPLZw==
X-Received: by 2002:a05:6871:28a9:b0:21f:67a:198 with SMTP id bq41-20020a05687128a900b0021f067a0198mr8304857oac.56.1708941167078;
        Mon, 26 Feb 2024 01:52:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFqQCb/6BUEcCnB9ST+4FjZQjRJInWfuJCpWHsp3I/vbtkGbQzkeMWlC+S1O3eY8mxcJ7RmdQ==
X-Received: by 2002:a05:6871:28a9:b0:21f:67a:198 with SMTP id bq41-20020a05687128a900b0021f067a0198mr8304852oac.56.1708941166815;
        Mon, 26 Feb 2024 01:52:46 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id h10-20020a63f90a000000b005dc4829d0e1sm3545202pgi.85.2024.02.26.01.52.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 01:52:46 -0800 (PST)
From: Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To: Nishanth Menon <nm@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Udit Kumar <u-kumar1@ti.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V3] arm64: dts: ti: k3-am68-sk-som: Add support for OSPI flash
Date: Mon, 26 Feb 2024 15:22:31 +0530
Message-Id: <20240226095231.35684-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1708941167-304877-12446-3258-1
X-BESS-VER: 2019.1_20240214.1700
X-BESS-Apparent-Source-IP: 209.85.160.71
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIyNjI1BrIygIKWhsmJBhZGBi
	lppubJJubGSSnGycZGSUZJKWlJhqlGBkq1sQATCvmSQQAAAA==
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.254481 [from 
	cloudscan22-15.eu-central-1b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_SA085b, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status:1

From: Sinthu Raja <sinthu.raja@ti.com>

AM68 SK has an OSPI NOR flash on its SOM connected to OSPI0 instance.
Enable support for the same. Also, describe the OSPI flash partition
information through the device tree, according to the offsets in the
bootloader.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---

Changes in V3:
Address review comments:
   a. Fix the make dtbs_check error related to ospi pinctrl
   b. Increase the partition 0 size to 1MB and update the following
partitions start address accordingly.

V2: https://lore.kernel.org/linux-arm-kernel/20240219075932.6458-1-sinthu.raja@ti.com/

 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi | 78 ++++++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
index 0f4a5da0ebc4..d3e869c250a2 100644
--- a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
@@ -130,6 +130,24 @@ rtos_ipc_memory_region: ipc-memories@a8000000 {
 	};
 };
 
+&wkup_pmx0 {
+	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-pins {
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
+				reg = <0x0 0x100000>;
+			};
+
+			partition@100000 {
+				label = "ospi.tispl";
+				reg = <0x100000 0x200000>;
+			};
+
+			partition@300000 {
+				label = "ospi.u-boot";
+				reg = <0x300000 0x400000>;
+			};
+
+			partition@700000 {
+				label = "ospi.env";
+				reg = <0x700000 0x40000>;
+			};
+
+			partition@740000 {
+				label = "ospi.env.backup";
+				reg = <0x740000 0x40000>;
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
2.34.1


