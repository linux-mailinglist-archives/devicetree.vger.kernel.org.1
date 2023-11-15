Return-Path: <devicetree+bounces-15874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6847EC1F1
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 13:14:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EEE78B20BD2
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 12:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE582179A5;
	Wed, 15 Nov 2023 12:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60D01799C
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 12:13:51 +0000 (UTC)
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 223B4123;
	Wed, 15 Nov 2023 04:13:46 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 8881020718;
	Wed, 15 Nov 2023 13:13:43 +0100 (CET)
From: Francesco Dolcini <francesco@dolcini.it>
To: Adrien Grassein <adrien.grassein@gmail.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
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
	Conor Dooley <conor+dt@kernel.org>
Cc: Stefan Eichenberger <stefan.eichenberger@toradex.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v1 2/3] dt-bindings: display: bridge: lt8912b: Add power supplies
Date: Wed, 15 Nov 2023 13:13:37 +0100
Message-Id: <20231115121338.22959-3-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231115121338.22959-1-francesco@dolcini.it>
References: <20231115121338.22959-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Stefan Eichenberger <stefan.eichenberger@toradex.com>

Add Lontium lt8912b power supplies.

Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 .../display/bridge/lontium,lt8912b.yaml       | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
index f201ae4af4fb..2cef25215798 100644
--- a/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
@@ -55,6 +55,27 @@ properties:
       - port@0
       - port@1
 
+  vcchdmipll-supply:
+    description: A 1.8V supply that powers the HDMI PLL.
+
+  vcchdmitx-supply:
+    description: A 1.8V supply that powers the HDMI TX part.
+
+  vcclvdspll-supply:
+    description: A 1.8V supply that powers the LVDS PLL.
+
+  vcclvdstx-supply:
+    description: A 1.8V supply that powers the LVDS TX part.
+
+  vccmipirx-supply:
+    description: A 1.8V supply that powers the MIPI RX part.
+
+  vccsysclk-supply:
+    description: A 1.8V supply that powers the SYSCLK.
+
+  vdd-supply:
+    description: A 1.8V supply that powers the digital part.
+
 required:
   - compatible
   - reg
-- 
2.25.1


