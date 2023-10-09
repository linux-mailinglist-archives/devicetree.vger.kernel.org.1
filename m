Return-Path: <devicetree+bounces-7011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBC77BE99A
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 20:36:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 541E8281A42
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 18:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D775EF9CF;
	Mon,  9 Oct 2023 18:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="arBOcrDR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175AB156F0
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 18:36:15 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D346A4
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 11:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696876572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QVKQrPdUbZGc1wU+oO+Twkh3N/BNeBlGHNRWMhTu31k=;
	b=arBOcrDRktI4ItPejie5usBSB9bGuY012XZBsBXU+hSo61MWzddZzmwqj213H67p9CTS1C
	FBkV5bkV4/9h7P/QpeIg+U1pDw2JN7aK7Oe09f3/nrnRCNgCjJVb17o1URffbe0ghaorr8
	rZ19kWzPnTjs4hGVqTlOkOSIzmDxc7I=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-189-hNYlM12DMm2JHcPfiPW-tw-1; Mon, 09 Oct 2023 14:36:10 -0400
X-MC-Unique: hNYlM12DMm2JHcPfiPW-tw-1
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-3249655593dso3519894f8f.3
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 11:36:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696876569; x=1697481369;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QVKQrPdUbZGc1wU+oO+Twkh3N/BNeBlGHNRWMhTu31k=;
        b=O8p30zgscNwljM2hVXKdo1K8pGx5iafWy4aQvCSooA07DXG2RgGP1aYMoNL51ry8JE
         +S8D05dgmvBsUCbLlN7DMIc7ODzZldqGmBOiIszrXFWQGxGUjeypfqtVJ5AgNFbs04ta
         480udxYhBlRPdhfUd3Vyxbfmu+ej2dGvqpieHfvawbkUzm/xQ5yOYBCeKT6Zwy0lmNwz
         ulkj91Wo6gfGgG0u+blnSpIZH36hOlGIko1Wu72/lCPFxedLllLGsn6XbJ6aaNpPl9GE
         IEKB8z5rmdfMnIN1LSKK326GMWlUpvdpq5NaX70s5D1WaPuE6oWDAXA6DlNMm8m8QHyn
         cvqg==
X-Gm-Message-State: AOJu0Yyn3CkFIUu0BJ4faJecJYWCfLWTPlTde05/7hyR+Luko7e/sWyx
	akzv7Dnd7LsmbgNI+Jw7hiIC8bwo74OZvU9hAPzUoMahiBvNrqRNKd52OgVqlxq5FjNpetQtQy+
	l3zSoQVqujTCEMAGQWcPCXg==
X-Received: by 2002:a05:6000:1008:b0:31a:ed75:75df with SMTP id a8-20020a056000100800b0031aed7575dfmr14391823wrx.15.1696876569551;
        Mon, 09 Oct 2023 11:36:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHU9ipeYY5/67yz9rQUzhHMG8K4QZBRRRVgXLPaNfAyAaJFKTL902MD4ZsjPgkqmWa4uorcA==
X-Received: by 2002:a05:6000:1008:b0:31a:ed75:75df with SMTP id a8-20020a056000100800b0031aed7575dfmr14391797wrx.15.1696876569304;
        Mon, 09 Oct 2023 11:36:09 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id b16-20020adfe650000000b003266ece0fe2sm10221874wrn.98.2023.10.09.11.36.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 11:36:09 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
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
Subject: [PATCH 8/8] dt-bindings: display: Add SSD132x OLED controllers
Date: Mon,  9 Oct 2023 20:34:22 +0200
Message-ID: <20231009183522.543918-9-javierm@redhat.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231009183522.543918-1-javierm@redhat.com>
References: <20231009183522.543918-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a Device Tree binding schema for the OLED panels based on the Solomon
SSD132x family of controllers.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 .../bindings/display/solomon,ssd132x.yaml     | 116 ++++++++++++++++++
 1 file changed, 116 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd132x.yaml

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
new file mode 100644
index 000000000000..b64904703a3a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
@@ -0,0 +1,116 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/solomon,ssd132x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Solomon SSD132x OLED Controllers
+
+maintainers:
+  - Javier Martinez Canillas <javierm@redhat.com>
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - solomon,ssd1322
+          - solomon,ssd1325
+          - solomon,ssd1327
+
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
+required:
+  - compatible
+  - reg
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
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
+            ssd1327_i2c: oled@3c {
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
+            ssd1327_spi: oled@0 {
+                    compatible = "solomon,ssd1327";
+                    reg = <0x0>;
+                    reset-gpios = <&gpio2 7>;
+                    dc-gpios = <&gpio2 8>;
+                    spi-max-frequency = <10000000>;
+            };
+    };
-- 
2.41.0


