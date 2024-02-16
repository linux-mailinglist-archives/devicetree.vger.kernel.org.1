Return-Path: <devicetree+bounces-42291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 865D0857240
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 01:09:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 306F32834CD
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 00:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56F16149DE2;
	Fri, 16 Feb 2024 00:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="LbOeZ3Cx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0BDFD2E5
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708042135; cv=none; b=Q+/KxbKA3I/UQ6DcV5WIEcAceTqzun1fAasAtmRWtfz3aODin6Lu35nPDjWfieZuvl9hHr/bkL86SymYwBgWJLrcspDJ/ChEr6TvLgZOlCrVMZJL3k2R2o1oNBXUybvSgzWDDJ/QPC4iwjqXJpw0YKCqHB+h0cprsDm4JjYcPZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708042135; c=relaxed/simple;
	bh=MiXxLFVa9bJKB4WuCSu/Z1PDr8YPzEWCNGu5OpaGMgg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S5te4sndPyPV+AgOt1iq1pQgPAOxCIK/LG8DD9O22atH0BPwGDE8vTSR4Ee/o32l/IjnohNl9nTSvL5aCM4g9CdHN3x3xBRh59DytyuR/eV804BGFH0sdRw59XsWI0gxKQClXom9wEWicDjOwDB6UbyGn0eHiXIYbF/RsAMQuiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=LbOeZ3Cx; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1db559a5e1fso13352115ad.1
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 16:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1708042133; x=1708646933; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pGHwuS0ENdmLMLz6bWQqaQXZhO2uE/iwucpykSfpWsk=;
        b=LbOeZ3CxNKBqBrV+XbT/0DBKTuMEXqFDH3fdG046O1Rw1fQCF9bOnRyz3bq0AsrF7m
         B2UudWF4ZelRFpbP657UtDj/6/kDYDJUiT9wF7LA2mY3xuVyuFjBCs2R51t+Iiwea6LZ
         GauilCH6RmSflFZBX5KcegxkDU3o4AjZ+tuE4vdl6gFWoWghRDbBqbaAJBDd6tkawO0l
         ejlBT0ea8asItlbXZCDo1K36PMD0Q/xACaLPCnjLE1VSjBEz7xgtlPa/7R5AwnhdL5F+
         jPXg8aGfJoRo4t1CmrWmFXirkHWJeoRinJTyrT7l6es2fOa0JtoSOEBH76fmFZOd0itq
         UaQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708042133; x=1708646933;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pGHwuS0ENdmLMLz6bWQqaQXZhO2uE/iwucpykSfpWsk=;
        b=gDC8I7MaPMljcTOxSrmBX7P4QWtbyuUYRM4NTzy/lHH7XV47Xrld58KPdnpgHOM548
         jGxVsj7LNhx8gHnE3hrs/ezFvW84fOCpT6B2qL75I3wNpUg9VnwP2+lDvcLMfI+m2D9A
         sFwDW8Rawtndv1JpchisHnqCyzov4gQiGdZcLF/wIETKTXXFIBp5IvAPoxHMEBbqzlQg
         aIrKGgam7kr7DowUbb2Wx/SoU7Tyhx+7UUa4DDNZi+RB4lXfcE0vcgnGz9D6czRP9A25
         4Np+p9MbI2+iW3+ce443Nrgrx2NEmmzV7jVowOkDHMbJswa3aspRADV4JMbwG1oriBKY
         Fb+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWy7ph6S93XSKCUUzod+oT/+XGIySoJx+ZUE/7665BUEtWoRUxsQNjdFMrvYEP2+M+3epR3tk/EqY+RklltYV47gXq0r9uGXqrBtQ==
X-Gm-Message-State: AOJu0Yzf+WygNvpBg6xM9lkzfZQKjDb7P1R9se4Wu/kfdhp3Th3FoPiv
	NgL0/7Dl9jU27chf89c17ObUdUDBfDO0uPLzF+oEjUQQlTds5Y+jlXLQfmmpQCU=
X-Google-Smtp-Source: AGHT+IGthcOdIu3Gkfl9BOtBJNngVNNV+UiNIDvn/Iv90Cvzn3/WrJ1BIiVXy+QBXOWjOFCbm+O8LA==
X-Received: by 2002:a17:902:784e:b0:1d9:ba26:effc with SMTP id e14-20020a170902784e00b001d9ba26effcmr3177476pln.51.1708042132885;
        Thu, 15 Feb 2024 16:08:52 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id bb6-20020a170902bc8600b001db3d365082sm1789486plb.265.2024.02.15.16.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 16:08:51 -0800 (PST)
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
Subject: [PATCH v1 5/6] dt-bindings: cache: Add SiFive Private L2 Cache controller
Date: Thu, 15 Feb 2024 16:08:17 -0800
Message-ID: <20240216000837.1868917-6-samuel.holland@sifive.com>
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

Add YAML DT binding documentation for the SiFive Private L2 Cache
controller. Some functionality and the corresponding register bits were
removed in the sifive,pl2cache1 version of the hardware, which creates
the unusual situation where the newer hardware's compatible string is
the fallback for the older one.

Signed-off-by: Eric Lin <eric.lin@sifive.com>
Co-developed-by: Samuel Holland <samuel.holland@sifive.com>
Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v1:
 - Add back select: clause to binding
 - Make sifive,pl2cache1 the fallback for sifive,pl2cache0
 - Fix the order of the reg property declaration
 - Document the sifive,perfmon-counters property

 .../bindings/cache/sifive,pl2cache0.yaml      | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/cache/sifive,pl2cache0.yaml

diff --git a/Documentation/devicetree/bindings/cache/sifive,pl2cache0.yaml b/Documentation/devicetree/bindings/cache/sifive,pl2cache0.yaml
new file mode 100644
index 000000000000..d89e2e5d0a97
--- /dev/null
+++ b/Documentation/devicetree/bindings/cache/sifive,pl2cache0.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (C) 2023-2024 SiFive, Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/cache/sifive,pl2cache0.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive Private L2 Cache Controller
+
+maintainers:
+  - Eric Lin <eric.lin@sifive.com>
+
+description:
+  The SiFive Private L2 Cache Controller is a per-core cache which communicates
+  with both the upstream L1 caches and downstream L3 cache or memory, enabling a
+  high-performance cache subsystem.
+
+allOf:
+  - $ref: /schemas/cache-controller.yaml#
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - sifive,pl2cache1
+
+  required:
+    - compatible
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: sifive,pl2cache0
+          - const: sifive,pl2cache1
+          - const: cache
+      - items:
+          - const: sifive,pl2cache1
+          - const: cache
+
+  reg:
+    maxItems: 1
+
+  cache-block-size: true
+  cache-level: true
+  cache-sets: true
+  cache-size: true
+  cache-unified: true
+
+  next-level-cache: true
+
+  sifive,perfmon-counters:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+    description: Number of PMU counter registers
+
+required:
+  - compatible
+  - reg
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
+    cache-controller@10104000 {
+        compatible = "sifive,pl2cache1", "cache";
+        reg = <0x10104000 0x4000>;
+        cache-block-size = <64>;
+        cache-level = <2>;
+        cache-sets = <512>;
+        cache-size = <262144>;
+        cache-unified;
+        next-level-cache = <&L4>;
+        sifive,perfmon-counters = <6>;
+    };
-- 
2.43.0


