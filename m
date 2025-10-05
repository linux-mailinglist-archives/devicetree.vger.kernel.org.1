Return-Path: <devicetree+bounces-223724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6660BBCE45
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 01:56:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6FE33A94E5
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 23:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA72B1E0DEA;
	Sun,  5 Oct 2025 23:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="RsmoodVC"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0723EB67A
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 23:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759708561; cv=none; b=oX8oTadLU/+J8PHjdreFGhFjoOrb49QwqD9V6dTtorG7CIofplUgk7Mw4aShBCxbRA5mzplxAcMuOvSV/uBxZu6bKUNIdkg8LqU5NuPOIVcs7qNUnliQSJ0PV1wiL0uH8lXbpHH5Q3AuAX3R82ucBKFuT5zbzXnFTb/lxJxgW8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759708561; c=relaxed/simple;
	bh=BlwipHq8gUoEhQ1Vm5JfEinzCONZGPrIIa0pM4kISPY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UPhCF1f+jy83TBSFh20qIOZLnwMw0TY/0IZgBLH3qi6pyXdpvZIg542NU3n3Vpf2DJub8M3QgPyqr0hz0SyLTylGEyoBJjY5Y4C4oCXIWRh+XYB2bi9EDWEAsDlFUB5kzR3P+moQinzQsePPW+feVmU5Spg6MlIk8gHrc08+4uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=RsmoodVC; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id D12E6EA0;
	Mon,  6 Oct 2025 01:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759708459;
	bh=BlwipHq8gUoEhQ1Vm5JfEinzCONZGPrIIa0pM4kISPY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RsmoodVCKh5oNCE1nWXifMs4SFBrFLD90OgoxzP53DqrjXUm0Z/ceJsE62dRiBo1S
	 xjAAmjBfuX0eByn48tlfWk26pAEQ/UFLIye5Uwe00LtdB7AhYFGIs0wxUR4Jo/bHwn
	 LHdqrFDWgDFhlqzFiAGGi0w+dM+zkgopTd//SaAY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Alexey Charkov <alchark@gmail.com>,
	Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>,
	Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH v2 1/5] dt-bindings: display: rk3588-dw-hdmi-qp: Add tmds-enable-gpios property
Date: Mon,  6 Oct 2025 02:55:37 +0300
Message-ID: <20251005235542.1017-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Add an optional property to RK3588 HDMI TX Controller binding describing
a GPIO line to be asserted when operating in HDMI 1.4/2.0 TMDS mode and
deasserted for HDMI 2.1 FRL.

This is used to control an external level shifter for HDMI data lines.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml   | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
index 96b4b088eebe..eec0d40c91ea 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -113,6 +113,13 @@ properties:
     description:
       Additional HDMI QP related data is accessed through VO GRF regs.
 
+  tmds-enable-gpios:
+    description:
+      Optional GPIO line to be asserted when operating in HDMI 1.4/2.0
+      TMDS mode and deasserted for HDMI 2.1 FRL. It can be used to control
+      an external level shifter for HDMI data lines.
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -132,8 +139,10 @@ unevaluatedProperties: false
 examples:
   - |
     #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
     #include <dt-bindings/power/rk3588-power.h>
     #include <dt-bindings/reset/rockchip,rk3588-cru.h>
 
@@ -164,6 +173,7 @@ examples:
         rockchip,grf = <&sys_grf>;
         rockchip,vo-grf = <&vo1_grf>;
         #sound-dai-cells = <0>;
+        tmds-enable-gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
 
         ports {
           #address-cells = <1>;
-- 
Regards,

Laurent Pinchart


