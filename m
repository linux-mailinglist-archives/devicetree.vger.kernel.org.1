Return-Path: <devicetree+bounces-8614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A28797C931F
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 09:15:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 923A6B20AD7
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 07:15:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F9931859;
	Sat, 14 Oct 2023 07:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="AkM2NncQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019585396
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 07:15:39 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B5D5CA
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 00:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697267737;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=L40KmVEphI0s36UXbc+Nqi/6EpaBRCldyiUbNkbVIGc=;
	b=AkM2NncQhxN8eRjBPuy1gubIfJJ/RSxzoITSFXywYtVRDJk+AlNKO0aLoIArM4lRZB27Ka
	Pr7itpIBVgHXMgPnY+sS6PeZNphXb70Zu8qPxxoR5b5m3vO7ck4mhh9YraTxR8tVTyNEPl
	Pp8C7Bjdv1fqVpM+eC4WfzM5ytdjTrU=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-493-XDlRNcX9NwOYsjdS74MMxw-1; Sat, 14 Oct 2023 03:15:34 -0400
X-MC-Unique: XDlRNcX9NwOYsjdS74MMxw-1
Received: by mail-lf1-f71.google.com with SMTP id 2adb3069b0e04-5079fe7cc7cso608409e87.2
        for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 00:15:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697267732; x=1697872532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L40KmVEphI0s36UXbc+Nqi/6EpaBRCldyiUbNkbVIGc=;
        b=SzADPgNulDifYx90xW6tNXozzVWkaw7rho9uBAnXj85c8MbesKR+mISiCX2TtMika5
         E2V9LREVRsQugEttBHEl8lHwqIKooRnri85msgAX1B8Bt7iq1CJpnoUMgsDoH7eQrJgs
         F9FdnXG758pEotwmtf9yXjjTqLxKj76gWGE4b9RR0BcB62W8TvzarIeSPO3gUEKmww3Z
         9qPLpTNLR3U7H5fjoof8MJ8KSUgUKOgCVpXkrK3x9jrfB5bJWiLhCyrhpip8JUdmFjsF
         GTQwqIcFr3mPA681HFe697Yx9Mu1/7x2rirJZoAtBlRNTs1zqQxnFFjLuPMRuYdmsm0Q
         J2Xg==
X-Gm-Message-State: AOJu0YzyC21piwt7lL3gfCS1u4/Xm7BS42nAO6Bqcv41eFDmp/5HJQCP
	cCOOdBrKXtzPwMs0A7JMFk2b77nxBYtuWJ2Es5jHu8PsX+wQg7UdGPQ2PXUz/RuX9zs3u0RrYgs
	YJyn7QUY2oERxQANEwa474Q==
X-Received: by 2002:a05:6512:3a83:b0:503:2deb:bbc1 with SMTP id q3-20020a0565123a8300b005032debbbc1mr28600318lfu.22.1697267732532;
        Sat, 14 Oct 2023 00:15:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEacEunJ2/vtjj/hMo9XgpbKpPFdZ+wm3KP0SVdHibnjcsC4EB/kyupw46K5iKtSYP274RS7g==
X-Received: by 2002:a05:6512:3a83:b0:503:2deb:bbc1 with SMTP id q3-20020a0565123a8300b005032debbbc1mr28600300lfu.22.1697267732165;
        Sat, 14 Oct 2023 00:15:32 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id i9-20020a05600c354900b003fee53feab5sm1154353wmq.10.2023.10.14.00.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Oct 2023 00:15:31 -0700 (PDT)
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
Subject: [PATCH v4 5/6] dt-bindings: display: Split common Solomon properties in their own schema
Date: Sat, 14 Oct 2023 09:15:07 +0200
Message-ID: <20231014071520.1342189-6-javierm@redhat.com>
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

There are DT properties that can be shared across different Solomon OLED
Display Controller families. Split them into a separate common schema to
avoid these properties to be duplicated in different DT bindings schemas.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
---

(no changes since v3)

Changes in v3:
- Fix "No newline at end of file" in solomon,ssd-common.yaml (Rob Herring).
- Add Rob Herring's Reviewed-by tag to patch #5.

 .../bindings/display/solomon,ssd-common.yaml  | 42 +++++++++++++++++++
 .../bindings/display/solomon,ssd1307fb.yaml   | 28 +------------
 MAINTAINERS                                   |  1 +
 3 files changed, 44 insertions(+), 27 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd-common.yaml

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd-common.yaml b/Documentation/devicetree/bindings/display/solomon,ssd-common.yaml
new file mode 100644
index 000000000000..3e6998481a75
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/solomon,ssd-common.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/solomon,ssd-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common properties for Solomon OLED Display Controllers
+
+maintainers:
+  - Javier Martinez Canillas <javierm@redhat.com>
+
+properties:
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  # Only required for SPI
+  dc-gpios:
+    description:
+      GPIO connected to the controller's D/C# (Data/Command) pin,
+      that is needed for 4-wire SPI to tell the controller if the
+      data sent is for a command register or the display data RAM
+    maxItems: 1
+
+  solomon,height:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Height in pixel of the screen driven by the controller.
+      The default value is controller-dependent.
+
+  solomon,width:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Width in pixel of the screen driven by the controller.
+      The default value is controller-dependent.
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
index 20e2bd15d4d2..3afbb52d1b7f 100644
--- a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
+++ b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
@@ -27,38 +27,12 @@ properties:
           - solomon,ssd1307
           - solomon,ssd1309
 
-  reg:
-    maxItems: 1
-
   pwms:
     maxItems: 1
 
-  reset-gpios:
-    maxItems: 1
-
-  # Only required for SPI
-  dc-gpios:
-    description:
-      GPIO connected to the controller's D/C# (Data/Command) pin,
-      that is needed for 4-wire SPI to tell the controller if the
-      data sent is for a command register or the display data RAM
-    maxItems: 1
-
   vbat-supply:
     description: The supply for VBAT
 
-  solomon,height:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description:
-      Height in pixel of the screen driven by the controller.
-      The default value is controller-dependent.
-
-  solomon,width:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description:
-      Width in pixel of the screen driven by the controller.
-      The default value is controller-dependent.
-
   solomon,page-offset:
     $ref: /schemas/types.yaml#/definitions/uint32
     default: 1
@@ -148,7 +122,7 @@ required:
   - reg
 
 allOf:
-  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+  - $ref: solomon,ssd-common.yaml#
 
   - if:
       properties:
diff --git a/MAINTAINERS b/MAINTAINERS
index 987152e3be02..c63649e9ba58 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6765,6 +6765,7 @@ DRM DRIVER FOR SOLOMON SSD130X OLED DISPLAYS
 M:	Javier Martinez Canillas <javierm@redhat.com>
 S:	Maintained
 T:	git git://anongit.freedesktop.org/drm/drm-misc
+F:	Documentation/devicetree/bindings/display/solomon,ssd-common.yaml
 F:	Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
 F:	drivers/gpu/drm/solomon/ssd130x*
 
-- 
2.41.0


