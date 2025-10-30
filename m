Return-Path: <devicetree+bounces-233126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B719CC1F3E3
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 75FF74E8352
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 476AD33FE11;
	Thu, 30 Oct 2025 09:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RA7ay26d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46942341AD0
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761815962; cv=none; b=eMervIJDqWrElSwp6I3omgl6W6z6hnq9pdx1bHEBiNCYk6S3wI2cTRy/tyX8RCtMAOsVkicwvTnZgoycbk7JBVEp392JLFLuFxwtS8ARLe414agfcy7ozdTapYoK2fR1fouyjRZPgCijqhb55E/YGcCgHrUuvRwwcl4HHycOnes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761815962; c=relaxed/simple;
	bh=DlDTQjPaKp6J+FVUMs+te99gGVccW2aVrvQUcaozCNs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TcFQgwRw+U1GhXLv5uwIZRycbkdm9lfk+UQP1xRr4UieRjRSc2w8clEQGf6wdEY4lLuSk0GQeRC7oCvp+cPYFbwsOlI+y/7agp4zijFsVc5OM2ZmuQBF7wpqT8EUIUVXIWiPtE2Q32VQiOkVQlDk+x/Y3CLNfdzJf7aEO0YrgNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RA7ay26d; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-429b7eecf7cso352519f8f.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1761815959; x=1762420759; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2tPbQqMIhSr6O3bhSUBYsPWZBJsuNCJDVVpT6zmr8+4=;
        b=RA7ay26dQxTFdr+kYG3EydkT1Uf4+cN6snYqyjsKK2l306QdiZ6ciwMBz+XUzU4npG
         xExROe3t4l6ACSZxA3XhTlWueSxWPJSkYFBYuhBuzdUlPsX7aI+g/8o0dsvCAW3HpV5R
         FPldDNBPbkZeOgKd0uxKGI/UnfLf5BvxG1BtEqsq4HXz54TD3VGdqcfY0Wk7XrdpMqNY
         7SudUbRdI+hvnPbDYOt/JzTMaYke2TGvLTeqogsjEfv9Llz5KJdDXGcMHDHA/HOmejHt
         byBJ8XcHhOjJ6BmH3NEtCHAGCjKBEPivJr3QDb74HjEpnJ7qqEeZqFR8h3SpqtvWyUgV
         skog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761815959; x=1762420759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2tPbQqMIhSr6O3bhSUBYsPWZBJsuNCJDVVpT6zmr8+4=;
        b=okJVLF/WTLw4ZQG1GuH5QtosJfhbfnqvug8jbZ9u4bSaR2tSrVbaatQfmpXu0MybQQ
         oBwJi4JkFJAYQ/9DDXU0BpTV9NAb/WTq+j5htuf+Qi6CGQJM+MNunn9T/t0ZXIjtzsLg
         D4/mTMhooi2DlyFyTISFyzjmNu4RpbFOh5qQq/nkrKYFBChOYWGnVYmXCKZIpUbcakwK
         IMujxkUkqkCV3+iXRThcWkOvoP086MFRd2GvYqjKJC1fI/9fsA4KdyfTxmCnUWi5pQK6
         gCwT6oTi6tkkZVNFHe+cy0VIKi2/UoZAz5WVGy/uRS1OvYeNbwGnPiJiH3EAGEukUrZu
         nTsQ==
X-Forwarded-Encrypted: i=1; AJvYcCX74B+TmizTdMAsyMySu/aKMWlkUvbSgjpsLBFPWOIeZ7Tc+9R9etFKJ581MQaqVhyaU/8mBOj9cQ6E@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4fHHlx+EDAyhr2/Ph0RlXPIbcovfPKClRIbE4rKSLNreW3Z+V
	/iMA7oks1cf1qrbC68i9ydzBgIxhwlYXXQBheQN+ePW8KVKiB1QvzkJk4K1Dy2WH85A=
X-Gm-Gg: ASbGnctEwvLgv2KkZu/haYHMYu7suIeEjd/N2YF9RIWkPUUVuQEzfI6IVovLw1iFD3b
	plw0ZR0qjESDnzENIKNHZyB0ZnsCKNSMfqlmnmoZhlzB8kF1DW8FmvGCyQ6/rRq7NxmQh3FVFbR
	UDGTkC5WgE2fxNSnBK9IMHAFzldRv/YGQlNW9luSSpxyjOdwOfK8JOMqo4sJGPB0qaOX1q0DRjQ
	VrCqnJ/M7ym8Za7gxC0uP06clLE62g6H3teARpUKf5vNmHIxFArMVtVos5z04Gy1v2p/9RLXdxJ
	Clahq0VLL/fBVIHp050aQ45OOc8WtfI3HtNmmqj9fc02hPjeiozuBV4NuFK5g4lzaf4xYwpy54k
	D4TDib0tqJWHvNEOstiZCn9Hq7Si3NvNMarrxZjL65bgPN/IPf+sm56bj4VLL0ReUXbFrjM/qoZ
	rdsk3AAxnm
X-Google-Smtp-Source: AGHT+IFcE9q/kyflF9AMCkU9/dO/5fz26ntsTtcUbDvLfoDxfh/eegwIiNQAhehq4TE+V1RtsJ7O8Q==
X-Received: by 2002:a5d:5f47:0:b0:429:8b4a:c3a0 with SMTP id ffacd0b85a97d-429b4c0f3f3mr2278972f8f.2.1761815948696;
        Thu, 30 Oct 2025 02:19:08 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-477184251c4sm66858255e9.1.2025.10.30.02.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 02:19:08 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Thu, 30 Oct 2025 10:17:27 +0100
Subject: [PATCH v4 5/6] arm64: dts: ti: k3-am62a7-sk: Set wakeup-source
 system-states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-topic-am62-dt-partialio-v6-15-v4-5-6b520dfa8591@baylibre.com>
References: <20251030-topic-am62-dt-partialio-v6-15-v4-0-6b520dfa8591@baylibre.com>
In-Reply-To: <20251030-topic-am62-dt-partialio-v6-15-v4-0-6b520dfa8591@baylibre.com>
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
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhkxm3dIV/ZtySxkD1Na2iyvHt+1lYdc7d415fazqpRsXp
 KyEd4t0lLIwiHExyIopsnQmhqb9l995LHnRss0wc1iZQIYwcHEKwERm9jH89/HQeffVbPm8N+lC
 Eo3M0ybf7jdPF1n4Vv3+GYWYfSLXnRn+VzJXzas7fD8rKi9885dFyUunq2yqTy/nnXj/rufFSQu
 SGAE=
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


