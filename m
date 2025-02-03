Return-Path: <devicetree+bounces-142421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FE8A254DB
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5222D1883064
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:51:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBF1B201268;
	Mon,  3 Feb 2025 08:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="XkLbecf4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133F11FECCF
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738572663; cv=none; b=dQkZZb7IglhNhGlBEqE1RILqVo6+X2DVffENWDYJE9wp2cERzYr28rWd5Z7VNZ6EJSq84o2Ctk39gzZzk/lJue5Qq6jcWlWwmnQ5ML9lme/QS52TekDsCzz3D4c4FmTNKCs41DmWRXDufqx4EEmQ6UIhK4er0Wbrt/UcyQ22U+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738572663; c=relaxed/simple;
	bh=PKCozwgCuABhJm3FGiso9S7XEa6OmbDF8ANr4JIaqWI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AqUEInwwvYXmycZYoJBxhEFDXiWq794JcxzYpJ08rFZxeVXJ5WOkGOcn44PlfgMxN0i3m+F33YA7RVY6/rjeFt7CtKDQ6Wzewx+alz2t0FchailKBEx4Qw/mRu4cB65TTOw88gCW0QFNCrVjKbpxp5hHcr+GueuCk2+yO9gXhrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=XkLbecf4; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4679ea3b13bso31592441cf.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 00:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1738572661; x=1739177461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uq5bgx7F73e7S2pMGqlkagc7SWpAwEk+Db7gTuqwgBU=;
        b=XkLbecf4xRPUphzZm9AErUDJM1oxk9IVUbqliV5/il4hwLs5PvcnduTGUlBsCR38a/
         BcHWG7XX6QE75WgCOYlJ1UmgFU9RGapQQHneIEltqp1RkIfGEtAL8MalPnEGUqJbab9l
         poN91SzCSiW7Z5LCBrNgfBNsXKqdd9mFGlDNkXUMoJVrH9KNoHZc68OkLXpC98H7EO/9
         VvWesxl45ve2eVWeEMjqWv3Zypi9ipcq6Pd2k/pIlRtsiJHx1PMlJevTnccBxoC2OmSS
         Cwq/PZqZ+In66K5OM+r2AI3h/wJNB4nlKA/4Kj1ANDJMoSx6HfBk264+BMgejAvxcRK8
         s6Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738572661; x=1739177461;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uq5bgx7F73e7S2pMGqlkagc7SWpAwEk+Db7gTuqwgBU=;
        b=MRm1YQh0Ytz6ZGAgd7YO3nBe0YQlnBQNIdEpN9wk5Gj+XTlTKFCb74eNBIpiVb5/83
         gYaJl4/mreM6PMnzlMehS3BL9FVz7NHEMbD+KeZc/fSB63SIxy6a1I0q5KHsZCSfNwz9
         WbQTippVhH4yIa82S40xE25Vu+UexI8SLE2EAIrWzq29EWWAa//M0mfeHmdbe9tTnNbm
         995TYPnNUQLg4Oo7RAhLTDNLH5VflNLpyPdckZh30M9MCGAgUt1vj0bTzhOQslGu+j9r
         /KsGNtcGvrRLv5Tt7XWwzHl/RmnGzLIKuxkHS0ZKYZuWOM4PONOsPKT5R8isaMJLtHST
         lk9A==
X-Forwarded-Encrypted: i=1; AJvYcCW3h2T60hk9i8vdghYM1SFLEtDlNuk22HhIagwvuaIcLUDZFVY7FpOZZ+wM6fOKIPuF3ca967RNrKqP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+VnTfp30NcvgxvdpIsmZxEzwPc0GW79cIPv5fPVEbbFT2sKEP
	sZ8z1r9NNKfeFIgBdivJ7A6BtEWuz6c6gBfqgI7p9fVhjbZ1yGn9nEHaBhOpOxo=
X-Gm-Gg: ASbGncudTc4TlW8Wkw776hneoyiCluLwITdwbpSbq2Jw1ThjRQlOM8S9GU3L53se+P/
	w96ZM1h5NwymSuVTptqOW2TheCcrBDbH9jpt9Cr8pjz315h/TLamqgmxiTb2w3OIts8CdP8tYAW
	DdqxQ2BB8G3G51WKmHT3L2i33tk9P52/pZCYeefKQDGP+fJUrhA3g7FAloYm1paPSqhzWxhWsrK
	YOkyriZzlwOju8v5ymA9qsVcAEU6eiuO/T3hLPm7MKIlK6mpRXcgLspYfbud/3b109S9lF+6nCU
	jNCdttrjdD4LRKimWAEFg6wRPISpjwQIwdrUK5YHE3PMjB+KaWIiScc=
X-Google-Smtp-Source: AGHT+IHKSWjJnml9P2k8xe3WTZy7gZVOr3y2y3l5W1mAhUBR6IAIbnAkFVzcudNqB834buJx1oU/1w==
X-Received: by 2002:ac8:7d92:0:b0:45d:8513:f29a with SMTP id d75a77b69052e-46fd09e25c1mr202526631cf.9.1738572660838;
        Mon, 03 Feb 2025 00:51:00 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46fdf0e3089sm47657911cf.46.2025.02.03.00.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 00:51:00 -0800 (PST)
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
Subject: [RFC PATCH v2 08/17] dt-bindings: clock: Add bindings for RISC-V RPMI clock service group
Date: Mon,  3 Feb 2025 14:18:57 +0530
Message-ID: <20250203084906.681418-9-apatel@ventanamicro.com>
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

Add device tree bindings for the clock service group defined by the
RISC-V platform management interface (RPMI) specification.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../bindings/clock/riscv,rpmi-clock.yaml      | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml b/Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml
new file mode 100644
index 000000000000..c08491c04926
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml
@@ -0,0 +1,77 @@
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
+  system clocks managed by a platform microcontroller.
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
+properties:
+  compatible:
+    oneOf:
+      - description:
+          Intended for use by the SBI implementation in machine mode or
+          software in supervisor mode.
+        const: riscv,rpmi-clock
+
+      - description:
+          Intended for use by the SBI implementation in machine mode.
+        const: riscv,rpmi-mpxy-clock
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
+      riscv,rpmi-mpxy-clock compatible string.
+
+  "#clock-cells":
+    const: 1
+    description:
+      This property is mandatory when using riscv,rpmi-clock compatible string.
+
+required:
+  - compatible
+  - mboxes
+
+additionalProperties: false
+
+examples:
+  - |
+    mpxy_mbox: sbi-mpxy-mbox {
+          compatible = "riscv,sbi-mpxy-mbox";
+          #mbox-cells = <2>;
+    };
+    rpmi-clk {
+        compatible = "riscv,rpmi-clock";
+        mboxes = <&mpxy_mbox 0x1000 0x0>;
+        #clock-cells = <1>;
+    };
+...
-- 
2.43.0


