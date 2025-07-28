Return-Path: <devicetree+bounces-200142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BBEB137E9
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:45:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1824A3BDAFB
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DB0325A2CD;
	Mon, 28 Jul 2025 09:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="QNYcZ3wP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F5AE257AD3
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753695769; cv=none; b=MD+dp+H62iozFn996ZWt7u8SFcI9GWQEVY/EQDpH02FebPPEaZH8uMsbj7NQ+hXXRGe6EvfeUHCwYqCw+ONbbjurnu642VStCP20u5YF55gavsP2noZxgHzHM+RCrosdSJmOMsAfGd0UZ4J+WOiOAOaCwH+Wi+NjpYdbOkkCVeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753695769; c=relaxed/simple;
	bh=sbelvMc++opfxCsxTvRuuhoDW5jErxOHLIiEYhi1zkg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GCWgd8kcH7kH5xfR6B/HlCAzXrrnGG2YiYlhuvDjuDij6MSFqjj2g5goOGO3m7yzoUIYhw2AAFz0OuL8jxGKQfkzQ4b7yiuBvI9K9cLXanry4gcjthly3xNvIigV+Smlee+S/DqtvTr3JsJxlZMWd6Ckhr9UFaPzjPIsu5f/rps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=QNYcZ3wP; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-312e747d2d8so3782566a91.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1753695767; x=1754300567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a9cEkN+1nA6DRTpT1SF2rNqhyyXGV6gcs+oqiG40Gi8=;
        b=QNYcZ3wPDDDGy7LGkXhiNI18qfdtLYwEviHqt9PtlmAAg5V7N/LdvZU8fgMW78IPv5
         4aJjQo7w8nzSvMpoe4ylFIVxfpdzDbq5er8Ca+HuysGqN5E7pf+//0ez6065cPkTliow
         jLK//ifHEeY8p6eqLIoU+YQ1y5H42Wz7Dk09XE/VeN0qfTCSR8FuzZyPXjZOfjfwNM09
         CSTtWbq91HaAETn+HmfbSWLH0FdEw5knYYCdf0xlLz/e/m1382aaVXC1A/vjkte99Fgo
         OZ2vHBxDJ3JaGNbggRvf+cWwbKQLzrJJPcsvd7H6Yhzwqv3wyec/VuIFk+BgMRKgxwSb
         vsGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753695767; x=1754300567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a9cEkN+1nA6DRTpT1SF2rNqhyyXGV6gcs+oqiG40Gi8=;
        b=ezGBwSb0FsDWJ56VwUtCq6g46lyBW9FrysdNyxcIKW1ZqzIwccv4js5PcuP4w6MuiP
         cV0AzsWDWQWhOFWBeF/huMrb3Ht2c6TcHKW2kCtSzTW3lYPO0RnHxjypVUZhgKtlK/WM
         jgH3d/cb+kyvXc5V3FsTAGXT3FN0nL47VJ/dxc4iZ5qIBrT/gIVpaqAS/JsRQYAdP+fb
         jHusV09PA+BI+we2Ep/hGVOrrTUWOlSsnCW1W/osTzNNaMJBqB5mh9uhuFLoeOmrgd0F
         kutCH76+odg8n75+HWbR6LdGpuIcPVMdtR4h4XPyH99rWuRZwGKuVrkEJaIstC17KsBQ
         JILQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUjis1eyjZT6UiqsQtj/a+P5Dpx+pcTZFSgGORL2zRuDZX1fkVZFXStdcv+fghJWPmEcZ29hCruEnq@vger.kernel.org
X-Gm-Message-State: AOJu0Ywhb/jSLY3CXcgVMHOD4EOvTfHTYyYm/hfk2ESeJDBRTkfmGldJ
	ruOLN+9ddwTCnqIuD0EPjvx/DrQtQiNpcgCGHCr7vdZsHhXf9JerjGBYsfVWzeyBmOw=
X-Gm-Gg: ASbGncvu1Pb2PLFvu8Y45ec3LkFgYT+z0gV/ZPHvYjOwvHuXcah2PwTw8sgVKv3iL7g
	Myo1/cbk9YwvAPJhpTyZmvapF+rwLLskUe6T/aw2WDi026H8UkYJljr12x4Kl8LzyNuDiuEN36T
	JVH3Ov85HEA0maCRaAkD9pxLK00OOozDQKgN1ICtHeXVgQof/C5HAMl8YFaOmoinxL0WA64HeEg
	nTIjcnJdjCoE/CH+/q/zPI7kYRMD5vtkNHA8oW/wSmk9M1iPJYxxV2vwgXF38zdYTQWi2STG5z6
	+MzDgF+o8ua2biWCAsyYGTzWSUj0S4lr5DhdLjkisZ6/iF4ijJE1gvUCemuPllOHmIY+TbKZxlI
	59pOY6BtlqdQjAYHI5dmqJTwpq2a3l1+q8qfB86k9kZCjlgKAZi3FhnKNcI8gbpicePeKB/Q=
X-Google-Smtp-Source: AGHT+IGcRASmkNddGc4f04TprnWEk/VB91d1zyko2zPkLaF073cuPivETe+66fbsndZxOaOB4DsHkA==
X-Received: by 2002:a17:90b:3ecb:b0:31e:e066:c81c with SMTP id 98e67ed59e1d1-31ee066d220mr5005093a91.6.1753695766325;
        Mon, 28 Jul 2025 02:42:46 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.19.28])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e832fbf99sm5396230a91.1.2025.07.28.02.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 02:42:45 -0700 (PDT)
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
Subject: [PATCH v9 11/24] dt-bindings: Add RPMI system MSI message proxy bindings
Date: Mon, 28 Jul 2025 15:10:19 +0530
Message-ID: <20250728094032.63545-12-apatel@ventanamicro.com>
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
based message proxy implemented by the SBI implementation (machine
mode firmware or hypervisor).

The RPMI system MSI service group is defined by the RISC-V
platform management interface (RPMI) specification.

Reviewed-by: Atish Patra <atishp@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../riscv,rpmi-mpxy-system-msi.yaml           | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml
new file mode 100644
index 000000000000..1991f5c7446a
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V RPMI system MSI service group based message proxy
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
+  The SBI implementation (machine mode firmware or hypervisor) can
+  implement an SBI MPXY channel to allow RPMI system MSI service
+  group access to the supervisor software.
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
+      Intended for use by the SBI implementation.
+    const: riscv,rpmi-mpxy-system-msi
+
+  mboxes:
+    maxItems: 1
+    description:
+      Mailbox channel of the underlying RPMI transport.
+
+  riscv,sbi-mpxy-channel-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The SBI MPXY channel id to be used for providing RPMI access to
+      the supervisor software.
+
+required:
+  - compatible
+  - mboxes
+  - riscv,sbi-mpxy-channel-id
+
+additionalProperties: false
+
+examples:
+  - |
+    interrupt-controller {
+        compatible = "riscv,rpmi-mpxy-system-msi";
+        mboxes = <&rpmi_shmem_mbox 0x2>;
+        riscv,sbi-mpxy-channel-id = <0x2000>;
+    };
+...
-- 
2.43.0


