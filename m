Return-Path: <devicetree+bounces-178131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DC6ABAADE
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 17:20:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 675889E3F5D
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 15:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA532202F7B;
	Sat, 17 May 2025 15:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pimsiu6e"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C651169D2B
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 15:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747495221; cv=none; b=ubQ+93zuWXNpyeFUtz2DwfyDg70kjForS4L1m+DQp8Hdvke3EYuieo2uV4EZ5yzRm1pbs6R0Fd0fRQV3FCdZzytAj22b172ufp4tFeU2gXYkC13uK5S+G2ZUVmUv/ZnfS30Tm/KhO4UJMCl5Ticf1CT3E5hyNFIjYJUjFaeXcQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747495221; c=relaxed/simple;
	bh=9OovZadwvQUpiBdXMA657+3VfaXk1nLOa0c43PgX6XE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G0iN5JWEbKyJP3GbzG+2eJfDHzqQUBtOIDNhgQXE3ZlAzyrUts/33DAP+mP06/WaR+CS1yVZxXy1ituKKFB8j1u3787G4Th1HGm+t/vSKJILFx9bG58mJyLae4NEag4qe0/NEWjdDuUM6Zgq9ZKM7+M79PZVWNEFC6R4YzpkiNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pimsiu6e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D93AAC4CEE3;
	Sat, 17 May 2025 15:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747495221;
	bh=9OovZadwvQUpiBdXMA657+3VfaXk1nLOa0c43PgX6XE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pimsiu6ejuLcqI04VsJ121ontA61T7iiabdHVjZ4+zzwUhek2DNVEtXOExtwsMk87
	 QsqncCLdPbDlZVfUeHvFYz1jN7FxpsEGZAE9KCCE7YV5I4QmN49Sfxu3xRxZG89nXy
	 EqT/T3RAd6YGNCR+9+SrtJHDsznNEandcdnBVfHPcX4xrtlIx2/PQLYVYD5ra1dOrk
	 sIQq5u2LAUyeaYDW4OsR8bTVrQK8VHGYlik2Lysrue11IyUDJgCyGqM7FUqCoN0khr
	 uuccutFL7ULl3m9RTS6Ey1LRCp5l3EHRTnZSDVS7tCQNbJND/Ih0YHoYi/4qs1mSvQ
	 2g2LTCpohv5kA==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Sat, 17 May 2025 17:19:44 +0200
Subject: [PATCH 2/2] arm64: dts: airoha: en7581: Add PCIe nodes to EN7581
 SoC evaluation board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250517-en7581-evb-pcie-v1-2-97297eb063bb@kernel.org>
References: <20250517-en7581-evb-pcie-v1-0-97297eb063bb@kernel.org>
In-Reply-To: <20250517-en7581-evb-pcie-v1-0-97297eb063bb@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2

Introduce PCIe controller nodes to EN7581 SoC and EN7581 evaluation
board.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581-evb.dts |  26 ++++++++
 arch/arm64/boot/dts/airoha/en7581.dtsi    | 105 ++++++++++++++++++++++++++++++
 2 files changed, 131 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
