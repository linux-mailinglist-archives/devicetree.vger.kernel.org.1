Return-Path: <devicetree+bounces-186914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD86ADE1E2
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 05:49:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B0C97178414
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 03:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 734C11DE4FB;
	Wed, 18 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UspNE+ou"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9F81DDC18
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 03:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750218593; cv=none; b=FMX2S8LOGbQzQ06Jd0g3A2hdQy41akV9q1hc9Umd93sO5ArgFtnOs3WjToZ0uTt2+ST9LwdysRDLI9U2n/xbAHMh3ZMp9CbTUw5+HvZeaMm0SZ4wlb0kUpSSnnhyFqReOPyGFFYKpkcWV1EX9z4/Ym6N9qLVWCq2tdeRD9twgPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750218593; c=relaxed/simple;
	bh=RaWmMLjum0fPe+iknIMW6xtMg7QAwDNpqOuyOJJKsk0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EfuC0nOurhJdmjUYuJ/7KaawQWo+CzyeC7rnEfSpfGwiGkETWcDg2hUfPvu6mszARqenvEd+xhErOBX+tXbI5ymhyqd2VAUBvcaXvBwaloFNAr+kwDfH2g9VFByY/WbAzJUxAcqUUXNa7uzPkQUDOdzMNhGrPwKT13LpechHm9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UspNE+ou; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2350fc2591dso2732545ad.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 20:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750218591; x=1750823391; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Crp3CEYLqrLG+apC2mAZnpDNJDCfTEyqUeeXu58j3U=;
        b=UspNE+ouR6ieCNOog1OoDaNqMk/t2xdWIZwpjaAQsxrB2yTngFon9/u6RPenFBLeBa
         qBB1h7i+EZ3CWl03+wUpIvKEhLJAlEP0+899F4c4zmgazuU0ALJAMtnIrsLL5oe2Y9AE
         OvIXmbCF5DSRcBMVJu5RCht8mR/q0brLr2xH6Wa98qFVY8tWYDD/tnvHbCe9yWfbj9iY
         0/LyvuxezMjFra0N/C9ZJan0n2tZQKEQnE7A8q+GA/LpMQqb0YlRFvB8EJrdwLVCPAMw
         YVqK4206LValTVXZTHNomH46goNGJ8Nh2x/bqZWFYkHX7mGqVEYJg0yOSmb9/1pymQtN
         juOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750218591; x=1750823391;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Crp3CEYLqrLG+apC2mAZnpDNJDCfTEyqUeeXu58j3U=;
        b=ONp3iBjznaMTqeRAP73z16HWBHU1pjGB/CWdxzvxyFUYZUL1Prra3Osn7GGSb35+P0
         ju7E8VQNYj1mL7tBDLZw/KJ+pFXRk7d6ox1kgpDhQyRR2YNmHw8jZydTShMlXjW5HmKt
         lDo2ct/ID3hdcRI0zDLoIMWrceNfzvPANB7iS/vVZM/7Qyo7PM9WuEqJYE6W9/SVeUgw
         6tqpCg8tDCTfI1hFug0HbdtcrkC/omxX71mZ7KmLPhcbckXWMuauX10psUL9AW7yp68J
         VPmSHNW+qRbY2SfPLTCAqb6Fa/DZ0+GfOj9s8oS/KKcbIK0AvJJz5S/Vok3q4tCe0xN7
         vEOQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+801yDWoiDqQvszuo7VsZn1EykFubG98uHU1uRj5anU8PT5iWbPL+Sc2ljKPmRoP54gnSgera94Np@vger.kernel.org
X-Gm-Message-State: AOJu0YyUdt+FzDUJnZL0tWXpWJUwWo9cZLs5nvjXuAJIHIrzW7ZQ8PEv
	11cLvOeQnugVAE1LJGDR6/vlEj+hipIclFC+YIEKkLasoAAqejsyZSam
