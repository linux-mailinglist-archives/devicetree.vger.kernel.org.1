Return-Path: <devicetree+bounces-203659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 63672B222E0
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 11:22:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AB336E2B7F
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 09:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0271A2EA484;
	Tue, 12 Aug 2025 09:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VW56nI3+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C1F2EA155
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 09:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754990201; cv=none; b=JFmppMdP1i9sXzWgdXaCHPuoW4nwIxkj01exeYcJHQdWeMpiJwzvpt+VES043DMMpsG+68XB3L3WNBAxB44QnasIlfngKjMiSFbFPuRh82e6jktkTqlF10LkOGZPEj0J0j6cAxQto87MWpcUINgdVM456eYfQa/0eGMIFAemRhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754990201; c=relaxed/simple;
	bh=us/rMp3k23RwZc1Qh9H3phEU99cwVMWCdJeqp4TweV0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i0AsSdPCBA1bDp2IZ6mw05AVhPQAP1sTRJz9yG2Vt0RgRC84dTeqsSz6yU5sPnrf+XB3Z0yxt/2RSqYJ7L6KeTLtXQUCVxH2sBtrVCFmnLqPl3fAb1JJm+wthJsFu2K5m13+WBTAWCAcfNefktEOa6e4ReAAV5G+MUcystaTASk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VW56nI3+; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-af922ab4849so789431566b.3
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 02:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754990197; x=1755594997; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tKKPbk2zjLmByP+VE7hKfl8sJvKaWXdOt8nmsyt9BjM=;
        b=VW56nI3+bH4hH/P+GRr+ji+usxIlIkp1Nmm65A55ihJDoBW0NfBXQCIpjwZUMvetqO
         LCBc8Pjs+DX7gcsHBbz3x+5lv4nYEt0It3NxXT5Smq6W53Q2M/DhWhXVsLSXPObPFJyj
         fxPiZMpdZfVw0ZZBYlED61Ku4A6A2RywhVAB9FTF6RIBAI2DpEBVF1yfjayfQbBWr8lx
         +is/h6wtsqtK8DiGgjLBiaLkmn4tvno9mYT/CLX3tMvPMUtcvZJv+aFu7fpb4vWtx1Wx
         mKcr1B+V+92nTHO1dDw5Z1o7weITIYdIVBYuMW6Y9P1Y0Ggr6NugJwx4KYeUcLD2fq9M
         Q6hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754990197; x=1755594997;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tKKPbk2zjLmByP+VE7hKfl8sJvKaWXdOt8nmsyt9BjM=;
        b=XcgkFwka3zm7U6t7BUZ+HjZKK467BGCEqzd3kkx+Dc6mocWu0QZe1Y+5FvcsLBzqmA
         3xkuBA5FHC1cmQ8FO+W3l6j6mFp/v4GQZRvjVH57W1HwVc7O+e9ggY7bKMKDoG/uc/tl
         f+R4VElaEHt8ObLrA9R4BaW8OkgGTdVynWYKprSgi+IDEeQPutmG+lEG9qBsxg/sNOYp
         Ia/PKAJ99hq5Rbx5HczJKr6xEnk+xdH2XWo+H7wzvnJEQxYs/Hxc64nzkpAOFGdPYqoT
         dWmjGWLouSs1wHA9nOzippUxZIV2rIkSe2d3v3Eq29Kom9vSLA9wWJh6o15oh51dqiYS
         vV4g==
X-Forwarded-Encrypted: i=1; AJvYcCV0O5Q49uX2E2SO3vjeY/6E70xei92bseMX9C3fUncv4v6pQ57ew4s3Rs7agMgTESUXeD8EpWRO04iY@vger.kernel.org
X-Gm-Message-State: AOJu0YxCJjkZHHUx8Yun5wMpBrEQ3rhqdzNEtd2NhpHjzHhgk3H8S6bL
	iB16SyxYEQXTE4ImVjY2EZNVii3lnue3r1lf45mJvZ4OXM02Qa2sEmnggt1BK2v9VI8=
X-Gm-Gg: ASbGncv+GEzFOmipog+8HocKJr+uhokaSuUF3wwsFZixJO+GnSl+pbY0ostq2l9RL3V
	X3rL+bYeWxopbvmDsTljNRPOiwInd63nRh1Vf8gnxK8anrRmZmEVGhaAx5vxbu86+c+N8z1p9tN
	sddg2CdT/5AhI4pp5dh+8anKAEucZo4rM6snLnmDnmL1pekmW9uknHAraajbmJA35pRmEESVLsj
	32gvmu2Yo2NzGGwkY9Fu+HGmIJfay/np955aRfbhdhe2qmkDpKOgPnk88kT8qKvXo2FR7NvujjC
	jW0v6PRMbap2RBNSREJDWmx3xcWYMJaFlm8c2vV1TnPMCmwdqsR0sgAqXcx99iQeFSuTA3FL5yY
	dA/WZ/vKngDwE7QdLCQ==
X-Google-Smtp-Source: AGHT+IEgkIjROZI/Yz+CBqPaPHop4dqppzi0LKkPjz7/zfImtMWZEtkEpTDytLSR1EZwKCTNbupqMA==
X-Received: by 2002:a17:906:794a:b0:af3:7645:43e1 with SMTP id a640c23a62f3a-afa1df5e53fmr257639366b.17.1754990197493;
        Tue, 12 Aug 2025 02:16:37 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8691:4b7a:7bbd:bac:c56e])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-af91a0a37a8sm2181325866b.40.2025.08.12.02.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 02:16:37 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Tue, 12 Aug 2025 11:15:25 +0200
Subject: [PATCH v2 6/7] arm64: dts: ti: k3-am62a7-sk: Set wakeup-source
 system-states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250812-topic-am62-dt-partialio-v6-15-v2-6-25352364a0ac@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3528; i=msp@baylibre.com;
 h=from:subject:message-id; bh=us/rMp3k23RwZc1Qh9H3phEU99cwVMWCdJeqp4TweV0=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhozZbElvJ4dv3vD162bNiPfXcv6vSzKoYDvBoiQQ3HS4e
 3HFeUnZjlIWBjEuBlkxRZbOxNC0//I7jyUvWrYZZg4rE8gQBi5OAZjIpVcM//QaP0od4jj67HkJ
 77x78qH/AxdUxy+/8yXNW/VIf/oWi1ZGhpns8zijFqz8IX83+uV/ZicR7RdXmAur7ype7dsvPfH
 iLk4A
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

- Combine k3-am62a7-sk.dts devicetree nodes
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 71 +++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index bceead5e288e6d78c671baf0afabd1a9aa23fbee..55cab49f26382f08e2cc93d17afc424af8c59caa 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -257,6 +257,10 @@ AM62AX_MCU_IOPAD(0x0030, PIN_OUTPUT, 0) /* (C8) WKUP_UART0_RTSn */
 &wkup_uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&wkup_uart0_pins_default>;
+	wakeup-source = <&system_io_ddr>,
+			<&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
 	status = "reserved";
 };
 
@@ -450,6 +454,42 @@ pmic_irq_pins_default: pmic-irq-default-pins {
 			AM62AX_MCU_IOPAD(0x000, PIN_INPUT, 7) /* (E11) MCU_GPIO0_0 */
 		>;
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
 
 &mcu_gpio0 {
@@ -935,3 +975,34 @@ AM62AX_IOPAD(0x008, PIN_INPUT, 0) /* (J24) OSPI0_DQS */
 		>;
 	};
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


