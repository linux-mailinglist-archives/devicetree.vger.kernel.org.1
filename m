Return-Path: <devicetree+bounces-24530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A79A380F78E
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 21:09:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 501BC1F21705
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 20:09:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4578863BEA;
	Tue, 12 Dec 2023 20:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ixit.cz header.i=@ixit.cz header.b="XEHbhaUP"
X-Original-To: devicetree@vger.kernel.org
Received: from ixit.cz (ip-89-177-23-149.bb.vodafone.cz [89.177.23.149])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5BBCCA;
	Tue, 12 Dec 2023 12:09:38 -0800 (PST)
Received: from newone.lan (unknown [10.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id 727A516074E;
	Tue, 12 Dec 2023 21:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1702411775;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=YR5tv31E3PULKwDD6cdd9ZvzFe890y7GDGcNtPGOHXs=;
	b=XEHbhaUPUOqSI1feA5yJXFXHVAxPSMX6n3JA1rJVomrooXonUuUWcAucm+0woS4YlpcXvy
	DXiehrUkg88bnRZsOL7fEoi8GWm/HTlAr0OsVj8d8j5jhUwZ2S00FBvvwol8VBJCKFcCho
	lz/0OxthKSjJ4Cf4ZbbtdY2kwF3JR80=
From: David Heidelberg <david@ixit.cz>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Brian Masney <masneyb@onstation.org>
Cc: David Heidelberg <david@ixit.cz>,
	Rob Herring <robh@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: panel-simple-dsi: move LG 5" HD TFT LCD panel into DSI yaml
Date: Tue, 12 Dec 2023 21:09:17 +0100
Message-ID: <20231212200934.99262-1-david@ixit.cz>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Originally was in the panel-simple, but belongs to panel-simple-dsi.

See arch/arm/boot/dts/nvidia/tegra114-roth.dts for more details.

Resolves the following warning:
```
arch/arm/boot/dts/tegra114-roth.dt.yaml: panel@0: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
        From schema: Documentation/devicetree/bindings/display/panel/panel-simple.yaml
```

Fixes: 310abcea76e9 ("dt-bindings: display: convert simple lg panels to DT Schema")
Signed-off-by: David Heidelberg <david@ixit.cz>
---
v2: added Fixes tag (thx to Jessica)

 .../devicetree/bindings/display/panel/panel-simple-dsi.yaml     | 2 ++
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index 73674baea75d..f9160d7bac3c 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
@@ -42,6 +42,8 @@ properties:
       - lg,acx467akm-7
         # LG Corporation 7" WXGA TFT LCD panel
       - lg,ld070wx3-sl01
+        # LG Corporation 5" HD TFT LCD panel
+      - lg,lh500wx1-sd03
         # One Stop Displays OSD101T2587-53TS 10.1" 1920x1200 panel
       - osddisplays,osd101t2587-53ts
         # Panasonic 10" WUXGA TFT LCD panel
diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 2021aa82871a..634a10c6f2dd 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -212,8 +212,6 @@ properties:
       - lemaker,bl035-rgb-002
         # LG 7" (800x480 pixels) TFT LCD panel
       - lg,lb070wv8
-        # LG Corporation 5" HD TFT LCD panel
-      - lg,lh500wx1-sd03
         # LG LP079QX1-SP0V 7.9" (1536x2048 pixels) TFT LCD panel
       - lg,lp079qx1-sp0v
         # LG 9.7" (2048x1536 pixels) TFT LCD panel
-- 
2.43.0


