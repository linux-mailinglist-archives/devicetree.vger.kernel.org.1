Return-Path: <devicetree+bounces-223084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E889DBB0BB4
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 16:36:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1D9C17A0DF
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 14:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ECF02EE5F0;
	Wed,  1 Oct 2025 14:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fOtAU7L9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6DCA2FD1B4
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 14:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759329326; cv=none; b=d+vM9KaKyq+YK22BI0E+1Yei2WFtSm3/SHcPcu6r/rwWny8Q2wOW2XL8+V0Hu8UKuODuarJYZVLSzF5fZoyB0GMcmJNs8puukZHZt9EZwqm9G8ZUVCkqpK2OKQOyTRQzABEqiidxhkuWwrt90s4xHmRRUSulpizQHLkm2H08cMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759329326; c=relaxed/simple;
	bh=fmSTQ+NAhyqd5hnJaZ0RF1b/fo5Oy35WVR6j4Ev0AlA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ganfi1QAPElBb1fB/Be/8LIwPkEVC+JbUd2T2M059zAfjoXcueRSvMYRo1YFX8PYISgsm2eG4725oCIDglXQoS2GN4EopkRhDw19UKWb6lNU8HZPh6ThACPeEAv7DOiLr5TVdM2ZdUPpBZngFiLd6RXUAcdC20Gth1tQ9LXwuz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fOtAU7L9; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-634a4829c81so12481659a12.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1759329323; x=1759934123; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wv1v1rCyNVZow/EufS/6YnSEiovq7wLtWvMHkvWDLt8=;
        b=fOtAU7L9nJF2PGvJwISkBUEGqihK0pBaIYQwjV8kDlNTiZ3KYtHg7nh5tKHyN16aO1
         eETZTsMCxhE0JnElaSknurdBh9C2cWoZDQypLnEVFwzeguL2+8Cn8cTnht3xHNqLkPDD
         X6k1VyvLSpEjwVVRTRn0CeTScUn5UlPKU2PEPTyS6UjkayxN4xteAhNyBpWub1lUq+iK
         26CTL6L/Qyn9vTwH4ntHIl7cMF6WvrLuK+alipruWjg72BCpbz7q6RITiY3CGH+BoupP
         j5YcmjtNsQFTyoe5l/yz1g9TEsBcEpdpNDmBCYbhZIwMYnCCOBIi5ApzQA4ZmSHekNXl
         ImYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759329323; x=1759934123;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wv1v1rCyNVZow/EufS/6YnSEiovq7wLtWvMHkvWDLt8=;
        b=GZ5It8rt8CMY04hTFb7e2FGFBkK134BnUVzJCkP5aukzO2q+2N/WmfGZcs7yor27pO
         v9iJS4/1I+MCWKRIcRPbavsm/zLY5v0aIkWYz//u4i3oJsAD5dg88RdAGKUUaN5oofD0
         xH3FR5tk8CAfY67xXsmbhGeBOsV+3lBtd8o56ODza5O5Bkn+4RvEGOWIfzCIGdxSEu7d
         sTg4Ewm0wpmLe/6h/P7EynTsPk7lkn8tEIrFxMvRbyrtXjdPXos33OPKizv6o9WSUZr3
         +LecDARyiNZa1RjDMEIEdyZHX6un0a/+R3oibhpSQ66EWQl41wpOVx6/4esQCX9Fl+nM
         ZQtw==
X-Forwarded-Encrypted: i=1; AJvYcCUvtiFX9KKjqWEG+6g9fmd93JSxmCvC3LRrghh++0xBRW21rfnMv0ensdgOYCuXc+hX0/6L3I2DesfM@vger.kernel.org
X-Gm-Message-State: AOJu0YysIulw5uPCGe72EgiC6CPZk6txHLBFdqo/FFwZ8on3E+RyMo8T
	OaRCvwAmcrQm66/dPODe0DWUBsLcf9Yj1/Si8khww+mjh1sERqbG47rFCzs1NweA+gM=
