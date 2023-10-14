Return-Path: <devicetree+bounces-8615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0165D7C9321
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 09:15:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A1D8B20BD0
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 07:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1069E5398;
	Sat, 14 Oct 2023 07:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FJcDMWfb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8110D5396
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 07:15:42 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16139D7
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 00:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697267740;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=raAB53+V1qu2bUUCCKF3EKq6VfIA1dHSrOv8hUuGyAo=;
	b=FJcDMWfbMPckvxCyz4YexBhJuhjHkU7DGdV0kcnSVHPdF6gktwx7+i2wulXXW4V1Tp2fnT
	O1GfNiY0+4Ldra/a3GFJEega7/sPeodYs84oCaGzjXga+3vijX39SnPuM7rTmEhqsoqTtB
	WCHtEY+ecjeYD9Msl4PzlKKwkBm1V4c=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-640-hrR6O9uHP02ZBA6FGOZpVw-1; Sat, 14 Oct 2023 03:15:35 -0400
X-MC-Unique: hrR6O9uHP02ZBA6FGOZpVw-1
Received: by mail-lj1-f198.google.com with SMTP id 38308e7fff4ca-2c5073588cbso12384321fa.3
        for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 00:15:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697267734; x=1697872534;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=raAB53+V1qu2bUUCCKF3EKq6VfIA1dHSrOv8hUuGyAo=;
        b=TTavv1aAef1NNeCPSSvIQwhTc9/MxYO/mS8Dz+xFdtVLKIzYy+KLcfA9Gy20ejwiQE
         /s4iCWcLutIxFzTtLTEaIV8DmFcHslmQDMS/DS/BULsxsyKlS62SU6CbdKNswh8gaB8y
         vrOxNBGI2oUQenN8Yp7En7mfsQhq/R2DhyfS6pGVxCLeRlgx9AGul0Vo6k/JkS8to6HK
         Kzz4J4TLB4gV/Ox8/iQWovc8oPT4C4MlFU4pzW7PAyi6M4FSYtlJrdnp8HawptXM1QOh
         XQspm6vcfsxHODC4W3cKB/RbS+duPK7+10yXn3ijYuwdUSGi7AYO5GLMRvamgLa0yEow
         1mPw==
X-Gm-Message-State: AOJu0YzIvj3N5Vuz6+Q2dRURiCq5zcfwFiaMj3xeaNCWsfS7PdFvJ5Aa
	ETJOMz/MpCcKrmhxc3ToJMCYoWmQdsTLb4ErEKpJrqhQzze0dHu8sqS4weOkyRlSgs+SvUwHpaW
	nz5U1IsPvZG/O5oXEXSyfNw==
X-Received: by 2002:a2e:a99a:0:b0:2c5:521:cec3 with SMTP id x26-20020a2ea99a000000b002c50521cec3mr4148480ljq.23.1697267734379;
        Sat, 14 Oct 2023 00:15:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGwjo1TWnsUDMoqQYTjitJuF6l8VXN+YN8uVve4vYyQKLFuyh4vtPwp12m6D7ie0yr7j0T0Q==
X-Received: by 2002:a2e:a99a:0:b0:2c5:521:cec3 with SMTP id x26-20020a2ea99a000000b002c50521cec3mr4148465ljq.23.1697267734152;
        Sat, 14 Oct 2023 00:15:34 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id j11-20020a05600c190b00b0040646a708dasm1144730wmq.15.2023.10.14.00.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Oct 2023 00:15:33 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Conor Dooley <conor@kernel.org>,
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
Subject: [PATCH v4 6/6] dt-bindings: display: Add SSD132x OLED controllers
Date: Sat, 14 Oct 2023 09:15:08 +0200
Message-ID: <20231014071520.1342189-7-javierm@redhat.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231014071520.1342189-1-javierm@redhat.com>
References: <20231014071520.1342189-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a Device Tree binding schema for the OLED panels based on the Solomon
SSD132x family of controllers.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
---

(no changes since v3)

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
index c63649e9ba58..4b518429458b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6766,7 +6766,7 @@ M:	Javier Martinez Canillas <javierm@redhat.com>
 S:	Maintained
 T:	git git://anongit.freedesktop.org/drm/drm-misc
 F:	Documentation/devicetree/bindings/display/solomon,ssd-common.yaml
-F:	Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
+F:	Documentation/devicetree/bindings/display/solomon,ssd13*.yaml
 F:	drivers/gpu/drm/solomon/ssd130x*
 
 DRM DRIVER FOR ST-ERICSSON MCDE
-- 
2.41.0


