Return-Path: <devicetree+bounces-255349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1837D226FD
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:31:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 51FF9301C5FC
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 05:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CD7B1CAA79;
	Thu, 15 Jan 2026 05:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="csHk99/f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7151B2C21D9
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 05:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768455101; cv=none; b=Qf5pH2mrwnguP8eYrZSGFpPaoVIuoaqYppD0NIoTRaKpUsGLQQXMgegb0M3LeMiWVFJ3Wc0QuCTMUk6OAlz8zfH0Ei04n+xHPii0cYQIQaAGq5lhWSqEQ3toMCpvLXRObLd17gzYxqIMEuhIptLDMKta2zghzE1QxIdhSLTaAgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768455101; c=relaxed/simple;
	bh=6TyzvlDEgGMykzcg6Z4CBW7MDDYADNaJPKfgiva2mnI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kE685naoAbincSQ9Cax90Mu0eFjAPxXICkKaGeDswhFDBt8qRSKyaLxjNeE8/4uNjKOCIdI4DqdSuTUGTeHPznf6M74ltkuWd9areyufKNhwW1+liHu78XioFP28Kk9AVtan95ImVnofB2v+CcjQ2vxQnbokowYKgYyFT0txPPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=csHk99/f; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-792815157f3so4968307b3.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:31:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768455094; x=1769059894; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q/7mz0mXjXA2DXkjO4TEuV+xqnNTQ2wbsC+8nrLSQPI=;
        b=csHk99/fT2L3UIj9K2xrlM/xzJMp8D8h75jqzvSzwxiu4rdv5+dgcsPqHB3aiMXqYj
         i/yDPszLtSZFtQtnplUUcTuvWw2CPQPM14B7294CqIwLDUT+d4Tvwwf66q6O8m4yIw+G
         gNfbhyhpNdDpmbu1sBLZmf9KwhTRwy9zmqwFYq018yG6TOPA/5cDOFZoLDR4mANTK/w5
         CZ24kqgigrTg2rb+M0xHvZzYnqGOhvPiEBWiqdldTav0NqUWR3icw9Ha7NMtNGaXo/WC
         bfGmxxcS/QsBdXh3WrX3lTPnTxgQK9O81qZwy1x82Vq9NWJoJ6LVSNQX691RHyXYzheq
         CqJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768455094; x=1769059894;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q/7mz0mXjXA2DXkjO4TEuV+xqnNTQ2wbsC+8nrLSQPI=;
        b=G5IR7NKjztsAMB/2x3H5CPnVZ7OqoTAWEnh1IoFTKA80R28lg26apAL93ncedzKgX8
         knu3xlHjLo0NyRJyS2K7kQyg9H65yLm1Rn2AEMI3r37hyviQU1z+hKguSusoJU/KeFWU
         Q0hzxZPHPzvl4IO0PKonmcJfli/HN6jI+N/ay8/sQgAA5HlrhOPk/myBLnHV1ov+W3r7
         Vf7lc38eOFh52u2pmref47UT5pME5KCGRU8kKEcUkQUI1R2zXlmJexneu2mGDp3aJqNr
         GVQglPezBcVE1bZvrIm9jopkjNI+PZEQX3IPrGBCAeyHMO8VQHvPTCJNUN+OBMpDZi+U
         FyRQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9wWUuAggv0GAw1S0BKONYdUMVsHESsdarLggIw4jz3n2C3thMsv0ljzrtZyee5/32OrjoKJoXCw1l@vger.kernel.org
X-Gm-Message-State: AOJu0YzcE579/zB1alj5eonPRFemsNCaT1OHl6xwTHHbV0mn8MVWwkgw
	OOLiwvsLt1vzkxco8m0GDOvMQu3J5fRtEoQsvcYwYGtiSSm7qY+8/0AL
X-Gm-Gg: AY/fxX5My+Fk/t62uccoPhKSetyudd2SYMRM57CQbLMeRdGRCiYt3laS1mJ70ew2jol
	a0kVZnjnPD1k/b6miWFnyIE1wAu/M5+z/71WVRKcwpD+OSU7ABVsY/8QJhfzFHDtB6uS20ipIFc
	d3a+ayj657rRVpfzY6qOZRb9bj4vxuJogKhp+ak6eCG1zVArJDQ7G9bUSiLf9vOFPbmSa9tJwpS
	f2pJZg9mAPOZ367z1kKIxPfRwnwmlQxL56UqVdbSBQjLnk3ez/fd14n5VklU3LfYGwdDa4ZE/H/
	HD+Fze693ML1q6xhGfeFTyYfcOUATu8sj3P04zYaokgL2gry6m8Rl3K4xRZu8WX3g6p//OTfs9z
	8yWNZgM6CyInbrSEzuQWPtPzB0pbplQ+Hc9KfhjXlj/4k/CZv9kGL74xZasyLWQxf8IM/a/P+Eq
	zMK0TD
X-Received: by 2002:a05:690e:1341:b0:645:5cb9:dbd2 with SMTP id 956f58d0204a3-64901b0fa1emr3887933d50.67.1768455094381;
        Wed, 14 Jan 2026 21:31:34 -0800 (PST)
Received: from [192.168.2.165] ([2600:1700:220:59e0::914])
        by smtp.googlemail.com with ESMTPSA id 00721157ae682-790aa553172sm99259437b3.11.2026.01.14.21.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 21:31:33 -0800 (PST)
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Date: Wed, 14 Jan 2026 23:31:08 -0600
Subject: [PATCH v2 2/2] ARM: dts: aspeed: Add Asus Kommando IPMI card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-asus-ipmi-expansion-card-v2-2-12b72d20a9b9@gmail.com>
References: <20260114-asus-ipmi-expansion-card-v2-0-12b72d20a9b9@gmail.com>
In-Reply-To: <20260114-asus-ipmi-expansion-card-v2-0-12b72d20a9b9@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, Anirudh Srinivasan <anirudhsriniv@gmail.com>
X-Mailer: b4 0.14.2

