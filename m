Return-Path: <devicetree+bounces-155025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C68A55420
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 19:08:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C55E03B558A
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 18:05:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1A2325D54E;
	Thu,  6 Mar 2025 18:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="F5aec+rS"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4DE25D53F;
	Thu,  6 Mar 2025 18:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741284249; cv=none; b=cid+E8fJ5ybiurMo67W9R6iKnZF3siuQfHziBSitzgEzUlrRPmfdeL8CgspaXI837k/dNTl0gvDyNRVnns4SR5p8CBjGZOduvPmc3m2gB6jc23qpG91Q2a/QGoHvMRRXP0AuBwO1kjp/YEsbXxM0fQjTixXYd/xrYyc+P/8q2/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741284249; c=relaxed/simple;
	bh=XUoZmVfvgm+iV3BJUEqJmJKTR6CIvcIOFGmj9mu2tRc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=blLW1Gsay5XsCRIHVNNTdXWqOXM55O1ADPSS+HTKtOZbFIrzzFh9uYMRVVgG/nEqijdBokwfZvnl3gqaWp5keDOQ8YH5PKPyDh1ET7Ada1KQo1U/K1ekellrvULR0emAVi2WLUhp22j8f9/SSDjENqEp+R883hBHHHs2VpgV1J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=F5aec+rS; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741284244;
	bh=XUoZmVfvgm+iV3BJUEqJmJKTR6CIvcIOFGmj9mu2tRc=;
	h=From:To:Cc:Subject:Date:From;
	b=F5aec+rSsmt7o/TX27ZQARx2IXgaKfhSsUdxHrFi5z7c6roBtbOMaB++fpu8S2WxF
	 HBNQZ3ZbdEQH/mSQADdULTlN/3hcsZZasD6kmGpDoib7bT7VB2G+vl5Hkl+A7OZalH
	 i1bmmQUpAD2HJgK2JAxWd+hKXOeAvdKK32P5XYhdOriI4Na+9uTCdNWsHacSB/ajMB
	 7qO+GUfKoMN2Rgt3T0mjoDV5j8keC5ez67dgBBpNQE3gAtRHBBGEoNXK60NaG52Gfo
	 xleZZR/jz3emgmlrwqllUamRKOdehQPXp4pMlKM7dI3sdYbGoZhfeWm8A/qu65COKY
	 GM68iqy//kBeQ==
Received: from trenzalore.hitronhub.home (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B512E17E0673;
	Thu,  6 Mar 2025 19:04:02 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Alexey Charkov <alchark@gmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Stephen Chen <stephen@radxa.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH] arm64: dts: rockchip: Add HDMI support for rock-4d
Date: Thu,  6 Mar 2025 13:03:44 -0500
Message-ID: <20250306180344.126189-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable HDMI and VOP nodes for the rock-4d board.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../boot/dts/rockchip/rk3576-rock-4d.dts      | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
index 5dc1c18a3b211..f39bd441dce18 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
@@ -26,6 +26,17 @@ chosen {
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
 		pinctrl-names = "default";
@@ -238,6 +249,27 @@ &gpu {
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
+
 &i2c1 {
 	status = "okay";
 
@@ -687,3 +719,18 @@ &usb_drd1_dwc3 {
 	dr_mode = "host";
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
2.48.1


