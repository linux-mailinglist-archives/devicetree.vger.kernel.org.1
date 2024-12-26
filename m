Return-Path: <devicetree+bounces-134060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AA99FC924
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 07:49:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63E8D7A18F4
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 06:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED7F7175D53;
	Thu, 26 Dec 2024 06:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="cCSsbex0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49238.qiye.163.com (mail-m49238.qiye.163.com [45.254.49.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5892813D276;
	Thu, 26 Dec 2024 06:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.238
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735195770; cv=none; b=DtDDhhT8v5hzZVt6s8w0Pojf2NNVYMHGXvaiCqJMSQepLPk2kCrOgketNPj2g6FCGlMSTYt9wNcfvgT7g1R44LyKN2CzCXUsM0MmX2V+GcK8RgxKk1BXbwB6QTdRhdqdZVJSTPuzjDRBWc3TYVgKrx99vyfNFQ5b/zN4gXEDTos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735195770; c=relaxed/simple;
	bh=+EuzBLDnKcDQ9VGYkAfAnp6nKQM2BjxR8c40nw2DmqU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jD/vmZQxxTWHA8UIM1wPkat9URePmtHU/LgBdi/FelfXn75EHuGL/sXZ+fjCwlEFsKq/cI8tAmDINLtMEUfXLt464+xiveU0wn2m2MD1wbfZIaHIqkoQVdxHF8s25CPF0m6PN+6sKFKnrlkCgq4cPcEZUlrShSHKSyIhmkpKfI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=cCSsbex0; arc=none smtp.client-ip=45.254.49.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6dc511c7;
	Thu, 26 Dec 2024 14:33:59 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	vkoul@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	l.stach@pengutronix.de,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	algea.cao@rock-chips.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v4 17/17] arm64: dts: rockchip: Enable eDP0 display on RK3588S EVB1 board
Date: Thu, 26 Dec 2024 14:33:13 +0800
Message-Id: <20241226063313.3267515-18-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241226063313.3267515-1-damon.ding@rock-chips.com>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRkeSVZCTUxCGB5MTx5KGU5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9401ac08c403a3kunm6dc511c7
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OC46TDo5KjIPLkxNGT8tKi43
	Gh9PCRxVSlVKTEhOSkJPQ09LQklCVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJTUpDNwY+
DKIM-Signature:a=rsa-sha256;
	b=cCSsbex0/dNbjMxMb+bOn8b53C7EuH34QH7lBYq53lq3uQpawZb4GDqkhvSFUs3hPRNipZIrFd/At9+v0Kug6zdGm5pxhlLqI29ARGW37MSqLUJaZsBql+aCt/QZ9rzKG9obGR5a9XBpocRvX2jYdrjMSLI9yBI5l66uI6vyP1c=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=5B+165n+MzbVRJTh4JVbKwkFxA7nXZdCiikkY2/r/tA=;
	h=date:mime-version:subject:message-id:from;

Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
- Set pinctrl of pwm12 for backlight
- Enable edp0/hdptxphy0/vp2
- Add aux-bus/panel nodes

The eDP panel model used on this board is LP079QX1_SP0V. Due to the
broken identification, the compatible of panel node is set to
"lg,lp079qx1-sp0v" rather than "edp-panel". The log related to this
issue may be like:

[    0.623793] panel-simple-dp-aux aux-fdec0000.edp: Unknown panel ETC
0x0000, using conservative timings

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v2:
- Remove brightness-levels and default-brightness-level properties in
  backlight node.
- Add the detail DT changes to commit message.

Changes in v3:
- Use aux-bus instead of platform bus for edp-panel.

Changes in v4:
- Add comments related to the use of panel compatible "lg,lp079qx1-sp0v"
  in the commit message.
---
 .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
index bc4077575beb..9547ab18e596 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
@@ -9,6 +9,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
 
@@ -238,6 +239,41 @@ &combphy2_psu {
 	status = "okay";
 };
 
+&edp0 {
+	force-hpd;
+	status = "okay";
+
+	aux-bus {
+		panel {
+			compatible = "lg,lp079qx1-sp0v";
+			backlight = <&backlight>;
+			power-supply = <&vcc3v3_lcd_edp>;
+
+			port {
+				panel_in_edp: endpoint {
+					remote-endpoint = <&edp_out_panel>;
+				};
+			};
+		};
+	};
+};
+
+&edp0_in {
+	edp0_in_vp2: endpoint {
+		remote-endpoint = <&vp2_out_edp0>;
+	};
+};
+
+&edp0_out {
+	edp_out_panel: endpoint {
+		remote-endpoint = <&panel_in_edp>;
+	};
+};
+
+&hdptxphy0 {
+	status = "okay";
+};
+
 &i2c3 {
 	status = "okay";
 
@@ -399,6 +435,7 @@ usbc0_int: usbc0-int {
 };
 
 &pwm12 {
+	pinctrl-0 = <&pwm12m1_pins>;
 	status = "okay";
 };
 
@@ -1168,3 +1205,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
 		};
 	};
 };
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vp2 {
+	vp2_out_edp0: endpoint@ROCKCHIP_VOP2_EP_EDP0 {
+		reg = <ROCKCHIP_VOP2_EP_EDP0>;
+		remote-endpoint = <&edp0_in_vp2>;
+	};
+};
-- 
2.34.1


