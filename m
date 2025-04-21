Return-Path: <devicetree+bounces-168910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDF7A94DEA
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:17:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8E0C3B348B
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 08:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D024B25A64C;
	Mon, 21 Apr 2025 08:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cTwY8+he"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3611125A2DA
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 08:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745223330; cv=none; b=knLZOqymH/Dljl/A6y6b056w7vGUIp5igkTe1DAJ/vo974S1+VYMlXHm9Hvp/xR6RBnZa9vWPytjM7kLSlkSItEm9rkVad+rL66wLbpkrTVns+g5NnR0cCUy5zl0li0OJybZ4iPzhA2+rwY9wMxvpRNsCCcsIjfF1ddaRgwHRQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745223330; c=relaxed/simple;
	bh=MJ7GDc2/lXPzcfIbuMIl/StTi8QjW73NVgG9fDDiuKg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LVscwjwrW3VMZb4bpvG/4Arkcf9sB09NGMtwjz1CwYOBfX+MPouM9mw6IXDSlyNWPHcKZEw3b2Ougnh3bSHw+b4/EwPuU4C+uvo8xmdl0JOrdreyUhtKpdyj1O3cXRQT6TVbyzKwTFA0kzqcU2KYgbH3OxkmZSB2SIPUq/YZloY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=cTwY8+he; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5ec9d24acfbso8488277a12.0
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 01:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745223326; x=1745828126; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XaPay1MzqaydVLYCPFc19eHuG2b1zJCo3mT9rCzo3yU=;
        b=cTwY8+hemE6Cr1sc9a1Z+e0b+sjrN3K4e42Qc6HARse+Z0G/v4yXGqEe0WQCC3yoJo
         pcDlxHrrar8dgTXAEEIMm7vu3Qp2svFovRvH38FcySGAGzm50JkfKQvccOxa8ZBp7l2M
         buFKV9W4P8PljaaS50wCkpEc8AHti+nMmkad+oz/QL7qe/mDXRZgTdZA30lMDsptvZXp
         I1rZsCE3LSeci+M8xpSLd6l8EZ7DnHGP8YIjyf4q7aVtdT3G9oAOnP8tqVpnEihdQQMt
         H3rOShdbQo22qUDJYOhQaZpyVi504WJIGCyx2WtcBpTy1IYAwIWpRlKjuvWPHui1/m/c
         p8VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745223326; x=1745828126;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XaPay1MzqaydVLYCPFc19eHuG2b1zJCo3mT9rCzo3yU=;
        b=qar269B5gX37mg/nNQnvKDpWkOMuVdsUdNf+DttJPShWyShp0B/cnu9UYqkOOtbpzW
         /YrgPXoL4Y5vkQB6LMP6SE8HfMHzj3rLxCTOcdschy0fLZRYRi9IdhF4pXMy2q2Ngu23
         GSlMTEdHwIYQXDDJRqyOdQn/STR3JfV419k4dQ98VAfUcTI5pwLbVi+Rpz6ijIbBhuH1
         zBehgLNo2hzQRVLrmsVm7uM4YWlTs70sXMi+R9r6xE8X0nGcnRnyAkW8t7teIRaQm5cF
         qy+4T7zsb+pHqctmMwmg4aRR+Gs7B3GoqgEr3Ph4nFe4AEqbB1A6PTuHsBOu0FZrmrrM
         MJSA==
X-Forwarded-Encrypted: i=1; AJvYcCXVHZTArRNnlfnEJ7aHchLHnA+mr/pL/rowrmeWhYiZmAFo436uDukd5zaHJuc6ZBl6LopXgkmRlUyP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0IF/SjWjchJQQqGNn6AvpQJDFbzkPYk/LrbILdUk/Nvg3vkua
	vva5bwT54ti3CIlU5JKeu7IC3otJ3aLOdqoU9rknx4bqpfN2ONTXa8hcykdJii0=
X-Gm-Gg: ASbGncu59EB0clDAsdRZSlaE1ya0olFA8e8XCg1Hgog+sJhGB4nJ8sLRE12HWSZYJ8r
	iOL1FT/cBYNyjZbNYl3vzGd/lM8QWhT6RqENlQFpFwiQmvOhdpiA3zy4FH2z2/YmhJUqqlOE1WO
	9fIrCSh2Qelpn1LCQd67/0VEYOWYEosByF7mjJfYU1my4WcpsyOo4R6Cswd5TwtCnEECHOfulg1
	BSmrqPFOx9D3ry9nD5EGBYUD+2P+6LVxSYwDV7+zMG/UlnwRMI14iALrNLxfTvj9VkxSqiCjGTO
	47FYnVKKlcXmW+1JACfCGTxi30qd5aQl9c8=
X-Google-Smtp-Source: AGHT+IEz6OK/0SCaGlQ9/V1Qao7LcZ09YwhvCsSG50Lj++vLPxQthtcW3aF+/ToXm4oiTAZpR60XDg==
X-Received: by 2002:a17:907:2da7:b0:abf:174b:8ca6 with SMTP id a640c23a62f3a-acb6eeb62cemr911809366b.27.1745223326485;
        Mon, 21 Apr 2025 01:15:26 -0700 (PDT)
Received: from localhost ([2001:4091:a245:826e:c0c:4cef:7dd:26bd])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-acb6ef45784sm469002966b.129.2025.04.21.01.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 01:15:26 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Mon, 21 Apr 2025 10:14:25 +0200
Subject: [PATCH 7/7] arm64: dts: ti: k3-am62p5-sk: Set wakeup-source
 system-states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250421-topic-am62-dt-partialio-v6-15-v1-7-6ced30aafddb@baylibre.com>
References: <20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com>
In-Reply-To: <20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3129; i=msp@baylibre.com;
 h=from:subject:message-id; bh=MJ7GDc2/lXPzcfIbuMIl/StTi8QjW73NVgG9fDDiuKg=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhgzWf31bXE577XuvUtH/fe6/uiUHZrFwOk3MktddKnbhV
 M4cdqmOjlIWBjEuBlkxRZbOxNC0//I7jyUvWrYZZg4rE8gQBi5OAbiINsMvpp7gF09t7dl1HW5z
 /jBwjTm4tOtItMMcRdvP3mnKZjvYGBlu/GmOdiypMTU7GLH8kXjVzCm3pp+LEhM213qxIdym9i4
 DAA==
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
---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 76 +++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index d29f524600af017af607e2cb6122d3a581575ffc..35b950e444353c416e33344dfff42e2edeab3aba 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -683,3 +683,79 @@ &mcu_gpio0 {
 &mcu_gpio_intr {
 	status = "reserved";
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
+
+&wkup_uart0 {
+	wakeup-source = <&system_io_ddr>,
+			<&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
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
+};

-- 
2.49.0


