Return-Path: <devicetree+bounces-184588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DA6AD4B91
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 08:25:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08C3918989CC
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 06:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97DFA22D4E5;
	Wed, 11 Jun 2025 06:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="gRh0O3AQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E83322AE7C
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 06:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749623059; cv=none; b=WQC0hgCbRwdZSYza76VRMh+jO2ur52SD5w1p8toh61txi9xnd5VQikFYMkNp6jBPJndT6Grp+ucHWNHNqNgGr7kFPzXkp7d2HtdAfeGYKnb5BENOlFFoaFj3EnJogQcZ1T3pAIOm/wKz1rfFKRcY7PmtjyKSAl7n6AGzDWyQZwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749623059; c=relaxed/simple;
	bh=kiEk/ZTgWEHqlvZDH0biu08pH7LpqLelaz9eTEzcvxg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JD67sO8zUh+lQR4kVtMhY5sXRxp5FZx2iwg/jGVH9sJ653fVd/2Vj3laeF3Wjap5StRZXCkrPGXXycdO70xSGhIn+sKHO/VbFbUhkMvh53NvplWFkCTBW5nfa3LTIGySBZugXqyonk75S9TzUx4LcGW7xi8fwI6TTYdGaa1FiaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=gRh0O3AQ; arc=none smtp.client-ip=209.85.166.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-3d8020ba858so66438185ab.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 23:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749623055; x=1750227855; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qbog2jwuTz9DCLB0jUubllQdhYVAN+AQfO1Y2vWOezM=;
        b=gRh0O3AQ+vatfZUdj9xuxO6Ws9Y1f2PxpeP0a1yDJc0bzJOaom2EvItJ6X/2XEYYJY
         ylKnBjOeNxAKli1OuQTC1PMKlOhSEYyIEp5s5BET4uoVNqB5fMvOoNzmgaSLNmfekWeU
         cfv9Y40prMHc3fzm/pxyHxP8l/G6NNPtpUexa5O/eaEEZUg9qmF8troHNICBK0GpWmbM
         E4HisxRWWA+I+TqJJnZA5GT/J0kKY+5Gzm0Ef5c26J/HUqu+4ueZyrTKKXkklmoink/R
         iS38ol7RRybrrAxb1upnhkhMFjjiaHZU+F+hvHSAznz6d9PQrdEGeI5J0hef80Nea0K+
         q0rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749623055; x=1750227855;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qbog2jwuTz9DCLB0jUubllQdhYVAN+AQfO1Y2vWOezM=;
        b=I4VJ9LHzlOGSDsx2HTx29oYPauUj+Q1VDli8mAWlzk1iXp8iC8hSQUy/IO4YoIIN8c
         NY+5w09ihrLsQMpJcdl/sXh4JQMSKY1QvGw0PnME/m5D4lEShasIYBs728PVL0/B/hdJ
         OBWt0ey1pNrBT41cct24kntgF2bofkRLHVjSCgVSlf4d3zIkMn9T2rzYvmNCaIDvAsrc
         hmOfXigCOWUVkRMKLr6SHsP8MZ4feMYFTPuGUTk+7om/Sl4VEf3dxaUUwcSRbxVk+W/z
         gP4R60unuVI/tVLKWmtB5uYv9Ev1TQf76rNs5diZfpGinK9eiR/bcm77OJtwH0TNwpgP
         gdjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPBTvbV6Ro3lFwFmF8PcfqoXUW52qxUtMxql31grk3XXBA5e0Y+mXQeUafvmp7Kbn+gXppyS2SMfSe@vger.kernel.org
X-Gm-Message-State: AOJu0YypBlhu9Y5t4zn4ghTeGanCjmvoyFtX0zqA6kcS7Da+fByDkhLl
	FP3V1zrTgCsnr1hzju267Ez9JWx9wPCRQ4Ozc+ncwD/+MAQglEpugtjrCzlYz/taPaYYJDeNsa3
	8Bf7WkT0=
X-Gm-Gg: ASbGncv89sSxmfFThQMv+bGTggU7WZR/TvanWuM4iPrxDNDewL+A1fLSJ2imu99MTr1
	Z+oPsk6RotcgY/r0QSL+uGmCu7foFpxBJpRt7wLKH7hwtQC5wkCySTUqS3L7KmsXkpbWKaETz+G
	a08kpHmILu6WHQsUI9eN8EKLi8kY9MGYwAT9D0FM4V5xFEhMTxU66N1nucGzIr/I81RJntawCl7
	mBr+73DYHvHii2dz2oeB3mg/MnSMPN+Cj/voSKDWIbvlu96S4cr9so3nEsb6WCi7D1zM5kd2VTm
	nYB4Bq+hf56Gg1CD8jbfx4kaR1eUnLE6pATMPuemuAPrSgjCMPrdp+oD9o1qfbEGz4vWia2BuDr
	dXTGsLo0ROoMGgFUuKFYsASSdKA==
X-Google-Smtp-Source: AGHT+IGE45Nw6cMjQHpSv5lLGxPQof36xcySb3y/f0xaMoClmIInPuw4tRKfvCta688qmeWHkxBrmg==
X-Received: by 2002:a17:902:d2c6:b0:234:db06:ac0 with SMTP id d9443c01a7336-23641b16ccbmr26600515ad.45.1749623043547;
        Tue, 10 Jun 2025 23:24:03 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603092677sm79976295ad.64.2025.06.10.23.23.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 23:24:03 -0700 (PDT)
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
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 08/23] dt-bindings: clock: Add RPMI clock service controller bindings
Date: Wed, 11 Jun 2025 11:52:23 +0530
Message-ID: <20250611062238.636753-9-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250611062238.636753-1-apatel@ventanamicro.com>
References: <20250611062238.636753-1-apatel@ventanamicro.com>
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

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
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


