Return-Path: <devicetree+bounces-65949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD8B8C0BB6
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 08:51:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 442FC2848FF
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 06:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D68E13C9D4;
	Thu,  9 May 2024 06:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="haByynD/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A06D13C9BF
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 06:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715237446; cv=none; b=kOxwifOegD7tef+PaAz+DUkJNWaVCeSoImAkd6pC5l5h61n3vQFVJGlN7GRG2jJBaa8nPgJ69mTnOR3hwSwOudItE2Lv8cp2UlDgDSRAOcSLeDRnf9Tr0Nt1fg+MtZ9HOVPEIJt+jjnZl9KvcLHNxqY3FBvE5/4EzZTxPrHUiTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715237446; c=relaxed/simple;
	bh=SqbixuuElHwlwTNKxl0yfahl/2Xw5YGkwtNJ0Zcfvvs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=Sc9VvDYYQrFPyyrEEvwn2BbfE212CuHMAWxlTZ7trWE2wb7gqL3t8Dk2N0rVTnPnqGN+MJTO3O+Q68xnQqIY3tGRzDEYDSNy/CGm2PK6VTFsTJe9nGXbPiUmBFc2TfoSfWaMoV2EZn8YCq5gltPKGshS29/D0TB9HggJ2wrIpA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=haByynD/; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6f44d2b3130so538037b3a.2
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 23:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715237445; x=1715842245; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N4ZlQt/Y9+Dha+5rkW2FelVk7yDcsRo8ctkHcXLJDwk=;
        b=haByynD/rnY6VejAxN0fF0Neru2yrPnm3H+IkRyNPZgl4slBzk73jFxv2RphMPfErY
         Y1b4O1lJF+ayADMp0Fyk2qYTC3XKPLKV7PabOW9YbNsIAYI8XUJjYqaFCaTfBLAEmg3X
         0AhgQS1MFz/0lMkXPk5ourD5Bk8NaN5zcAIaEOmnuiQPi4G6T8Ael5e+xGvdPnUDlvW+
         BklhClFhDmW50sGXilkpKsrR86eQpNHrqljGUldf/krpPdV53PtAr1c752kwZCJ9I37/
         s62NsoMw3gmia2iwwZdZLG8UvoOVwm36qZUbNiNJ8l9wFDU4ZWp5tp/8lgR9KbC8zFGW
         sa0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715237445; x=1715842245;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N4ZlQt/Y9+Dha+5rkW2FelVk7yDcsRo8ctkHcXLJDwk=;
        b=gOxJ3etF3vO4+RK/e0Lgv+MHeW9V2Ox0QMXJe3Ggdc2AwKb56jT71tNydFsz8HhGcy
         FyYr0hUrfX44Gl3PiVNjddAeiqsC1olxaLFghkriYGM8tUTIkSAbl3zpBcYwl9vgXTcm
         U2USx4Xv5/8uV5uI8dVDZwfO4k12uZWZVYfMxYgO44R79fCfGl6ragh3x/jrtnTZAhx9
         1kVcuXA+ej3M5pGVcYxRQybDfWXVHAIUzudhdlb61HVPOvsvoQBoxfYJ79yzM5W70Raf
         uZzWEZZSZsDAdRnmK4xci1kVvZhoH3YfBNhGaoaPBjEOlswCSUtUB0F1YFiS3ofGLLIM
         NKNA==
X-Forwarded-Encrypted: i=1; AJvYcCUvEAtr0DZ/uOQq5/lqNb4IRUv2uyskTKsWDz+H3l0tlRhmybFwTmtkbvz4/Ku6ogLo9hm4WrtObwMgnX2d3CZw4YBlCA6jlP/B3g==
X-Gm-Message-State: AOJu0YzaswatfOyQcjjNtjdt6DmCOAoBYW8seL9vmnQCYWpisiTsZx8o
	l4IvhnW8qHcRH+2TBvmDw9qqMFMZQGzNnYSvRRnefL+NUnet162psYvgrzdH2j8=
X-Google-Smtp-Source: AGHT+IFBNOOnux53aEtgCfWt8suqTQ28VOR/y9RzpqGcfNYpWzPc/8vnze4mt4HMbw5xu1kLSzbltA==
X-Received: by 2002:a05:6a00:3a9a:b0:6f3:88c5:fed6 with SMTP id d2e1a72fcca58-6f49c22a887mr4670792b3a.19.1715237444915;
        Wed, 08 May 2024 23:50:44 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a84b6bsm633939b3a.74.2024.05.08.23.50.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 23:50:44 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 1/2] dt-bindings: display: panel: Add Starry-er88577 support
Date: Thu,  9 May 2024 14:49:58 +0800
Message-Id: <20240509064959.23550-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240509064959.23550-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240509064959.23550-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Create a new dt-scheam for the Starry-er88577.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
 .../display/panel/starry,er88577.yaml         | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/starry,er88577.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/starry,er88577.yaml b/Documentation/devicetree/bindings/display/panel/starry,er88577.yaml
new file mode 100644
index 000000000000..6686beaf0f16
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/starry,er88577.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/starry,er88577.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Starry Display ER88577 based MIPI-DSI panels
+
+description: |
+  -This binding is for display panels using an ER88577 controller
+
+maintainers:
+  - Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: starry,er88577
+
+  pp3300-supply: true
+  reg: true
+
+required:
+  - compatible
+  - reg
+  - enable-gpios
+  - pp3300-supply
+  - backlight
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel: panel@0 {
+            compatible = "starry,er88577";
+            reg = <0>;
+            enable-gpios = <&pio 98 0>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&panel_pins_default>;
+            pp3300-supply = <&en_pp6000_mipi_disp>;
+            backlight = <&backlight_lcd0>;
+            rotation = <90>;
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.17.1


