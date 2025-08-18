Return-Path: <devicetree+bounces-205576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBB6B297E3
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 06:13:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 245F3189CF36
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 04:12:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EC64265CD0;
	Mon, 18 Aug 2025 04:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="H+Nk7L+e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03B3263F4A
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 04:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755490284; cv=none; b=emGweoF4LZgdnAz9Iw9zfKCtLlQ9gBaOqaz7IpRs99LpFeK/UYasfGiEwsQ3eY8tC2LAHPg0CTKFd/Xy8lPeMtI0ozcX3Q7DZK9JVxL9xhGw2F9Z91wy1NPHdi/gHLQpOJWapSeC37AeUpmNtT8QVCKuRkHmmPzpX9rk/hILuMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755490284; c=relaxed/simple;
	bh=gqZpMXPd6DL/+kfXUibwUL8SSmPMehps7IgssTY7RG4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j2HLx99j0Trfy7xkSAXVHj5J//wMwTpwjh9ogxr8rd2GJosSBei4L9bgIKU64XTeYAAD/r2CYEQcbI2bc/vqf6gWq7Gnor/ZE0z+CsJqBtWU5v029lrqNpu+jOeiJrzAIpWmDVamxeAL7N266HIGnK0KnOGDuNRTaERhpMnwafk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=H+Nk7L+e; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-32326793a85so2776450a91.1
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 21:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1755490282; x=1756095082; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zMRC5c9xXUgo6eKv4jcoCHH6TENqo9cqAPQxW1Kbofo=;
        b=H+Nk7L+efF8m2lrCt/Ho1n/pSQasXvNVn+SehJrrfZ7YJP0hDvMEa6bXigGlfI9qPk
         p/Q0lUa1JrKxvSC4Qu9fs31uoXGBiTlKyfIL0ENWm0dGhSSO+cv2ucdfudOl/payrQ6O
         sofAfu/h3mqB9+YXD10TCmZMkP4hEt4kqU87sCw2NNZpTXzz6tgRYHPHdZ4xp3mdgi1V
         zOQrAJJfZFxkYW+IVHdp6Nxw5cxKF/DRfPV3XxVi2/kjhXDGJWqT1VkvVk9Zmrc/3iHm
         EDDO+2f9Z3z8txPBYEnkHNPxA8z7A4uRP+a718Y6LtmiqO9cy46nxqgzqT/8RRG/4T9m
         lang==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755490282; x=1756095082;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zMRC5c9xXUgo6eKv4jcoCHH6TENqo9cqAPQxW1Kbofo=;
        b=kIs7+6x45D3vwjUM51eJIi1nCoiRI870z8mnysy/7eQl5QkT7BKD15tPCJ5oSXqyXE
         uKLG6d+i7XYxwfeySQ9KHp1SHSdbb9Oa/rOMhaIR0m9pespRhfVrnCg8U86JA8rPH3Z0
         P8UzFjEgXclxHUJJbXE9/+RGVd6PCAFDm19wossnSOI2c63cOQfHs9OWOVRp4zfCsKE9
         GJ6AMCMEbpjVbjjWVFpDlwMPoclxQy4C4NyIQZkzhPqQCRhkbTRZjESsndQrLj58HF9p
         iQlTbhodmmS21Beg3zaI1ykbmNSNCq2e2nJLq81PLdtCzFIvT5pRW/IdAV7TQTLiqBFs
         4ZcA==
X-Forwarded-Encrypted: i=1; AJvYcCXk6LYKeBlJC2E8IysISThGleMqQxUgLc+/IH/OYs4/SRMpfTSEtLhn0N4ifz3HAtekq4JtcniGxEpx@vger.kernel.org
X-Gm-Message-State: AOJu0YydvXiZ0Pi0COxp23yAWDVjFF3D2ZxguCBMlv4faN5K08oITkGx
	P+5H19Np91VrxPA2rQnHI4n2r2iU1GlGegqLBpR7q2/mwolmBKFpbBP+wheGXd8uIvc=
X-Gm-Gg: ASbGncsFaIFaZTK6bMu4BfuiJHalDVom3QxZva+Gk5NJp8UHeflTh4aNBzCCK9y3DTz
	KI1xocn6hU+lsnHq9mghkofbSynjC+8PTnOwVRsWGwJGhmYuMR1LSAhUVZM4gKPr0fTptZgtNeN
	LQ4irJdB7jRghZWtUSYxG5wB2FxpGbTfxwYY1W8YJFVBVV4A5e2ULBnvTWWnV+oZrD0ikmpQUaT
	aiW5IdD9VlBID6BrdUxStwl5sBOq+wrVNx5rpcjjzECudl1bQtQMHTt4qMjanQMlHa4GQ9qzi18
	KL5YsOYe5AyjXhutsWz1yPesFUwRaA537uqcd+/JDWMLCzFBrVmoYIESc84/xw/lxp7RUwmjkus
	vt0VwyTq48FtsewG/n5W1Y+EQ4jkkKDMkPlgpqo+rXdcZYCXKQW457g==
X-Google-Smtp-Source: AGHT+IHP6UbREeetpnCWOLmWDeaEVguVbF9ClSYn1V6am/aKBqluAMuYoaNtdrC+UjrhiXEkm5ie1w==
X-Received: by 2002:a17:90b:180d:b0:315:c77b:37d6 with SMTP id 98e67ed59e1d1-3234dc7ba5fmr10093522a91.23.1755490282031;
        Sun, 17 Aug 2025 21:11:22 -0700 (PDT)
Received: from localhost.localdomain ([122.171.17.53])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32343c70356sm6560972a91.25.2025.08.17.21.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 21:11:21 -0700 (PDT)
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
Subject: [PATCH v10 09/24] dt-bindings: clock: Add RPMI clock service controller bindings
Date: Mon, 18 Aug 2025 09:39:05 +0530
Message-ID: <20250818040920.272664-10-apatel@ventanamicro.com>
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


