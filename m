Return-Path: <devicetree+bounces-205579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AF8B297DC
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 06:13:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B2514204AFF
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 04:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DB272690D5;
	Mon, 18 Aug 2025 04:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="LkAp9ZAl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651A7264A92
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 04:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755490308; cv=none; b=mx+R6/Obfwtm0oicl8kpeDO/KyffB97O7teSSvDYSx6fAPtW/844OkyBhULwPx+q2sUbqW8LYGlaEXnWjNBVr0lFrTfoIIUAv8SDcUjRkSe4ejpUOcKEkUMss3zKkbNIlI244/I1ZkpKsKq0b+TWD7uXZ/JFdRfKyslYXme2jBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755490308; c=relaxed/simple;
	bh=vvd5aEr1EHa2kYCEzZk7/ahZeLh22JQayJGJfQ0Amwk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aeK3t/kuBWT9WJ3wh0JcChyonVmmtINolL5U0AmnfHBWHvFJnzRC2+32DYFY9AL+5xaJihclOb48WTrreYewuOVXpmAD/I3eKwTB1NJ8ptrSp5Y9exofFLfMpvITVr3xQmQJt+mMeT8gvY0KOMktqKAgdM0Sc9Sw5SfESfC+NcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=LkAp9ZAl; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-323267872f3so3077686a91.1
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 21:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1755490307; x=1756095107; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XIoG0/2CSPJ7QI1BAwRn3+gvtI7NC6tH67IoLVRWsu8=;
        b=LkAp9ZAl9AZAnnoMhvkKo/0OElAgVHQgVEZ96iNoIKtE/Rc1BhQG3J5sJWECZqdhXs
         EXf6utF772YRVxHbn4KXhs2f8smwlAYiRSbc7PO/M4iD74JSeP5dB7JoUEqLJ9vL1fvi
         YyFmSwDNola/zivTmYvMGnuBZNSTaeVm/E0IE8Vr6Spw687WY/QTtmWJtqxLIFvhz0m2
         yjOHkrtrateXCfka5jY8FHNk1JkoRDPHHyLfQGG042Eb2E1/bVXjHUWfqcKEeS46GANP
         KnwnHmMwHUbEPavFeLryRL18zM4f1TkANtGPj96O2CfTHJqGWPs5dsVba6aLNDsVkyFV
         1Ylg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755490307; x=1756095107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XIoG0/2CSPJ7QI1BAwRn3+gvtI7NC6tH67IoLVRWsu8=;
        b=GyOqpa6K8pKVxNGLS8im098LZ+oayr63F8bl+jKJIABoqYsXLFIn0SbBVCVMoP1YAm
         Q0/DNTW/hZDGdKNH8hngw+924zjY+zsP1ochVUnjFg/B5bL7VBRaaGLf14zB1E2/Igy7
         4mICWQHSXFeyLXoUOWeF0jud5FyYcJWpnkNPQr0HsfjAWMWkMvkhlI07f7wBbO55r4Tc
         IbuY26Nx4uwXXo45dFDfcUapjlOX8YCzIzpJFgkrIQZ1iByTJzHABqc3BrPRHKY2PtZL
         xz9iXf835rm66VMENPhgMDBZbaGGm1Q5JKmov7X7ixtQhz2b8uLflRaZtKQkQwQ464AW
         /lqA==
X-Forwarded-Encrypted: i=1; AJvYcCWdyLK3Csu6cqm99gRtfQ1knLPSoTyDdc/UlW3A4HYmeV7X7SkrpBrgV4AQYI/EEO74wZYw1BpDLK43@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj7IjJoeKUqbefNrAEGl8l0CUTVSUZS7YiDHkyDDaK0E+E9ykR
	0um2hO0c9WOpjtNiY0Q3zxsvQtmRZDoU62z1SgHh/4/mAVA9xmRw/MbFE7cUUMgj2+w=
X-Gm-Gg: ASbGncti3Ae/Mad0RW7i8MePcoNkq+e+aLjBf4kvk28iwAS2MCeiJ9PEFQbh+qldpNu
	pe+WwwfdwgevoR/W28cc5r0ReiD18iTTVULUB0MeO5SGEfEtti/D6mR1iolC3vP/xC3ihkOjuzi
	qTYxX5IJ9Ui8TlGTCYxA3bZsgCqiroYnJEihHLljQwJbgKinc/NoVntF0P2nbHOk8e4ieWkl61a
	m1X3oSBT6uwxjj838+SMSxJ0w3SzsjwqDuKm+1E+QdPbyBI70Whdpn6Wur1zrzsOMkbNH82obs4
	36sjIMkX5/BUY+QqpmNrPdMyxSkbPxqyBcC0KK3VQldPSyOu42hk2uzxUF2rsnnJP+cCu407/nD
	WgwtfBVn6tt2whXvDycv8jzhi6pjnzu/jsMKBPbMJM9DuBafmK3uqXQ==
X-Google-Smtp-Source: AGHT+IEgAT9AYq4pQahHXmwpuFEuM/W9qCllak2PA0hDXHdQU0xExFRnQJZQzNUnJraBHIA3ajZAJQ==
X-Received: by 2002:a17:90b:3849:b0:31f:d0:95bc with SMTP id 98e67ed59e1d1-323422386bbmr13467205a91.25.1755490306539;
        Sun, 17 Aug 2025 21:11:46 -0700 (PDT)
Received: from localhost.localdomain ([122.171.17.53])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32343c70356sm6560972a91.25.2025.08.17.21.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 21:11:46 -0700 (PDT)
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
Subject: [PATCH v10 12/24] dt-bindings: Add RPMI system MSI interrupt controller bindings
Date: Mon, 18 Aug 2025 09:39:08 +0530
Message-ID: <20250818040920.272664-13-apatel@ventanamicro.com>
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


