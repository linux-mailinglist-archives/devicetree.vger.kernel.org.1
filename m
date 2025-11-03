Return-Path: <devicetree+bounces-234376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E79C2BD00
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 13:48:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B43223B96E4
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 12:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85F31313541;
	Mon,  3 Nov 2025 12:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="B93wK5Mg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B1231329D
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 12:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762173622; cv=none; b=pjEuKSVW0bBzehbSsPbeO6zBzhYv6OrUqJcJszGG9wzDTBwVPJRiZPRIOR/q5F8d4fqwSwvq82wNoXdAuQMGBkk+WSOpasW/nZqLK+FFEgCGVrYzGxL3UC/Y9rwmSXRRU4rIcjBROr66CIE4TQjyr9RB1Hcq8fZqd7azExSkJcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762173622; c=relaxed/simple;
	bh=HUyVsZ1Uo+y8zY0jQWgZxPIdkvaeFXYf2apVmFo9zRw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Hiy0ERovu2DhuWI+NL3WVxFgwc38HZMxQxutFyAuVlkMpL1JTb83GN5sAObWlkUMXQU02nmlgYtcgZFE2byLwTtreorFHNT79j20cxyBE9TE2hZ8XU2os/tGJWw3qUuERiYHiNH42nCiC+mtIKcnN4gYd0zdv8GLtSHyELTJHCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=B93wK5Mg; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-640b2a51750so2216364a12.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 04:40:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762173619; x=1762778419; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4x8toXQoMnFvquaDgnJ+GkHe0JMDPrO2jJ2prwKygxE=;
        b=B93wK5MgiUstp9j9pH+jh7+QO7d/MB0l7/ysHKc826C5YoViozySAIBS2+spmG2EhV
         LoiFXl4rSMOkuVSvJLFtLvAUi1PcMOBR48Sx7BvmWfD8rWNbhcRnpcdQJF28biL9x1Dz
         mvMGh43PEi+b2xpmVdjxXATq9etbSwD1ZsSmqE5G3bfTMn2DZh1+Fa6YJ0/a6sSrLdzo
         maVY7XQT7AUKLL9iN+s4JVAhT1I9Cc0Dj5MQAKHn6cfVzxsAt01jtZzQOb7la6RBD2/H
         UCPyRuPBKNkPCk1pub6MKw6y/sUBMw7nN1VjxX53eVSjRZDWDvmSqHKtqRI8QAW/LhCo
         j/iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762173619; x=1762778419;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4x8toXQoMnFvquaDgnJ+GkHe0JMDPrO2jJ2prwKygxE=;
        b=QWzWL0D03Xd1y9Hox+tVAXbPskbdz7vBQvsWnxTxjwe/7pKtLA9pyJbXHLh+OsWhaf
         bASuqFWKEaNH59NKEEwP6KZTduEkQFlIxQiDOzlbUVqJAzoy3k+Mu5+Yd27IQXp1GCY1
         TjVzoqbyD8PkaX5Yx/G8uesOqSyR8Z9JvZi05oXqVuy7hb55nwou67LZyfBjL5b3aaau
         PCY/zdr2J/HE1ILk7egLn4XkBGNHn/lPnsHepXf3j+cKcdP0q8ZGxKOX32z5KKH5tsBl
         e9olVsge61cV/GgOuZoglziNxbaUihCv6ZmotwpqLkMxQOP7YfIfmJrdixWD3UKOgL+V
         UNsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdTtPQQyAGQYQktiv3j5jhmUfLjZvvwBxShs3L3CAPTXGwuAEUDbV29iQ7+g2gma9bSu0ntD0+4Ado@vger.kernel.org
X-Gm-Message-State: AOJu0YyFUlIGvrfV5iKSElmleyO3smXRc81OHumwQa6OoKCBlUS19aO1
	dqaTxUcI6YdeNmiLu775yrEQEanzllW6437uwkII3UYkFIIBP1dfAFIsCLDVpEnDkQI=
X-Gm-Gg: ASbGnctcmrInG1XM40R+Rwl8LZCM0cXVgGX92Hs+Jl/xDiAhQuUGddm3xzOt+7HTOZu
	//29BTCA/6BXYqrtrtUHLsKa7aKfHqTiGeBoHiKdYxqNtC/lH2265fQQx0cukmvqyTcIoPKP05g
	M+Kctq0pGiXZoTxPeH07NVLe3UVt5+WjQGImjo0CuVM906eCNrs6Yq/QTf76lXNFsAw0UamoUdJ
	ltSmuumSxD3UIVwVlCesRN8hg6ydgVcMMAweCuBpDNbpVikbM2tP3Crr7/fX2v/rjAsKWuHOK59
	dDw+K3VFIhT5bWVXweW3GgHfnlF4TXO2VdMcRqXvW0tgBnTJbqMd/Skaxgh8nsqocKsUjHHYU2B
	WS7x9VojeHyO3Spx+yquogF2WgAZB2gcz6lAMN+80qIEe2Y0IzHY8qzPHz/3iDQZfhf88Vf4=
X-Google-Smtp-Source: AGHT+IHV/4ImtALhytuKHNJv14h0KzIDzlo+tB1lyxS9YabYqtnsudfPUUOoQRyLSp22oOCAqc45fw==
X-Received: by 2002:a17:907:1c94:b0:b4b:cb5:133a with SMTP id a640c23a62f3a-b70704b9243mr1143893666b.39.1762173618456;
        Mon, 03 Nov 2025 04:40:18 -0800 (PST)
Received: from localhost ([2001:4090:a247:830a:fe22:a8:f29a:a5c3])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b71012241a7sm254039766b.14.2025.11.03.04.40.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 04:40:18 -0800 (PST)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Mon, 03 Nov 2025 13:39:32 +0100
Subject: [PATCH v5 5/6] arm64: dts: ti: k3-am62a7-sk: Set wakeup-source
 system-states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-topic-am62-dt-partialio-v6-15-v5-5-b8d9ff5f2742@baylibre.com>
References: <20251103-topic-am62-dt-partialio-v6-15-v5-0-b8d9ff5f2742@baylibre.com>
In-Reply-To: <20251103-topic-am62-dt-partialio-v6-15-v5-0-b8d9ff5f2742@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3535; i=msp@baylibre.com;
 h=from:subject:message-id; bh=HUyVsZ1Uo+y8zY0jQWgZxPIdkvaeFXYf2apVmFo9zRw=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhkyORfPc0vYtnOlx/EXs80U3apNyJ379LFi17yrPjdbYg
 wYyErO0O0pZGMS4GGTFFFk6E0PT/svvPJa8aNlmmDmsTCBDGLg4BWAi96QY/um4cqWLPPF59cht
 8/85QjbWcze7ql6usnZ+vnB70cqN13UZGW6suePT2S/SPP+G86x9K7hZ5t1dzbX0yJ39OlNaU0+
 xW7EBAA==
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
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 69 +++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index af591fe6ae4f0a91991d2904a9a61905a0eeb614..b61370db6986308ec97983f796b993a26debcabc 100644
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
@@ -852,4 +892,33 @@ AM62AX_IOPAD(0x008, PIN_INPUT, 0) /* (J24) OSPI0_DQS */
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


