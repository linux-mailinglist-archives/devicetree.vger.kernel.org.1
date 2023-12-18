Return-Path: <devicetree+bounces-26602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3538170B4
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:43:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C335B1C242C7
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBF1F129EF3;
	Mon, 18 Dec 2023 13:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="eIoE/ET3"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E83211185
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 13:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702907010;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xcLxXFd71FqRSBT1EG5Vxt0tr8/Qm7u7kD7fkPmPXog=;
	b=eIoE/ET3KenOlDoTsQx3ik3YukVV3hFdLj00q3BCd6ZMazBEuRg6X7K9rCi3uPSpYfG/BL
	zo4t97PAyTIeiGVZ4WZE2xVNda+JlJG84rblfCZmjZVYMbXdqv8zNY91m37jSlLBn1EzP6
	DcF01HUiEPt3uV57N1ugm5BwvDf7D8w=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-425-5s6fomkmP6yZKnhsu7v9Ww-1; Mon, 18 Dec 2023 08:43:28 -0500
X-MC-Unique: 5s6fomkmP6yZKnhsu7v9Ww-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-40c2c144e60so25066465e9.0
        for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 05:43:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702907007; x=1703511807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xcLxXFd71FqRSBT1EG5Vxt0tr8/Qm7u7kD7fkPmPXog=;
        b=ayaahIYrnnUIo4TX1vFS5ke7lxBdBaL0A7wrXW7ct51/97vPThDcFLgqU2NoYKp7rO
         K6Ro9sgAEsFmFX9hdG8yRJdjp9GfD1YXtfhE7F2EIFtuYYvWDMi7drD0/c/980r5m7nD
         cZBXNTze83zBp1IpC4/9IjaAFlD6Cwct5EQCKpteNB63j/NPOEGoQ9+i7ekVgwLfRLx3
         Q+Kn7uqAV+RxLQVWsUdaGM/Hil6x3yDfUOLgZA7dE7hF7tuRu/8lJdaYWkqh1CEFuAxz
         Gvd1LFDXXBNLswV42XzbUq2iogslZ1+lOeyK8q+ENmCiJI2MR0JQLD7zS7HY9zz/2MEO
         Wy2Q==
X-Gm-Message-State: AOJu0Ywe4UxITbw8DTQgWVJh9myhri+3JdjnhX1TPukCADegWMSMBGmt
	aEA+dbIJiijXu3bxbeo8nwPEI0vquCx+lsv96G+3Qkyszat8JiN7AxrFzW8TIhc2esdMmz0hgVP
	WXMmbIGtpP8LwMtBaSvua+Q==
X-Received: by 2002:adf:cf0e:0:b0:336:445a:ec51 with SMTP id o14-20020adfcf0e000000b00336445aec51mr4106259wrj.143.1702905687515;
        Mon, 18 Dec 2023 05:21:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEJY8+4hU5oDu6qSl59TsTm745DG8WzEVry6hZALawkyULyAWdi5nKE6mTJ+I9u3OMhtVhj6w==
X-Received: by 2002:adf:cf0e:0:b0:336:445a:ec51 with SMTP id o14-20020adfcf0e000000b00336445aec51mr4106218wrj.143.1702905686791;
        Mon, 18 Dec 2023 05:21:26 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id g17-20020a5d5551000000b003333521a1cesm2115952wrw.57.2023.12.18.05.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 05:21:25 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Maxime Ripard <mripard@kernel.org>,
	Jocelyn Falempe <jfalempe@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Peter Robinson <pbrobinson@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 1/2] dt-bindings: display: Add SSD133x OLED controllers
Date: Mon, 18 Dec 2023 14:20:35 +0100
Message-ID: <20231218132045.2066576-2-javierm@redhat.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231218132045.2066576-1-javierm@redhat.com>
References: <20231218132045.2066576-1-javierm@redhat.com>
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

Changes in v2:
- Unconditionally set the width and height constraints (Conor Dooley).
- Fix indentation in the DTS examples (Krzysztof Kozlowski).

 .../bindings/display/solomon,ssd133x.yaml     | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd133x.yaml

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml b/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml
new file mode 100644
index 000000000000..8feee9eef0fd
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
+  - properties:
+      width:
+        default: 96
+      height:
+        default: 64
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


