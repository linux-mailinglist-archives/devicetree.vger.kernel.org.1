Return-Path: <devicetree+bounces-180291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B324AC3301
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 10:48:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 942FB3B91EB
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 08:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F37D1BD035;
	Sun, 25 May 2025 08:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="FPRoSdwJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C365118D656
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748162875; cv=none; b=R5RvqyVxwKhSmSD1eXNS9eEBGbEGkqUwFVjEl7fBKs+xVIW6dG4zk0ZWuedzzNRW3hSKqPMQEOh1VSh8S1bG+7+bpMmtI0CGDhqIKYa++ofL+/COecGClnJg0sgzSs2umzpZtzhbBqs5EkA0G/R+8gVkMMdgUhxfXrQU48f4Whc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748162875; c=relaxed/simple;
	bh=AfloaQsqNQYLyX5RmcBGspt+Vq12jXRiVwlGREexJFM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XGUeXPa+gtH6B/ZESFh9zXJW80lAkCP3PFeOLTZq5m4ar7z5RDW+FBN4j09rvDrw781e6uVW2e4/3EoXEpK1axMbc2KEnPr06L/ZKMHjCov5xV3H9EqlsuH7Ecte7xFAie5ADIIShi6cUydtJ4KS+deA68+FZOj4yygchkdwACg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=FPRoSdwJ; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7376dd56f8fso1321245b3a.2
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 01:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1748162872; x=1748767672; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wrq/ed0KxjpyuTfPVgQBHoRGk1JS2/KTrIUQ+VEc4ns=;
        b=FPRoSdwJ5XmYbM3lteFR72flPqhLCYTPAYGuzqinZYsPoJ5yu0PjkRKf3gVY350CqY
         oepAhdrteeTJxtYk2aPK4Qc065e7isKL7qIfqpIDEr/JqNXt64Id4JAxGU6UPx+3QqeU
         m+XbHrV4sL2jLG/G6nL6z03hG/2IoQhdG/YOBJmlC28GI7H5pDGkhMFFNighqgodi+fx
         puR1GXPjrx82vJVtAoDV4FhRIUPwyygOkOBDESjOtkHo9ZQHdE7FreUJ9QC+wBVp1yTq
         ZdgUQNrOz3gM/BPRFHSe12JIgVUqMI8MzujYcTgkYoEWPsRruBKaM7Hsgh/Nc9ciyjcL
         xMPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748162872; x=1748767672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wrq/ed0KxjpyuTfPVgQBHoRGk1JS2/KTrIUQ+VEc4ns=;
        b=SdyAawOPMdYbflHG6CnrAiB0cvUJYxRPOIybOTNo6ar2X4mTBV5lthmiJjD0/VGdV3
         licVFb+4bYGAef+bCSImia64fVg9WgBlSx7imQJgVrVjLK463GJFYUWXUslmN/Eh5xrU
         yAG7bYpML4LUMo2yJcyS9oG8xYyAyFRTJ/tQV3qbERQTmuyA/G2ohAd8GgM7J36xs/FP
         taTwGrONLgFR27GY85AqykzR53unw3IURdptLSNTBuduga6i8gfjUs2RxbNaHSWAE1DY
         H2eNNiNRyb31//rMJEagPYfk17hQkBSRTSLjfhkpV1nvrqbQGWXRlA8CjpHldXABTKTO
         sPPA==
X-Forwarded-Encrypted: i=1; AJvYcCXBVAzUrOvL/p5fnbICOmbo/7RGJ8wcyFbF9vrqK6AKO6A5nLqIlO5SYmvh/2kncOIBQ0URPfnC+F47@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ1S5yXD28ZYkIAKhxio4yYNCMHPMQ5pSmGpBUXAWdo/k4C4Xk
	GLAI4vWg0KKk8O7npo1qDjMv3Qa46cD2vhvvtuNn1eGSQDzs2au4b3kDRFgohXPE3PY=
X-Gm-Gg: ASbGnctoVm6cWz2ClO6tfEn7MMdDuWUhmu/tKGgeMsnb+X7z3M1LoNQMJt+hENOo0cd
	8x7fti9iGumTZvIBzXVsPaoxaaov7s39+mawo8mw3/rzGBPVRO2t/JWoPGvKGZa+Vaa03mE3+wA
	fUCusIh6dYRs3BHZLtReZd0Si/jawesFbr4+i/7Y0pzZDwcNfFZdLO33SVCY8wn93oq4peI7EuO
	8aQmIP81B8bFZ4/vN1XZLIyTKMHKshVX+jX0DywTau68Nl3UER8gB8L0Wo21EPUeRaZm3nNUJ3b
	Y2frQRDfMQ2DsJ8PDaSOArlfHt/v0tJe0jgKnlHPkSWrMnGYHHtAxL1799RH/2H2jCO806qQdbs
	YaVz6KIvf
X-Google-Smtp-Source: AGHT+IHKLRkxyGfdlCk8+5+RKFhUy+GVM25vCTnqPcFz4//nByaA4NGGAXm8aCo5Q9FTRRl96NH+BA==
X-Received: by 2002:a05:6a20:2d1f:b0:1ee:e24d:8fe3 with SMTP id adf61e73a8af0-2188c23fd7amr7909301637.10.1748162871787;
        Sun, 25 May 2025 01:47:51 -0700 (PDT)
Received: from localhost.localdomain ([122.171.22.180])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf6dd83sm15250627a12.18.2025.05.25.01.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 01:47:51 -0700 (PDT)
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
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v4 03/23] dt-bindings: mailbox: Add bindings for RISC-V SBI MPXY extension
Date: Sun, 25 May 2025 14:16:50 +0530
Message-ID: <20250525084710.1665648-4-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250525084710.1665648-1-apatel@ventanamicro.com>
References: <20250525084710.1665648-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the RISC-V SBI Message Proxy (MPXY)
extension as a mailbox controller.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../bindings/mailbox/riscv,sbi-mpxy-mbox.yaml | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml b/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml
new file mode 100644
index 000000000000..ad4c135e0510
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/riscv,sbi-mpxy-mbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V SBI Message Proxy (MPXY) extension based mailbox
+
+maintainers:
+  - Anup Patel <anup@brainfault.org>
+
+description: |
+  The RISC-V SBI Message Proxy (MPXY) extension [1] allows supervisor
+  software to send messages through the SBI implementation (M-mode
+  firmware or HS-mode hypervisor). The underlying message protocol
+  and message format used by the supervisor software could be some
+  other standard protocol compatible with the SBI MPXY extension
+  (such as RISC-V Platform Management Interface (RPMI) [2]).
+
+  ===========================================
+  References
+  ===========================================
+
+  [1] RISC-V Supervisor Binary Interface (SBI)
+      https://github.com/riscv-non-isa/riscv-sbi-doc/releases
+
+  [2] RISC-V Platform Management Interface (RPMI)
+      https://github.com/riscv-non-isa/riscv-rpmi/releases
+
+properties:
+  compatible:
+    const: riscv,sbi-mpxy-mbox
+
+  "#mbox-cells":
+    const: 2
+    description:
+      The first cell specifies channel_id of the SBI MPXY channel,
+      the second cell specifies MSG_PROT_ID of the SBI MPXY channel
+
+required:
+  - compatible
+  - "#mbox-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    mailbox {
+          compatible = "riscv,sbi-mpxy-mbox";
+          #mbox-cells = <2>;
+    };
-- 
2.43.0