index a8f8a9f0b807a2ee4fd11f8418b8e810a6945d73..99d2c4f1fc5a9638f551c6d725eeea568943cc68 100644
--- a/arch/arm64/boot/dts/airoha/en7581-evb.dts
+++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
@@ -67,6 +67,32 @@ reserved_bmt@7e00000 {
 
 &en7581_pinctrl {
 	gpio-ranges = <&en7581_pinctrl 0 13 47>;
+
+	pcie0_rst_pins: pcie0-rst-pins {
+		conf {
+			pins = "pcie_reset0";
+			drive-open-drain = <1>;
+		};
+	};
+
+	pcie1_rst_pins: pcie1-rst-pins {
+		conf {
+			pins = "pcie_reset1";
+			drive-open-drain = <1>;
+		};
+	};
+};
+
+&pcie0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie0_rst_pins>;
+	status = "okay";
+};
+
+&pcie1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie1_rst_pins>;
+	status = "okay";
 };
 
 &i2c0 {
diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index 26b13694091735da7af977e42f8f546d7d5cb078..536ece69b935add88fb73ca6bd3f1ecd842cad7a 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -180,6 +180,111 @@ scuclk: clock-controller@1fb00000 {
 			#reset-cells = <1>;
 		};
 
+		pbus_csr: syscon@1fbe3400 {
+			compatible = "airoha,en7581-pbus-csr", "syscon";
+			reg = <0x0 0x1fbe3400 0x0 0xff>;
+		};
+
+		pciephy: phy@1fa5a000 {
+			compatible = "airoha,en7581-pcie-phy";
+			reg = <0x0 0x1fa5a000 0x0 0xfff>,
+			      <0x0 0x1fa5b000 0x0 0xfff>,
+			      <0x0 0x1fa5c000 0x0 0xfff>,
+			      <0x0 0x1fc10044 0x0 0x4>,
+			      <0x0 0x1fc30044 0x0 0x4>,
+			      <0x0 0x1fc15030 0x0 0x104>;
+			reg-names = "csr-2l", "pma0", "pma1",
+				    "p0-xr-dtime", "p1-xr-dtime",
+				    "rx-aeq";
+			#phy-cells = <0>;
+		};
+
+		pcie0: pcie@1fc00000 {
+			compatible = "airoha,en7581-pcie";
+			device_type = "pci";
+			linux,pci-domain = <0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			reg = <0x0 0x1fc00000 0x0 0x1670>;
+			reg-names = "pcie-mac";
+
+			clocks = <&scuclk EN7523_CLK_PCIE>;
+			clock-names = "sys-ck";
+
+			phys = <&pciephy>;
+			phy-names = "pcie-phy";
+
+			ranges = <0x02000000 0 0x20000000 0x0 0x20000000 0 0x4000000>;
+
+			resets = <&scuclk EN7581_PCIE0_RST>,
+				 <&scuclk EN7581_PCIE1_RST>,
+				 <&scuclk EN7581_PCIE2_RST>;
+			reset-names = "phy-lane0", "phy-lane1", "phy-lane2";
+
+			mediatek,pbus-csr = <&pbus_csr 0x0 0x4>;
+
+			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+			bus-range = <0x00 0xff>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0 0 0 1 &pcie_intc0 0>,
+					<0 0 0 2 &pcie_intc0 1>,
+					<0 0 0 3 &pcie_intc0 2>,
+					<0 0 0 4 &pcie_intc0 3>;
+
+			status = "disabled";
+
+			pcie_intc0: interrupt-controller {
+				interrupt-controller;
+				#address-cells = <0>;
+				#interrupt-cells = <1>;
+			};
+		};
+
+		pcie1: pcie@1fc20000 {
+			compatible = "airoha,en7581-pcie";
+			device_type = "pci";
+			linux,pci-domain = <1>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			reg = <0x0 0x1fc20000 0x0 0x1670>;
+			reg-names = "pcie-mac";
+
+			clocks = <&scuclk EN7523_CLK_PCIE>;
+			clock-names = "sys-ck";
+
+			phys = <&pciephy>;
+			phy-names = "pcie-phy";
+
+			ranges = <0x02000000 0 0x24000000 0x0 0x24000000 0 0x4000000>;
+
+			resets = <&scuclk EN7581_PCIE0_RST>,
+				 <&scuclk EN7581_PCIE1_RST>,
+				 <&scuclk EN7581_PCIE2_RST>;
+			reset-names = "phy-lane0", "phy-lane1", "phy-lane2";
+
+			mediatek,pbus-csr = <&pbus_csr 0x8 0xc>;
+
+			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+			bus-range = <0x00 0xff>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0 0 0 1 &pcie_intc1 0>,
+					<0 0 0 2 &pcie_intc1 1>,
+					<0 0 0 3 &pcie_intc1 2>,
+					<0 0 0 4 &pcie_intc1 3>;
+
+			status = "disabled";
+
+			pcie_intc1: interrupt-controller {
+				interrupt-controller;
+				#address-cells = <0>;
+				#interrupt-cells = <1>;
+			};
+		};
+
 		uart1: serial@1fbf0000 {
 			compatible = "ns16550";
 			reg = <0x0 0x1fbf0000 0x0 0x30>;

-- 
2.49.0


