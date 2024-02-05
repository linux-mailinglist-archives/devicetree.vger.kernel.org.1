Return-Path: <devicetree+bounces-38839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 776F284A7C9
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 22:42:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 967301C2729A
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 21:42:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F04EF12EBDB;
	Mon,  5 Feb 2024 20:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="DRjiCzpX"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip12a.ess.de.barracuda.com (egress-ip12a.ess.de.barracuda.com [18.184.203.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66B112EBC6
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 20:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.184.203.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707163701; cv=none; b=KvJHLlkhi2dB3Q9R+0rlfpL3B99Gn6SpRiqBsiWGQP7ta1qBlgh4K3CVGG5einM3K5VV/SHAeRXg2nsPbaIpB9v6t0vXZ/0pSVXnxnhUVxlwlMWG3AtE9z7GmLY09NsBh14skXL/zBH7yGG8YwcV0XMZc/Sws2JdLP7ip50XY8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707163701; c=relaxed/simple;
	bh=v5QWEXnfFbNjZVL+Z6j+gkDsA0PJUzacT9xN72IKzMI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=c7dRp91giywhKYNZQl/85E+/GOglAOeKMcduUi1IpBV0qcP1sV+ZyTlKBRgWYLDinQShkVwMPRXQclpyLksN978b/g3dN4R6tDHtTdnchEyerrQzq7NZpIbM/hqxr1Vm1IvYRNsAqRuRFriEAOFArXGYIoClF8WOLXgJcl2Gqdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=DRjiCzpX; arc=none smtp.client-ip=18.184.203.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198]) by mx-outbound10-206.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 05 Feb 2024 20:08:17 +0000
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-1d97eb98e1cso29483395ad.2
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 12:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1707163696; x=1707768496; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xbMYquCJ21TuxOyccTY96oPdcw1GObLB4bxG4242sRo=;
        b=DRjiCzpXl/MaqgNQgyWcvfb/GYU4pWnWSiGDVTM6Ob84/HeFVxGiSM1ff/JDAaRxpP
         8M1IhNSX6RSKLOhmet2wKz2Mbtfl/Gm0OnN6uEMpcRpK1dyuuL9sQCzEvaZN9jMP/GQU
         8+VeJoxoJ74raLqLo6vXZEi7PAcP9eFPHkZ+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707163696; x=1707768496;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xbMYquCJ21TuxOyccTY96oPdcw1GObLB4bxG4242sRo=;
        b=UzNwGYWZRn54p/ToN3nYXI1pwlDxp0FsV8NZrhWDo2Cjmt1VchWfL2XSv6VVOrNuCB
         wnDarEbIb/5hhazai5rHMqcI1zD2QUv0oH7O35G6RsfoY8lptLPVe7cNvLdmhyVq2uT1
         lCQkemgPoefTz+k4c1YBLOi3OCmn/t6ku5Pu3LOTZR8tIHGB7yHzzga+wpLu1PsAKSQV
         rsOT07woG4eQcEedpRTNZG1L2zjMmX1R5obHWGd+Efe3fjyAQzIZisyDkUozQ9NqxryP
         w8cgM4v3ezMKLKI1nYZfS6jfM5PHufDcfqr1MkIH7CnOq9Z8P3ueb6cvU6Mz/LocLuLo
         7uuw==
X-Gm-Message-State: AOJu0YyYcNc6R3mqrT0JwmJh9PrOmMAIICD0GivQ5Nr65IvwJt1FMGfp
	adwv3kHmlbBZ5UNRcKy9zUfwDVTlvqBjjmAFGCgGK15Lt5W9fe2IG9WhBpjO3v904J2f9kpcJ18
	uIpSLACLL/eDoNoYbUizbSVBl990EI4A1UicGkIHkSxMolOwNSkb+ax84esRE6cbFj+LHmUZcMu
	uztKSs0XGyNtJN1jQ9Pw==
X-Received: by 2002:a17:902:e74e:b0:1d9:5cfd:2bd7 with SMTP id p14-20020a170902e74e00b001d95cfd2bd7mr633245plf.5.1707163695978;
        Mon, 05 Feb 2024 12:08:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGjxY2AiCSar2ap9svejpZO+j5cARILTz/QbBetpsHPWX8pey7CnWMsb82XeYhEvO/5TVXG6w==
X-Received: by 2002:a17:902:e74e:b0:1d9:5cfd:2bd7 with SMTP id p14-20020a170902e74e00b001d95cfd2bd7mr633225plf.5.1707163695670;
        Mon, 05 Feb 2024 12:08:15 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCU2hdDQGIjxqVEu0RCu+wPxiHOkdFG7hNo5mimjUljY1E9P1wF/PVcoK5VWmgICVD4too4MvohmPqFOQ2GePThJ+/vt1dEwJyPD4s+g2nGfN+rnqkCt9K397plMLNMSo4J7mEiha33DnahqlaqC5LSwgMETpSluizqF6WaOASyReKj4UEYp15KozZP6kqCUbdoHes5FXiyxMKSVdO/1i1mtFXLH5QYtLfSjzPScVTgiiPTX28zDmzPKFIWRlH3S2A36I+7kGg7vWo43Y8UK5dDeNRrAPpAifOZqXU4A/WS7ZqCvGI3tTa9hsuw8Uz3sh31aH+P7B+o7cwha0ALX6YwSVu4=
