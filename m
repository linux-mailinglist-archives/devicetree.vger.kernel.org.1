Return-Path: <devicetree+bounces-203660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A8EB222D1
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 11:21:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0865E5070F1
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 09:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E15F2EA499;
	Tue, 12 Aug 2025 09:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NiMUlD2L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84DB42E972D
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 09:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754990202; cv=none; b=qMegc4N/hnh6JSPXYBLp6NdJQGrnMYiZzi9C7DNkVzpDdIP5Az/6unWw7niC/tTYmMmf/F7ZwyQmr00rYBjNFrfVcoMu6dxIpZGfeDKGIPc3X3ISUAaN1WVaszxmWCz3wRPjQgvPpl51to6Pmwbj6BZG900WZbV+wMD3Y/DaTvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754990202; c=relaxed/simple;
	bh=HcH21KdBujh53AhMHGkxOxQ7fcl0i2byElm0n9yxHEI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PuuU+dOKabmXbhPUwQUh6EUAVUNKgNtW+GHPFA/SEH6VkyRuT6rHxXbQdpT1X9UhCnqjFvpLahvardNs776LKuFkN3Y/v+p7q9J5hPmtNmXSUudqSs6FEMC1cexXwN7GtpCdK0c5gaFzDG2O6lf+tCh88m9i9xgkp+6vG/jw17k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NiMUlD2L; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-af95b919093so773067166b.2
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 02:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754990199; x=1755594999; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J2wGQ2oMb74lV+UDpUpsZVQOZjDtMIs56uGi332fPyI=;
        b=NiMUlD2Lg+/d3mtkUGEICOXBPVLgTHljj7pUhMcTaLGetSaKAeAdfZ/FJB8fRv64US
         qQ3pdcCMI+PtFkuKj1WlddhjxnyPih3SGa5jsbkNaAquTQYZ5AmVcPoNbFVsoRfze8VO
         7pl3ubuL5xVAIgHqqdhTtitkRrhuAZnA81TiDHkIuZg4riGUdL+l13ggHvk87facAggK
         S4oT34qBq5hblEcuf+IDtLaOH/8+t1chgTr8mfUgPd+5m5etpnfY4YH0eHjof4ODehkR
         8bibDKbPF+VaCfU/pL3YnR6vWVrC1Mpt8DcPFEkqpEsi9ieFd12kOqrRCTAn+4wNQkM4
         9G9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754990199; x=1755594999;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J2wGQ2oMb74lV+UDpUpsZVQOZjDtMIs56uGi332fPyI=;
        b=g0U5KuvqsH7Oc4uzhcefjcyONDl5YTgE0fDfUa2V7COmAKBUWSrMQ3DcFam+viEwuW
         rlsJxjWe3PPAHfj1d2SK06xr3xnVE2JlftRxA7d6g6Qg2xpXxejnTb4S78UPc96FYyjp
         5YweZ2vj+YeMw0y8cv1Ub/OzuPCtKYGecXIAlqKqvUnoFSiP1NBrEWrHEMO/V+TWBdij
         ZiCaEXzTnIumX5MCejH5xpG7VQy/I9szCpqrBzsAQFMJbBajelRxXKDGdYE4yaNE+iRY
         iurHb9LL0iCYGr0YwKAdS3XrGJqhEJHru5VjfGRHczlK1nuRbq2qkwv3FBgxOZEDJDes
         h14w==
X-Forwarded-Encrypted: i=1; AJvYcCVq68sZ69rUTKO593foRs3D6FRGzMBZi/0/rLUbYBTnXTtIFjhpDmv5TRq1CeJzYBdxFFVbIZYhjVEH@vger.kernel.org
X-Gm-Message-State: AOJu0Ywvs6Wx/RDjTM2gyskGCphmHsqsP8o4r1jMKesmGePCcTGtOCtT
	v8XkvAlo2Gk1qDpBzUWb+H0DSEW4rf3Fc3/g41xf2ctxTTIuTw1hcwVmT4rr2ynfjZc=
X-Gm-Gg: ASbGncuYllNeRjbHn3J0BmpZPyfJBQ6DIZSh5gRXVugCUDhgq5l7CIbG/8Te7ANe7rP
	0f/PNMgf3H+kEp2uLS2Q7svTw47pHWCWPn2gcxVtaZwBEJN1+OBaVayBCl9xseKnyo9ufZqM2hw
	jTRg6CZk8Fdl+n3zwisgvdfkktdZVxXkB20fSbrkyFbbK8+pmci0Nx/cvyHPCiCjSM7NlkfMfq4
	HX9lZy2P8zbcYWeg7vZXFgaf+kRXRM3PgRsjHjP14747FeG9y/aNDj6XtHCvPlROmYK7+jSKypX
	DhIdDAaQjzItxWxGMHMy0Qr8LndQWSZVxhX+ZYOikNaqa2nceP+09bm8HjbdE8acr09hYRBriX8
	KEyrWYChkkD766rRYqQ==
