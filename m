Return-Path: <devicetree+bounces-192922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 09854AF889B
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:08:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E9A30189643C
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 07:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1423279DCE;
	Fri,  4 Jul 2025 07:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="jKa++m2T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D814271A71
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 07:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751612761; cv=none; b=hFYZbPzDBPA2zryf9bORai/nQuLTZQrvVccszwsEIZAtSaRTdk9CjlK+WEBCRMvF6Wsq4H+0wMz7ldNKWV71Qv9zWX0SJq8GFduv8dxR2BrfEW7Qn2/CO/rLLlFHuxg9SQl5L+jl5N5cefuMUBG/CVs0/qerPftLp6PJKwlqVHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751612761; c=relaxed/simple;
	bh=gqZpMXPd6DL/+kfXUibwUL8SSmPMehps7IgssTY7RG4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CUU27au3Eai4jkH18tA74s0qrjPdMGjwJrUEFuHYyAZW+ntWVJQCQLbMX3MQkpr+ad/VUApZi9fvlaRSmyT63L/8NSPbpmvIwBzx8WXxAbOdHTfVir7ZP2jbo2Yl29KCrMUdIh1ikKZu4qMUqcvES4MJBT1yXNNI1GcMkDEumzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=jKa++m2T; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-b3507b63c6fso675740a12.2
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 00:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751612759; x=1752217559; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zMRC5c9xXUgo6eKv4jcoCHH6TENqo9cqAPQxW1Kbofo=;
        b=jKa++m2T/65KYJ+zWi42iHYdOOtk8WxWplz35AjpfZV98KGo0Cn9inyx1iz63hPl4I
         5m+apzuY/lX01xNaFrnMI5sIZcM9njQsW4cIR5/hP79Zs7I9jO0wX9KdLOtVLrWIg7Bv
         Uvj20kppz7ilK6DBOfi4ncIA89QtfDl8BQfAIytPZ0B+UnShkXmXbYscQHmVCVZKLS2j
         E4vYAMsK4MGjdc5V68pmS5VsJT27O17Ht1ZFvefh2GWGX+GWYoUPvqi1cFgWpS3hGYuD
         YFhCdHFyZvWvauQu7fQEaUBR2d8AElNxXVKYNuInjIbqFEwoEDKJhO7WG6NFEQWdlMfq
         jikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751612759; x=1752217559;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zMRC5c9xXUgo6eKv4jcoCHH6TENqo9cqAPQxW1Kbofo=;
        b=wWRxLW9ZdtU7x0lAaAwVVuWcN5e4AoQHyrK9LujP1Tj8TXzy7Xi40e53fT1n7iMnLu
         Yy0TF4NTTIM2pljZGxBVYUErZCr1BSF7tJhsbFXbzwAg2OAVPzTtB0UnfOt22OnHwEhA
         mITTLlQymBCNw1LVARZpnHynBECS2GvtAy6ed6pn9hiJXTAP6J719Or9U/ghVTgItz+V
         S2ytEI2O5qLFP4OMAEepIrYpNm6cC2z8b4Asw/K0XgIzZoBcdbB1KBTyxkL9dnBLQG90
         pal0hSGKPYvBrsQUXhRnO+POoBeY4mGbXGcH/7ZHlBF1YySSWLB/g+YbjnqKWBQrvK7P
         M5PQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9ZjSCn/FxWnsEPA5vIJp1tXwujgZ2bNJ6XOUJStnLgyQS0zX4X8dLo7QT42+INu9gWAa7LpLFVxUf@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe46pRUl0GXaXGicwZJodNbQS1dM/pXzWuuXi4v+U+bjTSXO8D
	QIDsAh6vTqPZy3WI+p2/ZBszAmyc4D0OyBwiaAdBYijMLvl8nmXTEgVSmYRnNNBiNws=