Received: from LAP559U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id t21-20020a170902dcd500b001d739667fc3sm263900pll.207.2024.02.05.12.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 12:08:15 -0800 (PST)
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
Subject: [PATCH V2 1/2] arm64: dts: ti: k3-am69-sk: Enable CAN interfaces for AM69 SK board
Date: Tue,  6 Feb 2024 01:37:42 +0530
Message-Id: <20240205200744.216572-2-sabiya.d@ti.com>
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
X-BESS-ID: 1707163696-302766-12427-39627-1
X-BESS-VER: 2019.1_20240201.2150
X-BESS-Apparent-Source-IP: 209.85.214.198
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIysjSxALIygIJJycaJBslmFm
	ZJyabmBqlGiSnGaUbGqQYpxommRgYWpkq1sQAPbUbmQQAAAA==
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.254009 [from 
	cloudscan10-250.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND, NO_REAL_NAME
X-BESS-BRTS-Status:1

From: Dasnavis Sabiya <sabiya.d@ti.com>

AM69 SK board has several CAN bus interfaces on both MCU and MAIN domains.
This enables the CAN interfaces on MCU and MAIN domain.

Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 81 +++++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index 8da591579868..64c737cc3d49 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -321,6 +321,31 @@ tfp410_out: endpoint {
 			};
 		};
 	};
+
+	transceiver1: can-phy0 {
+		compatible = "ti,tcan1042";
+		#phy-cells = <0>;
+		max-bitrate = <5000000>;
+	};
+
+	transceiver2: can-phy1 {
+		compatible = "ti,tcan1042";
+		#phy-cells = <0>;
+		max-bitrate = <5000000>;
+	};
+
+	transceiver3: can-phy2 {
+		compatible = "ti,tcan1042";
+		#phy-cells = <0>;
+		max-bitrate = <5000000>;
+	};
+
+	transceiver4: can-phy3 {
+		compatible = "ti,tcan1042";
+		#phy-cells = <0>;
+		max-bitrate = <5000000>;
+	};
+
 };
 
 &main_pmx0 {
@@ -429,6 +454,20 @@ hdmi_hpd_pins_default: hdmi-hpd-default-pins {
 			J784S4_IOPAD(0x000, PIN_INPUT, 7) /* (AN35) EXTINTN.GPIO0_0 */
 		>;
 	};
+
+	main_mcan6_pins_default: main-mcan6-default-pins {
+		pinctrl-single,pins = <
+			J784S4_IOPAD(0x098, PIN_INPUT, 0) /* (AH36) MCAN6_RX */
+			J784S4_IOPAD(0x094, PIN_OUTPUT, 0) /* (AG35) MCAN6_TX */
+		>;
+	};
+
+	main_mcan7_pins_default: main-mcan7-default-pins {
+		pinctrl-single,pins = <
+			J784S4_IOPAD(0x0A0, PIN_INPUT, 0) /* (AD34) MCAN7_RX */
+			J784S4_IOPAD(0x09C, PIN_OUTPUT, 0) /* (AF35) MCAN7_TX */
+		>;
+	};
 };
 
 &wkup_pmx2 {
@@ -525,6 +564,20 @@ hdmi_pdn_pins_default: hdmi-pdn-default-pins {
 			J784S4_WKUP_IOPAD(0x090, PIN_INPUT, 7) /* (H37) WKUP_GPIO0_14 */
 		>;
 	};
+
+	mcu_mcan0_pins_default: mcu-mcan0-default-pins {
+		pinctrl-single,pins = <
+			J784S4_WKUP_IOPAD(0x054, PIN_INPUT, 0) /* (F38) MCU_MCAN0_RX */
+			J784S4_WKUP_IOPAD(0x050, PIN_OUTPUT, 0) /* (K33) MCU_MCAN0_TX */
+		>;
+	};
+
+	mcu_mcan1_pins_default: mcu-mcan1-default-pins {
+		pinctrl-single,pins = <
+			J784S4_WKUP_IOPAD(0x06c, PIN_INPUT, 0) /* (K36) WKUP_GPIO0_5.MCU_MCAN1_RX */
+			J784S4_WKUP_IOPAD(0x068, PIN_OUTPUT, 0)/* (H35) WKUP_GPIO0_4.MCU_MCAN1_TX */
+		>;
+	};
 };
 
 &wkup_pmx3 {
@@ -992,3 +1045,31 @@ dp0_out: endpoint {
 		};
 	};
 };
+
+&mcu_mcan0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_mcan0_pins_default>;
+	phys = <&transceiver1>;
+};
+
+&mcu_mcan1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_mcan1_pins_default>;
+	phys = <&transceiver2>;
+};
+
+&main_mcan6 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mcan6_pins_default>;
+	phys = <&transceiver3>;
+};
+
+&main_mcan7 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mcan7_pins_default>;
+	phys = <&transceiver4>;
+};
-- 
2.34.1


