Return-Path: <devicetree+bounces-7976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2847C65FA
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:58:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F30C52826CD
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 06:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63F60DDD1;
	Thu, 12 Oct 2023 06:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Yqbfq5LY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB414DDBA
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 06:58:48 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86841C6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 23:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697093926;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HDry+FhkIeT/NRPHa1BVdFItba2J4DOxCsv4jEZYJSQ=;
	b=Yqbfq5LY+ZsUmZ1JuyLRF+ZM7ckY/GmDFuFZP8HhyFkCIqHWIb+KKd4oQ3NnJhBwJuaE4I
	yV/6Jd6i0KC74K8tQMFr7XOErauXynpamBCWPpeBn5sWUcholerkJGLG4gGSmA1Zj47+uA
	Qvh4YYxRVFdeai+9AAszK5ShWSAfXe4=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-501-QYpIDav6PPK0-X2slK2p_Q-1; Thu, 12 Oct 2023 02:58:35 -0400
X-MC-Unique: QYpIDav6PPK0-X2slK2p_Q-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4075a573035so7655335e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 23:58:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697093914; x=1697698714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HDry+FhkIeT/NRPHa1BVdFItba2J4DOxCsv4jEZYJSQ=;
        b=lRGho1YJyhRPCRQNtMvL9UmdXEfHO+rjUiIobLVg5vGbJzQdmUincWR78s/AQppYLa
         PEfGi7bzGi775JevSHHPzmbtFcMv2raZBFzGiqQXpnIctbNI/wVyndx74KJXaXOwSBIL
         qApN0yXlB1zpFueqTaIN10iX3RJq9sfgg1AbKEh3DKqG103hBsQtJP5p+nwwj33Y3y6c
         h2R9c39xfTGasehsfn5VkwMntfd+c6u3qaBGGwZdOQCnSuaBbiBWKTueoHsZ8biV7VhZ
         bFRGed0IB3YhK8RnXB4IFlKgDPlRVXHoz0KDQf9V9OvahjW3bU+Vw4wUuqEVV+ia4vAn
         KeQQ==
X-Gm-Message-State: AOJu0YwufpAHLxryi74lxWebCWwwaat1xsB3yV5H1qbS7Hrxprk7Z1lA
	jirRGE1zNnMJl7L2fKWSgHsqT72ESFQuvPVOAznTOhopvX0dD5cgVCEOjaKKHd3/Z4eFynKjoTu
	OmCK3XonWnmnvmuMoQi/eAw==
X-Received: by 2002:a05:600c:c8b:b0:401:b2c7:34aa with SMTP id fj11-20020a05600c0c8b00b00401b2c734aamr20358180wmb.33.1697093914585;
        Wed, 11 Oct 2023 23:58:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJUdJAE+J+1gnbUCfPDDysmAo9MVCsBEBf74Ya+bU1awzyJ/Fc2/4hxnuN0VxAQe5EBOIOFQ==
X-Received: by 2002:a05:600c:c8b:b0:401:b2c7:34aa with SMTP id fj11-20020a05600c0c8b00b00401b2c734aamr20358177wmb.33.1697093914403;
        Wed, 11 Oct 2023 23:58:34 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id 6-20020a05600c22c600b0040303a9965asm21113713wmg.40.2023.10.11.23.58.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 23:58:34 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
	Conor Dooley <conor@kernel.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 6/6] dt-bindings: display: Add SSD132x OLED controllers
Date: Thu, 12 Oct 2023 08:58:15 +0200
Message-ID: <20231012065822.1007930-7-javierm@redhat.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231012065822.1007930-1-javierm@redhat.com>
References: <20231012065822.1007930-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a Device Tree binding schema for the OLED panels based on the Solomon
SSD132x family of controllers.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

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


