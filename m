Return-Path: <devicetree+bounces-66986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D218C60C8
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 08:28:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D93B82814B0
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 06:28:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12B893BB4D;
	Wed, 15 May 2024 06:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="TcvGSt1d"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144183B785
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 06:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715754495; cv=none; b=izldQxeM6BZWGfQEASaq/OLWPTRGefPOm4zVVcDpfrFMP2cXAwzJ8wH3h4e41oBD5MufEdK9QNSeMxBw2t0Rm/bqKQTwaCSyga4eADRxQ54aZnKHLOrTj8JbQTRk4tBUx2BPHtG2um3TzT/cEnsH9R0A6H/d86itviPD92KzYeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715754495; c=relaxed/simple;
	bh=qxnjIvgLEkBUtlj2oZ4RvooQYvnhIctaxllhznLxkRU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dnX1DfS94FoUUkA8eLvhXZdSLa+9BH0cVoXwfuUtFaxBi+YzAKxWbpAUZYcIGyvnvHQw+aXnlPFyWBF+k+zggXGL+8wIRBRspUl5mEA9ul1lLn54sYDMSAadkxlnoKlK81AQ2TiO3x7DBL3byq7ryBVFVbecynxykVHaL13ybxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=TcvGSt1d; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id C5BDD8817B;
	Wed, 15 May 2024 08:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1715754491;
	bh=yGESoE1apx47VkleTAC6bVg0Bb0LTysStomazoTp6ro=;
	h=From:To:Cc:Subject:Date:From;
	b=TcvGSt1dh/Pd6FIKjgV9dHJNqlVyjnyABuXkvRe0XzuYLpfOhFIIa2sL/xJtQDlhG
	 6bZHSJpFqIUPpVFgeU7EwvuesmA3+aHyYxNhc4vJvi8wTHwBIN1XcnV7U+HcjTrk18
	 mE6LKwzjrsl9o8giSgVIDgr+HQDLZEOQKjEMDJyg/i/3AQPCJ0C41CtVUfaiYMnUvJ
	 hAK1j/gKXXz27qcSWnk27Vx5HwqmPYd8jz7PZPCXtaKPgIfx0q+YyZQfjqFlEoKSIp
	 KkUR+HdgqR/GbfkwBg2ci7RzGWbPU1f4Ey4XwPFoFKtM2fMP8Q67e+WHTIIX0lL4Ns
	 n9B+YhjfnoB9g==
From: Marek Vasut <marex@denx.de>
To: devicetree@vger.kernel.org
Cc: Marek Vasut <marex@denx.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Liu Ying <victor.liu@nxp.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev,
	kernel@dh-electronics.com,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] dt-bindings: display: synopsys,dw-hdmi: Document ddc-i2c-bus in core
Date: Wed, 15 May 2024 08:27:44 +0200
Message-ID: <20240515062753.111746-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

The DW HDMI driver core is responsible for parsing the 'ddc-i2c-bus' property,
move the property description into the DW HDMI common DT schema too, so this
property can be used on all devices integrating the DW HDMI core.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Liu Ying <victor.liu@nxp.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: imx@lists.linux.dev
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
---
V2: Update rockchip,dw-hdmi.yaml as well
---
 .../bindings/display/bridge/synopsys,dw-hdmi.yaml         | 8 ++++++++
 .../devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml    | 8 --------
 .../bindings/display/rockchip/rockchip,dw-hdmi.yaml       | 8 --------
 3 files changed, 8 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml
index 4b7e54a8f037f..828709a8ded26 100644
--- a/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml
@@ -45,6 +45,14 @@ properties:
       - const: isfr
     additionalItems: true
 
+  ddc-i2c-bus:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The HDMI DDC bus can be connected to either a system I2C master or the
+      functionally-reduced I2C master contained in the DWC HDMI. When connected
+      to a system I2C master this property contains a phandle to that I2C
+      master controller.
+
   interrupts:
     maxItems: 1
 
diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml
index 7979cf07f1199..180c4b510fb12 100644
--- a/Documentation/devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml
@@ -31,14 +31,6 @@ properties:
   clock-names:
     maxItems: 2
 
-  ddc-i2c-bus:
-    $ref: /schemas/types.yaml#/definitions/phandle
-    description:
-      The HDMI DDC bus can be connected to either a system I2C master or the
-      functionally-reduced I2C master contained in the DWC HDMI. When connected
-      to a system I2C master this property contains a phandle to that I2C
-      master controller.
-
   gpr:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index 2aac62219ff64..9d096856a79a6 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -70,14 +70,6 @@ properties:
           - vpll
           - ref
 
-  ddc-i2c-bus:
-    $ref: /schemas/types.yaml#/definitions/phandle
-    description:
-      The HDMI DDC bus can be connected to either a system I2C master or the
-      functionally-reduced I2C master contained in the DWC HDMI. When connected
-      to a system I2C master this property contains a phandle to that I2C
-      master controller.
-
   phys:
     maxItems: 1
     description: The HDMI PHY
-- 
2.43.0


