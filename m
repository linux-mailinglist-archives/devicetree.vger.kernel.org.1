Return-Path: <devicetree+bounces-184590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAA1AD4B8A
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 08:25:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14122179982
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 06:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 330C322D7B5;
	Wed, 11 Jun 2025 06:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="YhNIoPCH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9154B22D4EB
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 06:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749623073; cv=none; b=n4QTOACZOPoG3L+fiE8OcP29sntHRbm7fjyyFYob13BhYpGk+w3/pcthUBBaPEOthpEe7lVoduU+o2JqXZx0w7ynEeKILqhdky2uADQgB4KbG14/BTX4Djerp1GE2LIj8TzAirc3WNsoQrxsUpLaUA1qIl8d2Ng7qCumw+LwHTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749623073; c=relaxed/simple;
	bh=8kvFLEv/hykXIxvvHlFxYncEhD8VC0PQqlwZgaO68IE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gJx71WCNYhAXwNMINmNbx31v0vhCAYvpWpm3rJZXhwszeSYihJb/MGl+cEZsi4X+ALrvtqTRhINazCCiNBWR5iHEIerfiHv2pQP6qqHZPlf8CgCP+ZyypmBLyyjGgOM1eWbuD4MqAi434Mcwc7ntJ055NLGefqB/axKduaCBfj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=YhNIoPCH; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-234fcadde3eso73732755ad.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 23:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749623071; x=1750227871; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pIz85jrszx9X2n7VJMwt6ECwmZMzZVLMduOipCTmFkU=;
        b=YhNIoPCHI27jgGe0L83ONZEY8nSfvRjg9rbB1JWZWWQaSYBRDlqfxpJx2DyCSNg2lI
         XoWhPSMqxljJH9S4ednZbFc2yBBNKJVm/flB34ny8PvalTMQ7mwMLJPToFhMzL4yncnY
         vcg70HtoQRuQyXck1ZkiV9OG+V/F+Kc9yomw4Ays4sBVlnBTNsfKaHwmeWzaCBenu7+H
         7JGB7w633l+hNpaR9udMRG9MStAtn66IAKGsAq7LDTu4hiJiNctfsKoE0x+gh+hlaRrm
         EoeppGYpsvZcdB0m2KYxzJbfpVTQSgcScSeXcVMCZg/wRvsgA5Ynml5DDrWxrUIqx5/l
         tnfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749623071; x=1750227871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pIz85jrszx9X2n7VJMwt6ECwmZMzZVLMduOipCTmFkU=;
        b=RnZ9SD7OrQTKesq/GcHYeJFRdCz83hs7gClOVCz/q7zohVOKxeEyjDCgr3HNXrw2hH
         0g/68g5hsHQrRIkPMQ+p7YJyDxl/j8boBAezzYesVwM/PyN1m0fegEPfJ4l1DPCWqi0U
         t/laPflczpM7xC2S/0AtHWcngjNKU2DsnuvwC83P9SgWShqT0hGFqREWuL3klRp2XW6R
         h7LdN4+GHSY5BwLsFx55tvqcXncAK3B38bU76q1IEpzBOrEWwpDdToIR3ni2xV59u+7Q
         pNSUSvogXh5tbAz5PEOWt6RH4CtuD6ZzVbX/Jx6xLsWMonIonUcIi3itotV6xjCgcByl
         ToyQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7Gs9oOu6a3UhSEHIGMerRxAYhlAsLutvSqJtgGkWvcvjXXtVruuqkR5K1lYif7OVYXPvhcnDyaidn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv1RqXP0O773e/8sFT7HB23s55duO3kbiz4EvFz3x2kB/Z1/H1
	eauOoaib7XcGcrV7F/2v4VdQrgEYkMdf03zeSMMkblloecrunP6cDOtaj58CsYy0ZBM=
X-Gm-Gg: ASbGnctn+TSxuCd5x/jvm+uQggEwJYlIstHYFjp+RwJGWrea/5ai17g2uVFPKCEtl/N
	kUh/k2bVDQERWWUlmTJuiIhrlopymmxKyaI2j15rhifye7TgFACSoFCjs4TIbJkVcDepAn/bJPO
	3SH02ODnChEBELen25LtLkyKIGrwxNZfdsFICdDeosSI0oPCwAzyCclYyU8ua6lXUw810U670qn
	35MBNCG6rG0g7GnJ9gNzz0ZO+MBcgg+241xLzU3rppS+NzCqNoAdt6pnwMGsmNSQyREqGZ7a4VL
	IEIy8rrsp3fVUWpXfOnv+WMZ8WEHv2TPKYj6k2L8W4B3Oi5EL3E1/TpnG862ubRT5EVTAP60wcg
	KWSw4bTN8DcHgfvB6IrEuzNub1J0T4Bkv0GkE
X-Google-Smtp-Source: AGHT+IHC5ty5QP/q1J3Y57ZfLhayT8WeAP8B2wlbdhm3ivVDvErbI2rY6NWs1ziwWXlteWWsGN8o0g==
X-Received: by 2002:a17:903:41cb:b0:235:efbb:953c with SMTP id d9443c01a7336-23641a9a43bmr26770115ad.13.1749623070681;
        Tue, 10 Jun 2025 23:24:30 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603092677sm79976295ad.64.2025.06.10.23.24.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 23:24:30 -0700 (PDT)
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
	Atish Patra <atishp@rivosinc.com>
Subject: [PATCH v5 11/23] dt-bindings: Add RPMI system MSI interrupt controller bindings
Date: Wed, 11 Jun 2025 11:52:26 +0530
Message-ID: <20250611062238.636753-12-apatel@ventanamicro.com>
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

Add device tree bindings for the RPMI system MSI service group
based interrupt controller for the supervisor software.

The RPMI system MSI service group is defined by the RISC-V
platform management interface (RPMI) specification.

Reviewed-by: Atish Patra <atishp@rivosinc.com>
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


