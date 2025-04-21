Return-Path: <devicetree+bounces-168909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABF7A94DE5
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:16:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 453047A3C45
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 08:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 299CB25A332;
	Mon, 21 Apr 2025 08:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rleLK1lk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D02D259C87
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 08:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745223329; cv=none; b=u/JoSzFengZwxqBR/3DsrzyI/8B+TYg9qCZhQtMVwxFg7vldzwsfBfa+taGmSvc1G0WBxMRc2WjQtY0obHCIHuNGI1HxMQ1ceVQro22LEuCDzMlnD6dmBlQAzEyjzdY3mMzCvTWqA7EW1y8Ma+QuwKsK+An0dpaPmdTVGdFTafE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745223329; c=relaxed/simple;
	bh=q6o+61mgCHYyj8XEYV871sJvb6B+pphkoRdS0S2i68c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R+1efm4FRG1PR8dI4shw8WDNYpqsMK4JlsN2zq+yQqC/drLIC9qXQ/g5LN9tPbrdKLb9QUzQnEhTlVs3vhbctXirXEh1l+AURlshItw7M+uN3I1KRBuF2+LreKwy/xiqkFPio4IuZJYryaWeEHUGmm1+KFZRVYThuBh2/K+Ycgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rleLK1lk; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ac2aeada833so718297966b.0
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 01:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745223325; x=1745828125; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vEJSvmdRFDOzL1aucFAOiHGGY6iJAkPN4C5adgEBmjM=;
        b=rleLK1lktYRgQ3Gj+DESgYVNO5m5LcRhtYubAbAxcMl9qU/41ba3sfjLqstsXqYu9N
         qdfSSoqjNl45+hZiWOmugnrfEVLheoxDkg1/WArqCNOQvV+5mybUslbS1kOt0l+Xcwl4
         JfRUYEG64Do95bt7lyCvCtsa4Yp5++NQYO83wPc7du9mcMrnQW7VVHWE1KGp8BNYvpL1
         L1Yo//IeslsjVK2gXPEAm2Lv0Y39nrUOrTqOLAnsA/O4WXNysB7mnyWGklxaPgMKV8ya
         H4mU4oofub4T5BN6vdTjaStJHRBQpCTl/a3aUHWJrpFLKZZ5J6reWDNqPdYbi91ABIko
         OoMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745223325; x=1745828125;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vEJSvmdRFDOzL1aucFAOiHGGY6iJAkPN4C5adgEBmjM=;
        b=E2tlAjGKn/j3HVUfgSNGybucdQwcCXXhetLWN2C9ZSeIrHTwnEfoki9JvBJKvshGM0
         mPetdgFsFemKayGWYkTm8GaT3IdwFi2JFbLoGnYogf6aQahVJhqXjCaGzEHbnw2AL2Gb
         OJuxJwTaqMmUfdCaoixWINI+M9VvDkFK/Lsg7TmKIXHCO1knivbjEEyur+qfHcwTXRqS
         WHSOd+TqK5SGhs8QogN6HlizuiENEdCrfRzjA4uL4c87t2vAk7b5z0VN/FiZ9X6gUe87
         fPVoWCQ9a82/WCUs8/ho3JXHFWYjf0sf5Gn/boX5qdaD37jPik6s06Mdc2WwjX2Tb1Mf
         SqGg==
X-Forwarded-Encrypted: i=1; AJvYcCWvc3o5Ei/y0if0pq+E3JxFx0M6sKwmoHhqma2Ac1DQLH39awMW975uKv5yOm2nY3Ky8iHPKnPM1+hr@vger.kernel.org
X-Gm-Message-State: AOJu0YyCX7c9y3XHfh/GX3Lr7VnE+igZSw1Cx3BtXxhrWhtRi0vaqQ+9
	G2OFfnNUv/xdAZWm3Rf1fbO2I7esrCBuGjUASxv0NySRyuQb3ZAdNnL6BY3S4qY=
X-Gm-Gg: ASbGnct7HD1Yo1/X35Tb97/DNCsYWO5R/M03CPlAdcFlnBeUyU9HIakxew140lWeHYk
	QM9gJEkBr3W7UR2bz9zcNwFot7QmvBliRYaPmGBfHBigjnbkswBP5aDPoVoAm5PmBImcmw2IKBY
	6xfyNrFJuWWXnswssvgQV/to9ROAjs1LRwkl2PDu+CbLQkzwISJGp6eNldroqnQMhWvutSMxQHA
	k5zsWAORPnHJUVJcyUFwjczDkAu2kqBVa6IS0OUDnLLuaaa6N/XE3HjLxOon7F/N+3qP947cfUL
	4M1+U/vh1Gk1rnDR7c4OEr3b/fKHoYtbCr4=
X-Google-Smtp-Source: AGHT+IGVk3z2U0xlHufo+U711OJEslZrNhldX39ajOT/JP2mrAwZqxZhp8lxxLXgJcXlWql7zqPhnQ==
X-Received: by 2002:a17:907:805:b0:ac6:b80b:2331 with SMTP id a640c23a62f3a-acb750d9119mr836009566b.4.1745223325308;
        Mon, 21 Apr 2025 01:15:25 -0700 (PDT)
Received: from localhost ([2001:4091:a245:826e:c0c:4cef:7dd:26bd])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-acb6ef46f71sm471684566b.128.2025.04.21.01.15.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 01:15:24 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Mon, 21 Apr 2025 10:14:24 +0200
Subject: [PATCH 6/7] arm64: dts: ti: k3-am62a7-sk: Set wakeup-source
 system-states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250421-topic-am62-dt-partialio-v6-15-v1-6-6ced30aafddb@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3107; i=msp@baylibre.com;
 h=from:subject:message-id; bh=q6o+61mgCHYyj8XEYV871sJvb6B+pphkoRdS0S2i68c=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhgzWf50TZ9c8VrRe7zT1zOYtBtOeBqSWhZ2+JmPUE3zFX
 N5ZSLKyo5SFQYyLQVZMkaUzMTTtv/zOY8mLlm2GmcPKBDKEgYtTACai8pORoWeWp92LeOX/3XXt
 kR29e+QvPl+nolzswlzdt82hv/uMNyPDh4M3XB8c3VW70OZ+f/VfgdaVD5RumsQe73hu3RBxYYE
 XIwA=
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
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 76 +++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index 1c9d95696c839a51b607839abb9429a8de6fa620..724d9a6f3c575fe35496fdd9e17d6d8e33869f92 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -741,3 +741,79 @@ dpi1_out: endpoint {
 		};
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


