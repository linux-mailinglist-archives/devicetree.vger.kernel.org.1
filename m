Return-Path: <devicetree+bounces-185171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E71BAD6BBA
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 11:09:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B5AA188D9FF
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A334622A7E2;
	Thu, 12 Jun 2025 09:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BjKbST4f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC73D22538F
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 09:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749719313; cv=none; b=RA7vMuscKF11G2Sh6/eo481OyuD/NYJ+9naOojRd+m/FC5ebAy4e17t5T6PGHhWPq77g4HLowTOEDQDAmgsT4TpUrpV/i05hRNJAsbULYznRLe/+y0tB57TvbB6GiH9LFpf9skNJXigyMOMEPlPSNXhoe2YRTrhK4wznz68RH6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749719313; c=relaxed/simple;
	bh=33KJWBkI7rM8jT4VqOLvllhf3AJjAdnqppvUHNnIlHo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MNpGN4ndnrMw1HcPa/QcAdXbkgfvneCapkNrQoN2SlMIMnnowHaOLPH6RmYmHo6gnRx2VCIf5kJndmyACC+oQY63zNufngZ6EGPKi9ffnUaFHuZ6OOimLOe0cgjYQJCt0NVquFMNNAFQn/fyhNvQgMN0MYJewvqSOcUPZXrpdfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BjKbST4f; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-adb5cb6d8f1so126907066b.3
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 02:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749719310; x=1750324110; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XOp2CZidLhOmD2AW6kGHp67OREEo6XfroyPiU2YyVaI=;
        b=BjKbST4f326d0u7S5flarvPBW62yJdxSx2/Y4sJe1xlLJrQAgo2SJ7tw46pxylhuk0
         bNkH0kEjpQqgSp7H7JEim6GB3sCvJtzuFxijs7e947vqlUD/C1hsVLoYxQGHLYRrw1QT
         UgJNPgnF9GMWmPZ6WOSx7B6TA397ntLwKjUmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749719310; x=1750324110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XOp2CZidLhOmD2AW6kGHp67OREEo6XfroyPiU2YyVaI=;
        b=erTtKbSK9u3COBFf2COqqitgbB8lsyT0BrVxjs/IWTurQdC5C9V1ojCAJrSn3lU9XK
         tsa+6zeJPRNXXeQViZ1HAm97KZuyfHI3Gmak5ooYKAIgBn91s7rbGhhbcJ98RkaGnm5i
         bqJdkAEoFjiswLa3aQkLlxTTIdQHKALLRMfRINvn4pF2qkj6wQLTgpVqIMdwNMjzCi2h
         Y+7NmyvGc70EWvLKJde8jL1KwEkRe1mqJeE5/g+IPkAow6PyfcqUEVXl2eMf/wShoOkM
         EKDTbl/O5F9OlpOt9ZAQFyv22mbDI6F0SmjYHky8bHqQjaW2n1FZ7WZ+NqgqDA/9DYVU
         VKaA==
X-Forwarded-Encrypted: i=1; AJvYcCXN9ozkTw3xGmb6iaHauBMMkD3Trzn6KIHnuQUXZeCsfWYLjY7jMirTVIVaQsDD/vWy5kmIa3o5hiAo@vger.kernel.org
X-Gm-Message-State: AOJu0YwhmL0ww1lM5OOVpSU49yzARMAebVeMd4H9IVFuUcXPd24yOxvM
	aOpgAYM2CfiNQAKjvgk6bvwzQX7xXXqiNirjbN0t1sSkigy8hzq5V0I5BCABaPjgc1w=
X-Gm-Gg: ASbGnculX+4wpoaDLP5MvwR6c2ynEafPfbtDhfOI6Ddv8YNnJct12fEZAWPA2xI7cou
	PG6Up+Qq271b51wFyHLLeIGCcMsf9ps/mNxHuOHXPw/Yph7snAHOncqTz6dNXqsuSZx3oLkqCOU
	ievAm+CnBQ4vLFIcpGmUDiKSt5Aq125jul4KeVEnKmUrBgD6VdLO1WdVCDi98+bVydlkk+JriNc
	yJehCW6cKgGIKpU3E8C8Nb5Uaj+BWAuutLTTpupi2/9roLO3Ozv/S/tUikBCVf9oYfXmvJbh6Fh
	SZD1GnRljFVF2/5ldeFdVXCbdENanGPOd78sx5Ic7s8FloU1v1jIqjrs+XLKjvZhFEPfDE3A5Mn
	0oP74lKUtKXVXTW/wVgHRbvFAWg==
