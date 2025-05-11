Return-Path: <devicetree+bounces-175997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD24AB28A5
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 15:42:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BECF51884412
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 13:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84567257451;
	Sun, 11 May 2025 13:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="WynOEITZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4A12571D4
	for <devicetree@vger.kernel.org>; Sun, 11 May 2025 13:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746970874; cv=none; b=osGLUxcv9cZ+HsKg4136/0mp4Yjrz+Dl/xgXbxLd8SXM/xziau0efQduz7cMRedTOQlX/RMBfvtxoyr3nLRVXGSQHE62+Cx9fNIMIiE0Vy5VjMNpL6hwRvcUssoE5O6VqcHT8mJZNU9CjRXkIkBx1nAgyJUEoIEVbjWnAVhBNTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746970874; c=relaxed/simple;
	bh=Ex+H6kUov6djH3C9rKVRJ9dQnhJuv3Xa/XrHZBJXO04=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IhQ4cYiN8QTVagZ4rkjKfg4dr1x9EpIc+y8ril2Ylh8SPE3j1zKGbdf46Py/TTIbPMC3qNUAo5QiPMWxIsotoj0aSEnxqceIOvur7UFsqCPmt1ZPkYrK9LBfw3I5tuk+ogvEGXqm3FwiHOCjwMmE8ve3FT8cJWi2goxq8y2HTKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=WynOEITZ; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b1fd59851baso2295353a12.0
        for <devicetree@vger.kernel.org>; Sun, 11 May 2025 06:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1746970872; x=1747575672; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RoI4ZQkvSe+gzPq+S2m1Njfoq5y1QbcsqoJbpZojWCQ=;
        b=WynOEITZV2hGDzpP+KNQbEFkFBBwPsgXpuL8ZmgxkWqrDcd6aZSuMUyfFRpAqGZnRX
         qM0V958zLYZ1jYFkP/4N/C4ZtKFmwMDwdrkd4KgIXYpyqpVuOFh6hKwhGIWd0Xa5ZCpJ
         Ul03BCu0826Xh26GzVYWve8HI1Iwgoy6EWtM9ImOug3b3jhYYii6oMhxWPHqg2IakfxK
         TZJe5Ht/MgQPl7Nnv2oq/NyMiyRxwgfE2WsQAM6jerwQLyrz+FXeQUoCSeZML4o7J2fH
         k9oObciO9USl+cUZ9BBdTtxw44ZXaDaMXo8bjr1vldTKPvfIsg+xUuL1zjMch6r6l9pu
         qzOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746970872; x=1747575672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RoI4ZQkvSe+gzPq+S2m1Njfoq5y1QbcsqoJbpZojWCQ=;
        b=n9G45Fgttfi+824ucnvIAkP7XWhVe6MFpGnka7HkuaFYr5uE+dWIQbQQbr1BtVqqgz
         LBSodq0RxCg5JF1BMow+ih386ivzaxu64pjq6vjl8PzOTxO2I06v/vh7xh0v/zwuLHU/
         HrumZPDO/QUr8XIT083GQws3BHFOPNu9qSFAA+fxQS6vT6iQfVlsrF9YIiJBGKimJH2g
         qb2nXD5933E80P1eIMNsQ96oP8dKRBDKV6CvTzrxdddljWCism+qqMD7qzQzQ7AKuMtC
         huiZZWcat9nbIReu6mXxbcpdtdb9DKk9NVYlgHPMVF6KGuLdxE4cNU5GlSQuS/9VfSGN
         rlzA==
X-Forwarded-Encrypted: i=1; AJvYcCWZEaTJa/BIWx7+FvHF3nWdPZj43M1nqbYeusEEUjBd1qobaAIc3FDNXoIkZ0P6Sq1NZuzpeKfMhfLt@vger.kernel.org
X-Gm-Message-State: AOJu0YzpANwh1RfqnXvCFKBKxNuH37PMyLzUC057Ljc+8Sy3a2iUMLcg
	Ab29pJJy1E4V9OtuLQJ3yfV4KMaYN+7SSNeXd7h+VZ88myDrY+yUCrSkMvZx4UI=
X-Gm-Gg: ASbGncuhxFBudYb9NnT/pg19QLWOyDGlWlV9gF1vczRM9c8/xYdMolt5JBSzTAIvpSY
	CKUHMxrluBMdU5+vM6J1+Bpvz/uNt5SUbWHbw08jS8/YbMZuyrTLmzN3/JIYY1H/2W2u19Ed6iQ
	0JDiNdGnz373LwyBJ2PibreP29KAYViW/z+ubANc9MFy3FnwHNNccY0LFr24grgTUObdhvl4JDg
	dEmFL2y/HBdpN5ZEhBR8G0nExL/Y5yDtQ8z340SEx7vUsCn4uDypXqcRNEsYCvPRuBPn3KRNfM9
	A2V68I5DuFCrCVO1D7dHIJx94FM0e8fVur11JaYq2YWv7hgU9lpukPOrPK8Ilz9coObVJJe8VPe
	MrnzvqYGXt7VfoA==
X-Google-Smtp-Source: AGHT+IFOsC3u7BRod28w2sEoeDfkPdrCH+VUf8yCcNu+XE6UmNmhrKz2V4ln4eo8Qilt/cRL+1dLxQ==
X-Received: by 2002:a17:902:e94d:b0:224:f12:3735 with SMTP id d9443c01a7336-22fc8b7c82amr158337005ad.31.1746970871937;
        Sun, 11 May 2025 06:41:11 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.17.86])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc754785bsm46665805ad.20.2025.05.11.06.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 May 2025 06:41:11 -0700 (PDT)
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
Subject: [PATCH v3 08/23] dt-bindings: clock: Add RPMI clock service message proxy bindings
Date: Sun, 11 May 2025 19:09:24 +0530
Message-ID: <20250511133939.801777-9-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250511133939.801777-1-apatel@ventanamicro.com>
References: <20250511133939.801777-1-apatel@ventanamicro.com>
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

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../bindings/clock/riscv,rpmi-mpxy-clock.yaml | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/riscv,rpmi-mpxy-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/riscv,rpmi-mpxy-clock.yaml b/Documentation/devicetree/bindings/clock/riscv,rpmi-mpxy-clock.yaml
new file mode 100644
index 000000000000..39db52de86b3
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
+  [1] RISC-V Platform Management Interface (RPMI)
+      https://github.com/riscv-non-isa/riscv-rpmi/releases
+
+  [2] RISC-V Supervisor Binary Interface (SBI)
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


