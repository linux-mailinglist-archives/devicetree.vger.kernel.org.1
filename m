Return-Path: <devicetree+bounces-180299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 956ECAC331B
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 10:50:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A4C43B93EC
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 08:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E52AC1EF36C;
	Sun, 25 May 2025 08:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="feqzxes+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C1318A93C
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748162938; cv=none; b=KtwNpPEclZhsP2HrSCmNcEHbpzsZxDrPP13vayi6SUdmpIlcbRDw2KQggG5ClRhsT6i41PsMj48UlnVumvGI7NvTb8q4wtSOp/Yhominx9ZewI1O4DVizjHSe2Ca5tMiy5R4IEPNq8ZMBhw3uATbucqQ4PlSgTHdXXXrpDRrQZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748162938; c=relaxed/simple;
	bh=NxBFGj+cri1SvClLb1edobZ1wrGwRBkx4SOQ21bAQOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SlJ4Ul38fmIrN+6fHT3vidQ2aGpZGv5NPep7vBhyFt7OnY9VaMsqJfG9JepnxW8YCHxbjIFKGgU67xXwjWDOXLW303b14A3Gh13rCuDoytwCbfinkjKeNBWU1VQ+bzJ3IGkYrpEGvJ7oY6e8mLpjaU/Mr+4TK8oK6SqoPUWfBXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=feqzxes+; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7390d21bb1cso840027b3a.2
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 01:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1748162936; x=1748767736; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GNEVmZiv/q5DSw1yW2Dhni3TymNMhn7fmeMDnXK+LxM=;
        b=feqzxes+LuBQwf9b3rFUw7zGeO078jhBRY49tmUPu6zx4hkpUcRwr/nZ3F9uMIAfbg
         WpO80rakgTJ9LWn6UqjjQtLWt/hiKXLeKjkwAy5g5IigVTFtn5/B/b4BL0t/YjlfCmqA
         lrAuX0KTJaPTk9Etd5gYHtsE1V4Uniu9gOE8E/11r86VMZBRFtq4p9RksIr5NJ1r4ryM
         ZPZJeSzbSMWyFaa5Dxg/DnmbOpngXEJpR4dT4mEDz45ke8xC8jRjcWRtlTbd59gQptjf
         TyOx7Dyi9LxeDgkH8F6pbGN8a+9Gz9UXTgRq72lvJ5P65sXxWYZDASsf2iuC7VGl74xz
         Ok6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748162936; x=1748767736;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GNEVmZiv/q5DSw1yW2Dhni3TymNMhn7fmeMDnXK+LxM=;
        b=xKYrPlt+YJ2oUq9iCmNaJil9BdI5f0YjeNtdK16LAVaQJpSeMuXZ1d7uggDWL8ZEy4
         4CCzi7XxYqUTYeK0wAejhB3qjsw9Gdt1zKjJ3+PaJql5nDQ4uScXGVRVBw9Xi1MaCr0d
         Rcr03csrmexp0l1ib3NNNPMen6OB25VyE04zU45ibBfPg1UVnY7HTUkRP9b3jU32sP09
         XGNv4401KEdfeLJ5Nl/Ehm7G3kA2rsr6NwZ3lgp2SXutWeFLa2IIALiZBjPL9MqQVtem
         PrAIiVt1l4+ECEN5IGqFsaaqpMG9aNWkrrNUXhzi5b/xmO4GBUKB+CXauyArE4D8e3zS
         cNiQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3YT2OtxNf/IxiC1RUAGwVwjK0pBtGeu1yVc/cPb8QnGj/AFY++Z8wXjqiXJ4DZO101z6SRQ3AEsUI@vger.kernel.org
X-Gm-Message-State: AOJu0YwVZilTs9rTs5TBgyy5QokBM1qigrQ0OJdkEj7AUhlVD1o0p5Ce
	1OXshd0sNJe5vVP8KtprIcDxzNIFZyFgzzgEeh9cSXYCRACEjPptNs4edeDy3pkVlcU=
X-Gm-Gg: ASbGncvJue0zkndbqK+RbDih49Fs8eNAwDxHpus6MKW5gBSxg1eAw26uniKspmW9Jdv
	8nCbqlCdLVjuPwcUAfEk3oX1mLCZzGMAkDKJHt5mPGaG02gFOEf7syLIICBXmjQ+h6LcCcQ1z/7
	BoYZL7lQlRVVaTiEc8P2p8bVDAUj/5sjiZG9LE5VRs1e0CgnshYJSmhOn9hE8FfQUJZNnxBFn/t
	pIqRmJz7+qRzV3UkW5VkilxGrLHe4azoHb5iaPjnpe9AC2QqgjmauAVXp6rGAgDhOi6PlZFF+W6
	E0BHQKIZgFy/AZPtc8kRC+BFlx85eZ5J8KvY2QQHqvQrw1uCPxs2SAbzDicEuc3UFBG6TFNGjQG
	9O15qUXv/
X-Google-Smtp-Source: AGHT+IEiTXrjYcEqxEmC6dICJ+WKkYuwNtth0DfdUxY1SK4VyNZrGaohTDwGZlxxDYkeIS2os+CWiA==
X-Received: by 2002:a05:6a20:d486:b0:216:67e:bf09 with SMTP id adf61e73a8af0-2188c29943emr8460905637.22.1748162936519;
        Sun, 25 May 2025 01:48:56 -0700 (PDT)
Received: from localhost.localdomain ([122.171.22.180])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf6dd83sm15250627a12.18.2025.05.25.01.48.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 01:48:56 -0700 (PDT)
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
Subject: [PATCH v4 11/23] dt-bindings: Add RPMI system MSI message proxy bindings
Date: Sun, 25 May 2025 14:16:58 +0530
Message-ID: <20250525084710.1665648-12-apatel@ventanamicro.com>
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

Add device tree bindings for the RPMI system MSI service group
based message proxy implemented by the SBI implementation (machine
mode firmware or hypervisor).

The RPMI system MSI service group is defined by the RISC-V
platform management interface (RPMI) specification.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../riscv,rpmi-mpxy-system-msi.yaml           | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml
new file mode 100644
index 000000000000..26dd13731350
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V RPMI system MSI service group based message proxy
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
+  The SBI implementation machine mode firmware or hypervisor) can
+  implement an SBI MPXY channel to allow RPMI system MSI service
+  group access to the supervisor software.
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
+    const: riscv,rpmi-mpxy-system-msi
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
+    interrupt-controller {
+        compatible = "riscv,rpmi-mpxy-system-msi";
+        mboxes = <&rpmi_shmem_mbox 0x2>;
+        riscv,sbi-mpxy-channel-id = <0x2000>;
+    };
+...
-- 
2.43.0


