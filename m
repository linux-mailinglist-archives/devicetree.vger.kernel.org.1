Return-Path: <devicetree+bounces-234058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C4481C28185
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 16:43:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CB2BE4E91A1
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 15:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C42A287245;
	Sat,  1 Nov 2025 15:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="jmeIqfut"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF2A41917F0
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 15:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762011793; cv=none; b=DzLhT3z3Ne476ml1EmnlmDWQ0i29tnYIveRJpX4sePnUeYFEv/MZCN0uuuuZgEVGJ/YswuBFZ9Oeknvd+s5I7UvBAkXy36aUwv+hkHvSicj6/2sJujoBbtBlz+ybxrFwj9vdl/IEilYfmKtIBVZXZCOffatRItTFm42DKslY2/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762011793; c=relaxed/simple;
	bh=OtVnZzUaYjn1Rh1BXslqcE/Vnsj4xtT0TKYxOcVoPh8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V0P9eo0l/pRqx839YvmnAKOUgWaMRRtl9bOJmECMZilEQ4SwY8AEI/JFZIFldzgO7ls0MyPOgdgWoQDXz5MLOdEOCuohE3SzZX2SQm9yz2FfWbOdAbsQiRdrfNNaOLmVXxAghzZ/DePyyRrOauzuT2GM4Tb3Ab16Ffzr6iEJatU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=jmeIqfut; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b553412a19bso2153193a12.1
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 08:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1762011790; x=1762616590; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CcA70PVwTnb4/jopyJB8UMf+ejoU1/qkR5vDiv7mLZA=;
        b=jmeIqfutEVbpoLhFhr7JP+IAJV/HOGBGz08zMpvD7h/SVmFgFQxhCclHdOpkahSOwg
         X9uJt/r/U5nPfi0Xp1YZXsx5JlwEy2JZfFmSGZFtwsJcdJKn7QcPOtAGxQY17LFvyijf
         kvQFUy1TUDM9FOOcxiYFwxCiTyjsBQCnR1Obkj3pKL6e1St6E7V3bLpoKpr+gRMDaBGm
         eiszvbI7EuPZBZMUZGD65Wwa4woL0Q7ilpO+3weEFUYvxRzAWYaiVO7Xi5GQdoe1ki7c
         /Ac4ftMZZfq6AOgT6y/AUA0+RnTqXHXQpTVRLScKWQgVmkSLK9T+68L/Ugq3q1fNzuSQ
         2xRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762011790; x=1762616590;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CcA70PVwTnb4/jopyJB8UMf+ejoU1/qkR5vDiv7mLZA=;
        b=I7z1kOVdE6C59dOkQDKmLfe8ySRREhgOganmBd4vrYYwq59AMAe6TY+Mv5Fe9lc7nN
         G342VSzeuUirZi4S36vBFXpp5vHMn7EspdZBlymoHpARQnjsI7dR6iQQe93boOg4HICo
         ZMdSslpQr564cPmygJkMUpcmq6YowQaQ7OU5o+MdfhSspidCUCXQ3jyVWIRpKVs0S+zM
         bFht45Mfp5xkEj3e9g28PSqzSo0nZ6meAIy61JmoJuxZIzUA7562zov1clxK/PCsx4AZ
         ya3SbuSI5F5AlNjEDXUQSRK2nfccptR6lQhIUI4eFovLefvg4DBTXYNw1PhNn+GYj780
         58Uw==
X-Forwarded-Encrypted: i=1; AJvYcCVnYgI8Vx77+j622cV8lQf/XVcPXY2Fr7g+Z+C180KSrsLEgVARocyvqso5m32wL3KdXtzPOrIwHrri@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3ei/Mmyud4BcjyM7z/o3xfyfAe5beuOkqCO2nAdt2ztjyjhXi
	GCDYGt4vOqJEdPJKesAmmwMHpTAphI9XQBHCZ065RrhnqPwhm+X5MbbL4Vb1cwVdpg0=
X-Gm-Gg: ASbGnctjGJXrFVISuK5zHuwyQCVqhxpojbmqqaArOrxGcVuVa1irhZr8WRd46aCud19
	G9/27KWeGlXkrpySEhLk5TucwMiKnBg0AgKiycn7yQ1o0RLM1+Bs4YJ0iIiW4lKpKefn0n3D4dU
	4Z+Lyht01BjL7mPI79DfpFj09sTB36KkbCoRTN9M/xg3/iRnLsddeL210tllLCwsoa0Q/z8uV1x
	rY7ctWr4N1PGiCRbpw1aD7mAoPbeDYbi7RUQ3r8Zm78Kup9ivU1gL0WacwkJspyKxpNGCXO4BG8
	ytzlFtyYtZ86fICE8+YcB2pErxFetF2YP8rW2zFot4YQ36GhLLKRfagp5pnUukX0bWFjjePXakd
	LcOKoeJDi7ONJaaJ0jyApV5jDflao/LUiW4B0cptYzmUpy4v0lo9h0zXyFKoIfO3OpeTLc8vjNB
	cEQX7RV1PVXiY4aVi6a7EP0gyUxalWycWxXDvoWAFKhg==
