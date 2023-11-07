Return-Path: <devicetree+bounces-14363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 861947E3CE6
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 13:21:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CCF4281066
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 12:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37C122FE0F;
	Tue,  7 Nov 2023 12:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTGhxBv5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFF82E65B
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 12:21:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6ADCAC433C8;
	Tue,  7 Nov 2023 12:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699359701;
	bh=fbCE/3wGbrk0VpscWgRWMhvjTR4+0eLeBxvgG53oMa0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XTGhxBv5xY2zGgTFp7ip1XJKUJVdc9RBmZv9of7lOmB6p4wLpWvGfbpdYwBHUt0HH
	 FhW+fMxpqlmJfNDUcnQFuoVOaXRzPjfDgzDjORSwAzTudLfwF4lbLg8TZCsmIWuoWj
	 B4HKTJ0TzJUOTwOX1Z++R/tUvo1dbRzUItxT/hCLGhnbCOi/1kAqAY5Ung5wmUD5A6
	 YdkOquJX0croYu7xZnigqGbdgfqk9UePk6o1yRXyuKKM2m/TFPriOXEFGGaGDyWr5P
	 KNz/sinTtR81oH228rsps8hD9pVmLx5oMBwqq0BqQX5KzysFhN826sRRKwMouQxz2/
	 N7gGqFqU1RpQw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: John Clark <inindev@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	macromorgan@hotmail.com,
	jagan@edgeble.ai,
	tmckahan@singleboardsolutions.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 38/40] arm64: dts: rockchip: Add NanoPC T6 PCIe e-key support
Date: Tue,  7 Nov 2023 07:16:40 -0500
Message-ID: <20231107121837.3759358-38-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107121837.3759358-1-sashal@kernel.org>
References: <20231107121837.3759358-1-sashal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6
Content-Transfer-Encoding: 8bit

From: John Clark <inindev@gmail.com>

[ Upstream commit ac76b786cc370b000c76f3115a5d2ee76ff05c08 ]

before
~~~~
0000:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0002:20:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0002:21:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)
0004:40:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0004:41:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)

after
~~~
0000:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0002:20:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0002:21:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)
0003:30:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0003:31:00.0 Network controller: Realtek Semiconductor Co., Ltd. RTL8822CE 802.11ac PCIe Wireless Network Adapter
0004:40:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0004:41:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)

Signed-off-by: John Clark <inindev@gmail.com>
Link: https://lore.kernel.org/r/20230906012305.7113-1-inindev@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../boot/dts/rockchip/rk3588-nanopc-t6.dts    | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 0bd80e5157544..97af4f9128285 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -137,6 +137,18 @@ vbus5v0_typec: vbus5v0-typec-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
+	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_m2_1_pwren>;
+		regulator-name = "vcc3v3_pcie2x1l0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc3v3_pcie30: vcc3v3-pcie30-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -421,6 +433,14 @@ &pcie2x1l0 {
 	status = "okay";
 };
 
+&pcie2x1l1 {
+	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_1_rst>;
+	status = "okay";
+};
+
 &pcie2x1l2 {
 	reset-gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc_3v3_pcie20>;
@@ -467,6 +487,10 @@ pcie2_0_rst: pcie2-0-rst {
 			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
+		pcie2_1_rst: pcie2-1-rst {
+			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		pcie2_2_rst: pcie2-2-rst {
 			rockchip,pins = <4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -474,6 +498,10 @@ pcie2_2_rst: pcie2-2-rst {
 		pcie_m2_0_pwren: pcie-m20-pwren {
 			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+
+		pcie_m2_1_pwren: pcie-m21-pwren {
+			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	usb {
-- 
2.42.0


