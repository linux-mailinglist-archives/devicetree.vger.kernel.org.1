Return-Path: <devicetree+bounces-223082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0E8BB0BAB
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 16:36:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93E281923D48
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 14:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B23C0274FDF;
	Wed,  1 Oct 2025 14:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OAPF/OM+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFDAD265CD0
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 14:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759329323; cv=none; b=s9+4EqOypj0hwU4AfKPvJOfaUID0p/65RQGl7c9avReP4LWDE1tV6Ju+zMhYJA6jxf19YEO7nApKGQCz2ANXUVa7KPhv8O4hQ7bn3T0fGgxz3/KA5xoLPZodFFFpaXSJRrZZqEcTB+3NKcvwfoSeDdwGvUttTjG8KbQgaKezcPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759329323; c=relaxed/simple;
	bh=My+67m3RKIYhTGgscnRK/PbLhWzY3WuuDDNXstUgd64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MsqulQew7I4jCLVcI/ybR26PNgIoJblC/X3piD/6cJv8jMh7rJxaDXEBrT/7Dv+KHZe8MJAlUZUl0KGInUgZp29xG+aLBk4zWXFZ2W7YHkVwvpSolgWw0LX25CN8k4I4Kg1vm99aPihNDYSDI4jCAF6+Jxh2JoFVNzb4LUWUYwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OAPF/OM+; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b3c2c748bc8so622728166b.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1759329320; x=1759934120; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H8YyqJ4Mpj+JrYYcigX07q99vEPrtstJUifgILYXIvc=;
        b=OAPF/OM+JqW9oUFZdxXYMOhKOjU1ijHHyuKo2dEt1LJKIDYCldMeyEbqONG/OF3kcs
         vRYKZBvErel3zYbIBe3cLzIl33dPoTM0yrV+C5tpoGqkogdlSfLk6pbQ23YWBMNNOfHl
         1AP02TVcAVqEkxCrmTS5HuduKz19oFCzm9r7uvyO8pAb6AbpiLJwWRPkAqMUbzC67KeS
         dofjo8paxGrF5cqEN9G2YDJkkFPU1VuXRCS2ZdW2MAuRRCJALlXjwp2yWLW6ZEg64Pkn
         L4cd/uYaIA/v4JP+u2xQrfLdKUcOEKMmQxdOGf+BFuypxC86cWaRJqQq7/WtysZ8UvTz
         qrpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759329320; x=1759934120;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H8YyqJ4Mpj+JrYYcigX07q99vEPrtstJUifgILYXIvc=;
        b=E9ujaNoTCMaqnKphi5a4ASDr2Z5LHWDNIi/KyMADCEmPbJ64Ci7PZP/xc6+dWIwIua
         sCK0SqiIlxCuPwh+FXKfQeyXKbTt0TeC0S7AqS7TO+oKbjSt1CnoOu9PTvvC/noAYBjt
         YFVFMLnDrz0OrPzPVZJ1E8n3v0HPpFm2W307UAW3Upx7pRHH/kNvmqr2mzV6cxuf28fU
         OkFHZfP02kIXJwvnSXAKtj33UcMmT95C7xEGOB8rONrtBLG8vwJPfA5eZb76WOOEhCq8
         LMQZml94UpEAyjO+cMgQNCMNYQBgcqUM9HqRvPKLAQ/YXLlbz3e0bpJBD5GVet5CLVAE
         PbTA==
X-Forwarded-Encrypted: i=1; AJvYcCU8D/O8uDl/kBObNqC/vNtPhdjUfYFaTSoKbGKz84ox91l7SoC0Cqi2nWKCTMkfMdI/o+6dKpBp3sgk@vger.kernel.org
X-Gm-Message-State: AOJu0YwDNS1BCWp/SyS5hnHER3CutI2QU69uTdw1iskbHdNEL8WEmKcc
	MUx4rU0D7aVyXN3xAFhutFSnxPam+j5uF9Y5pt4/m5k6920ivVbBno/Mm8QfObs2LdI=
X-Gm-Gg: ASbGncuVv4UgCsPYdT+CupdzYbLWeHkIrJ9RGf9qNRJ+6JB0if+/V+DEh3AD3Kbc8oj
	12M+d9k4GHNiM8mJAMyyStxPXWK7ZZ8CPs2TgOxh8PVEOEX1sUJ8wPCaMKjNFvjr9dlhkfOuiYr
	15kgJykx1aNUEFhIAgZvRVbuYfLvlvXTwoQb0KV81Ash8NRiHxmVR8966jBQzA0e0j4NsiJm882
	bTQRptaVetsZN2VpGNtTgIamI73rtMQBX9jXw+5HRibynIrC9JudrClVS7c08XnIPPlu2/jmGph
	lT9MJP5UlNR4ZrY0RNY3bG0ePaO7oFnLrHmL6X+M8WwHLMV11foFhJCAjenpo5SnQtpXrLSxCRU
	/w2NMcs+QrCFIvJA2/g+5e7Fov9musP1BBOddBRo4agrQef8zoyM6np8=
X-Google-Smtp-Source: AGHT+IEZUYVIvFu9zpdz0keZRQuEBQW5QOdn5tY5CYPn4Dka+wn1atmEY0ABuMidlHZ1MNIekIAUhA==
X-Received: by 2002:a17:907:1c84:b0:b3e:dbbc:4e16 with SMTP id a640c23a62f3a-b46e88953abmr482484566b.41.1759329320038;
        Wed, 01 Oct 2025 07:35:20 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b353f772528sm1389698266b.37.2025.10.01.07.35.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 07:35:19 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Wed, 01 Oct 2025 16:34:16 +0200
Subject: [PATCH v3 4/6] arm64: dts: ti: k3-am62-lp-sk: Set wakeup-source
 system-states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251001-topic-am62-dt-partialio-v6-15-v3-4-7095fe263ece@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2978; i=msp@baylibre.com;
 h=from:subject:message-id; bh=My+67m3RKIYhTGgscnRK/PbLhWzY3WuuDDNXstUgd64=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhoy7NjyJt1vjOv8UL9JSfKsjwqTOxPHHwVCjSd7Nftq32
 U0S3692lLIwiHExyIopsnQmhqb9l995LHnRss0wc1iZQIYwcHEKwETiVjP8M9jp2v3+/WENaQ6j
 T9XTzrwy3b5v+Y11b67aR9399EiiR5+RodlMU/fNha0HjolppMo/CjFcGzc72L/fMrBFV9Zlgsx
 URgA=
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


