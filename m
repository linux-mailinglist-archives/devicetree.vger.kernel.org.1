Return-Path: <devicetree+bounces-45640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD9D862952
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 07:23:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 27093B20EE1
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 06:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BF9A946F;
	Sun, 25 Feb 2024 06:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="GoSIzfHZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63FE9445
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 06:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708842217; cv=none; b=ncjSpDVSWp74uw2oOifaz7jzp+QDAmK74896qa1RQLUdmQZzQ7IjIcbEWguqJ4gjfxZy9/FUIJ5YaIuSOp8kopLrg9szi8afeYPt/TlG4Wt5oJxCxSXqTDrpI3zE3I1RjmX0ZCXudMbto+GWiFSMiZJSIugYKiOIKRvrDGbrTgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708842217; c=relaxed/simple;
	bh=bcaeFUlzEolaqkTe4eKeoi0fagdetTXYtJxwG2gBYug=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d7QVGKHOyYeGhAJpSsu4wMqrqj1kAJEWxmlOOEp0v16+fRclOYcKpZA+gapzOCKCRiYnBoxrLAIN9lZIOTFGnhxnKk4ZcIh5fBOjjiEZQXAYK1Ymy6K/kEK6U8yNGhlW9bvlU+nfOLbHdDbc2CkiR1tl59LG46OxShbZ6vChYH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=GoSIzfHZ; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id AA5FC6058D;
	Sun, 25 Feb 2024 06:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708842215;
	bh=bcaeFUlzEolaqkTe4eKeoi0fagdetTXYtJxwG2gBYug=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GoSIzfHZB7rhE5Kkse2O5pH+lgYQqKMd2I76azhT6cGMy/CJ0XqC5soGKX2abqYJJ
	 wi8Jxv3pgSRcT8wKvn4363K3Ydq4aOyG4hcw7MIJuh0y+5s9CUmRrr+ek11wUPGhTc
	 NodQpv1dNv/M4uP/W1x7FITskQ4zsQiCEj8eSaGsfDrpMB0juG0pC7pPlekqKDfceg
	 YsKH5L/adLbctPqpzLrPwASZuVxoIVAvI9W4WdRYEElFlfJmqvs6ixK8ew6O2Z+5lX
	 DqoDOUxHH1JjK7sIm74viM6LqpQnY26Wxhlom0pI9WNItg+AE2xX8QEx/tL0yA+7/m
	 T5HdkCYtK7DhA==
From: Tony Lindgren <tony@atomide.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simha BN <simhavcs@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Michael Walle <mwalle@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 03/10] dt-bindings: display: bridge: tc358775: Add support for tc358765
Date: Sun, 25 Feb 2024 08:19:32 +0200
Message-ID: <20240225062008.33191-4-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240225062008.33191-1-tony@atomide.com>
References: <20240225062008.33191-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The tc358765 is similar to tc358775. The tc358765 just an earlier version
of the hardware, and it's pin and register compatible with tc358775 for
most part.

From the binding point of view the only difference is that the tc358765
does not have stdby-gpios.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 .../display/bridge/toshiba,tc358775.yaml         | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Vinay Simha BN <simhavcs@gmail.com>
 
 description: |
-  This binding supports DSI to LVDS bridge TC358775
+  This binding supports DSI to LVDS bridges TC358765 and TC358775
 
   MIPI DSI-RX Data 4-lane, CLK 1-lane with data rates up to 800 Mbps/lane.
   Video frame size:
@@ -21,7 +21,9 @@ description: |
 
 properties:
   compatible:
-    const: toshiba,tc358775
+    enum:
+      - toshiba,tc358765
+      - toshiba,tc358775
 
   reg:
     maxItems: 1
@@ -89,6 +91,16 @@ required:
   - reset-gpios
   - ports
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: toshiba,tc358765
+    then:
+      properties:
+        stby-gpios: false
+
 additionalProperties: false
 
 examples:
-- 
2.43.1

