Return-Path: <devicetree+bounces-27078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A4C8191A1
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 21:35:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 303AA1C249F9
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 20:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E44FE3A1AD;
	Tue, 19 Dec 2023 20:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="UWIKJsHv"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B6439AF8
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 20:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1703018095;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uBP5+4pQK3uFRN8UqYAB+LK0Vg09XZtHg8dKysI62eg=;
	b=UWIKJsHveG5VIOoOcbVyD+ISqNIZ9Gm1airsZ8rQH2FzuNwXKDR3dHogwxycAMV5Qgq+5r
	oJF4HwICa1/P8G79zbbJ9DG/MkVZqMAUlwuDSOyoow6tRK0WeULX42qTqbxxumuiKMYgi+
	rKDFTvF+GkdNK0lGkxa6slApPXbQu98=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-160-Z550vsECMcehF98jJ4E8cw-1; Tue, 19 Dec 2023 15:34:52 -0500
X-MC-Unique: Z550vsECMcehF98jJ4E8cw-1
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-40c514f9243so33023835e9.3
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 12:34:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703018091; x=1703622891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uBP5+4pQK3uFRN8UqYAB+LK0Vg09XZtHg8dKysI62eg=;
        b=LRqF+ibLkeHKuG0k8YPT85ZfswQ8GlsXHNPwI3MmxKLptbLnsBhLaEysTrRuw9j+1W
         FmBHxpBezsb7wgbXbCvhpofL49sruqx0/TPksO7GHkOXXL6O1M2v9uJZVfPgJhB4srxl
         g/0cBobSrqx0mkhetuPJNUaQhbVsmJen5Sdc+RqYy6z5CaK02BOXLPK/PszyP2RskPI8
         oCZ5K45jquaa+KoI9fZKJNGLIOK2O+xbulolTjADPS4vtZni6Mr2P4Lnj9Mb7kDZjKdO
         fXL51PSBf0mppq8G5iMwLrTNUHlsVaXlqVsQECO5JZUVMvOXoxJrDK07k6kefTBaQxLz
         Lc7g==
X-Gm-Message-State: AOJu0Yw+FqcUzNdeKgJi9BcEAbNywO7uzgV4k7nBZSn2Mp4XsSKsdnha
	2Xevw8CuMYfo+t8GJofr93xoX15W3UhJAgSAlBvC4pJvKD/NxuhrsXxlzcikiG3MvRLT0KZIXQ9
	AhTT0GctVuvgkJ07AaP//Mg==
X-Received: by 2002:a05:600c:458d:b0:40b:33c0:a22 with SMTP id r13-20020a05600c458d00b0040b33c00a22mr11268580wmo.28.1703018090944;
        Tue, 19 Dec 2023 12:34:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFsXT5JFxqoigwef/u1QlfVGRPMXewmQtLqix/INqsVLkJ2tdFjoRjRtz0EBStx4PVCPvpwYg==
X-Received: by 2002:a05:600c:458d:b0:40b:33c0:a22 with SMTP id r13-20020a05600c458d00b0040b33c00a22mr11268569wmo.28.1703018090722;
        Tue, 19 Dec 2023 12:34:50 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id c5-20020a05600c0a4500b0040c411da99csm4464496wmq.48.2023.12.19.12.34.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 12:34:50 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	Maxime Ripard <mripard@kernel.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor@kernel.org>,
	Jocelyn Falempe <jfalempe@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 3/4] dt-bindings: display: Add SSD133x OLED controllers
Date: Tue, 19 Dec 2023 21:34:08 +0100
Message-ID: <20231219203416.2299702-4-javierm@redhat.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219203416.2299702-1-javierm@redhat.com>
References: <20231219203416.2299702-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a Device Tree binding schema for the OLED panels based on the
Solomon SSD133x family of controllers.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

Changes in v3:
- Move solomon,ssd-common.yaml ref before the properties section and
  width/height constraints after the other properties (Conor Dooley).

Changes in v2:
- Unconditionally set the width and height constraints (Conor Dooley).
- Fix indentation in the DTS examples (Krzysztof Kozlowski).

 .../bindings/display/solomon,ssd133x.yaml     | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd133x.yaml

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml b/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml
new file mode 100644
index 000000000000..e93879b3da5d
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/solomon,ssd133x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Solomon SSD133x OLED Display Controllers
+
+maintainers:
+  - Javier Martinez Canillas <javierm@redhat.com>
+
+allOf:
+  - $ref: solomon,ssd-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - solomon,ssd1331
+
+  solomon,width:
+    default: 96
+
+  solomon,height:
+    default: 64
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        oled@3c {
+            compatible = "solomon,ssd1331";
+            reg = <0x3c>;
+            reset-gpios = <&gpio2 7>;
+        };
+
+    };
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        oled@0 {
+            compatible = "solomon,ssd1331";
+            reg = <0x0>;
+            reset-gpios = <&gpio2 7>;
+            dc-gpios = <&gpio2 8>;
+            spi-max-frequency = <10000000>;
+        };
+    };
-- 
2.43.0


