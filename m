Return-Path: <devicetree+bounces-229845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A16D3BFCAAF
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:51:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 062A93580A2
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30A1F34C807;
	Wed, 22 Oct 2025 14:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mD0VQm4X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F3C34BA52
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761144583; cv=none; b=mHo5bcnwmihNw+Vasp3pzPeM4xFKMXbhBP/u0yAAXRvNrHWviauZGz0dOoYuUBv1tFHXgfngQaecrOJt6KNmFtiMtuyeZOwLmnDCzMwKnpC+MvIXUpg/qE4tD8l+na0FzKYEl829boGSJeO+acZJ+NivUKwH9RlyWEq8E9WNdEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761144583; c=relaxed/simple;
	bh=UxRv2Dj1eWAwuBaqoEAma5UyiLaBLfeYj5gZy8jzJSM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aQi1qnMa2j+HrH3lAkzOOHbKNQYoB9rJs1/Rl+R9lM4T+dwd5bgbGsC1kATHAuWbwdNjSlr1F6R9vvB+O//F38z3VmJX2TMNvXRSwh/0FGJi25M24CrjLr00anJSflflN48n707Gpk4pQ9vS+b5KA0PcWcZM+LfvEKafz4YM0xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mD0VQm4X; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4711f156326so55202545e9.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761144579; x=1761749379; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OeVW7KIs34xjHHALn+sD+JnpOfHDngShiO+k3xh4Ufc=;
        b=mD0VQm4XuASkoXtSYmRwMPsBeeCi23yjyFL3lfzV5nhh0p1pXZIvUnT82oz0GBeg6F
         kFxebY0r2xzPOT9vPQkwEm0pM6prkKehs4fTuh6acGL59xvI5PAZqsVgEQUA9CmNrXGI
         cQp/AvRvwbZQNKOfGV7UQLZCRlhXgs+pqGbuEJ8CnGSfX8aXywuD0Grl6O6RqA5XLrL4
         KfO+20oVqVgJf//k1DTgJltRhznPfqxHfdTkbo28DICeCN64kjbJSqK6Yp516FIPsdi4
         nehFIdRbUDDyaWYkZVH22OS0XWFQmK7z0qqETO4Sedbf9X24IZ3+ldASTH7meqGJ2NLt
         zpcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761144579; x=1761749379;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OeVW7KIs34xjHHALn+sD+JnpOfHDngShiO+k3xh4Ufc=;
        b=Tc827Bkb9ASzWmP0gLSJrb82GLh0tY2jZoc97nF7EzphnRMJgQsqTmgBUOZsxAMEy3
         E7txKgg0YoFZ1+Vxqag92iW67vmyx0EOeGEDAFwTba4wg/IRGdCCYBk0Ybr4P5jxx2yV
         YR3hgSMag6MtB6c1DYMiyChsPO4N7IPQi8fFK3Zpb3n4TRC28yhmdmFiNz7ujW5u4fJ/
         Wu/edDOe3CqFRxsT1RIzhIaQVIa2EBtjgWOvOIVyWBSr4ztkFbz8aVD+zWcwJ9kcqKpr
         TtnH3XwTh7YhCY4g800Mnays0v4qyvJmahIO6J/jZvJgNOGeni4AY2/saR3I7LflZQjS
         4TJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUHJLlsrS+blcmw/Nui1vzxKyMGKpdNSBpnizbElQCs+ExV0nEgoco+qH+AgTt0rksB4KdCK2BxdlW@vger.kernel.org
X-Gm-Message-State: AOJu0YyoUkefXKpeqcY5UyRmpN8WQYiCNcLq9z4cPILfe7nxgZ2yPWKP
	W/cesogqa8fYH8AeGr1cAXSBYutGvuo1P7QzIcQjmbGYiThZr1qqkeFp
