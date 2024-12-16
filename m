Return-Path: <devicetree+bounces-131290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D127D9F2C3B
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 09:49:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0286A167403
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 08:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DA3620101D;
	Mon, 16 Dec 2024 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ESGcP4dJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9913C20101B
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 08:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734338933; cv=none; b=VjZpRxRvjphwjdfE5J4MCKqL3SnlpFCQsbyW8S+WbeQZHHlIMAgWk/I7DGpdn9jIDc9Ua/SRbDHcS1vpVXijiRiog4D8Ss5nt/AiYsW0AagYWTIlAOgL88BvaWHRT3dc8V7HJeJ2zsCAhuTiibrmoj9DeJque5uRdoK5SP8NmLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734338933; c=relaxed/simple;
	bh=QiMGpDjHJVbEJ7WtU+aAmU5WmhVGH1iQ/fXC0sMtGgc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f+Y98jGRoWiScLM0cprVMw4mg53IzW1y0M54cLtVROh8Uw3kGzOp17OHyrfjLfls66/mfZZDJEedUL8131AJuV5dnRIImWwZmxduSqmd2v/qT46aQ1bPp0O/b6F+qRN0cNHjjjrRBHXFeERhNm+DuWA7viLDVKg3Q0a+y7Tc7kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ESGcP4dJ; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2156e078563so28460005ad.2
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 00:48:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1734338931; x=1734943731; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ssg9a8o6gZjpZvchZzGUt0Qt044T+B0HdxLRYjAYuuA=;
        b=ESGcP4dJXv3ZI0kvKH/rncqICV+ot2WKiFJBT+t+y/HmIcp//K2MPOdIZvz+IjDkH9
         nPx6L7Xx6lFMTx3k58DOwfhDu5ib17GRZ+6wj5sJZYybRmC4Upmt8sGIBucwjkQi94rO
         rbuTRKL/XRkHhMPkIzK3wLJQamMISdZteztPjWci1l9TegAk4cGYIYFm1wa5PcfDST0l
         XkOej55cTgV3lLiZbd8H6VZPCOKH9F0cxDAokgiPhmm8g1wTtbR4biv2V4QSC5hxwpza
         QcG7PBycoL6Y+tJ5IIZz9fFhYbtYkbrK2RN5osqwOqDt9yJ+IYCoaCY9lLjzs4uZzwRI
         xN9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734338931; x=1734943731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ssg9a8o6gZjpZvchZzGUt0Qt044T+B0HdxLRYjAYuuA=;
        b=YjM5M2VLFAqcyi/fueeHswzz4A1nafk6yHljlBPrdOTEWgwE7alRXYTLxFO3VCeJDf
         UwccnflPqOuyfoR05u2/DoHK70lEzYT2HFnIAcoyEJtnHmziCUopg5IN04A+96L0ipEJ
         W6RHRWu3iosipNKZG7UFWlZ9rHwSZxL5ryb+XkzCQhc6JAOMjNVhxChjebk1pmQl8XVk
         efrTIE5W21jqPo5vLMDq/s4c3ALxlod00m2XNlmkSnYJLpI0KltiD69Oqn2JYf5AVuWp
         kaEgQtGjBPNmlMo/pKwYQq3xF16BL1iOisJUIEW/ywjDUsPX6b2I+d/71F7dVBn+igyH
         QXyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZIARe2kEd2SGCyBW/PSP/63PI0lzDWn1nlnM+bxE8CbzeQYGsFHgAPE0rDPp4+XS0hwPcF1Eg3Mh7@vger.kernel.org
X-Gm-Message-State: AOJu0YxOqYfU31VEbml+2AiN6sVZdGvQP9dOWPHFwBTlOUGRGBshRsZP
	S0iK/xHLW257m3QTsa6fiavjpwwT4suaBDma6YMrvLLnDELZkmJtipjr3cMmtuw=
X-Gm-Gg: ASbGncvJXU0Y01fHEN+d/L65368yG5Fyf7vuXRtbtSS5FhhwRiIiZDAb7j0V27X9AeS
	M0QEp4KyEwbLl3OgKc4rYeOOpcYufUonvSQg0v57x4y5j+dAXRKzF8W/xIHuAHFJpoxastIPS5t
	lgQo31SsX2BCUWylUk3QM/BKU2C7zR08Kdw+5V1bYpbrUtARymjl/Z1qMjGvi7vPrKBHzwmWpcJ
	NuTuki2u5klcRNG1/EslpvUhts1zhrRIyWCtPeuByB+xqrG2wWBKBhWPzdxT8eUx2WR5Doj+i3T
	dc7q7A4hQgxsEG0=
X-Google-Smtp-Source: AGHT+IEjkG82UTaLNxVZ0a1jk6JfxX7g2yNmmqLUOhK1uOCG12kx8FsqZmcvvvLQulkpsVPnYWSQaw==
X-Received: by 2002:a17:902:ec89:b0:216:770e:f46 with SMTP id d9443c01a7336-21892a74611mr174024415ad.54.1734338930854;
        Mon, 16 Dec 2024 00:48:50 -0800 (PST)
Received: from localhost.localdomain ([223.185.130.105])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-218a1e501d0sm37711495ad.116.2024.12.16.00.48.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 00:48:50 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [RFC PATCH 3/8] dt-bindings: mailbox: Add bindings for RISC-V SBI MPXY extension
Date: Mon, 16 Dec 2024 14:18:12 +0530
Message-ID: <20241216084817.373131-4-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241216084817.373131-1-apatel@ventanamicro.com>
References: <20241216084817.373131-1-apatel@ventanamicro.com>
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
 .../bindings/mailbox/riscv,sbi-mpxy-mbox.yaml | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml b/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml
new file mode 100644
index 000000000000..8a05e089b710
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml
@@ -0,0 +1,54 @@
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
+  $nodename:
+    const: sbi-mpxy-mbox
+
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
+    sbi-mpxy-mbox {
+          compatible = "riscv,sbi-mpxy-mbox";
+          #mbox-cells = <2>;
+    };
-- 
2.43.0


