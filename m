Return-Path: <devicetree+bounces-223083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 685DCBB0BB7
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 16:36:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFDAF4C2C74
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 14:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0938F2FDC23;
	Wed,  1 Oct 2025 14:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oLSxRAmQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4D026E71F
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 14:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759329324; cv=none; b=mJMm4preqfQhKIt0BfsLNjXywmBm8tfloY5KlgeFcmht3hzcxNnIxdzwmhdLGSJhVmPBlmEy2vYqa8k4mEsOvaO+fyXT5m8vKYXJl8s0urKDOVkQWAZ+1MRc5GaMrBRxLfGJkFbxGlTUgcgKzY/e9cNdLDz1+uDZHnf3zE+aQNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759329324; c=relaxed/simple;
	bh=DlDTQjPaKp6J+FVUMs+te99gGVccW2aVrvQUcaozCNs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hw8/5ACRAnpfgZCFHO3ZpnXCE5reL5K5vJhP7X3uTio9gCCw7fmLCJb/LfGZJYHdn1USTbn8DimEcHqspghOaE3gdAea+CrkETuivvHb5buCot5HccP+qQNXP9oI0KHD3WKDuntaZtubOJEHW+Vj9UEEN1LQmTZUG79HSz8+G5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oLSxRAmQ; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b3e7cc84b82so691016566b.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1759329321; x=1759934121; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2tPbQqMIhSr6O3bhSUBYsPWZBJsuNCJDVVpT6zmr8+4=;
        b=oLSxRAmQsT8/RnKwjcYOvPNqpDSEfGKO972OUFBL2mpGlOdhy3S35rVbQZXLlMuMiz
         w9LXcGtp27EKtSPIBs9hsg40OmPTDFPw3ehxEAFBBjUpUuXu+fzoSYXACNsOMx0VWCn7
         Zs4CBy50fbQU2gvvHwmwwZ1giQvk/A8YrIAevX20aR8HttNzlocXAcNli8zVyXNbYa1H
         qXAqWsOCbNwd5XfWhAlMCxHx50/373T81K+FZbtbg2OXb9QM1aIPKgPXaKhZKcLheMIt
         3h4zQI4EORnhQ52S8m0UMuubsBpEckCKDTtZNsI8SRBFoMG0CHj0lWR+kp/uWWKdJkxu
         CILA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759329321; x=1759934121;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2tPbQqMIhSr6O3bhSUBYsPWZBJsuNCJDVVpT6zmr8+4=;
        b=cW++hIeGeOh0van9cVg3umvWNqWmMVzIQQpv62HmiIioSkoPhEo6d6gAeszofnVeLG
         DHfyEoAEm/5aTNAlh0t1W6bzN810bKlHDG9oZ5Eh+cHRlRWpgn26IPFMSAqE6Ywy3hFX
         FdaKS25X/X8MguHdH0MCZbjh8WvO26RqGSUdhWc4k5znUJjfHc/G9rIVtVK3ycAoMlUQ
         hEGmnxN0bovLslfc8Ce2WwBNoMuqu8q2R2PqXhOqzJBkgzKTkzQBXGpiisBIxSHw8TTa
         umCW9HUkmrZSs70KiLqoWqAy0QB1774HCIxZ703bbw+yVZhvMTujFblEIOwA/vksxF+q
         Wrhw==
X-Forwarded-Encrypted: i=1; AJvYcCU8HJ5JcX36FyPNI7AQqkSDd6uoE+RabkskNCxBziMij2PBVVMtX1Nd4XY7C4BREtaOCoEICG/iS22i@vger.kernel.org
X-Gm-Message-State: AOJu0YykyXWnHwRUVZecQ8d8HFZ3Z6wzYoyOZy3uC7lVY5fMCzgNybIb
	8gHJI91ctOsTWHh43B2ObONjJLEexf45fGrRhk6HvLjFQiQcRWd/K5++5fKRTCnL+2U=
X-Gm-Gg: ASbGnctSW294xac29WBuyxkghDsTNIALkOGj5FqRPIgg43HTGJ2KJvtpeqJy5uq5MFZ
	U2cOk1gEcQ2A3cxASmFTiWtV6QY4RTBOv90T1siMEP/F8+b++CnMw8APhykFkykPhiRK6JP0gee
	k6MB8QKHVBaxY6NI/mdZNKqDH5NHD4F4oGCDk1oDV9ycyS1yna45s6Yt0LM/0sTFQWo7Rl1MqgO
	InksInUN6N9g3739HlgmWlsfhZIJMLOipyL1qGw8DW5qLY5mChyJV0Z6JTTawAUQXv7A32JMBoN
	p9+qpoFSaVLqsUG9956OVtZ6XBlJu9G3khZ4coCkSCFFscbN3TR531XX6x9/ZdfmUG/spysLaE1
	mTsCMrbfTTiet7GidaO6dbGL1vff2A+O3SaVz1z3ctEITLVygJUSlLOo=
X-Google-Smtp-Source: AGHT+IGr72kB2msy16BRTUOxzq/uWEWO32FfYMCXAf2SFbCp+4xcc2vu36b8zG0v7G7YcXnejAZ6QA==
X-Received: by 2002:a17:907:da1:b0:b45:b078:c522 with SMTP id a640c23a62f3a-b46e976545amr454413766b.36.1759329321241;
        Wed, 01 Oct 2025 07:35:21 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b35446f7834sm1395230366b.65.2025.10.01.07.35.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 07:35:20 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Wed, 01 Oct 2025 16:34:17 +0200
