Return-Path: <devicetree+bounces-205569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E014FB297B4
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 06:10:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 938E44E4D07
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 04:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B997262FC0;
	Mon, 18 Aug 2025 04:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="IpdApLbx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5B8260592
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 04:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755490224; cv=none; b=HPDqcHgZHm0nrgUl0BWm6x7RSw7gBegb/7RIxdOhMkySwBTplyfE9h+PFXSJrs8Vqvd1KpaK/0sFmKrGFMbJtVrjjQYvahPlNQMor1iJ65/s/YUm4Kg1XKKFeKks74DH6dy5pIk4yN5MGynE3k6mpDJUkEQ5sQKTSN3EhALJdks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755490224; c=relaxed/simple;
	bh=wpGteD02sLvwEnKA7TBa2+SX4iYwOSU082ERtl6/Vjc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i0RZVTotwavaK/txEWvSOMS2V1dbsUEIPnr5UaYBN7ycq8UJcGhXr3Dwuox6tifyMR+ZIDkSm73B7gEhs8Zv6bzKQzf1BHIRex6fL5dQcFErjayckDpWOn6l9vsJcRIrsDh8Xy2NYOGBF3I9LiO9LfNm1MiT9UdeH7H8IsPNCG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=IpdApLbx; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b4717390ad7so2464079a12.1
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 21:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1755490222; x=1756095022; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EGFMyHcY75Un2ey32rj/OGQJrYLrfBUEB3tHZxTx41w=;
        b=IpdApLbxS69Eyfe6+HnnpMlZvFJ5FmA9oyvvnu/du1Y91/h/J+c1di2KXzAEszicuh
         L1antuCGAmZotSQNyty3804hh2R1ib4oQTphjRVM1W9vdSXxaWDditw1Z/7iqorgVUIn
         MyDRJxrUcH9sP0ALVC4eGkOJfGFqGNBO802smYxMHN3H0uoDNuyvb/TtAE9iPQ2U5bBt
         yz3+GhO5fpe+rOLstcoyHKfL07HjAf3We4ybLH1bA0BAL47+ZuAXAmgrh1Gean7MpmZZ
         g27fCnt9msIEzt/SHsKjBCrR3v7G6E5p/dPnOz4aUyPfz9bpI1gjvJgqBMUr8WGnUW1/
         +Yiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755490222; x=1756095022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EGFMyHcY75Un2ey32rj/OGQJrYLrfBUEB3tHZxTx41w=;
        b=LXrSQcNISWTH4PTTVLj3EryATGXO1tVytQ2GvLogWz9eicjzWp5T9xIjeXOBiINVa2
         1Uk33qODYCj8fNox+bJHbYuVZ8d9/d+mIvdVF2jKK3lgYN2qyUaUqVnW2zGpuwRmsvJP
         Ff6GPtTnCtebW4UjPuYEwXPlV0sSMKQ9AUW3P9j3ziv3j28AmlHwAFjgxgEli5yutmKV
         0NksTyKZqS6lqFKcgv+mxRnLarEv0TMFbvaDsbKzBwkpIHASplLfFwh3sQ7lUzjFt6yc
         zgg6fksqEx9tU+wwnQoyXGm+PPaRT71kI71+1s58peWlMHniL5yzWKLWLiq9SdCJ/NTv
         JPgw==
X-Forwarded-Encrypted: i=1; AJvYcCXBHMT81a/88guQy1OwMpFKDuoDG3mm3hNx9F5Z+Cr/djmiP5WLDSma7f8x40t/hhIliImauSPxgFQJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxfubyqkfO7IoeAe2N4QtoScp85MMbITYL/fAoaxJQbQRnPsmx2
	CZIg2VZVzasc80Vp5bUSwve7IV205cyb4CAwX5qd2YlhUd6NqT7udDCXG68a7qrkYEw=
X-Gm-Gg: ASbGncuEYoexZsna2rMt/ArotqMHkqsaWanwtuqUDTj2nY2TjcVBpZJgVsP0kIOIsDo
	P7CwziWc7O+T4ZBtusMSxTh8hp7zsKusU1IYpIKzlefcSPsqWpBc+Xjnlb9cH7hqlqqoqz3DF6W
	JJuUhkqxyKNmo8xeWKEx9DAV0vMxMnU4GYTZir9fZNCNLfY4mOrc7epOvCPrzPyoKzMU6an3T6f
	fZLsDeDioDc7ngPCtz1ARXIh9stvvucWUAMHHwCxQMOIyjuFFPOTIf7IfxSThZt7z6AzrJcDoeX
	Uvx2dWrzeHDvnUvC6zzeiXnzXxcBPRCfyUKXPLZQYo83nZ6ltQ8Ts6nY2UcaoZKJkx1QrjiWXYR
	OqSHWH5Ag8l49s8ADw7xf7VSr/Hpa14RvY1oVtQ6/kIDltvnVzNHVvw==
X-Google-Smtp-Source: AGHT+IFs4OXO3DnRijQR3jC6XXyoF6g88+AqqQwufWlSqx4yu9HzDyzVSqM84xSB3fWmoLTMC/EQwA==
X-Received: by 2002:a17:90b:5247:b0:311:f99e:7f57 with SMTP id 98e67ed59e1d1-32341ffece0mr13705525a91.23.1755490221961;
        Sun, 17 Aug 2025 21:10:21 -0700 (PDT)
Received: from localhost.localdomain ([122.171.17.53])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32343c70356sm6560972a91.25.2025.08.17.21.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 21:10:21 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Len Brown <lenb@kernel.org>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v10 02/24] dt-bindings: mailbox: Add bindings for RISC-V SBI MPXY extension
Date: Mon, 18 Aug 2025 09:38:58 +0530
Message-ID: <20250818040920.272664-3-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250818040920.272664-1-apatel@ventanamicro.com>
References: <20250818040920.272664-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the RISC-V SBI Message Proxy (MPXY)
extension as a mailbox controller.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../bindings/mailbox/riscv,sbi-mpxy-mbox.yaml | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml b/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml
new file mode 100644
index 000000000000..061437a0b45a
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/riscv,sbi-mpxy-mbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V SBI Message Proxy (MPXY) extension based mailbox
+
+maintainers:
+  - Anup Patel <anup@brainfault.org>
+
+description: |
+  The RISC-V SBI Message Proxy (MPXY) extension [1] allows supervisor
+  software to send messages through the SBI implementation (M-mode
+  firmware or HS-mode hypervisor). The underlying message protocol
+  and message format used by the supervisor software could be some
+  other standard protocol compatible with the SBI MPXY extension
+  (such as RISC-V Platform Management Interface (RPMI) [2]).
+
+  ===========================================
+  References
+  ===========================================
+
+  [1] RISC-V Supervisor Binary Interface (SBI) v3.0 (or higher)
+      https://github.com/riscv-non-isa/riscv-sbi-doc/releases
+
+  [2] RISC-V Platform Management Interface (RPMI) v1.0 (or higher)
+      https://github.com/riscv-non-isa/riscv-rpmi/releases
+
+properties:
+  compatible:
+    const: riscv,sbi-mpxy-mbox
+
+  "#mbox-cells":
+    const: 2
+    description:
+      The first cell specifies channel_id of the SBI MPXY channel,
+      the second cell specifies MSG_PROT_ID of the SBI MPXY channel
+
+required:
+  - compatible
+  - "#mbox-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    mailbox {
+          compatible = "riscv,sbi-mpxy-mbox";
+          #mbox-cells = <2>;
+    };
-- 
2.43.0


