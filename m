Return-Path: <devicetree+bounces-191848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C11A6AF0A55
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 07:15:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB1721C01AC0
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 05:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15EEC219A72;
	Wed,  2 Jul 2025 05:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="MS06SEOK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484111C6B4
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 05:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751433309; cv=none; b=MmTQxNynxqOrPhuli2JjG3EuSUbrrwjTHIXUTi5lcbPPMkcugATTZyG0EvdHVuPwDIgFk85ER3P0VTiRwwyi7KnlCaLJ5CT4goWLVkBtP7rb/5RW6Zo9oOIxP8ktlTC+qUwj4tmS7px7Q0kgkv7WJa/rU6g0+iRqQqb/OHV8A+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751433309; c=relaxed/simple;
	bh=psnTedHrRclNzYfKOxzNdzEC/lgie9/9OjOQXPUJ9ek=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f5Uvj3mOv2nwivknjDXQ3HmvhacGlNweK3NIQFc895wP9nqLLRCaZB80xn7JhQxuWASZYhuai5XSpBy6RoLZlRBaMdYwdTGU0mywnNqdSluBTlaKyGYE9A92MC5p9DjlFDnHaTBUHeB8xqxL4iRF2LoyyW2Tj4VS8qkdrD6uVmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=MS06SEOK; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-234c5b57557so39438595ad.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 22:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751433307; x=1752038107; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UM/HZQdb2lcK8V7OkC2GVlA2nnGt1f60vmRpDyo8E4k=;
        b=MS06SEOKqAq2sDyiM6roZK+5IviUHYOH3c/3h7krrp9PGbPyn05DAhdsp7HfywR+OV
         cqqJrIp5zkghm2GCbrJxiJXnq3Wxz67kvUoK/x3Huy4WS+8KpjuFdKN+NOduUoKO8j34
         n6Gcn0X9v8twNO+x51qfKLunLG6nTJ+0Yty4qzOSOfnS9tWZGzgdNaEqRK3N7bzZZ9Iu
         MWIqxrpOY0n6b1b08Cbl3dBQAIQK4wPELaQXeE8YBF3RSUHlx5KhH7wjSidgP+MFTgpM
         DmOp8sB/y/9sfB/zoZNF4QgFU3lWwnZDzpI2cZ5ZZHA/BQAC+DmLZOg+q8GzueueSYDc
         AWjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751433307; x=1752038107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UM/HZQdb2lcK8V7OkC2GVlA2nnGt1f60vmRpDyo8E4k=;
        b=GbvJ6au94YTDvLdx32WYjnS3rncAe2mfWNZQCMnCOQtBq+nPt3GUhRNTP4yyk3XelM
         mgU4VeHLBeQVPEQ7gRKLoQo6R76QWev/OAftKVhSrUcRBLizseTnYY/K/fb47sQKTfNB
         AOSF9n8Xx7iUiyptJgGp5PTzWmojLLEmyzcD4thpZuKZCqxsWivZjcdms53cZgGUpYMe
         JvMj100BmfXtLghLFRMN+uHPMKdr61MSLBHUMMwtT3Htuuw0sr8VPm7v4H09Jw5BPlt+
         Vx3BdyBVwyGttJTngpG7O8rBl+FXfXYCRj+1u4eDKvhLnBmuY1do9f0qtSi7UhSI7MrR
         2nrw==
X-Forwarded-Encrypted: i=1; AJvYcCUeEzkcGZUGlF8tt3PSiKQ90F5GduKKXaLGcKbOugwXZxzbV5aQTQ9fMXl68mfzsXkNxvkPG9FIjU3f@vger.kernel.org
X-Gm-Message-State: AOJu0YysYXnNw34V7stxG7f9pYpuqrb0C/HYSadnyk7Gb5cbb+gy52Yi
	mxjH0LCj0gNniA4QPnUkGNW97+Hu7E8bvmzxL5lxd09dZeAcIDGcrXH4Z9XnFMXsL6U=
X-Gm-Gg: ASbGnctMUjFEiJktAPfhDbsm/OfNhJAoslE6oL7FTAxv1wo6XuDaXv7pV7W6GLmbSI6
	qRhcQmRs8uDzYkeq0v9iwtdfaKE1wp/WPl0no/qN7JGMqmBddFa7upaz7mtAXCJwj5GAXbgjNDF
	ZvFJW90skYP+RL1UkONG7us+DHxM65vCwPzPAr+akOTOHSEvlflrYFE67iMfM9YPlYZVNP3dk0y
	wAnAbcbJy/zVhhSVI2yK7z/eX1vjHKUZWmoW5Kl/ALZm5WZ91v6fDE0RZaUybWs51JIXHyUw3HQ
	oEuz2DvpcFZzbbcLFgf9Vmw9l6Cc7g5Oy47Wj9kqq3Q3B/L917WAxmjUC1nKGROkMlWVJYvCMTu
	Ipq+mk5qrm9qCgibR
X-Google-Smtp-Source: AGHT+IFWsFKRwiLkn4+0FNNQ8TzbjWmTlTzoQeJ28wANDKR6xWxbc9yBEEWGSmlqOiJ156vxO88y8g==
X-Received: by 2002:a17:903:1988:b0:234:f580:a11 with SMTP id d9443c01a7336-23c6e4b9ba9mr22182535ad.19.1751433307410;
        Tue, 01 Jul 2025 22:15:07 -0700 (PDT)
Received: from localhost.localdomain ([14.141.91.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c6fe31933sm4719595ad.220.2025.07.01.22.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 22:15:06 -0700 (PDT)
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
Subject: [PATCH v7 08/24] dt-bindings: clock: Add RPMI clock service message proxy bindings
Date: Wed,  2 Jul 2025 10:43:29 +0530
Message-ID: <20250702051345.1460497-9-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250702051345.1460497-1-apatel@ventanamicro.com>
References: <20250702051345.1460497-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the RPMI clock service group based
message proxy implemented by the SBI implementation (machine mode
firmware or hypervisor).

The RPMI clock service group is defined by the RISC-V platform
management interface (RPMI) specification.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../bindings/clock/riscv,rpmi-mpxy-clock.yaml | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/riscv,rpmi-mpxy-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/riscv,rpmi-mpxy-clock.yaml b/Documentation/devicetree/bindings/clock/riscv,rpmi-mpxy-clock.yaml
new file mode 100644
index 000000000000..70ffc88d0110
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/riscv,rpmi-mpxy-clock.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/riscv,rpmi-mpxy-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V RPMI clock service group based message proxy
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
+  system clocks managed by a platform microcontroller. The SBI implementation
+  (machine mode firmware or hypervisor) can implement an SBI MPXY channel
+  to allow RPMI clock service group access to the supervisor software.
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
+    const: riscv,rpmi-mpxy-clock
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
+    clock-controller {
+        compatible = "riscv,rpmi-mpxy-clock";
+        mboxes = <&rpmi_shmem_mbox 0x8>;
+        riscv,sbi-mpxy-channel-id = <0x1000>;
+    };
+...
-- 
2.43.0


