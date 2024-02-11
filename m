Return-Path: <devicetree+bounces-40448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5FE850880
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 10:55:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEB731C2153E
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 09:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FCAF59173;
	Sun, 11 Feb 2024 09:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="Tn5UW8bM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F7E5A11F
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 09:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707645312; cv=none; b=mIvtWBPL2NBpUmMBMxqVaUXA1G9YWvsqMj2z5msV4FrkiEaAdZ1eIOCQhMQinbLv3/6e8Kd/RLQc7pW8mWPsBYlo5QWn35wyTP16L+M4rcD4OJd1xlJyFLgi7+Wp6qcaMxZmAP9nepc9sU8sQmbbnJYAZFsv9J1WlZWh92Usy7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707645312; c=relaxed/simple;
	bh=CwqiIpG7rYPYfbTg8tnzX5Qs6UopiwlyCwou8+sg1r4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rgJUwZXiRveIch3HfWLjDLmLM4pPTOjxtBxQJc981/kAM241Lbv0hyZmZ6pCpfRZQFgr0dvRtIw7kJK0eqKp8RWgYOgxuyQzqd2Opwi0maLMscnWeuYDswVnCk92ha2luszC/blupebRRtBTwvc/xzSbpaqVOAeuTTf79PrMZPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=Tn5UW8bM; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id B1C176049B;
	Sun, 11 Feb 2024 09:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707645310;
	bh=CwqiIpG7rYPYfbTg8tnzX5Qs6UopiwlyCwou8+sg1r4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Tn5UW8bMULvWRDxQoJ2jOi9+uKinFkd8TGAOYZeT1PW57AqMNV6HZ5QUbuGz5wTD5
	 FErrgHYyRB2UI5BhsoLwcy01yYgSrMPuI1QNi6eqHbSKtuENPpmSFuBA6Njuk0KmIr
	 z3FZymu7Yd5ORc4sHnMBN85IEinCz2xxTQkShEwWRROBDjWlB766Q1I5PX/LQ53fja
	 6r3cB2H53NJrAYHZG9c5h5K/Kud+b8bDbSH/bbhm6bYDLzsvp8PYd5LrzkiE0uHqlC
	 AY0JUQrhhUs6q4zjqAiYsKSlh/wfgeQ8aSsJD30CCZO0s5PmA277PahpYDjr6KNSAX
	 NMpT+qNaIFZ/A==
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
	Michael Walle <mwalle@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 03/10] dt-bindings: display: bridge: tc358775: Add support for tc358765
Date: Sun, 11 Feb 2024 11:51:08 +0200
Message-ID: <20240211095144.2589-4-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240211095144.2589-1-tony@atomide.com>
References: <20240211095144.2589-1-tony@atomide.com>
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
 .../bindings/display/bridge/toshiba,tc358775.yaml | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

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
@@ -81,6 +83,15 @@ properties:
       - port@0
       - port@1
 
+allOf:
+  - if:
+    properties:
+      compatible:
+        contains:
+          const: toshiba,tc358765
+    then:
+      stby-gpios: false
+
 required:
   - compatible
   - reg
-- 
2.43.0