X-Google-Smtp-Source: AGHT+IGFdYyZwICEn5pUqccNAy05uHrtK7vypSlXvflXDY0Q2wzkFTnD0yY8JVc3QiFTMxGE2CiQwA==
X-Received: by 2002:a17:907:9706:b0:ad2:2fa8:c0a7 with SMTP id a640c23a62f3a-adea25df1b4mr275919366b.21.1749719309960;
        Thu, 12 Jun 2025 02:08:29 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.38])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adead4cf274sm99933366b.31.2025.06.12.02.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 02:08:29 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Frank Li <Frank.Li@nxp.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 02/10] ARM: dts: imx6ul: support Engicam MicroGEA-MX6UL SoM
Date: Thu, 12 Jun 2025 11:07:47 +0200
Message-ID: <20250612090823.2519183-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250612090823.2519183-1-dario.binacchi@amarulasolutions.com>
References: <20250612090823.2519183-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Support Engicam MicroGEA-MX6UL SoM with:

 - 256 Mbytes NAND Flash
 - 512 Mbytes DRAM DDR2
 - Ethernet MAC

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>

---

Changes in v4:
- Add Reviewed-by tag of Frank Li

Changes in v3:
- Drop an extra blank line from the iomuxc node.

Changes in v2:
- Change local-mac-address to 00 00 00 00 00 00. The actual value will
  be set by the bootloader. The previous one was assigned to Freescale
  Semiconductor.

 .../dts/nxp/imx/imx6ull-engicam-microgea.dtsi | 95 +++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi
new file mode 100644
index 000000000000..43518bf07602
--- /dev/null
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi
@@ -0,0 +1,95 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2025 Amarula Solutions, Dario Binacchi <dario.binacchi@amarulasolutions.com>
+ * Copyright (C) 2025 Engicam srl
+ */
+
+/dts-v1/;
+
+ #include "imx6ull.dtsi"
+
+/ {
+	compatible = "engicam,microgea-imx6ull", "fsl,imx6ull";
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x20000000>;
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>, <&pinctrl_phy_reset>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy0>;
+	local-mac-address = [00 00 00 00 00 00];
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			reset-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <4000>;
+			reset-deassert-us = <4000>;
+		};
+	};
+};
+
+/* NAND */
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-ecc-mode = "hw";
+	nand-ecc-strength = <0>;
+	nand-ecc-step-size = <0>;
+	nand-on-flash-bbt;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_enet1: enet1grp {
+		fsl,pins = <
+			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
+			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
+			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b009
+			MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
+			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
+		>;
+	};
+
+	pinctrl_gpmi_nand: gpminandgrp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_CLE__RAWNAND_CLE		0xb0b1
+			MX6UL_PAD_NAND_ALE__RAWNAND_ALE		0xb0b1
+			MX6UL_PAD_NAND_WP_B__RAWNAND_WP_B	0xb0b1
+			MX6UL_PAD_NAND_READY_B__RAWNAND_READY_B	0xb000
+			MX6UL_PAD_NAND_CE0_B__RAWNAND_CE0_B	0xb0b1
+			MX6UL_PAD_NAND_RE_B__RAWNAND_RE_B	0xb0b1
+			MX6UL_PAD_NAND_WE_B__RAWNAND_WE_B	0xb0b1
+			MX6UL_PAD_NAND_DATA00__RAWNAND_DATA00	0xb0b1
+			MX6UL_PAD_NAND_DATA01__RAWNAND_DATA01	0xb0b1
+			MX6UL_PAD_NAND_DATA02__RAWNAND_DATA02	0xb0b1
+			MX6UL_PAD_NAND_DATA03__RAWNAND_DATA03	0xb0b1
+			MX6UL_PAD_NAND_DATA04__RAWNAND_DATA04	0xb0b1
+			MX6UL_PAD_NAND_DATA05__RAWNAND_DATA05	0xb0b1
+			MX6UL_PAD_NAND_DATA06__RAWNAND_DATA06	0xb0b1
+			MX6UL_PAD_NAND_DATA07__RAWNAND_DATA07	0xb0b1
+		>;
+	};
+};
+
+&iomuxc_snvs {
+	pinctrl_phy_reset: phy-resetgrp {
+		fsl,pins = <
+			MX6ULL_PAD_SNVS_TAMPER9__GPIO5_IO09	0x1b0b0
+		>;
+	};
+};
-- 
2.43.0


