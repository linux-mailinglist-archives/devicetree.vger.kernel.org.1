Return-Path: <devicetree+bounces-187769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8B6AE14C2
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 09:21:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF6E419E2399
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 07:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF587227B9A;
	Fri, 20 Jun 2025 07:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AL+0IBrf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC27220F53
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 07:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750404082; cv=none; b=odBQf/pKluRzQPfMjaj+LcuQfO0cHuqzDKarZp2FjNOjNHZnfukUh3aJKxpuclFOEUQCDfp+OJmfsCqBXiFXfblayNXis/87S5oRdb+Hma9twkHM3hqSmMZk9ebDRya9K5Pccce99TlZFvvPUGhquQTh1p+aPF1sE+ydx5cgkHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750404082; c=relaxed/simple;
	bh=j9IdAAvffIyKJ66Bk4tj0KPRmBaweAURRmczF0FUIMo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=egJY6aACuJxhRrkfY0la5hqQCj8621A1ZjUt4UcM3S2iYh50GGTgd0+8iXthpSuzIJAcF1esLSj4l70qv9gPaRY8/GA7O+H3ie6RXX1z3abaVH3Ef1Sb9upMWLVC9jTWgs6iH0v1WQAbEneUP7xeEe6uepZU+s+AAyXyuzS5+3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AL+0IBrf; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-235f9e87f78so16177005ad.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 00:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750404080; x=1751008880; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oen3S8vgE8gK573zXTn8V0hMlW2RlWgNC9WkX1jI8W0=;
        b=AL+0IBrfOy2GvlIo9gadPeD+ulKMzq2xh7qoonyEKFkYYwo8iItNBflmkDMo0XgVvr
         Lsb/9MSFX6aAaBmoUe5ee2ZniycxTZEYNjAccvY6PqMLQaN0wfQuUMU8mkTflvhCWvNb
         DaLvNfINsDQHlWRaeE42IiTl2YX66BvBjV6EQrqf3WccuN8T9vnnBe/OtsGYDA6DOu/u
         HdOnXls1XPLHzEagYu2s6oWP6fEkhYyd4//TUrt2IxWCHINaZNwjO9H2ITFyQt58vcVn
         LYMWVWSn4DnNkJTgFUxhvYCPMqtN8XuULe59oxzeiF4p2ffKB2D5XXle0hx5Z/wDWHdt
         cofQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750404080; x=1751008880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oen3S8vgE8gK573zXTn8V0hMlW2RlWgNC9WkX1jI8W0=;
        b=XXpCnME7/2zOXFIqDLXV+iwabqErauJDwEc2X2FS78+XTpWTkq6y+FtiGhTU9/9Aev
         eKZKsdV7BPmGfIACSgBGfSxxoYOrRzZvN1l957vDIV4Z0/GFPJQtdfuh5FIOKrxFeKQL
         0XPMyNV6JxMH+PAyRtKcyVCQK5R9yIR3GELH7Xk6++uDLzLo6yuRpkgE+o8o18jVeShI
         aw6oOekD0ZXn370KQX4scfwgjA7Bx1iVLZNOvDjVpoNliHBoOsoa2Zq4Xh+OvLQpaO4k
         OQn6uPBeqblXKBZRFndU/lxt7+ZRBWquYFPX8gztJZyc2ZOu8k1jmQUUe77TyPjZc+O+
         CA8A==
X-Forwarded-Encrypted: i=1; AJvYcCVqSVlltwD8sGFzbt0LSIWpZuwRGeaoVjV4OeB0L4QdgrvNJuc1LqjICogRfBGstnEpe7GTOn0uEUhH@vger.kernel.org
X-Gm-Message-State: AOJu0YzLcI11APUscpLwyJ6CVjD2HG4j/aAgJAH2nC6YjRprArhC43aj
	uobd3akZmkWMp7wqvLR1THoSB/P3RUMpQxCreoygeP6APTRPADC56ZVzilvYfgrk
X-Gm-Gg: ASbGncsjoU5pifNyMSN5tbzWlQO6Nqzr4fxRLbnBQ4xC40lNtfJMpXd6/UDLTIvQK+Z
	u6M0mgdEiD3oAsn/d05+lSxnyUvxmTBRghMJACCzuhYGq2tA9N1Tdqfh+Qh84avzqfmbBAqFAUy
	mAzdXGvTXwes7wyxUfJlwjhQ58wrg4jrMwELT+aUjt1gZrCPOTfvOb6OY9hBQDeV/gqYzIUoCTV
	47UWJIdCQEVXYQbJUaWP9axtOlBV672I8tNNXREzJp2btk65NZG5qatmFbLYpyFvS+pwDHz/ucR
	KC4xMQVS0Uy+Z4ZqknSoPyEEvGmZNiAr+R2/uiwpoPfKX8+4KJBvobWgJEAV2a2RgjxBumxmthL
	orrfsL1fp4ubDnly6hG3isoSRzwkF0YbeT8Nvl4I=
X-Google-Smtp-Source: AGHT+IE8jrR/FSPE0WL/k2eesLgwqY6RHFRbkfuT5XzExyxmxHU7R8/3OD6P1TLNyHI+u6mn/V1tJw==
X-Received: by 2002:a17:903:18e:b0:237:7802:da30 with SMTP id d9443c01a7336-237d9a74d4amr29327045ad.31.1750404080163;
        Fri, 20 Jun 2025 00:21:20 -0700 (PDT)
Received: from lcwang-Precision-3630-Tower.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d83cf981sm11431995ad.59.2025.06.20.00.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 00:21:19 -0700 (PDT)
From: LiangCheng Wang <zaq14760@gmail.com>
To: conor@kernel.org
Cc: drm@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	noralf@tronnes.org,
	robh+dt@kernel.org,
	krzk@kernel.org,
	zaq14760@gmail.com,
	onlywig@gmail.com,
	cip-dev@lists.cip-project.org
Subject: [PATCH v2 3/3] dt-bindings: display: Add MAYQUEEN PIXPAPER e-ink panel
Date: Fri, 20 Jun 2025 15:18:27 +0800
Message-Id: <20250620071825.741903-2-zaq14760@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250620035310.735055-1-lcwang@ieiworld.com>
References: <20250620035310.735055-1-lcwang@ieiworld.com>
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
 .../bindings/display/mayqueen,pixpaper.yaml   | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml

diff --git a/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml b/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
new file mode 100644
index 000000000000..dd7a84dea147
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mayqueen,pixpaper.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mayqueen Pixpaper e-ink display panel
+
+maintainers:
+  - LC Wang <zaq14760@gmail.com>
+
+description:
+  The Pixpaper is an e-ink display panel controlled via an SPI interface.
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
+
+  spi-max-frequency:
+    maximum: 1000000
+    default: 1000000
+
+  reset-gpios:
+    maxItems: 1
+
+  busy-gpios:
+    maxItems: 1
+
+  dc-gpios:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - busy-gpios
+  - dc-gpios
+
+unevaluatedProperties: false
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


