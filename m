Return-Path: <devicetree+bounces-12531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5457D9D39
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 17:43:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7E363B21113
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81C2537C99;
	Fri, 27 Oct 2023 15:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="h+XFnV1+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2910F374F8
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 15:43:14 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D072D9
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:43:13 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1cbf47fa563so19281365ad.2
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698421392; x=1699026192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1W9K1WUX7xqfrQAt8QwBmELFBTwIcr4D86Jl4GnCkM4=;
        b=h+XFnV1+jn8ECK8Kag4UojjMfRME9WIvP88Z9J4hMYunakKrwo6q3uTK4AE8zKbvwH
         GmSqKKMF03YMUOpiMxV11Ggg6pG59efeWBUoWVQkcq8o9mAXk9o7nxlUseNMsiDa/oQq
         NzzIGMiASjkL1sX35lFCSmBP9OL26bQ4ptXuRN5fqBucelsPzD6BgWbWFv9+ZJE5Z0LA
         M1mGtg+SmEl0KCptsYsvqxIF9AqOlLVZaU0p52x1g3sBXFa9xpiD4n5gAHItnWfU5s9k
         vvQdCbczzBCKoowg8m1KeUzYq2RTCQzlL9osTntArAg4l4q+qEl6AOeKh2coBky7s4K+
         RoWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698421392; x=1699026192;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1W9K1WUX7xqfrQAt8QwBmELFBTwIcr4D86Jl4GnCkM4=;
        b=hBTzMl7tS2vRQt0TIURcgvYwh2Xn9E2tjQLAH2mIULrToHbnv7zn49hmMitB6iCgdB
         +mA3MqxTR6vfn/MFYsWcpYrpobCMDcQBc6x6hO2o41J6K6aght+jKnpDPR2GByPQkTUV
         +9yxhDCrA0LxcWtFfASENA8PeD7WdHRcU77vwRK9dD6rqPnRSSZPESqsTCP4TLxL5dRS
         g3TAhAOZPsov2f0nYg9t71FB2uLcFg6S+4U9XAin/Dw87TRp8IUWncf01n6CcoR9LFon
         UlbarBvXJCGN2fSBO678clAO0KBpXslVmUVpd62Zw+9DkhQAi/PuZtwYNac6d1tyIkAO
         SzZQ==
X-Gm-Message-State: AOJu0YyPLrVtbKJltS0gG1wLiGAX/6UIswiYk7rOI9kpvV2AqYd9OLhM
	3OhGFgHuzGtsWn432iUrpvb5jA==
X-Google-Smtp-Source: AGHT+IGOswDgfUTCUoK516/BHDWmHydqTfz8QQKShAicFP2dUFhiT9HYYFXT4f9emNAzpG1L2TXq4A==
X-Received: by 2002:a17:902:dcc5:b0:1cc:b3f:dd81 with SMTP id t5-20020a170902dcc500b001cc0b3fdd81mr2446973pll.67.1698421392288;
        Fri, 27 Oct 2023 08:43:12 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n16-20020a170903111000b001b9e9edbf43sm1729246plh.171.2023.10.27.08.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 08:43:11 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Marc Zyngier <maz@kernel.org>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>,
	Atish Patra <atishp@rivosinc.com>
Subject: [PATCH v2 1/2] RISC-V: Don't fail in riscv_of_parent_hartid() for disabled HARTs
Date: Fri, 27 Oct 2023 21:12:53 +0530
Message-Id: <20231027154254.355853-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231027154254.355853-1-apatel@ventanamicro.com>
References: <20231027154254.355853-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The riscv_of_processor_hartid() used by riscv_of_parent_hartid() fails
for HARTs disabled in the DT. This results in the following warning
thrown by the RISC-V INTC driver for the E-core on SiFive boards:

[    0.000000] riscv-intc: unable to find hart id for /cpus/cpu@0/interrupt-controller

The riscv_of_parent_hartid() is only expected to read the hartid
from the DT so we directly call of_get_cpu_hwid() instead of calling
riscv_of_processor_hartid().

Fixes: ad635e723e17 ("riscv: cpu: Add 64bit hartid support on RV64")
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/kernel/cpu.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index c17dacb1141c..157ace8b262c 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -125,13 +125,14 @@ int __init riscv_early_of_processor_hartid(struct device_node *node, unsigned lo
  */
 int riscv_of_parent_hartid(struct device_node *node, unsigned long *hartid)
 {
-	int rc;
-
 	for (; node; node = node->parent) {
 		if (of_device_is_compatible(node, "riscv")) {
-			rc = riscv_of_processor_hartid(node, hartid);
-			if (!rc)
-				return 0;
+			*hartid = (unsigned long)of_get_cpu_hwid(node, 0);
+			if (*hartid == ~0UL) {
+				pr_warn("Found CPU without hart ID\n");
+				return -ENODEV;
+			}
+			return 0;
 		}
 	}
 
-- 
2.34.1


