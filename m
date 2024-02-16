Return-Path: <devicetree+bounces-42289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 045C985723C
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 01:09:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F3F01F25484
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 00:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 787A17EF;
	Fri, 16 Feb 2024 00:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="hzvLQAKa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA41C8F55
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 00:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708042129; cv=none; b=DAq9uak8hbUNhNrXZ4jiWrMO4kFqrhvbHrJvjEJ8rQzssGkVgVIeZTY7UV4kGMsJHCCmLZ3P7JP1x1JyKrSfK1utI2IQp/4P2vpJPyt/Cjm7I5eVfNLITxqCQRCfoaYatQ3wucDncOzhuLhWCQqbtOzSF19rgELkD0bkesMO1FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708042129; c=relaxed/simple;
	bh=dtTFKiZ7Yo5CM4o5MTgSlED094NZOrlqY9/8Q2KAKdU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=clkhwu+0f/xukbf9mR4DXZ07L21jPaYMzOa3HAZQFu4iIclayASlrI4PmsKZ2EjC6YPzC7DDzTGCdrHrYePacx8dGQmWhYs5ab3tAWKXWpdsr6WKzBEnE+Q4sKqc9KtV7UIOPX22filsGF36STeX3KpYq0Ov9YgHqmE3SGjYQbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=hzvLQAKa; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1db51e55023so9943255ad.1
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 16:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1708042127; x=1708646927; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bVhGY5w5frFGTLRRHW7GA0aZ7SPA+FA1JdXFhjNvDZY=;
        b=hzvLQAKaAL12zH/UzEK/PV0mlkXwLfLjUfcmn5cGHF5L9J5T03vWh+Tzm05zDorGua
         SeRqsvrVaubJE6xO6uM/SSDuIAcva2cvZaKgs4TT1nHcLPohNvbVTPL+SBqoVk+wr9Fi
         vnPRpy742ErwPlmjxmQQ7IL4XYRtnJ9gsyvqWZemhUo+i7dyS9TLZtODiARq/tagkOyB
         TvPQyD32nC9vbi6rGpQ0V6fG15EgAxrDyHw+dT3s5W6AuQcLrdH6VtA5h0xhgj2nlD0O
         0xWjk+nYm2R8cJYErkk7IXNw+5/m9jKq02gpuztkqu8mt7lR+NH+5ru+L5TSbZ2eOkl3
         PIug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708042127; x=1708646927;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bVhGY5w5frFGTLRRHW7GA0aZ7SPA+FA1JdXFhjNvDZY=;
        b=M45cRYsxIBLxpAKfQQS80LfIpiEJnLDIoqwN/6PICCi7e69qPnUiCuydxufDcxt2R+
         HWFcLKGY1bbjPJPk1J2z48czERwuOmAkLQkizjSHfj/gHdJRFG9jxmRKmf5Lzktdsvwa
         1nR86JZZmGYNcTBwP8joOEmdb/z8yIyxEmaM/zPvlD3bPSrqHAw4a2HdIhbCJlGVT7qi
         zbf8IoDiB+70wOl9Tg1Z4s3OY4YxaNoLQRDTpAbd+hRtiAYQvSCpRwLf0O60wjJQJIir
         apqR0nyOo+7z9g0Qzop3e8ptGEDrkMUS3pnVdvO6rEk0dmqoJB9ZUO2o9Rh2sLu9IMo5
         TCsg==
X-Forwarded-Encrypted: i=1; AJvYcCUdLpZw65RO8Tx6/tBcx0GM+vdhT9HRi4WmCGxSSAv2y3hOcJByEK8cLBomlZJPigkhLayziqY1j/BS76WqVawTEFyC3jxgIKZ5iw==
X-Gm-Message-State: AOJu0YzpeMje7VxWEU0NgJK0ffsVQcm6vl4sgl6rO97gAmw5CITSdW68
	oyB6Y1Kwa4W2TGdAy6tEsVg5cwhjs/qq/Hz7amah+UJtGnvixQxTLhmNW5Wxbmg=
X-Google-Smtp-Source: AGHT+IETLEvEo995N/RIp3zMdESx5S+hcPKSxSPuG/aIgheazSPtzHakRWnlA/tfpia2Ssum3vBxWA==
X-Received: by 2002:a17:902:d48b:b0:1db:8181:9d04 with SMTP id c11-20020a170902d48b00b001db81819d04mr3724031plg.38.1708042127232;
        Thu, 15 Feb 2024 16:08:47 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id bb6-20020a170902bc8600b001db3d365082sm1789486plb.265.2024.02.15.16.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 16:08:45 -0800 (PST)
