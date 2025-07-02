Return-Path: <devicetree+bounces-191950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A65FAF0F54
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 11:13:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B0CC484934
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 09:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16460233D9E;
	Wed,  2 Jul 2025 09:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="N9Wy0j0I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BF8219A8D
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 09:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751447585; cv=none; b=Qm4jZ6Muwq6eHxIkApRhgSsmWpLaBwFimRTB5SGB/jr+oviHoF2WGRWkrccic4kRTtlcoh3JVAeSaoaT6gsNZIRhGyJaA8CV5dQYMA1J6yer0hcli+BVCZ3uZUXIiu6rJhn2Hjc+LBrMFr11TxfR1lMP9nqwJPv468ywCMKUuDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751447585; c=relaxed/simple;
	bh=Bw+luCpgfro4plTSzFDqCPmRYgzWS01RJtIYCu6pB2M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=R8ll/i0Dk+fyGELds3f5taTz5nYhd8sUbWY7x+WkxZDXlaUcYYNs0Ikp+wwBq9lfUu90Su9rITwjGHJj0vw2SKCRTpF0q55B/2sTV1WcVR6QTdC6V1pxrRnLISWLhHhJGZ29T+cneH+0ro29I723aKjop1jt9a4cPs709JBRk4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=N9Wy0j0I; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7d21cecc11fso1108971385a.3
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 02:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1751447582; x=1752052382; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=05oSeZnKkOuwHRWSxX5BsGUyoGxJgB1j6SCGcyk/mG8=;
        b=N9Wy0j0ICRCwFRBtyvAhAbj63REf0h0DMlAczkhotv/LrB439b6jhb5Zp6hqC3byt3
         MKS6tpP3ESEDek7ZreGzitOQzCb8AKDLAH3pCDy36Q9X+LJzrlGj21mdU4Ilwc3kGl9m
         SVkNpdus/dMgu3daps7Q+AvLxAvfvLcWOEhA3tDddUzDHd3mf1/jeilRwgS2KfVlXLKP
         07XdM+FOy38b6tXPkkPmUaEJZGZhzu6DqD0soEnehU7J4gt9cVeQAFCyd5S+JdKE83CB
         xY0945R9GhCe5p2X+NzGphGSmwoFn/lUbcVxU+6ZT5lyGoz2+VfdRRvp9NwbG+Mx0td3
         LZqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751447582; x=1752052382;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=05oSeZnKkOuwHRWSxX5BsGUyoGxJgB1j6SCGcyk/mG8=;
        b=sj1sDbBz2bM0xY9+FhQ2OP1UsdNxifSxisP5tO4eeIlvGoOH8HBh3jjPkkmEIux+nc
         CUDbXtLhH4Ka9An94xFPsJYt8Z1lGNZ+Hrzbn/Rr11k7xFfem6cDpnlxy/429RrwXYnl
         cIe1QyKAFTVO/55yy/oCfyIQcSh/E6W5OhnZ0dsD+6qLXi2OhHQd8vloYwO+9rcsJFtw
         PR4IAooJ6KWaXLQC31SFklaJ0HhWf15gIJVBiImI8a/EfbpmtTaQmpt29oO9WtJ+rVVl
         Y+DI8TW+p+Py4pLM37+13sY4Kgh1Fks6VxO00AB5FHFu7WKZxMk+n5A2c1IUf7cu1CWW
         341w==
X-Forwarded-Encrypted: i=1; AJvYcCUy3gZ79d5psvaY49ZcGscJpdKLSGaz4slgY11eXmw8wH9h/gT0GDG7/PUNhzMZqigQ1dy3aYajvasg@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1ZhHh8kVUAT3qwnwRHW0OIWobLGxRekrGzp+Yx48geXYUs3zR
	Vq4f5r6toK8bPLkRIiwsB4Iz+xXlIAksDgYgT9qRGUZaN7nyUNtEhpcrFoIX5hUa+M0=