X-Gm-Gg: ASbGncuBbbjxYDiXwkvx55izQKLwhw/OxRZgg+ALkBRDfirgf7CbpAnpoWGEys1zq7B
	uO6B+6FW/y7FGYs9Z2BTlRQfQ6GZi48aiMYDD2asebSYYrBvMo1fW1RhLbObzNE4OFYcGMHQAuj
	20VibXzJcmU/5N6+/0fdMDSbrSRQ2brDmbmq/e8KhZp6LldaDFqQrjkMyhTddV7pcc0KFDFh4Rf
	efXG6RbsfTmSFNKmNH2O8ni2ArwDIENPUFtl9QRqnHIcHdthDYI/J8/YX0ppZZ4hC5vsR9qOqrH
	lq9D30k+06r6CZz3jfT0cl5AxeqY0fRmSjuF+eDHrE44S0rv6+nrFhh3JglbDtjGjd2IPB3/sdZ
	blnGyc1qpfdGtL4BMMVVq/gfKu1Kc5yGm0sLi0TkulRPG1u0Taku+NWqDErMcM+2j9ANz62SSJc
	Zrmw==
X-Google-Smtp-Source: AGHT+IHr6Ob93t9v00uJwuP7yAAMfu4kGsf18j4jl3QNK0VUxssU6icvlb5KeKOe4fTOZz3h10i/+g==
X-Received: by 2002:a05:600c:3e0b:b0:459:db7b:988e with SMTP id 5b1f17b1804b1-471178a3faamr101708965e9.13.1761144578447;
        Wed, 22 Oct 2025 07:49:38 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475c427f77bsm49956525e9.3.2025.10.22.07.49.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 07:49:37 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: [PATCH v5 21/23] dt-bindings: display: tegra: document Tegra20 and Tegra30 CSI
Date: Wed, 22 Oct 2025 17:49:28 +0300
Message-ID: <20251022144930.73272-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document CSI HW block found in Tegra20 and Tegra30 SoC.

The #nvidia,mipi-calibrate-cells is not an introduction of property, such
property already exists in nvidia,tegra114-mipi.yaml and is used in
multiple device trees. In case of Tegra30 and Tegra20 CSI block combines
mipi calibration function and CSI function, in Tegra114+ mipi calibration
got a dedicated hardware block which is already supported. This property
here is used to align with mipi-calibration logic used by Tegra114+.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../display/tegra/nvidia,tegra20-csi.yaml     | 138 ++++++++++++++++++
 1 file changed, 138 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-csi.yaml

diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-csi.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-csi.yaml
new file mode 100644
index 000000000000..a1aea9590769
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-csi.yaml
@@ -0,0 +1,138 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/tegra/nvidia,tegra20-csi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVIDIA Tegra20 CSI controller
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - nvidia,tegra20-csi
+      - nvidia,tegra30-csi
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    items:
+      - description: module clock
+      - description: PAD A clock
+      - description: PAD B clock
+
+  clock-names:
+    items:
+      - const: csi
+      - const: csia-pad
+      - const: csib-pad
+
+  avdd-dsi-csi-supply:
+    description: DSI/CSI power supply. Must supply 1.2 V.
+
+  power-domains:
+    maxItems: 1
+
+  "#nvidia,mipi-calibrate-cells":
+    description:
+      The number of cells in a MIPI calibration specifier. Should be 1.
+      The single cell specifies an id of the pad that need to be
+      calibrated for a given device. Valid pad ids for receiver would be
+      0 for CSI-A; 1 for CSI-B; 2 for DSI-A and 3 for DSI-B.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    const: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^channel@[0-1]$":
+    type: object
+    description: channel 0 represents CSI-A and 1 represents CSI-B
+    additionalProperties: false
+
+    properties:
+      reg:
+        maximum: 1
+
+      nvidia,mipi-calibrate:
+        description: Should contain a phandle and a specifier specifying
+          which pad is used by this CSI channel and needs to be calibrated.
+        $ref: /schemas/types.yaml#/definitions/phandle-array
+
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: port receiving the video stream from the sensor
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            required:
+              - data-lanes
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: port sending the video stream to the VI
+
+    required:
+      - reg
+      - "#address-cells"
+      - "#size-cells"
+      - port@0
+      - port@1
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - nvidia,tegra20-csi
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+
+        clock-names: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - nvidia,tegra30-csi
+    then:
+      properties:
+        clocks:
+          minItems: 3
+
+        clock-names:
+          minItems: 3
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - power-domains
+  - "#address-cells"
+  - "#size-cells"
+
+# see nvidia,tegra20-vi.yaml for an example
-- 
2.48.1


