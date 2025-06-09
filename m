Return-Path: <devicetree+bounces-183761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C5934AD1B51
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 12:17:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CCAC3A6CD4
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE506253B59;
	Mon,  9 Jun 2025 10:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="rsSOcVQ9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49ADA252904
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 10:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749464210; cv=none; b=l9PPRp81T3ozCQIwbbbzvDe7bDbjOhNkD/tQoFHUip4GIkqxgm8Vjv4aRdW+xQku/0K5/70wGZqgtQB8sqnbpMDhntEmLtNW7Zegr+X4062ZCIY2jDmHSfftwvthPAIrgmCXMgD/E59/gyg6EbxMfAbwq6tUNW6rBkBh1QFSKh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749464210; c=relaxed/simple;
	bh=z9jDIgXVnFv3cwciIBssYX8p6GCmnqHiRlXWkVAtMPo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sntdtI9YGVYjXN3wKU91lIYTPPsoR0Sa35UnD6k12A4GI7/NQEmQQQZT0ANG0VvFmvdqNbK8ZpW3v7ieDWylYtnFY/FQuNIfOZ9JCH1ZOtMTd8vjZ1ujRmnFlzb6bMIzXy5moqRoT1LPHCeDOQjPtxeGrkcUYFbtSSZtgaiwjIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=rsSOcVQ9; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-addfe17ec0bso957834966b.1
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 03:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749464206; x=1750069006; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nYB+Q6YC9SGFtqV+6exS/xy0HUzKtpPCAP8LxcrZFik=;
        b=rsSOcVQ9TqnpsUJ8SZKbU5iZpgT84opLc5dy+jlH7XJnubTaH/1F4WBqRMdPDqsnWC
         3gVU+fZv2VAFj4+nxKSfX0UBavGaRXqvzeqXnNNrSmjcAF1saW4jz0ah/P9EOPNtw6LX
         hqeGJyELLorycU/TFxKLOmUG6Eui0kKxN2qnk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749464206; x=1750069006;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nYB+Q6YC9SGFtqV+6exS/xy0HUzKtpPCAP8LxcrZFik=;
        b=YesnsH17cLY1ywLdF4HaCQMnLDCg50YFox7vUHnXVl1aIyHzskUTKu8C6qbHxs5Otm
         3/0PP1QIkAjyPFI3KPjfGnyTzzFEeJuGHJ0a+bKFIyFzWKcdjyqEdlyJX1gGbaiWGaRb
         XZOGyBstBCiRBdL+tr5Pc+bNO53t8av+qwlPIi18WsDM6f/dcwwP4qXmPT9rCVDVItyS
         4uDwnPN7hBo5o3inYEwE/iDmDqXfee8F3/vWm1P0jx1Dz/RpJ/zZldtStqZSzYwUo2dc
         zRQUGXj4kP5PKLKteQu2Zfljgw5tuI30iSJYNrl7cWnIpCrsF2m9mVMjFYsKsJVZqewH
         7FyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVU0ui6ZrXtfWijUHgiW0+VRJVVngrQCJe+9xt934YnjppMXmM6dhm0yjDIFyY9+IyKP0/96yOhO5Vc@vger.kernel.org
X-Gm-Message-State: AOJu0YzOrFGJVDk4R7yyzUSuV7jm3rKXKTaAMucSIy/0X8Jvf7bPcjlq
	gepw3z+0A8mGfXSqW2D03dwBaZ+kcWuKEEt1NcOADeLV5odSrhiPWz9w5C941ZXQTXI=
X-Gm-Gg: ASbGncttDtNnRIibHgnq3HQvdE02ytdWIzdBxiLaY3Nh5ThcidqfIpsjfY/g469QI6F
	JS3C6O3R9spqbyLI8UGRqovlwK7VTho7n/EqQLRgDyAU50oPJ2Xet8wz7ceZinitk3aUQyhiV5d
	71GiCLaQWLaKg0vA28Y46rlULDgI4QLZnXAE9HjOJMsoL6bAZ2R5bsJ2Uu4NOdchk0AYrfZJzkM
	s9yhlKe7t9L3CxzV1p5ONhbmQ1n8nG9dMLCRUzI30UQehna5NLOhICu+kASOzvrOJ4vY6gi+Lcc
	9mSvd9m4pywsEXa80ZbF3VJ4zyU05pvM0ifHSVYEbaA8ZyBbW+f9yeLR84Uv85kVD0cHi7hKruG
	HhpSY+RfWF25S95Zl50ERHlAI5vhkFZ6HffuR7ewC
X-Google-Smtp-Source: AGHT+IEzCt2lpQuk8YPidZB58M7MjCM7unNRh1I+YNBu+qMokeZXCrvTuyac3gx58Za4jW4DRVeD4A==
X-Received: by 2002:a17:907:7f14:b0:ad8:adf3:7d6d with SMTP id a640c23a62f3a-ade1aa7dad1mr1032683966b.21.1749464206474;
        Mon, 09 Jun 2025 03:16:46 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.40.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1db55c7esm529257066b.49.2025.06.09.03.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jun 2025 03:16:46 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
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
Subject: [PATCH v2 02/10] ARM: dts: imx6ul: support Engicam MicroGEA-MX6UL SoM
Date: Mon,  9 Jun 2025 12:15:35 +0200
Message-ID: <20250609101637.2322809-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250609101637.2322809-1-dario.binacchi@amarulasolutions.com>
References: <20250609101637.2322809-1-dario.binacchi@amarulasolutions.com>
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

---

Changes in v2:
- Change local-mac-address to 00 00 00 00 00 00. The actual value will
  be set by the bootloader. The previous one was assigned to Freescale
  Semiconductor.

 .../dts/nxp/imx/imx6ull-engicam-microgea.dtsi | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi
new file mode 100644
index 000000000000..38971f6512a2
--- /dev/null
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi
@@ -0,0 +1,96 @@
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
+
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