X-Gm-Gg: ASbGncsX/ZTcHP6W8w+VDe8ElvUATjeaSHgF5GNUw4utz7EI3uafQG8pQIGh42UAirF
	oQGmLsqsr2gr4TmMYHCy0UlV91FMdP5mqusSvhAQXANnAbj4w9+5rctDeV+w9G0lM1ccKLFxigQ
	3O3CWvneRIAXoxEpdglPw4dVE/dDt35sgWuWKbV3+CMWEooO4JiW5VFVBETfwitPdykiVY8YL2M
	vgO/PRDli0IdDQ36/tLa3uwbbNESc/MQGfi5RCxznaZ0vDGSmObh+FSWnDoJD18HuFZcNIGXSzm
	Hh/PFCyw04JIkMhNmyZv0+GDC9IsldAB2LvuuCrpXdKqwCju0YsQQKgtGYi9No5H2wFX2lag4JC
	deWYbrdv6uL7NEXfyqfWxhFh0DS5nn1OMGv2ELsemB7lM
X-Google-Smtp-Source: AGHT+IHXTlr6hMwOEdJJpqBV4TMV8ge8bItPiUQfnDU+pVip/S84k8hnYZeWqUPXz9KdDsMvP84M+w==
X-Received: by 2002:aa7:c60c:0:b0:634:bc7b:440e with SMTP id 4fb4d7f45d1cf-63678c9f531mr3386752a12.36.1759329323126;
        Wed, 01 Oct 2025 07:35:23 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-634b46dca59sm10770760a12.8.2025.10.01.07.35.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 07:35:22 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Wed, 01 Oct 2025 16:34:18 +0200
Subject: [PATCH v3 6/6] arm64: dts: ti: k3-am62p5-sk: Set wakeup-source
 system-states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251001-topic-am62-dt-partialio-v6-15-v3-6-7095fe263ece@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3461; i=msp@baylibre.com;
 h=from:subject:message-id; bh=fmSTQ+NAhyqd5hnJaZ0RF1b/fo5Oy35WVR6j4Ev0AlA=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhoy7NtIOJyXa982e0NF0+aJG1Yfla+P23fDaE/LkRt2yL
 cKteh+dOkpZGMS4GGTFFFk6E0PT/svvPJa8aNlmmDmsTCBDGLg4BeAiDxkZbkTyMO75rFOZcfnN
 Qk+ezG+JlVqCSpem10/tUfomHSkSzsiwrX1JX/ZhruQD7ZnJBVKno+ytZedOTdP+9JjD+9inXZb
 MAA==
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
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 71 +++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index a064a632680ec69dba9dbe591fd49caeb9ac1111..36116210fbe6111ee8bb9a1736ed02bec0f20b67 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -716,12 +716,52 @@ AM62PX_MCU_IOPAD(0x028, PIN_OUTPUT, 0)	/* (D7) WKUP_UART0_TXD */
 		>;
 		bootph-all;
 	};
+
+	mcu_mcan0_tx_pins_default: mcu-mcan0-tx-default-pins {
+		pinctrl-single,pins = <
+			AM62PX_MCU_IOPAD(0x034, PIN_OUTPUT, 0) /* (D6) MCU_MCAN0_TX */
+		>;
+	};
+
+	mcu_mcan0_rx_pins_default: mcu-mcan0-rx-default-pins {
+		pinctrl-single,pins = <
+			AM62PX_MCU_IOPAD(0x038, PIN_INPUT, 0) /* (B3) MCU_MCAN0_RX */
+		>;
+	};
+
+	mcu_mcan0_rx_pins_wakeup: mcu-mcan0-rx-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62PX_MCU_IOPAD(0x038, PIN_INPUT | PIN_WKUP_EN, 0) /* (B3) MCU_MCAN0_RX */
+		>;
+	};
+
+	mcu_mcan1_tx_pins_default: mcu-mcan1-tx-default-pins {
+		pinctrl-single,pins = <
+			AM62PX_MCU_IOPAD(0x03c, PIN_OUTPUT, 0) /* (E5) MCU_MCAN1_TX */
+		>;
+	};
+
+	mcu_mcan1_rx_pins_default: mcu-mcan1-rx-default-pins {
+		pinctrl-single,pins = <
+			AM62PX_MCU_IOPAD(0x040, PIN_INPUT, 0) /* (D4) MCU_MCAN1_RX */
+		>;
+	};
+
+	mcu_mcan1_rx_pins_wakeup: mcu-mcan1-rx-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62PX_MCU_IOPAD(0x040, PIN_INPUT | PIN_WKUP_EN, 0) /* (D4) MCU_MCAN1_RX */
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
@@ -763,4 +803,35 @@ &epwm1 {
 	status = "okay";
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
 #include "k3-am62p-ti-ipc-firmware.dtsi"

-- 
2.51.0