Add device tree for Asus Kommando IPMI Expansion card, an AST2600 based
PCIe BMC card.

Signed-off-by: Anirudh Srinivasan <anirudhsriniv@gmail.com>
---
 arch/arm/boot/dts/aspeed/Makefile                  |   1 +
 .../aspeed/aspeed-bmc-asus-kommando-ipmi-card.dts  | 117 +++++++++++++++++++++
 2 files changed, 118 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed/Makefile
index 9adf9278dc94f84653775296c93150e61cc99328..f599a3e61dd1ae69a133f2b9ea3a90da699f2f18 100644
--- a/arch/arm/boot/dts/aspeed/Makefile
+++ b/arch/arm/boot/dts/aspeed/Makefile
@@ -14,6 +14,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-bmc-asrock-romed8hm3.dtb \
 	aspeed-bmc-asrock-spc621d8hm3.dtb \
 	aspeed-bmc-asrock-x570d4u.dtb \
+	aspeed-bmc-asus-kommando-ipmi-card.dtb \
 	aspeed-bmc-asus-x4tf.dtb \
 	aspeed-bmc-bytedance-g220a.dtb \
 	aspeed-bmc-delta-ahe50dc.dtb \
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-asus-kommando-ipmi-card.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-asus-kommando-ipmi-card.dts
new file mode 100644
index 0000000000000000000000000000000000000000..ab7ad320067c1ddc0fea9ac386fd488c8ef28184
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-asus-kommando-ipmi-card.dts
@@ -0,0 +1,117 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright 2025 Anirudh Srinivasan
+
+/dts-v1/;
+
+#include "aspeed-g6.dtsi"
+#include "aspeed-g6-pinctrl.dtsi"
+#include <dt-bindings/gpio/aspeed-gpio.h>
+
+/ {
+	model = "Asus Kommando IPMI Expansion Card";
+	compatible = "asus,ast2600-kommando-ipmi-card", "aspeed,ast2600";
+
+	aliases {
+		serial4 = &uart5;
+	};
+
+	chosen {
+		stdout-path = "serial4:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-fault {
+			gpios = <&gpio1 ASPEED_GPIO(C, 5) GPIO_ACTIVE_HIGH>;
+			label = "panic_amber";
+			panic-indicator;
+			default-state = "off";
+		};
+
+		led-heartbeat {
+			gpios = <&gpio0 ASPEED_GPIO(A, 7) GPIO_ACTIVE_LOW>;
+			label = "heartbeat_green";
+			linux,default-trigger = "timer";
+		};
+
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x40000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		video_engine_memory: video {
+			size = <0x04000000>;
+			alignment = <0x01000000>;
+			compatible = "shared-dma-pool";
+			reusable;
+		};
+	};
+};
+
+&fmc {
+	status = "okay";
+
+	flash@0 {
+		status = "okay";
+		m25p,fast-read;
+		label = "bmc";
+		spi-max-frequency = <50000000>;
+#include "openbmc-flash-layout-64.dtsi"
+	};
+};
+
+&gpio0 {
+	gpio-line-names =
+	/*A0 0*/	"", "", "", "", "", "", "", "BMC_HBLED",
+	/*B0 8*/	"", "", "", "", "", "", "", "",
+	/*C0 16*/	"", "", "", "", "", "", "", "",
+	/*D0 24*/	"", "", "", "", "", "", "", "",
+	/*E0 32*/	"", "", "", "", "", "", "", "",
+	/*F0 40*/	"", "", "", "", "", "", "", "",
+	/*G0 48*/	"", "", "", "", "", "", "", "",
+	/*H0 56*/	"", "", "", "", "", "", "", "",
+	/*I0 64*/	"", "", "", "BMC_RSTBTN", "", "", "", "",
+	/*J0 72*/	"", "", "", "", "", "", "", "",
+	/*K0 80*/	"", "", "", "", "", "", "", "",
+	/*L0 88*/	"", "", "", "", "", "", "", "",
+	/*M0 96*/	"", "", "", "", "", "", "", "",
+	/*N0 104*/	"", "", "", "", "", "", "", "",
+	/*O0 112*/	"", "", "", "", "", "", "", "",
+	/*P0 120*/	"", "", "", "", "", "", "", "",
+	/*Q0 128*/	"", "", "", "", "", "", "", "",
+	/*R0 136*/	"", "", "", "", "", "", "", "",
+	/*S0 144*/	"", "", "", "", "", "", "", "",
+	/*T0 152*/	"", "", "", "", "", "", "", "",
+	/*U0 160*/	"", "", "", "", "", "", "", "",
+	/*V0 168*/	"", "", "", "", "BMC_PWRBTN", "", "MB_S0_DETECT", "",
+	/*W0 176*/	"", "", "", "", "", "", "", "",
+	/*X0 184*/	"", "", "", "", "", "", "", "",
+	/*Y0 192*/	"", "", "", "", "", "", "", "",
+	/*Z0 200*/	"", "", "", "", "", "", "", "";
+};
+
+&gpio1 {
+	gpio-line-names =
+	/*18A0 0*/  "","","","","","","","",
+	/*18B0 8*/  "","","","","","","","",
+	/*18C0 16*/ "","","","","","BMC_MLED","","",
+	/*18D0 24*/ "","","","","","","","",
+	/*18E0 32*/ "","","","","","","","";
+};
+
+&vhub {
+	status = "okay";
+};
+
+&video {
+	status = "okay";
+	memory-region = <&video_engine_memory>;
+};

-- 
2.52.0


