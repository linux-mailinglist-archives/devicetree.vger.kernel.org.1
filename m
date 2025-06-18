Return-Path: <devicetree+bounces-187107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 57028ADEBC1
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 14:22:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDF103A7C91
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F33E2E9EAF;
	Wed, 18 Jun 2025 12:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Q6T1e+vE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 938172E8E0B
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750248942; cv=none; b=YWljCsS0RNVuySVZQK7T26zl6F8tu2Hbd6mXYAmqCJ5TVRIfZuqO6G2L9lHzt8xj4zF1GyoVrvgfW87vubGileeu8DyCf4dKOeXRjQtBQli+/oiCsAOgsxLvli22/bBaFBERlUkk1YfhSVKrvUY4cSG6m7EyK3JzzLmILw1u1rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750248942; c=relaxed/simple;
	bh=sbelvMc++opfxCsxTvRuuhoDW5jErxOHLIiEYhi1zkg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CySwKASJpgMUSHfggk9FhzTkZaKH7l2N3bWRD2V2TUtPeoCiwcHoZYOTcQarmOzDF4UJHoj5WgIc0tuWv9j+jO7DDcXvAxAtNC4XvN7CucmuKgV9jma3cKLEWQMwv3+PO/ywvWxDb3ATTGJkTWtM1Dox5tOCuKTjyfDPRJF3LVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Q6T1e+vE; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b3192eab3c9so5051630a12.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 05:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1750248940; x=1750853740; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a9cEkN+1nA6DRTpT1SF2rNqhyyXGV6gcs+oqiG40Gi8=;
        b=Q6T1e+vERjFeXGD5t2Orf+F65gMPI/NAC2xN228ygIxHrGKchSHtkg+ng96LCbPO42
         YLbhccvtIpFsnF1o+Az0BPWR+RIzueuw26mo9+CNiLnOjyK8IM1Aus+r6kfBBHrEoktp
         2NQefy47hwEP6XffqhK5/ql/rA2ejMuOlfuDcXy+fRx+CXtZB6YJImBgTXu+CLVRk16r
         ejYJfP0eumPBxS7Ih/vd85PAVwVeRPbnOyV7+hogZVaAJ4/ayaPmIx38IfYKHrytgPP/
         DK1h6Q4I/Tt2QH3NsM0dgCz39MQgfNG4lmjWHTrk2LaBj825PBgaWNZjlBEDEWj2Oq1j
         Ojjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750248940; x=1750853740;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a9cEkN+1nA6DRTpT1SF2rNqhyyXGV6gcs+oqiG40Gi8=;
        b=i46P5TB1v3AT8oDEtBYF+RC0ZU4DmV69MXH9deoHureSb+X9XTZEBTQziGO2sIjMYi
         rgB65wSZ4gnqc+xSSN+yGwCbHM7oCSI3wX0bcTXUdNF7v849shPpT9kFHpMNxKi+nkqR
         8BTupygNakg7KM6WKKlgDStaN+T8l0/g3HYX0yp08TKpKtQbwZ7fzV5nIOxBMC8rI9W7
         Rat1/c6aBQxGLFJBx8WOi6x8uia0kRUIBpuoYi7Qzbxj8E+11v0IuE/O+mIhEZK5Q1n2
         bbWGRYZynkdN/oy8oa5xhB6aE9ZttXlQn/Km9PV5gS8BqmmMoirTMjJQb5r2SlqDKCPE
         Nb1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUCHIAdA/Vj+HnIBOkOzCYmGay43pH7ECakudaI6K5ZDAtfs1Y3ODsntwSq7UtJoI/p1lViqbhaAtxV@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9s+bg+TT8Zo1z5vg4eVNoDIWaVyfpL/xW8gFOdjcGODrrjfe1
	KdGEVQf0LrsNDxkuZL4eIbivEEBIUPVw19XY7Td7DLhR04qEBsHguQV5xK4TxJUiBKs=
X-Gm-Gg: ASbGncugRiyzzJiVHrpaGXR4O1EMZeHO6JIpEBww8Sfh0M/+K0a0ezfM8DhwbjxK8rm
	yqW6iJTDv4VG2kFNvOK5Nlg43aU6xHO+EBeglwRYsIzBcBvV7UvGzbYG/P6zm/7aC+Q/lsxG9yo
	sQ0vqelQjc1OO+Jc+bJPN3G1mN2KQgPlP2ydfcu8URrVExHlx5Eq/dIDK8rj86dgDJ4l31GmG2U
	SiPhIfizLuwzdK29AA59u5PBBGv0qrn4eIzkD8mA+8xQSB/wNfNuTAilVD30RUxM5YZfk3MOt4b
	TbyEvOhqaz8RkhS6U5yeKSgCSuO1yn3CvAm8QN0Ln1PjNswmuyLiCS0OnpHIo8JgnGZVXyaUP8F
	Ya7Clf1rr7XDRErQMKw==
X-Google-Smtp-Source: AGHT+IEK8qZ+gXPmLTnhrSUH6t88V4GWdt5zL017JHCoKp0U8HqJO2SVy0J385g1j8q2Yo2wHBbtdQ==
X-Received: by 2002:a05:6a21:9ccb:b0:215:eafc:abda with SMTP id adf61e73a8af0-21fbd4d48f6mr24066795637.18.1750248939720;
        Wed, 18 Jun 2025 05:15:39 -0700 (PDT)
Received: from localhost.localdomain ([122.171.23.44])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900d7e0asm11201177b3a.174.2025.06.18.05.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 05:15:39 -0700 (PDT)
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
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>,
	Atish Patra <atishp@rivosinc.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 10/23] dt-bindings: Add RPMI system MSI message proxy bindings
Date: Wed, 18 Jun 2025 17:43:45 +0530
Message-ID: <20250618121358.503781-11-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250618121358.503781-1-apatel@ventanamicro.com>
References: <20250618121358.503781-1-apatel@ventanamicro.com>
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