From: Samuel Holland <samuel.holland@sifive.com>
To: Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Eric Lin <eric.lin@sifive.com>,
	Conor Dooley <conor@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Paul Walmsley <paul.walmsley@sifive.com>,
	linux-riscv@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v1 3/6] dt-bindings: cache: Add SiFive Extensible Cache controller
Date: Thu, 15 Feb 2024 16:08:15 -0800
Message-ID: <20240216000837.1868917-4-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240216000837.1868917-1-samuel.holland@sifive.com>
References: <20240216000837.1868917-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Eric Lin <eric.lin@sifive.com>

Add YAML DT binding documentation for the SiFive Extensible Cache
controller. The Extensible Cache controller interleaves cache blocks
across a number of heterogeneous independently-programmed slices. Each
slice contains an MMIO interface for configuration, cache maintenance,
error reporting, and performance monitoring.

Signed-off-by: Eric Lin <eric.lin@sifive.com>
Co-developed-by: Samuel Holland <samuel.holland@sifive.com>
Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

 .../cache/sifive,extensiblecache0.yaml        | 136 ++++++++++++++++++
 1 file changed, 136 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/cache/sifive,extensiblecache0.yaml

diff --git a/Documentation/devicetree/bindings/cache/sifive,extensiblecache0.yaml b/Documentation/devicetree/bindings/cache/sifive,extensiblecache0.yaml
new file mode 100644
index 000000000000..d027114dbdba
--- /dev/null
+++ b/Documentation/devicetree/bindings/cache/sifive,extensiblecache0.yaml
@@ -0,0 +1,136 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (C) 2023-2024 SiFive, Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/cache/sifive,extensiblecache0.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive Extensible Cache Controller
+
+maintainers:
+  - Eric Lin <eric.lin@sifive.com>
+
+description:
+  The SiFive Extensible Cache Controller provides a high-performance extensible
+  system (L2 or L3) cache. It is divided into several independent heterogeneous
+  slices, enabling a flexible topology and physical design.
+
+allOf:
+  - $ref: /schemas/cache-controller.yaml#
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - sifive,extensiblecache0
+
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - const: sifive,extensiblecache0
+      - const: cache
+
+  "#address-cells": true
+  "#size-cells": true
+  ranges: true
+
+  interrupts:
+    maxItems: 1
+
+  cache-block-size:
+    const: 64
+
+  cache-level: true
+  cache-sets: true
+  cache-size: true
+  cache-unified: true
+
+patternProperties:
+  "^cache-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: false
+    properties:
+      reg:
+        maxItems: 1
+
+      cache-block-size:
+        const: 64
+
+      cache-sets: true
+      cache-size: true
+      cache-unified: true
+
+      sifive,bm-event-counters:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        default: 0
+        description: Number of bucket monitor registers in this slice
+
+      sifive,cache-ways:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: Number of ways in this slice (independent of cache size)
+
+      sifive,perfmon-counters:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        default: 0
+        description: Number of PMU counter registers in this slice
+
+    required:
+      - reg
+      - cache-block-size
+      - cache-sets
+      - cache-size
+      - cache-unified
+      - sifive,cache-ways
+
+required:
+  - compatible
+  - ranges
+  - interrupts
+  - cache-block-size
+  - cache-level
+  - cache-sets
+  - cache-size
+  - cache-unified
+
+additionalProperties: false
+
+examples:
+  - |
+    cache-controller@30040000 {
+        compatible = "sifive,extensiblecache0", "cache";
+        ranges = <0x30040000 0x30040000 0x10000>;
+        interrupts = <0x4>;
+        cache-block-size = <0x40>;
+        cache-level = <3>;
+        cache-sets = <0x800>;
+        cache-size = <0x100000>;
+        cache-unified;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        cache-controller@30040000 {
+            reg = <0x30040000 0x4000>;
+            cache-block-size = <0x40>;
+            cache-sets = <0x400>;
+            cache-size = <0x80000>;
+            cache-unified;
+            sifive,bm-event-counters = <8>;
+            sifive,cache-ways = <9>;
+            sifive,perfmon-counters = <8>;
+        };
+
+        cache-controller@30044000 {
+            reg = <0x30044000 0x4000>;
+            cache-block-size = <0x40>;
+            cache-sets = <0x400>;
+            cache-size = <0x80000>;
+            cache-unified;
+            sifive,bm-event-counters = <8>;
+            sifive,cache-ways = <9>;
+            sifive,perfmon-counters = <8>;
+        };
+    };
-- 
2.43.0