X-Gm-Gg: ASbGncuAaw43dna3d6su0euisPrdonwxLfdfe0eiF2tItazSWxHU4z1vcBCUGfMzKec
	ixdgWDo8LHFp9YOaocdVYBfPs8OAH42fEbf5PvfcF70RaBbPOBgSH6RKmdeTFplF3ip3bhLU8+r
	BvgaIAvyNumjeI3wUaivxoRZrI/lO87rHncGhOLzbpHyU3iJKXckmbjfGLJjYL5sWQkHuC8MqK/
	CHQQqcFFgXM4mrt3yQHyFzzTgHEfhGsZmuTGNNhCuXi4b8dx2EyGIKx1Tbmbo02GEwGAEwf3/A+
	/BF4m3rmuNhA8K3L5MZ2qi9Ur6i36aLYBG5idULhzi8Q3Nf01vckJEp+Vo/bV5jJgokh16chKO3
	Z5mhJzOxnb+AtQQyj0vQYXslSzoD0IFEogDTEHwQ=
X-Google-Smtp-Source: AGHT+IHbh93ZFfxvSAelhKz+a+nejv/JYZrkAogjMFdOMKtc/mynIFhBnCtf+5R6YwJYdXzQo1sAhA==
X-Received: by 2002:a17:902:d548:b0:234:325:500b with SMTP id d9443c01a7336-237c20f843amr17338045ad.22.1750218591134;
        Tue, 17 Jun 2025 20:49:51 -0700 (PDT)
Received: from lcwang-Precision-3630-Tower.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-236736cb4f9sm63418405ad.138.2025.06.17.20.49.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 20:49:50 -0700 (PDT)
From: LiangCheng Wang <zaq14760@gmail.com>
To: cip-dev@lists.cip-project.org
Cc: drm@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	noralf@tronnes.org,
	robh+dt@kernel.org,
	krzk@kernel.org,
	zaq14760@gmail.com,
	onlywig@gmail.com
Subject: [PATCH 3/3] dt-bindings: display: Add MAYQUEEN PIXPAPER e-ink panel
Date: Wed, 18 Jun 2025 11:49:36 +0800
Message-Id: <20250618034936.172150-4-zaq14760@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250618034936.172150-1-zaq14760@gmail.com>
References: <20250618034936.172150-1-zaq14760@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The binding is for the MAYQUEEN PIXPAPER e-ink display panel,
controlled via an SPI interface.

Signed-off-by: LiangCheng Wang <zaq14760@gmail.com>
---
 .../bindings/display/mayqueen,pixpaper.yaml   | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml

diff --git a/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml b/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
new file mode 100644
index 000000000..f7c33957e
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mayqueen,pixpaper.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MAYQUEEN PIXPAPER e-ink display panel
+
+maintainers:
+  - LC Wang <zaq14760@gmail.com>
+
+description: |
+  The PIXPAPER is an e-ink display panel controlled via an SPI interface.
+  The panel has a resolution of 122x250 pixels and requires GPIO pins for
+  reset, busy, and data/command control.
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    const: mayqueen,pixpaper
+
+  reg:
+    maxItems: 1
+    description: SPI chip select number for the device.
+
+  spi-max-frequency:
+    default: 1000000
+    description: Maximum SPI clock frequency in Hz.
+
+  reset-gpios:
+    maxItems: 1
+    description: GPIO for the panel reset pin.
+
+  busy-gpios:
+    maxItems: 1
+    description: GPIO for the panel busy pin.
+
+  dc-gpios:
+    maxItems: 1
+    description: GPIO for the data/command pin.
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - busy-gpios
+  - dc-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        display@0 {
+            compatible = "mayqueen,pixpaper";
+            reg = <0>;
+            spi-max-frequency = <1000000>;
+            reset-gpios = <&gpio1 17 GPIO_ACTIVE_HIGH>;
+            busy-gpios = <&gpio1 18 GPIO_ACTIVE_HIGH>;
+            dc-gpios = <&gpio1 19 GPIO_ACTIVE_HIGH>;
+        };
+    };
-- 
2.34.1


