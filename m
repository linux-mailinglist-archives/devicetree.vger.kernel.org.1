Return-Path: <devicetree+bounces-200133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF0FB137B8
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:41:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4ECF189A98E
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5B46253957;
	Mon, 28 Jul 2025 09:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ouTkw2pd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193AD2522B1
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753695680; cv=none; b=gc3+G5/VZ4/CyRZIODEiPbxBUDAU3/q4m2zhI1kyLjobMh3astLwjkIh2ZS7OBKYTMaDN282FBxTvzumqUV6Q06m9pxwjcK2pBW9T70Hz/X6PGy7qkxORblH3dQfNj8ILtfDq8LuenGAM0tObi7P0oLw7pEShwh1nUQNiG72O/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753695680; c=relaxed/simple;
	bh=wpGteD02sLvwEnKA7TBa2+SX4iYwOSU082ERtl6/Vjc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qW6PO2Vs7B/XCz0W0d/DODSvQdB0d5IB5nXoIELlulPTQ2hiDXOQkOLN1lOHvxyyONWCkr//1sJjbhWhJJ650TYuOOno/Ufo3NCkfZvGiQ9ojiGWaebkD313PNigb71wFSBvngBWgq0cAXpFPp6nRJIS1xg1Rf2RN/44yFAn6ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ouTkw2pd; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2402774851fso8215425ad.1
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1753695678; x=1754300478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EGFMyHcY75Un2ey32rj/OGQJrYLrfBUEB3tHZxTx41w=;
        b=ouTkw2pdTQRAp3Cd6zVmiQJWkl3lakWBaY9VGqOWQ0MQI1Go6BafgqXiodNKLvihhP
         Z9KqBMwheSwaTJwTz/jSxLZLo4JgzGY4k86qtANoJXXv61CQxGTXW+36JNZwQ+OPCcyn
         UA1KSTy8xNBWqwaT5lMAolsw9fgi/HFCEf4VoVuOm+vKVtI3n0xcqjFu666p5ofTqNDd
         APfz1LOqQGEVsUohPgg3m51X59F9W7sfUgKnc6mOigMfd/VtAb4Ldum7DT0o//WgKr/F
         dRA4K55DtR2wkqd6pRUeWNMnccLjChU4SfvgVUrjOlEa562IukKR0zalTl7oxAB4LM/A
         VJgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753695678; x=1754300478;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EGFMyHcY75Un2ey32rj/OGQJrYLrfBUEB3tHZxTx41w=;
        b=ClrHSMn2p2AiDBXWnbAxR0nOm3GY4RN+FiASsfV310u0ioPwCMPRbDDZOv9ejEUdFg
         B3xti4euqWjt8llMHHFvlRe0P5cD/P/8oyWlaoGRB86VnPaCxhU1d5JfhQNN4+CmG+9P
         XtLKTnWY94ul9FwxrmbCPKJGdi1lIO1Y7oj11dDgAGNFUsI9ZeQzgbYzkiHHR4u0NuXV
         80yZjqWL8MgVDL0RFDGL2Wibs2f8WhJyf0vqU1QestMkyF9NHISzTTdGMAbG1D5e6QSk
         19sbnF27CM/eNGR9KnRfrYCdbB7vwztfP5jWqajOMDN6Wohbvbcvyz7USfDIFyiRrFtC
         xqUw==
X-Forwarded-Encrypted: i=1; AJvYcCUxTdQzOvg5QNzy4ylVgO5PF3lBsRe7GiN5gMZD4pb8le2tlWD2L6UqFxUUcHaeXeU/jH4Q5t0xJpeZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxGYBBQHzniCYlczLqDOU1/9RQHdVpqpEmC4I9NswTH70ssUyGB
	QkzXeB/V3DQ5zHJP88eJVr7Lp5fV0HlrXafqwWThurC4+/eCs1L81B+k1rxDoNGTQBw=
X-Gm-Gg: ASbGncuiJ3cv6tPULZm+xW/ihvLKua4IM5IGEDYqDNAatwiRBejQ3X9w4XMwGkbtLX3
	jyo7ecchkifxaHJrt/5aF46gHwhS/rfsIfp9FQe/G8PACbqk+eTbuQ+Ba3loqUdUB1YdRrJSCeB
	1mr3aPx/ED2tC1exklXRQJhYc61wAntDMsWXUpXgVecsBqeAQ45Mdi3WKYlyS+5YA/SJeWZSkNW
	3nyobyDnjYi0FTQ8INK/dcNamqcdroUU7XOu7rxtqqs9NaINCbp6vIRSFwwAUt+GSBAtq8ZmBhm
	SSLCPr/9m35h/YLrWAyrbshiL4u+fc0kR2qtrcKxOiyE9GOd2rTtlq1716eB0CdJbSTvKi2ST7/
	7LTqO6MW/We3fDAx2r3EOxhomYo6eo+Jm3FCxo08ycD2de/e+hzf5VMGa9K2e
X-Google-Smtp-Source: AGHT+IGPB6scD1Zk4kKbBNRYJ5Lk4+napYWqr+HDkuGBNA5LJwRU0oGXH2kwfbLJJQQc2lzDfZNUsA==
X-Received: by 2002:a17:90b:3c04:b0:31e:fe0d:f48f with SMTP id 98e67ed59e1d1-31efe0df8bamr3693862a91.10.1753695678152;
        Mon, 28 Jul 2025 02:41:18 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.19.28])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e832fbf99sm5396230a91.1.2025.07.28.02.41.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 02:41:17 -0700 (PDT)
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
Subject: [PATCH v9 02/24] dt-bindings: mailbox: Add bindings for RISC-V SBI MPXY extension
Date: Mon, 28 Jul 2025 15:10:10 +0530
Message-ID: <20250728094032.63545-3-apatel@ventanamicro.com>
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

Add device tree bindings for the RISC-V SBI Message Proxy (MPXY)
extension as a mailbox controller.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
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


