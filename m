Return-Path: <devicetree+bounces-234375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E1038C2BC3D
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 13:44:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 963A734B78D
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 12:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C6BA31352D;
	Mon,  3 Nov 2025 12:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oX90j611"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEDA30EF9E
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 12:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762173621; cv=none; b=ctnN4WV6KQOTfBVXt+IUyMNQy7VvAhrt7KjmBKMNuMJY/r9Gx+3/er+T5HOh4KGRXOLHaPOz43Z0Vh+dGiWfsQ8FctAOfznAlesS44M/nvza2aX30pN+0kP2PautgP2sjB23+js2co2RhimJgmvjRwcBUnxwb84HEF14VMbbZHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762173621; c=relaxed/simple;
	bh=My+67m3RKIYhTGgscnRK/PbLhWzY3WuuDDNXstUgd64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JoLv9cb2qHHQ9MGrpqf1JaMRWaRTqxc1LmnbfNaf1IvQGCsdFH3zjvyT7eGKGeClM0b8+vTkDgFCUNP4Cw+e+vpTi2c0voLLiyqrNmSdh6uro8kna7xDKoLXYtg3LmlFJwkNPJGSqaHjU4SYDWPjBLpY+53Loc8NIdhY2U63tWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oX90j611; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-640a3317b89so1890869a12.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 04:40:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762173617; x=1762778417; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H8YyqJ4Mpj+JrYYcigX07q99vEPrtstJUifgILYXIvc=;
        b=oX90j611PjbAoLZVNiPcYH2egsx4la4TnSSRH84IMoAOzKEPdZMzZH8FCIYJfTeMkO
         Daxorto9fWjS04FpyF9lLIE/LQ8YCngjOhrPnCtm4aU8rJI1wpQTRq4hxn0YHCVF0NVU
         snP3xnizoD3mrUyxrGE+ElPfOxmAmAOpWi9aKqhP/llNJeoesrB9y2M9DGQa86WrSVtd
         weYufAeZsDcKHT0vkzys5l32/ub45BkuyZXOuq8NYZChSs6XTSCv2SvDRPFqjCSvfa/k
         RQw73/TlPbaKMV7WkXsDInOuCBwy91C0JaGB+FqMZShbfukor+mLo9DItDU6ERj69o1Z
         46yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762173617; x=1762778417;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H8YyqJ4Mpj+JrYYcigX07q99vEPrtstJUifgILYXIvc=;
        b=mO2ScVBp6z6ZDAkQ02upnUTO7QmaVQwlpk2PbUqicr68mIvwWqAwrzLYqtCH8XEExG
         OMtML3deWHD3/gU0lWYMkxCMzz7Yu4BGbR3EdR5oqSrsWgv3fGxvJNbgwPY1lmKICUoh
         HtQpCWk/2dUIekY5rkDRe9H96Zu3AbuacMTkizybgrXHcOitBg7P8XQ27Avp9gp0g2YX
         DDyRkPWGf3lm55hNhkEMa7tcky1PgLgHnI4ryZV2QSy0h5eyAslO94BBTxuQi/RORmss
         jK+YD3qnAEcI8UPljpj0gNHHHjvVZk9s9IYm0QGclPa+kxfj9KGmtm8FrOXSuBvaTtgx
         KLtQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7Xg8t8RzhXLswyEroYZYlBHtkY2t7++6gTKATzJHLGUq6WRBo4Dr+Bf3X3crjV3COJ4VjuNu09wqb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0XkQyRLxzepIBZLjFXVzPGLKJpZ+gjWsnFmMKB8sjbXBVemZm
	o91RRVFi9P7J6ka6EOIZRMrWMtupvFiFMCgwDpXEOD43m2XQlMIJzys4fW/tbfOpxuw=