X-Gm-Gg: ASbGncskplrohYpCFx0rS9rTJjO7sd1QwnJMRtoGar6mtBEunzineZZ91fO4v41Fn0d
	d1Y2sRVjQAN7s34C/wkeLJZElesGyJPmLq9UmO5mnol6oZeCcdGPG+MM8gRCqR9RvqYK1lXF6Et
	wvmbYli8TJQC+ry9JpcGwUoEuSuKLyOsmWcrj/03OSCdsB5bFSojL8Z3/ao1vTRB30brhzmzX14
	En+UMBAivwZeRFxmAeB1Aluq0vQGtXASw8jEmjbBbFFB80h57AOQ44QVUUXPZAw/XbRF1VwgBQb
	qbzAp1uJdEoGsh7awbwKh2+ffBihL5I2SGM/zMeleMU/3MHjPyCjCr48t3JRRGY240jcWwv86BC
	jJ9VXw7Js
X-Google-Smtp-Source: AGHT+IFJq/oyXbT34XXbgyZs+VaHr9wzfkSMmLdoDz1YCb55z55iK/HwDroOxqnoVByLo9PegJxBuQ==
X-Received: by 2002:a05:620a:439c:b0:7d4:28d9:efbe with SMTP id af79cd13be357-7d5c4718eccmr335297885a.32.1751447582153;
        Wed, 02 Jul 2025 02:13:02 -0700 (PDT)
Received: from hsinchu26.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d4431344f7sm911736285a.2.2025.07.02.02.12.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 02:13:01 -0700 (PDT)
From: Nick Hu <nick.hu@sifive.com>
To: conor+dt@kernel.org,
	krzk+dt@kernel.org,
	Cyan Yang <cyan.yang@sifive.com>,
	Nick Hu <nick.hu@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH v3 1/3] dt-bindings: power: Add SiFive Domain Management controllers
Date: Wed,  2 Jul 2025 17:12:34 +0800
Message-Id: <20250702091236.5281-2-nick.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250702091236.5281-1-nick.hu@sifive.com>
References: <20250702091236.5281-1-nick.hu@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

SiFive Domain Management controller includes the following components
- SiFive Tile Management Controller
- SiFive Cluster Management Controller
- SiFive Core Complex Management Controller

These controllers control the clock and power domain of the
corresponding domain.

Add `- {}` for the first entry [1][2]. Once the SoCs are ready, we will
add the SoC compatible string at that time.

Links:
- [1] https://lore.kernel.org/lkml/20250311195953.GA14239-robh@kernel.org/
- [2] https://lore.kernel.org/lkml/CAKddAkAzDGL-7MbroRqQnZzPXOquUMKNuGGppqB-d_XZXbcvBA@mail.gmail.com/T/#t

Signed-off-by: Nick Hu <nick.hu@sifive.com>
Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
---
 .../devicetree/bindings/power/sifive,tmc.yaml | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/sifive,tmc.yaml

diff --git a/Documentation/devicetree/bindings/power/sifive,tmc.yaml b/Documentation/devicetree/bindings/power/sifive,tmc.yaml
new file mode 100644
index 000000000000..4ab2b94785f4
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/sifive,tmc.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/sifive,tmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive Domain Management Controller
+
+maintainers:
+  - Cyan Yang <cyan.yang@sifive.com>
+  - Nick Hu <nick.hu@sifive.com>
+  - Samuel Holland <samuel.holland@sifive.com>
+
+description: |
+  SiFive Domain Management Controllers includes the following components
+    - Tile Management Controller (TMC)
+    - Cluster Management Controller (CMC)
+    - Subsystem Management Controller (SMC)
+  These controllers manage both the clock and power domains of the
+  associated components. They support the SiFive Quiet Interface Protocol
+  (SQIP) starting from Version 1. The control method differs from Version
+  0, making them incompatible.
+
+allOf:
+  - $ref: power-domain.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - {} # Leave a empty for future SoC specific compatible string
+          - const: sifive,cmc2
+      - items:
+          - {} # Leave a empty for future SoC specific compatible string
+          - const: sifive,smc0
+      - items:
+          - {} # Leave a empty for future SoC specific compatible string
+          - const: sifive,smc1
+      - items:
+          - {} # Leave a empty for future SoC specific compatible string
+          - const: sifive,tmc0
+      - items:
+          - {} # Leave a empty for future SoC specific compatible string
+          - const: sifive,tmc1
+
+  reg:
+    maxItems: 1
+
+  "#power-domain-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+# The example will be added once the SoCs are ready
-- 
2.17.1