X-Google-Smtp-Source: AGHT+IGpRBEwhgyZU04oRdc2JtlV77rsk0jCZD7dlM8oXxEemL+4JiYFTNnpMduG0pla8WCCicoqeg==
X-Received: by 2002:a17:903:38c7:b0:295:62d:503c with SMTP id d9443c01a7336-2951a3d281bmr96116035ad.16.1762011789776;
        Sat, 01 Nov 2025 08:43:09 -0700 (PDT)
Received: from localhost.localdomain ([122.171.20.36])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295269bd2fesm59990105ad.105.2025.11.01.08.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Nov 2025 08:43:09 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Ian Rogers <irogers@google.com>
Cc: Alexandre Ghiti <alex@ghiti.fr>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Liang Kan <kan.liang@linux.intel.com>,
	Mayuresh Chitale <mchitale@gmail.com>,
	Anup Patel <anup@brainfault.org>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v2 01/12] dt-bindings: Add RISC-V trace component bindings
Date: Sat,  1 Nov 2025 21:12:34 +0530
Message-ID: <20251101154245.162492-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251101154245.162492-1-apatel@ventanamicro.com>
References: <20251101154245.162492-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the memory mapped RISC-V trace components
which support both the RISC-V efficient trace (E-trace) protocol and
the RISC-V Nexus-based trace (N-trace) protocol.

The RISC-V trace components are defined by the RISC-V trace control
interface specification.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../bindings/riscv/riscv,trace-component.yaml | 112 ++++++++++++++++++
 1 file changed, 112 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml

diff --git a/Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml b/Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml
new file mode 100644
index 000000000000..7979af3d4174
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml
@@ -0,0 +1,112 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/riscv/riscv,trace-component.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V Trace Component
+
+maintainers:
+  - Anup Patel <anup@brainfault.org>
+
+description:
+  The RISC-V trace control interface specification standard memory mapped
+  components (or devices) which support both the RISC-V efficient trace
+  (E-trace) protocol and the RISC-V Nexus-based trace (N-trace) protocol.
+  The RISC-V trace components have implementation specific directed acyclic
+  graph style interdependency where output of one component serves as input
+  to another component and certain components (such as funnel) can take inputs
+  from multiple components. The type and version of a RISC-V trace component
+  can be discovered from it's IMPL memory mapped register hence component
+  specific compatible strings are not needed.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - qemu,trace-component
+      - const: riscv,trace-component
+
+  reg:
+    maxItems: 1
+
+  cpus:
+    maxItems: 1
+    description:
+      phandle to the cpu to which the RISC-V trace component is bound.
+
+  in-ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    patternProperties:
+      '^port(@[0-7])?$':
+        description: Input connections from RISC-V trace component
+        $ref: /schemas/graph.yaml#/properties/port
+
+  out-ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    patternProperties:
+      '^port(@[0-7])?$':
+        description: Output connections from RISC-V trace component
+        $ref: /schemas/graph.yaml#/properties/port
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    // Example 1 (Per-hart encoder and ramsink components):
+
+    encoder@c000000 {
+      compatible = "qemu,trace-component", "riscv,trace-component";
+      reg = <0xc000000 0x1000>;
+      cpus = <&CPU0>;
+      out-ports {
+        port {
+          CPU0_ENCODER_OUTPUT: endpoint {
+            remote-endpoint = <&CPU0_RAMSINK_INPUT>;
+          };
+        };
+      };
+    };
+
+    ramsink@c001000 {
+      compatible = "qemu,trace-component", "riscv,trace-component";
+      reg = <0xc001000 0x1000>;
+      cpus = <&CPU0>;
+      in-ports {
+        port {
+          CPU0_RAMSINK_INPUT: endpoint {
+          };
+        };
+      };
+    };
+
+    encoder@c002000 {
+      compatible = "qemu,trace-component", "riscv,trace-component";
+      reg = <0xc002000 0x1000>;
+      cpus = <&CPU1>;
+      out-ports {
+        port {
+          CPU1_ENCODER_OUTPUT: endpoint {
+            remote-endpoint = <&CPU1_RAMSINK_INPUT>;
+          };
+        };
+      };
+    };
+
+    ramsink@c003000 {
+      compatible = "qemu,trace-component", "riscv,trace-component";
+      reg = <0xc003000 0x1000>;
+      cpus = <&CPU1>;
+      in-ports {
+        port {
+          CPU1_RAMSINK_INPUT: endpoint {
+          };
+        };
+      };
+    };
+
+...
-- 
2.43.0


