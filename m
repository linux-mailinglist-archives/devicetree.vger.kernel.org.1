Return-Path: <devicetree+bounces-134919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8E29FEEA0
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 10:58:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 596E03A2B91
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 09:58:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91998191F83;
	Tue, 31 Dec 2024 09:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="cBf9DU9a"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7CEBEDE;
	Tue, 31 Dec 2024 09:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735639083; cv=none; b=UbWAZJwWqQ9/5N7AhhEI4ZKxWiOO12sF8rJnG2OtxL0aHTGjGo6/LnK1eaqaZh07M/nAki0tZvY5absY2elHFjhQNCxQt5BSF5l39fnsA0Nk6zDq0JA69tFVdhQoCPkuk8W5fmTtHcL8EBCCk+w9PADif3o3iwuaX8NHPGSkJSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735639083; c=relaxed/simple;
	bh=uElG0UXJlVkYLGSTB7dKewuGSj46bEhSBKbK/kDIcxo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SMIzwes8Gw+qkMX9zPt8ezInFYp5vzW2ms1I+VVwXOyzBubpGXCHa9an1NXPBtWJx5s6LF0Q/l5dbTK9c2PGZElV67+Es9xmLZSgiOZ4EXhS9yDHv+kC9MW34BESVmOD+78TkwBgFh94fv3NQWPoVknU0mSSOlirzulBxeAGU/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=cBf9DU9a; arc=none smtp.client-ip=117.135.210.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=V8jln
	vfGiFQXdHoaqnr4XhJM0I36scpxrnTGGq7IMPs=; b=cBf9DU9a3vIO2bMOB6t+X
	nxoldOp3NQXyckWyaQD2sVlH8CfIZD9fgHBw2kAz5YXODMiNCJg+k9ZwqntMyigX
	QKQZMRGFL/+N3MnU3/bK91rmKnwgyrWFaCOdtcdKjky6xyHRYE4Z1eDd2AIX1JFO
	ktoHWzPSphzxiY0qjg6GXs=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wD3dxsKwHNnTaXlCw--.25571S5;
	Tue, 31 Dec 2024 17:57:38 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: detlev.casanova@collabora.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 3/3] arm64: dts: rockchip: Enable hdmi display on sige5
Date: Tue, 31 Dec 2024 17:57:20 +0800
Message-ID: <20241231095728.253943-4-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241231095728.253943-1-andyshrk@163.com>
References: <20241231095728.253943-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3dxsKwHNnTaXlCw--.25571S5
X-Coremail-Antispam: 1Uf129KBjvJXoW7Ar4kKr4fJw13KF4rGr4rZrb_yoW8AryDp3
	ZrurZ3GrZ5WFW7Xwn0yry0vFn8twsY9a9xGr43XFy7Kr42gas3Gw1rGr1S9r1DZFW7Za1a
	vF1kJFyY9wsrXw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jBUDXUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hbGXmdzt4XXAgADss

From: Andy Yan <andy.yan@rock-chips.com>

Enable hdmi display on sige5 board.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 .../boot/dts/rockchip/rk3576-armsom-sige5.dts | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
index 7c7331936a7f..78798b0722a3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
@@ -10,6 +10,7 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3576.dtsi"
 
@@ -26,6 +27,17 @@ chosen {
 		stdout-path = "serial0:1500000n8";
 	};
 
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
 	leds: leds {
 		compatible = "gpio-leds";
 
@@ -214,6 +226,26 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&hdptxphy {
+	status = "okay";
+};
+
 &i2c1 {
 	status = "okay";
 
@@ -656,3 +688,18 @@ &uart0 {
 	pinctrl-0 = <&uart0m0_xfer>;
 	status = "okay";
 };
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};
-- 
2.34.1


