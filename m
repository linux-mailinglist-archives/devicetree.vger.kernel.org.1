Return-Path: <devicetree+bounces-184581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 829C4AD4B74
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 08:23:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB4E23A5DC9
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 06:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24F1B22CBF9;
	Wed, 11 Jun 2025 06:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="lJFyikr6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D59C22AE7C
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 06:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749622994; cv=none; b=q/neJJJgOxZgg4w0QLsq92ewASrXayRppJurke3awQ7YfSArxJvLjXMUg9aKQtKwueJE9C37QGLAd5/Eo5YdxBbS2v3UJxVUTyimMHvVRMlaOIglwlNsBiNCAVLcOZxRSVMp0MhSTG0wHGrCmSPUMWU5bhpDmPt7k+AVzPUrGH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749622994; c=relaxed/simple;
	bh=kRcGg70RKkFO1mUlmdFiMNEl7ognGFDZDE0zZUh7mcs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QwlIXCoucFPqo6wdznwO7W8892Zl7VWBlqcjmoZr7LPR8F0yDniRHoBh4S9GZUkWuWvBmEG5qRUJA68CloV74wJp0/J3YPLygSH2+wL1TXLOeFeQlhUyiAr9Fm36IJwaoKastlEYOQcNeafC5fBRWgq4/N2yQ6vGWeiKQuISIjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=lJFyikr6; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-235d6de331fso73675465ad.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 23:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749622990; x=1750227790; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1hhJCf0S1HrMwLYRdGRFvzVPJDaWXTpl7/BKK1v8w+s=;
        b=lJFyikr6XZdt9Fflty257mmsUfydvK77z41XCZLbndlglaIU9i449+NjcO5t++mzFU
         jMX4QsCfg1lNEeFcxHS4slntMBWW66j7HgMtORsbyuQ1zXOrsckaR2S7K42gT5LrSA76
         UpEorSsLKiDLjOX6JDRyG8hTnvmBHkPcHn6UdUQlhdZihnqAj4MyONwcpm/TJKIKRZuB
         +5MfnSrVX9fDjBleMlwt2EDb4FYgIAkFhpDYogpNo58K4hzp3M/4KW5xnfiuxhwWBcx8
         ByQCF8Z1aLl1NYzXu4mHLaf7/6cVc8IRF8GtrAosNB39+jpc64Xi90ni0A0/4qb1mJaE
         whvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749622990; x=1750227790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1hhJCf0S1HrMwLYRdGRFvzVPJDaWXTpl7/BKK1v8w+s=;
        b=qlP8R2yGm+rP+7B5YU/BIBuMnznQ3MS6ZNBnlmpHUPwbHSBhBd6RBKIyPSzw6s+M1g
         YtC5w4urV951RcUweDB1HByitTo0kPjGx4uKliMzjkYZiowcCvpCSXt/9Kjty/jXevx0
         fyAd94AmHRuH86StDZcdCvRZ77FGglIRMcOYW1GKQoPFWJbANjog3nSolVv7TSGZN3NW
         v/cyfLlYOkC4uSt9ZhAhHDX2SyhR45QzPVWuLUyVxQ+YArN1ceEvAu9e5xTCtcIvXr/8
         FS0LcsmPQqMx996FwRo7F6zPnMu8rRygflc3sfTeaXMEXG1rOfN/agmLJFZwMXpRbPRL
         CWaA==
X-Forwarded-Encrypted: i=1; AJvYcCXkVybouZdctY0PKcyHKdXehsFhlF/4QEzD6YLApUMawFUOcn/NS4SBtH1E44vfbYMPW4oplYDyBa8Q@vger.kernel.org
X-Gm-Message-State: AOJu0YyjEkJffVUsWoiyYdJbWzBexoiFEBNOvdMB3SNS2BI3W+FYEegF
	gPFSrdlMdhjNvBCgTlTpZ8YC3niapPbS/UoRexWlV+QKcJuS3TTqpxIa3Q7TposGlVk=
X-Gm-Gg: ASbGncvIWNPXo9sjb6pQgO9j2Lcp3gWMDmKBXpKZ/MWSon8PYJWO+j7qw/VlLT8pnwY
	w/b1yds5ZTdvMMG6KlWjlMU6QZqt6EN4Ie40sD8xazUAV2dMLOfsFED+KawnjZo/eVdF8+GDbaN
	97TCxTYxs7O46FOqAGSnz525dok3P1ZkM2QY+EHY0lxtidgL74Y+UdDsIYscCusxcWy9Xyyw85R
	Yfd3hywp1ww9MfG6+zzPghE2CFVQBulespwe3GgJ8LqwfzhwSSijdKqulntPaUtLFlXGZ8Od2QT
	NWz7pn2YMToYEjxUgQ3Mfi8J5hFev/XsuoYEVS2BNtb5Q3DLd4upVwkiVFa8GjHeCjEk+1Jilz8
	C1wfRAslFMjH2CxuCsbjijCiCmw==
X-Google-Smtp-Source: AGHT+IGYvPF8a0ieyfCcXWkb9basvXu1C61BkUa+573NYbGt/torEkQigxWEXo3WPB2gMuuh/gndlw==
X-Received: by 2002:a17:902:ccc8:b0:234:8eeb:d809 with SMTP id d9443c01a7336-236426b57a5mr26776185ad.43.1749622990453;
        Tue, 10 Jun 2025 23:23:10 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603092677sm79976295ad.64.2025.06.10.23.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 23:23:09 -0700 (PDT)
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
Subject: [PATCH v5 02/23] dt-bindings: mailbox: Add bindings for RISC-V SBI MPXY extension
Date: Wed, 11 Jun 2025 11:52:17 +0530
Message-ID: <20250611062238.636753-3-apatel@ventanamicro.com>
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

Add device tree bindings for the RISC-V SBI Message Proxy (MPXY)
extension as a mailbox controller.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../bindings/mailbox/riscv,sbi-mpxy-mbox.yaml | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml b/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml
new file mode 100644
index 000000000000..061437a0b45a
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
+  [1] RISC-V Supervisor Binary Interface (SBI) v3.0 (or higher)
+      https://github.com/riscv-non-isa/riscv-sbi-doc/releases
+
+  [2] RISC-V Platform Management Interface (RPMI) v1.0 (or higher)
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


