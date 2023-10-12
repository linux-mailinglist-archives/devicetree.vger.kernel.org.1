Return-Path: <devicetree+bounces-8303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB537C78BA
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 23:39:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 764B8B207E6
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 21:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28DF03F4B8;
	Thu, 12 Oct 2023 21:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Jz9Lg7Xk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BFB03F4AC
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 21:39:34 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D787FD9
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 14:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697146772;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o3yRqYZd7hXBCjj0x6r+xRvOZ/+by8OSU47aD3csnLU=;
	b=Jz9Lg7XkGBcIn0+t03pVv7bCkueRn4pKNusfcl3mfeHRli3r7ZT4lYlva4Q0McPKfBqIqL
	qekmkgwWZ70F1Unyot4jAb9rPX4gcfciBkxXZVDrGc0+ks6tiN1aJzwQzCrED+m1HaGbbZ
	+2IGE4Hd8cGoJm8AAKoow5u7cumuJqQ=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-154-6BdPC-u0PAKWnAiotu-uww-1; Thu, 12 Oct 2023 17:39:15 -0400
X-MC-Unique: 6BdPC-u0PAKWnAiotu-uww-1
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-407558fe418so10099425e9.0
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 14:39:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697146754; x=1697751554;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o3yRqYZd7hXBCjj0x6r+xRvOZ/+by8OSU47aD3csnLU=;
        b=U26GF9/S5WFI7HX16XRjf1GDP8RUOGIRY7gQ/H7GGR06+PJlMdnhbzrnPo7PsDtcRl
         xHIyPmoV7Fh+Va8D3ZuCx5HVETZTuoabfoRjiTf/d3f1ryY/9dJDQ3O11ELtSgr3KA1K
         7LKq5Prjf0hvgCvwe6Z7h6Gqd+y5ligbMAC9/bIs68QcvRgkJlntIAhRtdWB/XI+lgZ+
         YuzuUjdiIOrvmwcXijOWC+vZsSG5GJRLvN4z7UjRfFtcUjQvTSikWEoFdi/M+Cr6bOxW
         QXggySgaLSlU92llqbxWQnH6ZtzPjHqXSxHXWgVNFH1QrJUDLOnwMEPbE+QhBdLaT/u2
         l1oA==
X-Gm-Message-State: AOJu0Yx2s+ML0tqb5ZK6eFT8M9N5sPTHxtY4mkr1koe8unYe636SkJFv
	Lbeaal+xuE3a7HA46uO6FtqQygUQp2PTg38pZd2f8RIIWSQbiljHTmBw52FQgmeBSgruoAb0ZBP
	RMrNzzfBgtGkrhR3Vsho1LQ==
X-Received: by 2002:a05:600c:22d5:b0:406:52e4:cd23 with SMTP id 21-20020a05600c22d500b0040652e4cd23mr21842871wmg.0.1697146754726;
        Thu, 12 Oct 2023 14:39:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+XVdeKgSPhHzOip6DG8FcebZmLSy2zD26qDPnYqZ7qCmWMDHxCbKD8PAFohtrJ32KHy3KEw==
X-Received: by 2002:a05:600c:22d5:b0:406:52e4:cd23 with SMTP id 21-20020a05600c22d500b0040652e4cd23mr21842864wmg.0.1697146754547;
        Thu, 12 Oct 2023 14:39:14 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id y10-20020a05600c364a00b0040648217f4fsm800706wmq.39.2023.10.12.14.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 14:39:14 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
	Peter Robinson <pbrobinson@gmail.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Conor Dooley <conor@kernel.org>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 6/6] dt-bindings: display: Add SSD132x OLED controllers
Date: Thu, 12 Oct 2023 23:38:36 +0200
Message-ID: <20231012213843.1151060-7-javierm@redhat.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231012213843.1151060-1-javierm@redhat.com>
References: <20231012213843.1151060-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a Device Tree binding schema for the OLED panels based on the Solomon
SSD132x family of controllers.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Changes in v3:
- Add Rob Herring's Reviewed-by tag to patch #6.

Changes in v2:
- Remove unnecessary 'oneOf' in the SSD132x DT binding schema (Conor Dooley).
- Remove unused DT nodes labels in the binding schema examples (Conor Dooley).
- Split out common Solomon properties into a separate schema (Rob Herring).

 .../bindings/display/solomon,ssd132x.yaml     | 89 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 2 files changed, 90 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd132x.yaml

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
new file mode 100644
index 000000000000..0aa41bd9ddca
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/solomon,ssd132x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Solomon SSD132x OLED Display Controllers
+
+maintainers:
+  - Javier Martinez Canillas <javierm@redhat.com>
+
+properties:
+  compatible:
+    - enum:
+        - solomon,ssd1322
+        - solomon,ssd1325
+        - solomon,ssd1327
+
+required:
+  - compatible
+  - reg
+
+allOf:
+  - $ref: solomon,ssd-common.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: solomon,ssd1322
+    then:
+      properties:
+        width:
+          default: 480
+        height:
+          default: 128
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: solomon,ssd1325
+    then:
+      properties:
+        width:
+          default: 128
+        height:
+          default: 80
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: solomon,ssd1327
+    then:
+      properties:
+        width:
+          default: 128
+        height:
+          default: 128
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            oled@3c {
+                    compatible = "solomon,ssd1327";
+                    reg = <0x3c>;
+                    reset-gpios = <&gpio2 7>;
+            };
+
+    };
+  - |
+    spi {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            oled@0 {
+                    compatible = "solomon,ssd1327";
+                    reg = <0x0>;
+                    reset-gpios = <&gpio2 7>;
+                    dc-gpios = <&gpio2 8>;
+                    spi-max-frequency = <10000000>;
+            };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 4a3baf970839..5257e0074f2b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6733,7 +6733,7 @@ M:	Javier Martinez Canillas <javierm@redhat.com>
 S:	Maintained
 T:	git git://anongit.freedesktop.org/drm/drm-misc
 F:	Documentation/devicetree/bindings/display/solomon,ssd-common.yaml
-F:	Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
+F:	Documentation/devicetree/bindings/display/solomon,ssd13*.yaml
 F:	drivers/gpu/drm/solomon/ssd130x*
 
 DRM DRIVER FOR ST-ERICSSON MCDE
-- 
2.41.0


