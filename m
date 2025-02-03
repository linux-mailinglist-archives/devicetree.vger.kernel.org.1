Return-Path: <devicetree+bounces-142423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8F0A254E7
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:52:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64A393A7EC5
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A5E2066CB;
	Mon,  3 Feb 2025 08:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="UePnpHCJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF61202C40
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738572688; cv=none; b=EklZAQHZrhaV8Q3uXuXx/KfqeKUwVsKp3uwZpVJPzde0WhvKlRwlMTZDe+clzj0SmNWi6PfLzhOCtEslkjGb92KRjd3Fz0cX2m5Bb99FEuN7xjbeBDyix4qeRtlrkEkeNq1FF3z8JmRazKooCMYvC7maGcMFjXns4+T2WPPzdAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738572688; c=relaxed/simple;
	bh=jXo7IkWXMmnQanNQDO6EVHZ2aM7G0ET88p0IIgenlSc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ICE7rcCvTuPsqruQacvof+2YAhJq7XPr0gRvMKT34yzULBTjtf1LjRJFGZTNdGCVt9bYIjJG0gsqmlWiwxfM+pc/eZTFzL6tkHZ0Ks2Nwajm/Bk2/u1S4t3qnrbVYoa1mZGU2npfLBYq7tv/xcheG1627ARYk/hw335kob2iL+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=UePnpHCJ; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-467b086e0easo17818891cf.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 00:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1738572685; x=1739177485; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xvjolPh9gzwNtAL7PAOP6t0zOgR6ztGKXQcTpBeekWw=;
        b=UePnpHCJpTMtctB4TlIhrd3K6JvkmYBWEE081Lli4mRaZO9oB6inJiND4HsEH78wEW
         itW+Phg7unlOGaMP10zOyWXAF7LGG8rVoGmYLHUO0Ok20bymp/YjWrvdACHOK2cFzCDD
         DnRECR1GHBY5nRkxSRPh9D5aSIMK7Q6xcGjlqGVOrhbZ8ZwKyxNa1S788otNI3QgbLzR
         j3Vs4n59Oz3ztxRSvLMX0KM9ndUWAjZ0/AqhJV7kgXjRruy4g6JaUw2yw3ET87LcQMOL
         +Olt/5kQlStFClO2mMQAcMn5ZXDtdIbVTKcEkjbjA41QHyJ8j4sPIZ7yhGi00wntLk+Q
         93aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738572685; x=1739177485;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xvjolPh9gzwNtAL7PAOP6t0zOgR6ztGKXQcTpBeekWw=;
        b=gatqpagUXi176ITvMdNK2OrwhVlHsUCi1nvqBwEZjinLvqYEENf1/Jx7XHbVWsHah+
         V3GSg0nHLdgxuyLDDt4awXU5SDRy31EgOslSzeGHbt4oOjMKkny+NinFyHY5S2uCOg/X
         bi2rvhz8gNN0Q7pndoZJDF4U2CDQc/Uo46dI2lA+1V1sdoGheqM1ZRPzWBto1izAlZ8Y
         QWhnfac9DsliibW5aCGyERnhpNMjNjRxHlDM9fO/3frurfLA2XB4FAMejq6UsFq5GEfo
         l+4/N7XoCFwXeA+6BkT8xKAv3dL4K08S8kc47o5vngGGSggXJy/5o37S+z6+3I6p0LvI
         zNVw==
X-Forwarded-Encrypted: i=1; AJvYcCVnN76v6jrGN0lSMmprUqHhXE9qH15ClF71QTIUo8t+HQOaMduj5LX7oTi02q+LFoyUPzohqg7iRP1X@vger.kernel.org
X-Gm-Message-State: AOJu0YyEnpyrJVSWYwYWKxk6EIBFHvxqM/I9e24O3FyeLhhAM1oAizoX
	Ey6x0Uj+9qPbvMyisTeCToiVUIbY3vHqNnti0wA62W9sk9TFa04qBc6nHpXzMsM=
X-Gm-Gg: ASbGnctphiIyI0zKII09lu/8n21pzVnXi7AK8F2edRk31wmBGAFa2CT+cZXa3vuVdB3
	WLQqzcRnQ0ySVyVX9wi6x4VpWQSgxFz8mxPK0UitdOJAmsDPjWj2fR5oRHfLGjXRHb8JjShzfKI
	XMNO2ld5Tl8ujn5ASQ9B6/Ql8CudfbaP5v6R2L/yImAH3qxs48AlbHxzSH2FtsyQiHW4y19EGZ4
	NPyj8qXVqYpsP/h3i6duCGcWTjQ+GoRoqY5g9Z1Z7DWaqsfmbrT9tcbOvjlhj/t+s3waDgkoZ/x
	2u21LdkaR/uRLvHFNGI1/sWKGbVLv6nqR9p51SNMnb/SoZYcnJc8Ves=
X-Google-Smtp-Source: AGHT+IFPm/vGjoafGFVBb0pWO9IDvnrcujPXX6jDysAgsWknrhSPZ6VlgmiZ8V/8drmHUDea6Xx6YA==
X-Received: by 2002:ac8:59d0:0:b0:467:76cc:622d with SMTP id d75a77b69052e-46fd0a13014mr330274181cf.11.1738572685403;
        Mon, 03 Feb 2025 00:51:25 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46fdf0e3089sm47657911cf.46.2025.02.03.00.51.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 00:51:24 -0800 (PST)
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
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [RFC PATCH v2 10/17] dt-bindings: interrupt-controller: Add bindings for RISC-V RPMI system MSI
Date: Mon,  3 Feb 2025 14:18:59 +0530
Message-ID: <20250203084906.681418-11-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250203084906.681418-1-apatel@ventanamicro.com>
References: <20250203084906.681418-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the system MSI service group based interrupt
controller defined by the RISC-V platform management interface (RPMI)
specification.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../riscv,rpmi-system-msi.yaml                | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-system-msi.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-system-msi.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-system-msi.yaml
new file mode 100644
index 000000000000..e6c297e66c99
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-system-msi.yaml
@@ -0,0 +1,89 @@
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
+
+  ===========================================
+  References
+  ===========================================
+
+  [1] RISC-V Platform Management Interface (RPMI)
+      https://github.com/riscv-non-isa/riscv-rpmi/releases
+
+  [2] RISC-V Supervisor Binary Interface (SBI)
+      https://github.com/riscv-non-isa/riscv-sbi-doc/releases
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - description:
+          Intended for use by the SBI implementation in machine mode or
+          software in supervisor mode.
+        const: riscv,rpmi-system-msi
+
+      - description:
+          Intended for use by the SBI implementation in machine mode.
+        const: riscv,rpmi-mpxy-system-msi
+
+  mboxes:
+    maxItems: 1
+    description:
+      Mailbox channel of the underlying RPMI transport or SBI message proxy.
+
+  riscv,sbi-mpxy-channel-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The SBI MPXY channel id to be used for providing RPMI access to
+      the supervisor software. This property is mandatory when using
+      riscv,rpmi-mpxy-system-msi compatible string.
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
+    mpxy_mbox: sbi-mpxy-mbox {
+          compatible = "riscv,sbi-mpxy-mbox";
+          #mbox-cells = <2>;
+    };
+    rpmi_sysmsi_intc: interrupt-controller {
+        compatible = "riscv,rpmi-system-msi";
+        mboxes = <&mpxy_mbox 0x2000 0x0>;
+        msi-parent = <&imsic_slevel>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+    };
+...
-- 
2.43.0