X-Gm-Gg: ASbGncuGEF8n3dRtk9nAvLp+u+h1K6uHQ8uDUWUNuEMfglQniwdmogJ3QSVYwHtF5QP
	DzJAo5QvL5SxnpiR2Oj9U967luxewL4BXJr5A0YemgV48fmRWDa9mpcUEUjgfpNgwshohlmaWcF
	BJNqZTqYRnDL0xrn5tyq/GksNef4cvy/7GCJJR0BVKmRxD9TFukaDwlSAp390/rDnqSPeWQ8W0/
	MQfOejwbxJ0yHJ2iTVlBLsaWtYrLNvhkQ3uqqYBHsCdTe/lgAYHoQZtD7HJW6u3AxS+8G8Sr58m
	JjuvN/diPm53lAw5XGgNTWfgDaLjSXPDTe/zXe3NtaszfnbXYu/hAxbls38TyXQHzGCogii1uID
	ko9qeOvj/ThpKwujncdeJ5JohgyY4EZeBHSEjKoEhDcerdn5wb8gyHoRomD2lJwbAtTB4u8U=
X-Google-Smtp-Source: AGHT+IGIaEPB9InpMwc7+C802tcMPSbzxBhJrtyKVRnUVFSYpjnjRtfxcKkqDE6hgYF9CpxesRD8Iw==
X-Received: by 2002:a05:6402:2710:b0:640:c394:5c7 with SMTP id 4fb4d7f45d1cf-640c3940662mr2707319a12.11.1762173617422;
        Mon, 03 Nov 2025 04:40:17 -0800 (PST)
Received: from localhost ([2001:4090:a247:830a:fe22:a8:f29a:a5c3])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-6407b428119sm9481228a12.24.2025.11.03.04.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 04:40:16 -0800 (PST)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Mon, 03 Nov 2025 13:39:31 +0100
Subject: [PATCH v5 4/6] arm64: dts: ti: k3-am62-lp-sk: Set wakeup-source
 system-states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-topic-am62-dt-partialio-v6-15-v5-4-b8d9ff5f2742@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2978; i=msp@baylibre.com;
 h=from:subject:message-id; bh=My+67m3RKIYhTGgscnRK/PbLhWzY3WuuDDNXstUgd64=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhkyORTOPO5yvm8u56fd3jrNzt1YtvaaytLv2ttjODfoTd
 2cpVy8x7ihlYRDjYpAVU2TpTAxN+y+/81jyomWbYeawMoEMYeDiFICJCGxl+GfU3lGzrc5gTaG3
 SptW9omwRe82HUiM5auuqucqOvH8xkpGhgeeXTmbdByWnyz2KDtz+Py61TP0K3v32Rj2/0iI+ul
 6kwEA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

The CANUART pins of mcu_mcan0, mcu_mcan1, mcu_uart0 and wkup_uart0 are
powered during Partial-IO and I/O Only + DDR and are capable of waking
up the system in these states. Specify the states in which these units
can do a wakeup on this board.

Note that the UARTs are not capable of wakeup in Partial-IO because of
of a UART mux on the board not being powered during Partial-IO. As I/O
Only + DDR is not supported on AM62x, the UARTs are not added in this
patch.

Add pincontrol definitions for mcu_mcan0 and mcu_mcan1 for wakeup from
Partial-IO. Add these as wakeup pinctrl entries for both devices.

Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts | 60 ++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
index ecfba05fe5c273c671cd0968f3eceaf54d22ac7d..cb63db337b2bc4c83b48dde693b95dd9fd93cd26 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
@@ -276,3 +276,63 @@ &main_gpio1 {
 &gpmc0 {
 	ranges = <0 0 0x00 0x51000000 0x01000000>; /* CS0 space. Min partition = 16MB */
 };
+
+&mcu_mcan0 {
+	pinctrl-names = "default", "wakeup";
+	pinctrl-0 = <&mcu_mcan0_tx_pins_default>, <&mcu_mcan0_rx_pins_default>;
+	pinctrl-1 = <&mcu_mcan0_tx_pins_default>, <&mcu_mcan0_rx_pins_wakeup>;
+	wakeup-source = <&system_partial_io>,
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
+			<&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
+	status = "okay";
+};
+
+&mcu_pmx0 {
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
+			AM62X_IOPAD(0x038, PIN_INPUT | PIN_WKUP_EN, 0) /* (B3) MCU_MCAN0_RX */
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
+			AM62X_IOPAD(0x040, PIN_INPUT | PIN_WKUP_EN, 0) /* (D4) MCU_MCAN1_RX */
+		>;
+	};
+};

-- 
2.51.0


