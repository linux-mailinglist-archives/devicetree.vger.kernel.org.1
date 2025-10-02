Return-Path: <devicetree+bounces-223271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C42B2BB2950
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 08:08:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 775DD32250D
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 06:08:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CFF727AC34;
	Thu,  2 Oct 2025 06:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="mN8AzA+/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01346632
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 06:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759385311; cv=none; b=kE7c6+BSS4fpgUbmDM/omFbo4pd5FA23LnnWEY6HARrAc3vRv03HBlgscsofrNBhQjiBJzZw4EiFPmd9SppM7HRw2J01lrDk2ix0mr9HhfKrummnFBWyrUyAtl4dpdYcOhIc8vPDlvImww28fD5CgTup8n3JztA/+HZtZ6V1tlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759385311; c=relaxed/simple;
	bh=u/9mpbUc0JqX9+dr2hZMumKkTxhPP1IyUUeTXXdGAN4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rcYiEwzmp26w0TX1Z6zm4e1iDiXLOuB73TmWfhsa3uIoY8cq2dhNgeZlY6STjKrk9D03Ju8kY660yB4dgCNH9u1IYidmbO0yNDHwMOEywBZcyo87AugDubtf/fnvXuvtsHUdrtjVHcxyFvaYhf/dBxnaoQud4t6RWlQyuEZYym8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=mN8AzA+/; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-267facf9b58so3842045ad.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 23:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1759385309; x=1759990109; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hj2c615CrUy8YOmyqKQouk0cNfHyOtyWOMbH+KweoEQ=;
        b=mN8AzA+/7xiMUJWI0uwIFN3xv9RF2VwGH1gXh0PvRV4yavyelwBLjOzwcDv5g+KkPV
         d44VLdxdqkHNH9Mmr+2efp/0/pu/P6blWGZobzg4a4USAA3JXnxxbza+9i4+eoNizjFT
         RwrO4RsJ34GpGdFZ5lpYvBTztF9oh8jbh/H952AnJz7W1LJiQRSsNBptki/JeFFGqTHF
         qVPFQ/JtKq7MuVdOaeM3lThhMnHO3XzF6yBongcfCNK2KaS26FbnDn/1K1VruGtYsrp6
         BTbBBFGDxiVCnXs/mvxsLdl/TkknQ5kr5xx26Vdd2mK+bdTE5AUZZfOnfIiWKBmSCQ46
         tBAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759385309; x=1759990109;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hj2c615CrUy8YOmyqKQouk0cNfHyOtyWOMbH+KweoEQ=;
        b=rjY0pCb/ndsySATHiOPYZ3wfxDChRsF6NS4KXzXUsNzHigaqr3drVZcIfAhixuxfbw
         Ts5QLbNgJ7PfmcIVnpIShQ5TDsEbyAzbLAKjWoeGSiLtiM4BX5EHQQFzJsDDtOVUeieo
         xd+2TvAjnBqtUPcXjExh732fgi7a12i6N8dk8EwKscYOQQrBNIcgF2+gtGjHm/iIjcT9
         OqUC0wiUCjkylX8Xo064ORWoBdHg9G4uIQOtDaeFyqjOg+GmA1JHQ/fDPpiuFQsNXkfG
         mRZugnc9hqHD/V+rvROIHzToxL3r9Xf+3236o/Md6OjXaM11S7BYNUPW2zhQfsEO2JE0
         8ZOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUa8O0wuClllTHBRmxxJXUMnjrlHS2YHgS4g83WJDJRUyhhE178yn0zWjq9CdJ7ILTVzFG1sRbNYyR0@vger.kernel.org
X-Gm-Message-State: AOJu0YwVjvRXgdyqdcA8stVdM2DNurRhe6bG475An7qzkYqgbCGUXHh8
	tkh4jm282UUaivjhENGdhGl4ZjpvuIhaTBr2+nZLHMvBzeorKc2yvlsQdvMZ3o9JFgU=
X-Gm-Gg: ASbGnctfuq8vu+8aN4/F4a1ywqgnZfR13a2ChWWkt2o4KKEm1NwwCppMa+YxeMkH4SU
	uGDUuoNei88gJGHbcgoxgMI5d41TjfaP5lCvyxscAZ2aP+KlbyfhHvLApCFD8m9EMp1kB+SmSWW
	g58z8ZP03E42C/nRo3NG149l4MB8NfPEFcLGdsxg3esrbxLeUgh9v2+LWte6OHsOGQHgSkKNucp
	0GDd1YwtrNqM7plz65CGlkKR5UzuwbhDBACVYWDFt8MZghzLex1ZciRiO97K8vfAO3DjMNrPg81
	pTHUst7dI0iesl4UCukr+PuzFjFqF6C2tD4NUyaNqcoyX8fJjuqiYP4ub+ceE89Wjm6JNkxaJij
	4y927qAErlWsARfwwfsvp5LQQDL5IQ2pcE10ytaHlieFJo2U4qvnsn50+KsshCioPMkT+XQptC0
	hF6CTV353dFkffCw==
X-Google-Smtp-Source: AGHT+IGyT87xXKU7t+8dsmisG5C9KDNLA6TvuaXRJOG8u8du93ihWhzMU5v4etOkFz1S4HPaXHTjzg==
X-Received: by 2002:a17:903:1b46:b0:275:27ab:f6c8 with SMTP id d9443c01a7336-28e7f2922bcmr64570775ad.20.1759385309029;
        Wed, 01 Oct 2025 23:08:29 -0700 (PDT)
Received: from localhost.localdomain ([122.171.19.158])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f594afsm1205029a12.37.2025.10.01.23.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 23:08:28 -0700 (PDT)
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
Subject: [PATCH 01/11] dt-bindings: Add RISC-V trace component bindings
Date: Thu,  2 Oct 2025 11:37:22 +0530
Message-ID: <20251002060732.100213-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251002060732.100213-1-apatel@ventanamicro.com>
References: <20251002060732.100213-1-apatel@ventanamicro.com>
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
 .../bindings/riscv/riscv,trace-component.yaml | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml

diff --git a/Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml b/Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml
new file mode 100644
index 000000000000..78a70fe04dfe
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml
@@ -0,0 +1,110 @@
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
+  from multiple components.
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
+  cpu:
+    description:
+      phandle to the cpu to which the RISC-V trace component is bound.
+    $ref: /schemas/types.yaml#/definitions/phandle
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
+      cpu = <&CPU0>;
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
+      cpu = <&CPU0>;
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
+      cpu = <&CPU1>;
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
+      cpu = <&CPU1>;
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


