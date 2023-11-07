Return-Path: <devicetree+bounces-14361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 160FF7E3CE4
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 13:21:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C410D281056
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 12:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D8AA2FE0C;
	Tue,  7 Nov 2023 12:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCXkMzfz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CB42E65B
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 12:21:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24050C433CC;
	Tue,  7 Nov 2023 12:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699359683;
	bh=dNl4RH6xCgJU7dwxKXMaCywX15lUfmbyqJAgYBCGVYs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HCXkMzfzzrXRwTelL7P4ix0cmAVhCoMDeRSGe3jGkoJXiMHrwhHM6Ihb3S0Sr7jxD
	 JInMDpkBfEBQ3Nrn4Tx+d/rMUxiC1c7fDE9ZgWbLU9it5HI8BsoCjA/nhwPi8X5La3
	 rO5s7mOenpCKX7vBVdhNOIEY8hnUjiaVZsztfYsulbHGRjnPTEpW8T5fZgDOwuUZsK
	 Cw01ym02c5Mk9HKlaOwAABlf/85pxe5cCu/MLU/DcjwLAARJ+l5pRtBYZBW4rrjrVs
	 VkP0M5MZZs+QqDLocLB6YY3yxW2rzaSm9z95/fm1hgV3AcU+Nme7KBSsg8ECymTqzf
	 R6yG+Sih8cvTg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Chris Morgan <macromorgan@hotmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jagan@edgeble.ai,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 36/40] arm64: dts: rockchip: add PCIe to rk3588s-indiedroid-nova
Date: Tue,  7 Nov 2023 07:16:38 -0500
Message-ID: <20231107121837.3759358-36-sashal@kernel.org>
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

From: Chris Morgan <macromorgan@hotmail.com>

[ Upstream commit f5fb02c7125e3564aa773f54add37655d09e64f1 ]

Add the necessary nodes to the Indiedroid Nova to activate the PCI
express port that is used by the RTL8111 ethernet controller.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Link: https://lore.kernel.org/r/20230918173255.1325-2-macroalpha82@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index d1503a4b233a3..646f49cc9e53d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -109,6 +109,10 @@ vcc5v0_usbdcin: vcc5v0-usbdcin-regulator {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
@@ -348,6 +352,12 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&pcie2x1l2 {
+	pinctrl-0 = <&rtl8111_perstb>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &pinctrl {
 	bluetooth-pins {
 		bt_reset: bt-reset {
@@ -366,6 +376,12 @@ bt_wake_host: bt-wake-host {
 		};
 	};
 
+	ethernet-pins {
+		rtl8111_perstb: rtl8111-perstb {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	hym8563 {
 
 		hym8563_int: hym8563-int {
-- 
2.42.0


