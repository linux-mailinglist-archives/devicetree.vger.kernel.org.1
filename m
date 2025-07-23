Return-Path: <devicetree+bounces-199113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97527B0F65A
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 17:01:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85E8F965110
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 14:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B8AB2F94B4;
	Wed, 23 Jul 2025 14:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="Pc7euYWE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94A1A2F4324
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 14:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753282391; cv=none; b=gJ0IkOd7TGVZgeMs3fVjkdgGD9Fc0//xr3Mbmr9zuOm9Uvcvwg+6uJaBH/K9hYZDymKtIigIwZCNtCASkQWPKzQmE0qpbfnk9MwTs5O9TifFUafg3tiU2Ozi3KUHiDqe+YQZGW4RNjLS/p1aos+Yo9UNxNjJbX6mCh9RlSEHP8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753282391; c=relaxed/simple;
	bh=f6PCE6pPvnT4DeFqRdkLIdMtCVM6nxH7y4KKN3/TcSw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bPMBUt8Kr3Qlno0xcIuY3HGFb7Lni8W4qvvne2dRf9lxp6xzRFs/UDQqUkVZRrP7AOhtsQ9iLZHLM1+MB7P9PUmfP+I4S3CPfLivMhe7NtY2KjlLSk/R9SnDoJtIaR+3GECJJck46ZWUOjQIxmmQiszhGJ3VGDvdgqgbr/wOP5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=Pc7euYWE; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-6148e399effso2262263a12.2
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 07:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1753282354; x=1753887154; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fvfnia2CHFBiouPbufqpXi7mHD51PcZYlBOxi7dhKxg=;
        b=Pc7euYWEV5Pd5DuWAoMW0q46sVFd2M1fZzOikSFPyAJ4HfxIUtICaHZrN9dp+9c0CB
         ddzkBk9X3IVVLDCQ6xR2VpG+s2/f0SHF59O304mOifm1vAIanjDLKpcDT8wYOKx2zjJu
         7doF7qeLHmgWzAuIJcs+UYWSZW+WYFVi1BeDPNyVBrlIqjwzczDnraIqmvjW4+cYuc5s
         F4d5L9OMhNDBIMt94XgEdcmRSD5lqJP4pN/MdNTCtfUvFoqbEiLCUWUMMByyuhZlRYWx
         U/bGo+f90FgePrdi/l9u+Bx5bv3iV1a+SGiNl9H/HRhC63uiB/GsVdYmeEjgFCHI5GqG
         WgMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753282354; x=1753887154;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fvfnia2CHFBiouPbufqpXi7mHD51PcZYlBOxi7dhKxg=;
        b=JihzuPPdc5aBsXqq8I8ZLY+lyyh27AxeEF6Wp71IU8f/gLtffTbL2s8qc7iVdazZCc
         SSDGuAu2dq4V4orahCGPjpR2AXEbbkFJ4hCDstwEVjcs1pm6l83tAxUmhrfP7y2Nuxbb
         DRI6akqQytGSangID/TA1utHBW8oBcH42UeuzlCpycGWP6aKaXTr0IChTYqIDmMU3LvB
         tcChgXRbty5jIFV1AcYY7GaDmUjwupQfWuRJZXe2pZulFHUm81gS4v5SbDzu6jvRqFue
         E+h64FqpC9oA+SAru9FB3JagiiP7hudDxuf3XwY/EMbFhNBw5v1Aaz4IUu9W7eD+th+N
         ZRhg==
X-Forwarded-Encrypted: i=1; AJvYcCX/c3wOMDdnCFpV9njmh36d6r5pk/gxPBPLtkoGr8Q6s5zU4Qv4ZRimAx1u4vRwAot1kRDId8abCO8L@vger.kernel.org
X-Gm-Message-State: AOJu0YwDhu4ZHcJkQQ/j2VZ1YvmstyZrziGYVMo+W3P6uVyyhnKWwSCh
	JYAAWlST3bpgjTbdK9AyaDM1wsRMKLONtlR79UZV1JKVGd/BK+5Iial1ICkMqUULPv4=