X-Gm-Gg: ASbGncsvVFkZ42mZnuCal+Jb7DCUsh7hZZSXWh94rGNYUt8K2bM5vbXEH5LYKwe15SY
	JDxOOPh11VlMF/x4lCN6HFrxQ8oBf8rHQGhvoSZ3eMb/ZdRTYpVjM9vSMDmhL4Q4qSwIyaAGXa5
	1DPgQKO63l5tCQdvdUBEx6IoEfbZ1wncZZ6fmmkeetGqgFL7l/ytYrWAauYqgcJ7jF3XWk+yKsU
	UQ9iG16/PBwgTXS5sqvjqSonLeMW8Ywumk2HTfqnb2XIHTiF8ygJer00bOfDpgNbwP02C17raRF
	xZTNq6Y1gOwFECkUVEVhizMNpVCamE2WqW7VkFXEAvwEigqexoNE9Qo+f35kGOEUU3JGTIPrjUk
	AFVyidCRDL70Jv3ptOdnzcTAytw==
X-Google-Smtp-Source: AGHT+IEsY9DjJEKtUwl9ZcWbIEnsXVkhcprck0a7/CT8yNIOArahqDh4/mdoR/7EaIpy+0pjEevTMA==
X-Received: by 2002:a17:90a:dfcc:b0:315:cbe0:13b3 with SMTP id 98e67ed59e1d1-31aadcf4962mr1778242a91.7.1751612759095;
        Fri, 04 Jul 2025 00:05:59 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae59a93sm1358697a91.12.2025.07.04.00.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 00:05:58 -0700 (PDT)
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
Subject: [PATCH v8 09/24] dt-bindings: clock: Add RPMI clock service controller bindings
Date: Fri,  4 Jul 2025 12:33:41 +0530
Message-ID: <20250704070356.1683992-10-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250704070356.1683992-1-apatel@ventanamicro.com>
References: <20250704070356.1683992-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the RPMI clock service group based
controller for the supervisor software.

The RPMI clock service group is defined by the RISC-V platform
management interface (RPMI) specification.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../bindings/clock/riscv,rpmi-clock.yaml      | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml b/Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml
new file mode 100644
index 000000000000..5d62bf8215c8
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/riscv,rpmi-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V RPMI clock service group based clock controller
+
+maintainers:
+  - Anup Patel <anup@brainfault.org>
+
+description: |
+  The RISC-V Platform Management Interface (RPMI) [1] defines a
+  messaging protocol which is modular and extensible. The supervisor
+  software can send/receive RPMI messages via SBI MPXY extension [2]
+  or some dedicated supervisor-mode RPMI transport.
+
+  The RPMI specification [1] defines clock service group for accessing
+  system clocks managed by a platform microcontroller. The supervisor
+  software can access RPMI clock service group via SBI MPXY channel or
+  some dedicated supervisor-mode RPMI transport.
+
+  ===========================================
+  References
+  ===========================================
+
+  [1] RISC-V Platform Management Interface (RPMI) v1.0 (or higher)
+      https://github.com/riscv-non-isa/riscv-rpmi/releases
+
+  [2] RISC-V Supervisor Binary Interface (SBI) v3.0 (or higher)
+      https://github.com/riscv-non-isa/riscv-sbi-doc/releases
+
+properties:
+  compatible:
+    description:
+      Intended for use by the supervisor software.
+    const: riscv,rpmi-clock
+
+  mboxes:
+    maxItems: 1
+    description:
+      Mailbox channel of the underlying RPMI transport or SBI message proxy channel.
+
+  "#clock-cells":
+    const: 1
+    description:
+      Platform specific CLOCK_ID as defined by the RISC-V Platform Management
+      Interface (RPMI) specification.
+
+required:
+  - compatible
+  - mboxes
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    clock-controller {
+        compatible = "riscv,rpmi-clock";
+        mboxes = <&mpxy_mbox 0x1000 0x0>;
+        #clock-cells = <1>;
+    };
+...
-- 
2.43.0


