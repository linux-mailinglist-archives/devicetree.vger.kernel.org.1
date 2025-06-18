Return-Path: <devicetree+bounces-187108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A40ADEBC4
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 14:22:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95FDC1738F4
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41F532EAB83;
	Wed, 18 Jun 2025 12:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="jj1XWjsO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BC3D2EAB7A
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750248951; cv=none; b=T11u86DTvCcnKoR1aI3U8Rx9CqALK239vRm5tEjFGlWr+3Wm9bBPcOeMoKy/PxKXRgCfGZT1GWe3AjVM9D1k6ZMpF4rXhKU6eEypRkhw/qNSjWIbQYmC/Pz2S0occq2bec6w6tMoHxIkOk0TAbB51rgJq19tXQCNnlvtkilUcj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750248951; c=relaxed/simple;
	bh=vvd5aEr1EHa2kYCEzZk7/ahZeLh22JQayJGJfQ0Amwk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kfOs+E0PWMMoxml7+pRK0h3a+CLFBllVa5bRGeW5Dqa4alrzSzlNocoHTeqWFI4KPctEbrvEXEfTXoBVbUcRLhTMn9Xf+FGMX7CL/9P5wIykh4mgRSUKqWGTbV2Gg6nUzxxMc1+CvMXbIPmo0PuxvA8IMnylV13UUyc4e33bvrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=jj1XWjsO; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-747e41d5469so7171870b3a.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 05:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1750248949; x=1750853749; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XIoG0/2CSPJ7QI1BAwRn3+gvtI7NC6tH67IoLVRWsu8=;
        b=jj1XWjsObftt8ntveRiOwVOvqBJNSoS3uzmLTGuBks0NxgcuZy/FhSkLdrKVeQn7kE
         XcA9mK9cvHF2kgze5TC64In0EToqQbmLlw0i0Fdol0RA9GFe7ud45C2ZjG4oZoofXJIT
         XSriXI/SJMOzT0LK2VKx4ykl7/Rl4qRbf4C8eQb1VnP1qRVgpLgS5KYeyjD5vQkvxmxp
         BbcttEKV8UFe/8ep8lBJyqlE5xsoR7qe2rN0gfuwEKzxDaRJwHI/K4dbfL+DQSxUyGsx
         6bKb5VPsuwYiniq1ByaKCEi8vqtMHNiqH+aYWKAVsgFFYEBlv1aZwDYY4HPEhknHMvAP
         GGxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750248949; x=1750853749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XIoG0/2CSPJ7QI1BAwRn3+gvtI7NC6tH67IoLVRWsu8=;
        b=Z3h8QR/f/Mc3IxNkM46Lil1Ui9BUQTADMsIte1KJ+G9LF3Ek2DFeAR+B2Ykmx3bN5m
         zaxku7R8CV1Lr+3ykfzBeswCMfPQjmSVr55nZIKH1BWhzzd8llWkMnxcGmwm3GwE57T6
         NROY4QpNkYkRKPgy0mpize/bERPxeYw1yTjd16bqld5Ing4SDOCicamPlFacJRNDXB/I
         L09cHSuJHAS5fvqcdP4nrEWERa6F4DLTZq8do/noadui9t0l0VIyxbDD+KRKh14ikuCL
         /8d1Zv6k61SpHcY6nLAexJl07/wJu2RqUDW45xa0CHY3Lq3LOSHXC3I1abi6/Uit/cih
         mdNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbCsF06uwvwZEbYUfvxfEScuYZDTzguPknkIuboz/W42RsEOdzZrhaF5nHz0RPk7ieGqyIL8BX2nqM@vger.kernel.org
X-Gm-Message-State: AOJu0YxWnNM5PqLDwI1Q/PCddTPl+WFVTGdFdDMfERLSdDwkLx3sZQmZ
	I2SkwPSsRybQcGJ/akODXvOtvEhC4LuzvftxaGwxl09kDt/uaE1Vqe4GWPBC8xV9nT0=
X-Gm-Gg: ASbGncv8gEwwPwng+aWnbt9CQ5b2RnHtycbdp3CXqcwmxqvhUvnQZPj2b0IuoYRC2Ok
	+qFM7u5ZUTjgD3Rsv5RnNyGX+b2FZ3s+JD/0uekjaCjSYSzabg/4x3KMZE9lrijL8RwjWTKz6lp
	7bCR9bcYK+mdSkzltLnJxvMkbjmDknWsNgeqZ50HVy2JksjPBEfUo3QATcM7oRTbk3thYo51M3t
	fn3wz+C9n9HeZno1meBeMRfoWFfioSb/t/SBMw5gnerheJtFpBaYd/rimrIz26MuB9Y/chlePZN
	tp+tt7/Ni8myrJX1spJOL0EdJdfp+9w3muZoSGHwt1u36HzR+15ftVgyiN+wDTMQNsD6vmbtr9C
	n96rvWGlmnato/sF11g==
X-Google-Smtp-Source: AGHT+IHxs4vjlsnXTSH4C1JU0OK5uY0YpaUonPTvMCQRhAQ03vPs2MAjvWgsEbCbaT+xabScrZbGxQ==
X-Received: by 2002:a05:6a00:9093:b0:748:de24:1ad5 with SMTP id d2e1a72fcca58-748de241b48mr6070569b3a.11.1750248948709;
        Wed, 18 Jun 2025 05:15:48 -0700 (PDT)
Received: from localhost.localdomain ([122.171.23.44])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900d7e0asm11201177b3a.174.2025.06.18.05.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 05:15:48 -0700 (PDT)
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
Subject: [PATCH v6 11/23] dt-bindings: Add RPMI system MSI interrupt controller bindings
Date: Wed, 18 Jun 2025 17:43:46 +0530
Message-ID: <20250618121358.503781-12-apatel@ventanamicro.com>
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


