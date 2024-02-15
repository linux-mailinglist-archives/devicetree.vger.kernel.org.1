Return-Path: <devicetree+bounces-42042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E2685634C
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 13:35:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7DE271F25B92
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 12:35:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8951012CDA9;
	Thu, 15 Feb 2024 12:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="cULphLRZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2951912C81A
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 12:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708000548; cv=none; b=tJB9IHpHNVYvs2LQmdTDJ1n6Rg5EJBXo7FUsBwEB/7ILA7g4xmKbs7rkgt0nikxb1Jh4WDAZHsu8tUjZONxV8C0ezD3WtwGER3qyv/fgMb9KWR/vcQJg+xwV9mi5oBIlTHvackKpDuVkw2rM3ZDcz9tBybTVdtT09BjLdYdz4Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708000548; c=relaxed/simple;
	bh=hYmGXCjbhdkE6FVhogn5qqay1orb1dFcVmICxeA9fi0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=icRpaYi5kyHuoU5Q0LQ4YC/9GfYGEdE+A4hc4OZjWP0BXpFMxK9BmD0uwDZrSwQAHDBsxI+oI8wANej3U+gZPXy/QP84p3ZQq5basKU4fwbPTIYL46M1HkRuwlhNNCndP22Y5RHkUyPjlU03thxza8dI5hqgfuDRIx4vmWCk4EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=cULphLRZ; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id D0B40603EE;
	Thu, 15 Feb 2024 12:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708000546;
	bh=hYmGXCjbhdkE6FVhogn5qqay1orb1dFcVmICxeA9fi0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cULphLRZZD2+FKheXMDqAAQ+y1bQnljm4tzUmMV7hGoFdYOJzlh+rp2OM9623Ben9
	 +4Tj9gFpS2YGFhTxqgfpKTT87HUKspJ2oJeZ9oxN167blejxSHP/wuQbQ4hKndII63
	 +w14U9d+eCrRk4V5GFxEc4UWlmcrti+oquEDouX2uZhIV3i8UhskRwUbr5j99XN3M3
	 jgHYXgr4JuaHrypeiKCu0kxPnEz+JdcIl3djwmUyZQ5ApfIphqwNW4vVB8OLt3ZiEO
	 muiC1O4gIvaM03tOMUASmR0a9BD5b94XYJakjc2I9YDM6c4rKKpZQqWFZHHPHV7mx9
	 3a0HJK6CbryRQ==
From: Tony Lindgren <tony@atomide.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
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
Subject: [PATCH v4 03/10] dt-bindings: display: bridge: tc358775: Add support for tc358765
Date: Thu, 15 Feb 2024 14:31:46 +0200
Message-ID: <20240215123222.42609-4-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240215123222.42609-1-tony@atomide.com>
References: <20240215123222.42609-1-tony@atomide.com>
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
@@ -81,6 +83,16 @@ properties:
       - port@0
       - port@1
 
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
 required:
   - compatible
   - reg
-- 
2.43.1

