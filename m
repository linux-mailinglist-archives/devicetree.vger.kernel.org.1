Return-Path: <devicetree+bounces-132861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 136499F856F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:09:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA41C7A038F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDFC11F63E3;
	Thu, 19 Dec 2024 20:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="IcBCWT5b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA5701EE7AA
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734638632; cv=none; b=DIQbvda/NE+2Ahm4OTbXHEpX1fR4cSERsWjZPzgLDSL0U+e5v+wAN5D8R6O6apZdlv4fwifZwxPa5pcMRN6/BjT7TDmX8YYlP+WHl9UmUa1jsnxCHHoqtc6sW3AGLlX4OTDxrGzhRqFFLEXSIHxUrvK/N+LTR2bQ78lYSz0ywx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734638632; c=relaxed/simple;
	bh=IOefNd31nyYbDmidXJO9wxo5hzXqvpD8mI8ntPvadk0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TZAv2Ul9w1sJOptmAZdWBxbmUxZb6+iB5sUHekHCIZ0i8Tm+CpxPv1aROnOpkJ4P+nnpUy7uEp/6FGfkSQdzRBVvT7QuUw0t5+GgfUgnAj7HYbLl4fSedwjP4cIMjtxud8bC9FWeIUy0oeHS0YooJd7OmyUQ/pzsJCEPe6eEh0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=IcBCWT5b; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5d3e9f60bf4so1812366a12.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734638629; x=1735243429; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NpSkCESXzD33ldEw8LvJ7rj1ygUxBpHnL7ohb5Ul8P4=;
        b=IcBCWT5bYwOOkFPFPGz2SFfvM5w0w/vs8lDHlUQuE8z+o1yge7H4bgAHHT9avLwXzq
         uziFG9sj8AALmc6nT9wXRIeTteoMMhxKlgHmWHB36PMkgIPM0Q0Oyw1gSaPBfp0sKrQ4
         qGs1R3wnWHcr2tt2Yi1DxveXGdSd9xdTj1cZrvTwMIai3AF0RGFhUuxvSKAoqRkHqzLP
         fjhkL+JB9yZBYU/g9KpkDj9alJREr+ED2vqGLXIVHpRytFA+QlANo7/2Ovp2PFdNNdzC
         KlOtWYeWbz1W4bZnN8bFlw08eog5ERV5v2F5/FPfvHVfqAB/H99Aez7Y7SBxzQw9qX0x
         UJbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734638629; x=1735243429;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NpSkCESXzD33ldEw8LvJ7rj1ygUxBpHnL7ohb5Ul8P4=;
        b=d1ETov3/jg70bZ9D2Fxu2SUrSrq/7u6Fw039dZ4U2Uajql+BDcjfrNJzVURSKTGRRf
         PubIPbAcrjtU6Wu0IQ/3Upo2a28Av2SKcl5D2LU/RFb1KPXrPQGe3XCC9EREvl251BDR
         08S0JjtPuJNA/Hx9RqW0XEgHbV3FNSTiekyU/xK0kq+Yum8Wu8k9yNkEib+9eQPBynik
         +r3bFqz72JjJlksAwk2FCNoUHj/bMKmv409PzMiwKV1nh56UdLD6Mt1FSOsGjB2t1Ecm
         5Gfrquaao6H5wqf2OmjST3ualBuE673IGc1z0b6baGrT3MP11RijpOWIfWEO5UBH9Qoo
         PuNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRq939albLVwdTXfUZkoh4yHhmSbkMA0W+FJ2rk/rTKmU6hqHVm70VPGc7AOBYdm1PmqAy2ZweeGyl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/QQYIhBjVn/Fb8RpL5b6/HlHsI7+1HOoR4j2oObrPDVMNlpgm
	S9zVnc9YRN4EGlpkF0BkUA5vgC9GlgtFupyXXMhGkc1LbabX2nQ60aPMb438zhg=
X-Gm-Gg: ASbGncsGDoLVldb39QoJ0v5uAZgdcjvWy5/dI5wc3lkzAw5niAHn8UMD67CHuHSYRWA
	C0mkRJLlNmZKdpRfVszpHuidKyvcP6jY+XgHLEx5t8KmtWra9s35SqGtSK9Jwknk+aHCqVo6Rbr
	bOU4nLprjUVB0cPs7QMaC0b7P65hMiRPHw4OTDAdVUIwIRsAdPQlSeM/1dwuTjIqtlv8mrba3Rj
	WseirTeuBk1DQmqGWTDQp87Vd0fj92NVonHQpEZBeOxUC190g==
X-Google-Smtp-Source: AGHT+IF82S/mlq+e2He9tjy3cysnJj4+yC4VHjyyy2VTYMe7y13y6XuWTxuoxho0NH4K7vaCcomgtA==
X-Received: by 2002:a17:907:9621:b0:aab:f8e8:53b9 with SMTP id a640c23a62f3a-aac345f427dmr6210066b.58.1734638628989;
        Thu, 19 Dec 2024 12:03:48 -0800 (PST)
Received: from localhost ([2001:4090:a244:82f5:6854:cb:184:5d19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f011f87sm98415366b.142.2024.12.19.12.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 12:03:48 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Thu, 19 Dec 2024 21:02:15 +0100
Subject: [PATCH v4 4/4] arm64: dts: ti: am62-lp-sk: Add wakeup mcu_mcan0/1
 pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241219-topic-am62-partialio-v6-12-b4-v4-4-1cb8eabd407e@baylibre.com>
References: <20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com>
In-Reply-To: <20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2255; i=msp@baylibre.com;
 h=from:subject:message-id; bh=IOefNd31nyYbDmidXJO9wxo5hzXqvpD8mI8ntPvadk0=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNJTaiTq6r7J5Zyv2RT7eklD9UodC2fLU5s+uYeHt1SnP
 9PUn87cUcrCIMbBICumyHL3w8J3dXLXF0Sse+QIM4eVCWQIAxenAEykn4GRYedvBcGnond2OHxo
 eJH+Oyfg9YPrq2X+MP90NW7zP1Mw6zzD/yILA+GjCyQ+1Rc+V3g8y+/aMydGsXqHw3u1I+7xTFn
 yngkA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add pincontrol definitions for mcu_mcan0 and mcu_mcan1 for wakeup from
Partial-IO. Add these as wakeup pinctrl entries for both devices.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts | 52 ++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
index 8e9fc00a6b3c7459a360f9e1d6bbb60e68c460ab..22695715239644b1bfe209ba4f1c42fae4c59f70 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
@@ -232,3 +232,55 @@ &tlv320aic3106 {
 &gpmc0 {
 	ranges = <0 0 0x00 0x51000000 0x01000000>; /* CS0 space. Min partition = 16MB */
 };
+
+&mcu_mcan0 {
+	pinctrl-names = "default", "wakeup";
+	pinctrl-0 = <&mcu_mcan0_tx_pins_default>, <&mcu_mcan0_rx_pins_default>;
+	pinctrl-1 = <&mcu_mcan0_tx_pins_default>, <&mcu_mcan0_rx_pins_wakeup>;
+	status = "okay";
+};
+
+&mcu_mcan1 {
+	pinctrl-names = "default", "wakeup";
+	pinctrl-0 = <&mcu_mcan1_tx_pins_default>, <&mcu_mcan1_rx_pins_default>;
+	pinctrl-1 = <&mcu_mcan1_tx_pins_default>, <&mcu_mcan1_rx_pins_wakeup>;
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
2.45.2


