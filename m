Return-Path: <devicetree+bounces-28899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3F281FF1C
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 12:21:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7FEBB1F2171B
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 11:21:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96BC410A3A;
	Fri, 29 Dec 2023 11:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GEBiAZIF"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E8D11701
	for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 11:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1703848839;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lSLqHCf+PCh+kG7eprKkh+p3h0FyLiC3U9qCESwxHTc=;
	b=GEBiAZIFQ6IWa5Z94sb54LpNcBMWF0d3zbpRASNy8QAegWWdDuy8T5eamcmZ8eS5+5dmW7
	APBo2XjhcUT/0503YaSQTqumheRlG7QThuodwO+PxjsU5V7KtVlVOB7kAXmQH71VKpke8+
	XzPBKzx0jriKD48+wXUulUsUMNVTRaY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-662-u1-1VRWJOdisBInhwHzDfQ-1; Fri, 29 Dec 2023 06:20:37 -0500
X-MC-Unique: u1-1VRWJOdisBInhwHzDfQ-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-40d6e7334cfso9927295e9.0
        for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 03:20:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703848836; x=1704453636;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lSLqHCf+PCh+kG7eprKkh+p3h0FyLiC3U9qCESwxHTc=;
        b=SVN08jxYZmnkFoI/Oj3CllGNmuM/qosObCpbR4gs3YioTNby5arJIwQ+0PN7q2egQk
         94WD415yFpef/ZjVTuROV/lAmAcBnUYC0WRXOLuaDN+710DBtldjQLya1zzPXkP4zd/L
         Ts98VTb8voazRV/WLSr3Q46IPX6m6lfg5uTwUyQd7Jl/QNJuc0ZoX4YcvT33Xy+c8PK6
         95u5Q2QxmmXruxJT+smNDQoqsm/20hhY//XA4Ee7ymWmaw0QcDRNC/YWC+/wfuC6YwZ7
         VGKnWuAFdzbW5t99tNpkGKMkNqknHodqlfaQHDSsJ007NEHJpJdGFW7BYgR/DQ/5hq0e
         FCMQ==
X-Gm-Message-State: AOJu0YyyoE3a/1Uky5CMw9jw4bUYSO4xaivoHxc/ADCl5kuqrG2BuL2X
	FycYqAztq4va9AQMf3fvfggi/sY1h7QjOUz2sIGVKNiei6A+JqlO94NB+Jx7nawn4Nx+C0iwD73
	k9CZWJ1c4aQpuGW22kueoIgEmmVIc0A==
X-Received: by 2002:a05:600c:4e47:b0:40d:593f:63e5 with SMTP id e7-20020a05600c4e4700b0040d593f63e5mr2848667wmq.7.1703848836380;
        Fri, 29 Dec 2023 03:20:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGlj10bIoIUF+UYUDAzKVV9YvfEYypdYrT/ygYKwqV9SMlOAWZ+phnhDZMNxMdCsmflXT0Tng==
X-Received: by 2002:a05:600c:4e47:b0:40d:593f:63e5 with SMTP id e7-20020a05600c4e4700b0040d593f63e5mr2848655wmq.7.1703848836196;
        Fri, 29 Dec 2023 03:20:36 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id q11-20020a05600c46cb00b0040d2d33312csm30532067wmo.2.2023.12.29.03.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 03:20:35 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Jocelyn Falempe <jfalempe@redhat.com>,
	Conor Dooley <conor@kernel.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v5 3/4] dt-bindings: display: Add SSD133x OLED controllers
Date: Fri, 29 Dec 2023 12:20:20 +0100
Message-ID: <20231229112026.2797483-4-javierm@redhat.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231229112026.2797483-1-javierm@redhat.com>
References: <20231229112026.2797483-1-javierm@redhat.com>
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
Reviewed-by: Rob Herring <robh@kernel.org>
---

Changes in v5:
- Drop I2C example in DT binding schema due that bus not being supported.

Changes in v3:
- Move solomon,ssd-common.yaml ref before the properties section and
  width/height constraints after the other properties (Conor Dooley).

Changes in v2:
- Unconditionally set the width and height constraints (Conor Dooley).
- Fix indentation in the DTS examples (Krzysztof Kozlowski).

 .../bindings/display/solomon,ssd133x.yaml     | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd133x.yaml

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml b/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml
new file mode 100644
index 000000000000..b7780038a34b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml
@@ -0,0 +1,45 @@
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