X-Google-Smtp-Source: AGHT+IGHjBx8sMYs3lHE3j4YSxLMvMr0rPrffmNJN86ZbeNGXfVWDc4mK7dwT8BOAHal4p0WxIZHVw==
X-Received: by 2002:a17:907:6d15:b0:aec:5478:9697 with SMTP id a640c23a62f3a-afa1e0bee34mr206209666b.34.1754990198702;
        Tue, 12 Aug 2025 02:16:38 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8691:4b7a:7bbd:bac:c56e])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-af91a219ecfsm2165135966b.94.2025.08.12.02.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 02:16:38 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Tue, 12 Aug 2025 11:15:26 +0200
Subject: [PATCH v2 7/7] arm64: dts: ti: k3-am62p5-sk: Set wakeup-source
 system-states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250812-topic-am62-dt-partialio-v6-15-v2-7-25352364a0ac@baylibre.com>
References: <20250812-topic-am62-dt-partialio-v6-15-v2-0-25352364a0ac@baylibre.com>
In-Reply-To: <20250812-topic-am62-dt-partialio-v6-15-v2-0-25352364a0ac@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3451; i=msp@baylibre.com;
 h=from:subject:message-id; bh=HcH21KdBujh53AhMHGkxOxQ7fcl0i2byElm0n9yxHEI=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhozZbOl3hBvMDeZeape7b/3hzc/Jz0r2Hm++ey+hM+RC2
 b+F+e+3dZSyMIhxMciKKbJ0Joam/ZffeSx50bLNMHNYmUCGMHBxCsBElm1k+F95cZeRCtNn7Z+T
 nB+8X68Vd/9K4LQvXvO71MP77GvKlygwMvzhemOgzTw1MSXQKJe7cVn/saqKPWq2G4UyHh3Z0Rh
 rzQIA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

The CANUART pins of mcu_mcan0, mcu_mcan1, mcu_uart0 and wkup_uart0 are
powered during Partial-IO and IO+DDR and are capable of waking up the
system in these states. Specify the states in which these units can do a
wakeup on this board.

Note that the UARTs are not capable of wakeup in Partial-IO because of
of a UART mux on the board not being powered during Partial-IO.

Add pincontrol definitions for mcu_mcan0 and mcu_mcan1 for wakeup from
Partial-IO. Add these as wakeup pinctrl entries for both devices.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>

- Merge devicetree nodes in k3-am62p5-sk.dts
---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 71 +++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index 899da7896563b43021de14eda1b0058a5c6d36da..a2dffb5e243f543c90081eeacdc0758b38bd0eb9 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -762,12 +762,52 @@ AM62PX_MCU_IOPAD(0x028, PIN_OUTPUT, 0)	/* (D7) WKUP_UART0_TXD */
 		>;
 		bootph-all;
 	};
+
+	mcu_mcan0_tx_pins_default: mcu-mcan0-tx-default-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x034, PIN_OUTPUT, 0) /* (D6) MCU_MCAN0_TX */
+		>;
+	};
+
+	mcu_mcan0_rx_pins_default: mcu-mcan0-rx-default-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x038, PIN_INPUT, 0) /* (B3) MCU_MCAN0_RX */
+		>;
+	};
+
+	mcu_mcan0_rx_pins_wakeup: mcu-mcan0-rx-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x038, PIN_INPUT | WKUP_EN, 0) /* (B3) MCU_MCAN0_RX */
+		>;
+	};
+
+	mcu_mcan1_tx_pins_default: mcu-mcan1-tx-default-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x03c, PIN_OUTPUT, 0) /* (E5) MCU_MCAN1_TX */
+		>;
+	};
+
+	mcu_mcan1_rx_pins_default: mcu-mcan1-rx-default-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x040, PIN_INPUT, 0) /* (D4) MCU_MCAN1_RX */
+		>;
+	};
+
+	mcu_mcan1_rx_pins_wakeup: mcu-mcan1-rx-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x040, PIN_INPUT | WKUP_EN, 0) /* (D4) MCU_MCAN1_RX */
+		>;
+	};
 };
 
 &wkup_uart0 {
 	/* WKUP UART0 is used by DM firmware */
 	pinctrl-names = "default";
 	pinctrl-0 = <&wkup_uart0_pins_default>;
+	wakeup-source = <&system_io_ddr>,
+			<&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
 	status = "reserved";
 	bootph-all;
 };
@@ -808,3 +848,34 @@ &epwm1 {
 	pinctrl-0 = <&main_epwm1_pins_default>;
 	status = "okay";
 };
+
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

-- 
2.50.1


