Return-Path: <devicetree+bounces-200143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 393E3B137ED
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:45:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D744916CF69
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8CBF25B1CB;
	Mon, 28 Jul 2025 09:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="pC6Zhspp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DEC25A2BF
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753695778; cv=none; b=kGWQqAsMH/VV7YoTcc3TvnHxCuV5Vr2iaHjoWFVe8IppPW/ZN4vnsMZDlyBtT/O6X6njRTveox2M4Lg8GWJfWGMGKzKpAs6UysIeyRwV7axosWPLhFhDXxpehy4wclkc7K1bGTogUpSbsef9Rd7GvHwA9ArgyO+Ob6mOmfdUGK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753695778; c=relaxed/simple;
	bh=vvd5aEr1EHa2kYCEzZk7/ahZeLh22JQayJGJfQ0Amwk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ApYYthA/s9NN36ZSyk/OY1T/Dg+4974zRmbuk0t8V/OfbAem2Q/U5YjRZR5eCyaS+SsK+v1x/YoflWUKIAuK6periMOyvyUwOx9NnODupHCM2ZxRJ6qkhtcSvFQvt2lP7KJD7XN0QibNyRfakLZacXI7RUJnm2OnrCCYY7Ra83Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=pC6Zhspp; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-313a001d781so3384578a91.3
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1753695776; x=1754300576; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XIoG0/2CSPJ7QI1BAwRn3+gvtI7NC6tH67IoLVRWsu8=;
        b=pC6ZhsppemA/gQFcXJG5rYxee+F8x1yDCO7x4bhe1mftvUos+LnoGhoj4w67n3nkm3
         6IKwfOQqIbTJKoDqnjFpPli7oyK+gWz36i40oA446mATf5KFxA+6r+LyiGVzeEWfpK4a
         PLY98JSC+wyDgbC6tm2zwK0usARmQIquPEhMhqzMOSCAkEGtPtsd/DcY2aUGm26TxgUA
         YBDR8JwGTnNoiX20WOMVj4bFzzgshbcd8OsVdSKhhmDV+6nZ0Da0Yajc+kEQBz/6rlJu
         04xRKdUhKlGWsXfr1sG6Jn9xLcOvZGk0Z+QRvMz3rot0ApEum+AvpkhW0WPjX5q5p1JX
         G+kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753695776; x=1754300576;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XIoG0/2CSPJ7QI1BAwRn3+gvtI7NC6tH67IoLVRWsu8=;
        b=ZqyRlMo7GwGmU6qZh3DLKyPaAl0wI+5MCneSjddyAamu/hTri4ZVJ3RPjfWC3np10p
         ENaM4hxBaNF7t6ZZuxmL0d8EpFLKvCGimK5tYOTBzQ5NxhLQqtB4ZlNTUei9C5yX/OP0
         9wZxMqQ5i5tGC9ReNqfZHsLmUDvupwrvrGKxEChqN9tGLdB6VhEtR5HLWw3gVIs9qvcU
         qm8uvvy/JdP6DBNx0nxC75NYvHrjbyxCnIHks+tUByo4sG7dRy9ADxRodxYfPpgNh+/R
         VHbKcK3rn+oZnnJRzRs93itWXNQB4ZPSdPoKl/nDLHn8lwuCSkb02cgDNaa+PmdNW11i
         MEPw==
X-Forwarded-Encrypted: i=1; AJvYcCVAe02S8qVJCICp7eO2BXl3igviKe6lsjahXlwRfS0Mtc+2+334kSUh4ops9sWJKDruQeYsmpsnbJ3m@vger.kernel.org
X-Gm-Message-State: AOJu0Yzuaj/AdRi1OWOTPBMLKWF6OjdMH41vDe8t+kZQHSjuwXUgcMxA
	ltyWX8J7yA1vsri+TIcaD9RXEaXt5Nm8JP264jj0V0jThc8yzyc5uABmVJYabc4gAws=
X-Gm-Gg: ASbGncvy5k7WIidMsb5X9qEz1o3PlmQwXY6erAJRKmtnAPwHad0KtpzeYgqvbVBAe5+
	BERUQ9P/M++42qTuZm6M3+NgQi0vV79IOYt7M4GsOrJ2RCzVfkB5o27c6QwxGKWguAC5ViKHWgO
	hS/dEGKoGbMtD8gLy1q+gaWpTnKrb+1SithB8vQeROPshSMjDBYtQFuf4JJ9TrliIy+n8e6h8+e
	FEG9LUNTFF0zssp8mC/kKN/zCfk0paWL+N2sC1H9h2+6Cu6PAi4yK5Mm49H1tYcqt2juPsZTf3u
	tBJE2FNZC6WA1A7yOanEZcFmJIeC9vqwEuc44j/tLde19eCm15OaLl6LbLVeENIIDqdtWqlqr0f
	NViPvIus6zzV1UUl3s3z3zbxYOniD7nvsVPCDp8IoRzhFiyG06woxz/dUeZCl6+0csV6rUn0=
X-Google-Smtp-Source: AGHT+IE55WnQ+0hhA7deATb8trRi0xgCBfiD8wcO0VoqZffzpD+pSQGytlvo6enrgswNtFBESe1LjA==
X-Received: by 2002:a17:90b:35cb:b0:312:da0d:3d85 with SMTP id 98e67ed59e1d1-31e7773626amr16294249a91.6.1753695776305;
        Mon, 28 Jul 2025 02:42:56 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.19.28])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e832fbf99sm5396230a91.1.2025.07.28.02.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 02:42:55 -0700 (PDT)
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
	Atish Patra <atishp@rivosinc.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v9 12/24] dt-bindings: Add RPMI system MSI interrupt controller bindings
Date: Mon, 28 Jul 2025 15:10:20 +0530
Message-ID: <20250728094032.63545-13-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250728094032.63545-1-apatel@ventanamicro.com>
References: <20250728094032.63545-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the RPMI system MSI service group
based interrupt controller for the supervisor software.

The RPMI system MSI service group is defined by the RISC-V
platform management interface (RPMI) specification.

Reviewed-by: Atish Patra <atishp@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../riscv,rpmi-system-msi.yaml                | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-system-msi.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-system-msi.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-system-msi.yaml
new file mode 100644
index 000000000000..b10a0532e586
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-system-msi.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/riscv,rpmi-system-msi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V RPMI system MSI service group based interrupt controller
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
+  The RPMI specification [1] defines system MSI service group which
+  allow application processors to receive MSIs upon system events
+  such as P2A doorbell, graceful shutdown/reboot request, CPU hotplug
+  event, memory hotplug event, etc from the platform microcontroller.
+  The supervisor software can access RPMI system MSI service group via
+  SBI MPXY channel or some dedicated supervisor-mode RPMI transport.
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
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  compatible:
+    description:
+      Intended for use by the supervisor software.
+    const: riscv,rpmi-system-msi
+
+  mboxes:
+    maxItems: 1
+    description:
+      Mailbox channel of the underlying RPMI transport or SBI message proxy channel.
+
+  msi-parent: true
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 1
+
+required:
+  - compatible
+  - mboxes
+  - msi-parent
+  - interrupt-controller
+  - "#interrupt-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    interrupt-controller {
+        compatible = "riscv,rpmi-system-msi";
+        mboxes = <&mpxy_mbox 0x2000 0x0>;
+        msi-parent = <&imsic_slevel>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+    };
+...
-- 
2.43.0


