Return-Path: <devicetree+bounces-26200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B81FB815E6B
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 11:08:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBBD11C21213
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 10:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60A7D210F;
	Sun, 17 Dec 2023 10:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TXivdlJg"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26DE1FC4
	for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 10:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702807669;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5CR/3Io6mktEEwQ1LHj5L/2zpZ/H1ugjG/amm876pBg=;
	b=TXivdlJgKSqwDsOwoBQ/D3u20Qz9z2vbu4QOcPbXwWIDGw6lE2dsV4QOKvrWuGspaZzVph
	PfpCXIgJnV3rBoHPX+I+fQFY9C20HoPPWMhPNM6l8Mloj+vISwINIYqH6S1g83NkjfAp/r
	BQxzojExmSSWIg8dnn3aqgYe50ekLaI=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-179-FBaL9l55NlKPuXlr_F_f-w-1; Sun, 17 Dec 2023 05:07:48 -0500
X-MC-Unique: FBaL9l55NlKPuXlr_F_f-w-1
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-33641bbc49dso1338461f8f.0
        for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 02:07:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702807667; x=1703412467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5CR/3Io6mktEEwQ1LHj5L/2zpZ/H1ugjG/amm876pBg=;
        b=hlmw5iKs4WBvGzyWNEYHjWDY6n/YulgULsgRVvnypGSPit7KI//zfE8xH09t5v7Z/J
         9yErtqVNtIv69qL7jR+hXeCviQyhddKy+4PA7oFcETSU87t/aFm3y6VL3W/PL/mpp+Bx
         h2CwmFyIm2me+cm1k8VsDzb+pDCJ8Tbzg3UHyt0Qo5ZRZEyR/CTYavb2CM4M2jYkV/Bd
         Oi+1C5yE4b9ap20qWCThR1G7Xu+aGJQeuA1ghw+oFDBl1PLpYPYQiB3s3cmdaPwAMfoV
         +u3hdpa3mciR//9KA4O7dj7NzxB64eB26R/sd50zkTwWw2+CBtnMv5TByHn7YtD2UAMF
         f7+w==
X-Gm-Message-State: AOJu0Yyq0XVDtu+SUuOx6h9v5z3Sxr+nKAraM0PvnoqWjbhP0G6ItA6P
	seUfs0D2kMLHvbXcDC50rsnX9375yuinYofFXvObWBq5MXHUvpBKNzSEWjw8VOLCwomqcturZX3
	VIrQV3BbHcdVe8d8K6dnW0Q==
X-Received: by 2002:a05:600c:1393:b0:40c:4d80:f51a with SMTP id u19-20020a05600c139300b0040c4d80f51amr5305189wmf.96.1702807667275;
        Sun, 17 Dec 2023 02:07:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEE2m3De7Sb1SGXY0KWt6mw+tIKeqFVO7iugFjDU9Je+2Tz6raBuqH1rDzvjUAl9KyCVMPenQ==
X-Received: by 2002:a05:600c:1393:b0:40c:4d80:f51a with SMTP id u19-20020a05600c139300b0040c4d80f51amr5305183wmf.96.1702807666944;
        Sun, 17 Dec 2023 02:07:46 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id h2-20020a05600c350200b0040c44b4a282sm29099420wmq.43.2023.12.17.02.07.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Dec 2023 02:07:45 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Peter Robinson <pbrobinson@gmail.com>,
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
Subject: [PATCH 1/2] dt-bindings: display: Add SSD133x OLED controllers
Date: Sun, 17 Dec 2023 11:07:03 +0100
Message-ID: <20231217100741.1943932-2-javierm@redhat.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231217100741.1943932-1-javierm@redhat.com>
References: <20231217100741.1943932-1-javierm@redhat.com>
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

 .../bindings/display/solomon,ssd133x.yaml     | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd133x.yaml

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml b/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml
new file mode 100644
index 000000000000..eee8d8c9ca35
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml
@@ -0,0 +1,63 @@
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
+properties:
+  compatible:
+    enum:
+      - solomon,ssd1331
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
+            const: solomon,ssd1331
+    then:
+      properties:
+        width:
+          default: 96
+        height:
+          default: 64
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
+                    compatible = "solomon,ssd1331";
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
+                    compatible = "solomon,ssd1331";
+                    reg = <0x0>;
+                    reset-gpios = <&gpio2 7>;
+                    dc-gpios = <&gpio2 8>;
+                    spi-max-frequency = <10000000>;
+            };
+    };
-- 
2.43.0


