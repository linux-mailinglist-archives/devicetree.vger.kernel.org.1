Return-Path: <devicetree+bounces-231803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E94EC11B1B
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:29:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C21023A5FF4
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D597732C30D;
	Mon, 27 Oct 2025 22:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="LOIJ6W5N"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493082DF6EA
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761604020; cv=none; b=hutTNfRkS5BJhxqcMteiY8v1X/723inWNy+Sq3qZSAGfEig/TF/+3ov/rT6DfO88Hn1+yr3Mjo42xua6ui5rOXBHXHHhh0ZarHmMa7XPC4uA0c3vt2HKiEh1Xk1LvPR8mu+NknpZs11ihXA6RejWmlpRMEtI5yLaxokXMVt/UkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761604020; c=relaxed/simple;
	bh=wvr1vKMUZPjj0dzmUyfZ+fuKpCrMsRq3g94+kTspoWI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G0yPsp9iaaQOcZ1SlmPT58BTXLl47wY1IGIfZaS9dupuHCLFPBAD3IA8den4OWsb0KLDNSIWlGyOLy/YLJ8Ry03bkI/eFBXsPWU2BtD7spT3bUFSBlWF5xlxZ/KSx4WfaniCN8u+fu0fn2Os3DlpNTRdYs3wI0ygHfgLUtfcA0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=LOIJ6W5N; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (82-203-161-16.bb.dnainternet.fi [82.203.161.16])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id D038B1787;
	Mon, 27 Oct 2025 23:25:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1761603909;
	bh=wvr1vKMUZPjj0dzmUyfZ+fuKpCrMsRq3g94+kTspoWI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LOIJ6W5Nu4B4dDmw0gf6PCuSe8B4A0dlqNCsCt7TQQoTX3jx0DpzXvfiHn2M2Yk2Q
	 RcTH359X92BqzoyvghvpeIq2Et7Oc6/2Hha/Xmsdx3TRBUwA7WQ/NMTgiVuv1Ezy9M
	 V7lCIAYZuQ5OXA+Kz3w3YCsFJ/pjDXNCQZ1PNkOk=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v3 1/2] dt-bindings: display: rk3588-dw-hdmi-qp: Add frl-enable-gpios property
Date: Tue, 28 Oct 2025 00:26:40 +0200
Message-ID: <20251027222641.25066-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>
References: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Add an optional property to RK3588 HDMI TX Controller binding describing
a GPIO line to be asserted when operating in HDMI 2.1 FRL mode and
deasserted for HDMI 1.4/2.0 TMDS.

This is used to control an external voltage bias for HDMI data lines.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Co-developed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v2:

- Rename tmds-enable to frl-enable
- Replace "level shifter" with "voltage bias"
- Describe the behaviour when the property is absent
---
 .../display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
index 96b4b088eebe..d649808c59da 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -113,6 +113,14 @@ properties:
     description:
       Additional HDMI QP related data is accessed through VO GRF regs.
 
+  frl-enable-gpios:
+    description:
+      Optional GPIO line to be asserted when operating in HDMI 2.1 FRL mode and
+      deasserted for HDMI 1.4/2.0 TMDS. It can be used to control external
+      voltage bias for HDMI data lines. When not present the HDMI encoder will
+      operate in TMDS mode only.
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -132,8 +140,10 @@ unevaluatedProperties: false
 examples:
   - |
     #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
     #include <dt-bindings/power/rk3588-power.h>
     #include <dt-bindings/reset/rockchip,rk3588-cru.h>
 
@@ -164,6 +174,7 @@ examples:
         rockchip,grf = <&sys_grf>;
         rockchip,vo-grf = <&vo1_grf>;
         #sound-dai-cells = <0>;
+        frl-enable-gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_LOW>;
 
         ports {
           #address-cells = <1>;
-- 
Regards,

Laurent Pinchart


