Return-Path: <devicetree+bounces-200140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6236B137DC
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:44:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4031160ADD
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4726C256C73;
	Mon, 28 Jul 2025 09:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="E6Y5UYCz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B96C254B03
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753695749; cv=none; b=C5QT3ikl1HK3n6ZrO2Ra9RIfUoayGkp1duwd2p4Q0KXMWVklrjHqSPUaPuhvrTLWkgyHgMS7jHaDJnnDS7yIZPigJuAAU5USfo/M56Ngms8vGWKhIzyt20/ElloCEpRooZlO8BH4hLLYumjZ7Y6qNDLWVBTYwx2cMifIKjDc3qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753695749; c=relaxed/simple;
	bh=gqZpMXPd6DL/+kfXUibwUL8SSmPMehps7IgssTY7RG4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XlZZu1slyM1dPwv7i5QgjJBVxmKkrKJ5BWyTTsGl3ohZQ+8BrYmSkwLXYeEhJT+G38RS9m/7aWX/iKXR7G52nPg9jf0oyBhjPAl4DOZFC2ma6gcqrDLaL9maDY1pd0PpkTRFvDxh+mnfjS3yYssS0CYm8WHfZ6lGPclJorLhmEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=E6Y5UYCz; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b31e0ead80eso3411283a12.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1753695747; x=1754300547; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zMRC5c9xXUgo6eKv4jcoCHH6TENqo9cqAPQxW1Kbofo=;
        b=E6Y5UYCzp5TdNTw9k5ohUabkOSgaOQGqHbabmoP9W8SOJCwO3tlKfVR1SBT0DKepYc
         j/yts+CxP4oShUgoaeKNNWWnmc5IXx9u/5ie0hTRQEfj2OuCrx/nqrTZhk2oDpBb7I+F
         r+PEd/I12YiaIizmK8PsWW+Hr+wO88Xu9dC+nw0dHauiuQVpa9mkRdM+D/OEiDUGCDYD
         mIooCLQUSrZhhh6pIJKf/ysMBx2f+rt7BHoN80SQy1v+rY9WMO6ip6A1O6DCI7Bl5wma
         1l3n/vijVx5sSPXMWE6+xXku4d+WXCvWA3VnW15ulJO3G3NDTOKLepHzlMMC9z3sWaMM
         x5Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753695747; x=1754300547;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zMRC5c9xXUgo6eKv4jcoCHH6TENqo9cqAPQxW1Kbofo=;
        b=hh15qMwqg0AydWx/LPZ6UcNwXoUzKjpuCnWqgtgzqnSXPjR/HJgSBB2eg3qRzQTELh
         lpoIeUR952lOphnja52iszib+MNuhAIbEOOwUVx3lzz1Vx5U0xp76+e9WY7O3gGXWGqo
         OHTDynBnruuy5uk8LFVdkDYNafIqHidkfN9YeRQ9Sq2AQr8dBUktvHq3CgwzVLysVLm+
         ppK1pzzG0jN89GIjPKxeig5U1jOtX4KnyspD06z48+F6gMNAUwQNZojtyCWnZDtU6UgZ
         lveBFucGwleoAaR+YYCDhdtJ8jauo2wHGSZ1fvKFf60Y2e0H3+uJBpKIZRSxj96KXD9k
         +gxw==
X-Forwarded-Encrypted: i=1; AJvYcCVlwslQOvGF5xWpWVkC5anofyeBc2sN+hlqZf2y9GffG1MwIL8XSaDezNC7+jc+nljvOEgtDH0v9/b0@vger.kernel.org
X-Gm-Message-State: AOJu0YyKoRuou5lbLTYJmTrOzaxY7k2EgWx51tzI1YFuTpD2mha+rsqL
	hJnrzEr/QZoCs1tO0kBjg3lVMYHhnnItQ7n+sc0fgXTY6kvXgxAQWRafEktG8yLJ74k=
X-Gm-Gg: ASbGnctUZfhTqRgf5d6OeSEfpSYzUq98XIsOw7Lzf6Z6UgRGzFpBUSauqAvREI8H+D6
	tdz5ocnX+4I9/3VYsrgESVXdexoFXs1Bz9Ml2G7lT/jmtruLSBaIN2UwTglEVu4ujb4vY6JEPns
	tWaI4hLi7XTLlIcPVJCCHMBzTCKYkTkGwEk8rhzVTdQrW25onue7EQqjp8Z5Ls3y+rIvmwwNeji
	JT4WR1Px8sXs8JMAE/6Rx37Bln61elHrJr2+O+b0z7hH27XyoRX+HJOLr+0pfx6X1XBGsf/xIiP
	FwLqjxTerVGBo1SkQ/srfIQO62UKnr6hzAJqSfePS5qx7J2nXgX9IRxUBMRulH9Jd3LipEgosyh
	40ZvHBJ0Tf+jehPNH0Vj5LdZSvg8zTDaXyuIeBwvUw8h84QpgbDFF0WpYKxNi
X-Google-Smtp-Source: AGHT+IET1sWMZD/6AnfrHKkMC7OglTaiVF3qSrY2in0HUadzd58C0Shm9ghMuxb6ibvRVRWuWVfN2w==
X-Received: by 2002:a17:90a:d2c3:b0:31e:d643:6cb9 with SMTP id 98e67ed59e1d1-31ed6436e56mr3137835a91.1.1753695746628;
        Mon, 28 Jul 2025 02:42:26 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.19.28])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e832fbf99sm5396230a91.1.2025.07.28.02.42.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 02:42:26 -0700 (PDT)
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
Subject: [PATCH v9 09/24] dt-bindings: clock: Add RPMI clock service controller bindings
Date: Mon, 28 Jul 2025 15:10:17 +0530
Message-ID: <20250728094032.63545-10-apatel@ventanamicro.com>
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


