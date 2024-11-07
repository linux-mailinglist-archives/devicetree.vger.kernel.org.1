Return-Path: <devicetree+bounces-120000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C74A9C111B
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 22:39:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 417792856D4
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 21:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 882F82178F2;
	Thu,  7 Nov 2024 21:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="QywBcDtR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [207.246.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D66FC08
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 21:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.246.76.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731015592; cv=none; b=DKWc+POfN7qpkeFp41DmbpLkQLeN51BcQNMyoHxhwkQAhGRrMk6xgdfcvbmmdOdD1Is0z6AUb/jUf8j1keOHYpu71U9/rLKUSARYmPzPSJtGk5DlTMZKGcxtV41sq8tOyJE9Ypi9FRo/ZvzN+k7Sos05NvrWitR87AQq9619Bfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731015592; c=relaxed/simple;
	bh=IIeNYUYuYaFiyzLOAr4iTD5wPp3/tt/9ZOcK8jIg4Lg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VXf0+FMR8iSmz0cgVyxeWoRSX7BxGIpi3OZRio61ZTxoxfiPEhCAh/HuVhAaoLok57fnS/yXNcYnkqSiHJm/xlD3LBpfh8QVVMGhLdlVq0q9GagFdd7sni1qH8CLQaaeq0XNVj5ln/TnQVz89JfnbKsa5pS5RbDCm3D/Ax4kxqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=QywBcDtR; arc=none smtp.client-ip=207.246.76.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1731015583; bh=s35hfQLt9bSo6W0C/uoTYaEkOoDd04wiZKrv3+ugeqU=;
 b=QywBcDtRYGwojvpFNYA+XzifeQuAuBGeabBT7vC7BWAo8RBythhMWOeDKriFlTGsNzIGG+MlQ
 twUqaKPFY8C3QzlKUTPWCIV3ahshgq9KvefZ78WNuiwc2LvcK4BVwRmceuWrghW+jGpy4Oa6Jc0
 gd1G56jJxdk+MjPs2oOHir9pXkAssDbguT26iaCGip4X9ouB7DEri8HQjQ+QWuK1g3SX1AgC5Z4
 dup7nUOy7PDIa/oNHi0m0bbAmNWcjXJJVfGshL7JzvuR4Pf+U12lC2B6qrzbRhFGIfAslOlUAwZ
 A3Zkd7ULyaByGdVZ+/09Q0TeOSdwdtJcSanMf2Vzxkig==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/2] arm64: dts: rockchip: Enable HDMI on NanoPi R6C/R6S
Date: Thu,  7 Nov 2024 21:29:10 +0000
Message-ID: <20241107212913.1322666-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241107212913.1322666-1-jonas@kwiboo.se>
References: <20241107212913.1322666-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 672d31406ff4b179fef288d5

Add the necessary DT changes to enable HDMI on NanoPi R6C/R6S.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi  | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
index dc16d60b8228..2e22a49000e5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
@@ -5,6 +5,7 @@
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3588s.dtsi"
 
 / {
@@ -45,6 +46,17 @@ button-user {
 		};
 	};
 
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -223,6 +235,26 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&hdptxphy_hdmi0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
@@ -763,3 +795,18 @@ &usb_host0_ehci {
 &usb_host0_ohci {
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
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
-- 
2.46.2