X-Gm-Gg: ASbGncvMbBi/emb3WRnrfBUmMYREMLTOsfnfMattY7QLKgA+p5ON8XB2qlX2S6VYbZe
	2fg4VoSvN4lpxI2qRic5MzYsITNnejYEpcjm36Gq2CrPthVGcOsetKvOFXWeC5gqtHl+Wj1FezO
	WplfjE0+MaVvjAnpsbQkA19rEJlCMuNzpLSB2yMiWqLloUNWNpU82EotNe313+o/0FxBBUpBw9G
	+i0bRvFIC2EbiioJMk7C3RK8zJxprQfB6Mb3Wjnc3zrcPaX/1YlFc786OOLyz4Xdbz5ov/Wgddx
	Wposm1UFcT4sIjFL1lLRoc3ZZzK1Itj6hWdhTRzYONT3zxQXSFtK5M5quaRMzsb2IP6/JqGmmfR
	yRN16MTr4bXV8sMOJsD5THjN7xgxDT6gG0AsrJNnGmuX4qP7tE/xZk35uAfNg6b2fRw==
X-Google-Smtp-Source: AGHT+IEvpxQ+IdsGdLfLz4S4DQH4qkl51XEwv0CgbC8jzYZnEKNF3mo0VOu+/IQoalSy+Lq0YzUIPA==
X-Received: by 2002:a05:6402:42ce:b0:609:aa85:8d78 with SMTP id 4fb4d7f45d1cf-6149b427070mr2940560a12.8.1753282354261;
        Wed, 23 Jul 2025 07:52:34 -0700 (PDT)
Received: from tora.lan (83.22.10.6.ipv4.supernova.orange.pl. [83.22.10.6])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-612c8f33964sm8575657a12.18.2025.07.23.07.52.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 07:52:33 -0700 (PDT)
From: Alicja Michalska <alicja.michalska@9elements.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Alicja Michalska <alicja.michalska@9elements.com>
Subject: [PATCH 1/3] dt-bindings: display: panel: Add Samsung EA8076 panel
Date: Wed, 23 Jul 2025 16:52:08 +0200
Message-ID: <20250723145208.338162-2-alicja.michalska@9elements.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for Samsung EA8076 LCD panel.
This panel was usually used in mid-high end smartphones manufactured by
Xiaomi in 2018 and 2019 (Mi 9 Lite and Mi Mix 3, with codenames
"xiaomi-pyxis" and "xiaomi-perseus", respectively).

Signed-off-by: Alicja Michalska <alicja.michalska@9elements.com>
---
 .../display/panel/samsung,ea8076.yaml         | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ea8076.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ea8076.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ea8076.yaml
new file mode 100644
index 000000000000..7ea0c9fedfa4
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ea8076.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,ea8076.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung EA8076 1080x2340 AMOLED panel
+
+description: EA8076 panel manufactured by Samsung Display. It's used in some Xiaomi smartphones from 2018 and 2019, such as xiaomi-pyxis or xiaomi-perseus.
+
+maintainers:
+  - Alicja Michalska <alicja.michalska@9elements.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: samsung,ea8076
+
+  reg:
+    maxItems: 1
+
+  te-gpios: VSync GPIO pin, usually GPIO_ACTIVE_LOW.
+  reset-gpios: Reset GPIO pin, usually GPIO_ACTIVE_LOW.
+
+  port: Required on platforms using MDSS DSI (Qualcomm).
+
+  vio-supply:
+    description: IO supply, usually 3V controlled by GPIO regulator.
+
+  power-supply:
+    description: Main power supply for the panel, usually around 3.3V.
+
+required:
+  - compatible
+  - vio-supply
+  - power-supply
+  - te-gpios
+  - reset-gpios
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
+
+        panel@0 {
+            compatible = "samsung,ea8076";
+            reg = <0>;
+            vio-supply = <&disp_3p0_en>;
+            power-supply = <&vreg_l8b_3p3>;
+            te-gpios = <&tlmm 10 GPIO_ACTIVE_LOW>;
+            reset-gpios = <&tlmm 75 GPIO_ACTIVE_LOW>;
+            pinctrl-names = "default", "sleep";
+            pinctrl-0 = <&panel_default>;
+            pinctrl-1 = <&panel_sleep>;
+
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&mdss_dsi0_out>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.50.1


