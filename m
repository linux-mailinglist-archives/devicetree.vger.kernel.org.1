Return-Path: <devicetree+bounces-83921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A7092A556
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 17:01:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DDF4D1F2105B
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 15:01:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A779A13B588;
	Mon,  8 Jul 2024 15:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="tFYlUdap"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB274482D7
	for <devicetree@vger.kernel.org>; Mon,  8 Jul 2024 15:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720450910; cv=none; b=NEDDpvvhSolpO4r7lyX6LHx93Ib6abfnqFl4rJ9TyxLIIuLE4C9Wsui9idHNnQQnej7C6h78/Jq4GM2xGz9MMZzoJFj/B2FGlcg91ZfR+O+B/1yk7BlJg5LC6sKHm4q9dHFFLdG18JKAWqhwiSZd4dcclDDTv5sxnYqaey2Bgsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720450910; c=relaxed/simple;
	bh=mAchKiv/SSMrlfJSTwqAX+FNsZrcPKbTw12IEMU+d6c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dq1sbZyyvRjQJKy3uh9SjwEhafPwtu+0+o1Tb6EzTIxP3EwTP18tLCX63aqD/dWkcWtZc77d89ohWJ8jW7FqPXMnRUg4QBAxNDol+rBdO8t46E24y+mR0YdjsNVrdxIJt3ZPG3BqWPoCzphOPvT/eZpo0JH7TPVToWnq1SbzCEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=tFYlUdap; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id C0C7588729;
	Mon,  8 Jul 2024 17:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1720450906;
	bh=mqSTohvMgRIhGEWHVCWzYU5kobWF8CMwHlA2yrhy678=;
	h=From:To:Cc:Subject:Date:From;
	b=tFYlUdap21uExbEaLAcEDboWbhy4d0sa9ZXgXWpXs6l5itPloI4HHoAlnEP/kkHnj
	 yxC69wN/WE5roa2aYp/DV3d+S40rsxw44Xsknk/Ft7uBYaHWUbxyVxMiqTDNXbBdy+
	 ZFWpYqXYrjNgG1i2Od68UM8W7rVZ6zkMkkKCFjvCBletYCcdB1oOUFovoGau/n8mqB
	 RoPqGf54oFhrnYMhPqBlkDEZZXAaQAvtztf+eQPeIEa3PrsjcZfsIUeuthqf4BhVMe
	 IMbYHh+ztIZPGdVadUGRECuD8B0lLKuzTB73cx2EKzvPlTnKo6/l6iuyNxEn47ITtf
	 Mx13qBtRA+nHQ==
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Marek Vasut <marex@denx.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com
Subject: [PATCH v4 1/2] dt-bindings: display: bridge: tc358867: Document default DP preemphasis
Date: Mon,  8 Jul 2024 17:01:13 +0200
Message-ID: <20240708150130.54484-1-marex@denx.de>
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

Document default DP port preemphasis configurable via new DT property
"toshiba,pre-emphasis". This is useful in case the DP link properties
are known and starting link training from preemphasis setting of 0 dB
is not useful. The preemphasis can be set separately for both DP lanes
in range 0=0dB, 1=3.5dB, 2=6dB .

This is an endpoint property, not a port property, because the TC9595
datasheet does mention that the DP might operate in some sort of split
mode, where each DP lane is used to feed one display, so in that case
there might be two endpoints.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: kernel@dh-electronics.com
---
V2: - Fix the type to u8 array
    - Fix the enum items to match what they represent
V3: - Update commit message, expand on this being an endpoint property
V4: - Fix ref: /schemas/graph.yaml#/$defs/port-base and add unevaluatedProperties
---
 .../display/bridge/toshiba,tc358767.yaml      | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
index 2ad0cd6dd49e0..b78f64c9c5f44 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
@@ -92,12 +92,31 @@ properties:
             reference to a valid DPI output or input endpoint node.
 
       port@2:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description: |
             eDP/DP output port. The remote endpoint phandle should be a
             reference to a valid eDP panel input endpoint node. This port is
             optional, treated as DP panel if not defined
 
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              toshiba,pre-emphasis:
+                description:
+                  Display port output Pre-Emphasis settings for both DP lanes.
+                $ref: /schemas/types.yaml#/definitions/uint8-array
+                minItems: 2
+                maxItems: 2
+                items:
+                  enum:
+                    - 0 # No pre-emphasis
+                    - 1 # 3.5dB pre-emphasis
+                    - 2 # 6dB pre-emphasis
+
     oneOf:
       - required:
           - port@0
-- 
2.43.0