Subject: [PATCH v3 5/6] arm64: dts: ti: k3-am62a7-sk: Set wakeup-source
 system-states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251001-topic-am62-dt-partialio-v6-15-v3-5-7095fe263ece@baylibre.com>
References: <20251001-topic-am62-dt-partialio-v6-15-v3-0-7095fe263ece@baylibre.com>
In-Reply-To: <20251001-topic-am62-dt-partialio-v6-15-v3-0-7095fe263ece@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, 
 "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3575; i=msp@baylibre.com;
 h=from:subject:message-id; bh=DlDTQjPaKp6J+FVUMs+te99gGVccW2aVrvQUcaozCNs=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhoy7NsI8kaIbnhnx+67cr6t0Xn5xtOA+P36106tbJPa3O
 Pv/0lrYUcrCIMbFICumyNKZGJr2X37nseRFyzbDzGFlAhnCwMUpABM5oMrwTzll0UE3vXm9RbJW
 Ddt2XJ8dsynnjte75rnuu9ReZ0iFtjD8Uwp8/ONYbcbi4zwXHlyL1PmpKPoguvV5ZJSXzoHFj/M
 t+QE=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

The CANUART pins of mcu_mcan0, mcu_mcan1, mcu_uart0 and wkup_uart0 are
powered during Partial-IO and I/O Only + DDR and are capable of waking
up the system in these states. Specify the states in which these units
can do a wakeup on this board.

Note that the UARTs are not capable of wakeup in Partial-IO because of
of a UART mux on the board not being powered during Partial-IO.

Add pincontrol definitions for mcu_mcan0 and mcu_mcan1 for wakeup from
Partial-IO. Add these as wakeup pinctrl entries for both devices.

Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 71 +++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index af591fe6ae4f0a91991d2904a9a61905a0eeb614..8525aa5ab812c51e2d3371b39baa5e936e616158 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -233,6 +233,10 @@ AM62AX_MCU_IOPAD(0x0030, PIN_OUTPUT, 0) /* (C8) WKUP_UART0_RTSn */
 &wkup_uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&wkup_uart0_pins_default>;
+	wakeup-source = <&system_io_ddr>,
+			<&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
 	status = "reserved";
 };
 
@@ -426,6 +430,42 @@ pmic_irq_pins_default: pmic-irq-default-pins {
 			AM62AX_MCU_IOPAD(0x000, PIN_INPUT, 7) /* (E11) MCU_GPIO0_0 */
 		>;
 	};
+
+	mcu_mcan0_tx_pins_default: mcu-mcan0-tx-default-pins {
+		pinctrl-single,pins = <
+			AM62AX_MCU_IOPAD(0x034, PIN_OUTPUT, 0) /* (D6) MCU_MCAN0_TX */
+		>;
+	};
+
+	mcu_mcan0_rx_pins_default: mcu-mcan0-rx-default-pins {
+		pinctrl-single,pins = <
+			AM62AX_MCU_IOPAD(0x038, PIN_INPUT, 0) /* (B3) MCU_MCAN0_RX */
+		>;
+	};
+
+	mcu_mcan0_rx_pins_wakeup: mcu-mcan0-rx-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62AX_MCU_IOPAD(0x038, PIN_INPUT | PIN_WKUP_EN, 0) /* (B3) MCU_MCAN0_RX */
+		>;
+	};
+
+	mcu_mcan1_tx_pins_default: mcu-mcan1-tx-default-pins {
+		pinctrl-single,pins = <
+			AM62AX_MCU_IOPAD(0x03c, PIN_OUTPUT, 0) /* (E5) MCU_MCAN1_TX */
+		>;
+	};
+
+	mcu_mcan1_rx_pins_default: mcu-mcan1-rx-default-pins {
+		pinctrl-single,pins = <
+			AM62AX_MCU_IOPAD(0x040, PIN_INPUT, 0) /* (D4) MCU_MCAN1_RX */
+		>;
+	};
+
+	mcu_mcan1_rx_pins_wakeup: mcu-mcan1-rx-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62AX_MCU_IOPAD(0x040, PIN_INPUT | PIN_WKUP_EN, 0) /* (D4) MCU_MCAN1_RX */
+		>;
+	};
 };
 
 &mcu_gpio0 {
@@ -852,4 +892,35 @@ AM62AX_IOPAD(0x008, PIN_INPUT, 0) /* (J24) OSPI0_DQS */
 	};
 };
 
+&mcu_mcan0 {
+	pinctrl-names = "default", "wakeup";
+	pinctrl-0 = <&mcu_mcan0_tx_pins_default>, <&mcu_mcan0_rx_pins_default>;
+	pinctrl-1 = <&mcu_mcan0_tx_pins_default>, <&mcu_mcan0_rx_pins_wakeup>;
+	wakeup-source = <&system_partial_io>,
+			<&system_io_ddr>,
+			<&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
+	status = "okay";
+};
+
+&mcu_mcan1 {
+	pinctrl-names = "default", "wakeup";
+	pinctrl-0 = <&mcu_mcan1_tx_pins_default>, <&mcu_mcan1_rx_pins_default>;
+	pinctrl-1 = <&mcu_mcan1_tx_pins_default>, <&mcu_mcan1_rx_pins_wakeup>;
+	wakeup-source = <&system_partial_io>,
+			<&system_io_ddr>,
+			<&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
+	status = "okay";
+};
+
+&mcu_uart0 {
+	wakeup-source = <&system_io_ddr>,
+			<&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
+};
+
 #include "k3-am62a-ti-ipc-firmware.dtsi"

-- 
2.51.0


