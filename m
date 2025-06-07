Return-Path: <devicetree+bounces-183462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E45AD0C23
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:34:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 32BA216DEA6
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 09:34:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1741121147F;
	Sat,  7 Jun 2025 09:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Mnu60MMC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E92E20DD4D
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 09:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749288833; cv=none; b=W8UCarH7ucpbymv1aF8G8e5JhSV2rAnpNgX/2vcGtMVmcXaTFd+3l1c2kjHzn16phzIGkx7mhLhFniGsIriRsk5VfV+Fpr7NayUKrx9EpGArXscY08UDp+DUpiCQMdw+k1CqoTWETFJgxd+ibOPR955R3shVQkTDHYWWOu9ZNf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749288833; c=relaxed/simple;
	bh=nlwe7h7r3/BITiv4q+dzdvB5lKnHkIgxhj7FM6I1jnA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NWzKHSzm4Mpd9VZdR/wXdC5YO5iU0hHx7N4q9WkyHJg4J+OTWOKz3YJn6XrEbyGN7cjGftGZCQHYv5tR0HqnLLm77tTOmAkp68feKxLEUBq3ilreVddd6nXY3SK9EJ8O+CSXIjPDGL9pQjvc63L5zAnftZ8nIJDt4wlvF/Y/6Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Mnu60MMC; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-acacb8743a7so482506566b.1
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 02:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749288830; x=1749893630; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cYXpxglNlRn6ZF9PKdL5/2uCcX5/hamtbwOWk6+JISM=;
        b=Mnu60MMC9Ew9JCQaXtCWIYBHvwD0Mq2bgrsRlstvDNk2aqNENCUjPwAch0TC0o7HAd
         lUdVbL5c1x6RS4w8Adg6TmCHOv2nAe/pa2MCmsSySUPfJOpiUPqnODpprsZHscYoe5sf
         0RCqiDxbmT2+d7DJQeI8Zo8JfLG3MuM5g8OY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749288830; x=1749893630;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cYXpxglNlRn6ZF9PKdL5/2uCcX5/hamtbwOWk6+JISM=;
        b=ZLenJ0wKhdcpkSqPoJ0JhC7hKww/r7RBBa2uuic6ISrHlKa9/Ndd3wW1Q/i/I2GwiH
         uUmucm4NLBTPqIZOQJdAp5+xvLq6o+VeMvb/I6vgkyz1seADbsDLQEY5xXzwRHaBAXx4
         +gjkoycVuZ9LaBxjzHkN0e8427OQqU6cmOJj6sQuUeRyNR4s6DOeiniSnp5GQVBnqFbM
         zxAcPZlaIVkbvtJZqNTZpPZyiwigHYHipJGc6TECxkOn1+vdOtKQRliAFIM4AHMLDFSS
         cPcD7YSbNcvKo97HAzRoU7ai5bi5sd6D8EnLc1X2T1dnzSmxcrdT0lS3MWgT3ItHby31
         QYtA==
X-Forwarded-Encrypted: i=1; AJvYcCXbioe+qXGH7AxFtCLzKqavXe0KTeWdB+6+Sqdz7eueHsgvFeDgh2wayPGVPP7+3F72hk8X7l151MZE@vger.kernel.org
X-Gm-Message-State: AOJu0Yxlsecs7lmlWZTAImkyBbqeEk4n1S8eyyalLBRo6JWjCidId1eS
	U0TOVikobHQf5Sz2L8cDah7WIbvuO8O1J6Jx4+jFI0+nSHHG/jQpkJvPBsZQtwHecTw=
X-Gm-Gg: ASbGncvAFu3G4R9Jxwz1AyPtKquwfllmKZOXd8SOHKUAmVJtq2piZi4/kXj+j6WCJwD
	/+QtWg7CcY5LLQhTPN+MaTMaiZDEF8U7uRpCQlvr3O1/8nm9hg1vugVRsfZ9w1Gr+4Y4zHaNaIl
	vp6AWb+N2ZA1mXZucBkN8wCjur7mh11SBTDEWb3TQfOy2oF8H+bmtSnmwXYitCaiNdqjXCWpjKt
	ivlFoaM/tAm5wzlxZ0izYNuK1z8eBpwkNwej77rZaKBA3xNJhvL/E1ieVuevv4ntaKsed3Gx54J
	eXo2/auJlcxud1vCyJR/ydUdSPBLpuoNcfj3h9b8riOk9AIpM1Q7luFHceFKJMuAb96U1VAO1Dt
	qxLmSu0PClOFaekCaPOYst5VBCLSLTxz8hBkgm5keiDNac3jlo+34RCsyJJyxSRrU24+NbqD5Ao
	BCpNT+2WwOEGHpp+Q7np3394E=
X-Google-Smtp-Source: AGHT+IFwrSoT/bg84mvJeB5tJBoerkyokpFv/ZBrKGOCSANMJJ0LsqpRieQ9b6Ay4j+aF5bsl8WiDw==
X-Received: by 2002:a17:907:6ea6:b0:ad8:9ca4:af7c with SMTP id a640c23a62f3a-ade076350e8mr993166366b.17.1749288830301;
        Sat, 07 Jun 2025 02:33:50 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-5-95-99.retail.telecomitalia.it. [87.5.95.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc1c316sm251541066b.98.2025.06.07.02.33.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jun 2025 02:33:49 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Matteo Lisi <matteo.lisi@engicam.com>,
	linux-amarula@amarulasolutions.com,
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
Subject: [PATCH 02/10] ARM: dts: imx6ul: support Engicam MicroGEA-MX6UL SoM
Date: Sat,  7 Jun 2025 11:33:14 +0200
Message-ID: <20250607093342.2248695-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250607093342.2248695-1-dario.binacchi@amarulasolutions.com>
References: <20250607093342.2248695-1-dario.binacchi@amarulasolutions.com>
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

 .../dts/nxp/imx/imx6ull-engicam-microgea.dtsi | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi
new file mode 100644
index 000000000000..8588e9ad7b8f
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
+ / {
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
+	local-mac-address = [00 04 9F 01 1B B9];
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


