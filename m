Return-Path: <devicetree+bounces-5332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7017B5FF9
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 06:44:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id ECD4B2816BA
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 04:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F6C810FE;
	Tue,  3 Oct 2023 04:44:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C07E111A
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 04:44:40 +0000 (UTC)
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01257A9
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 21:44:39 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-690d8c05784so351731b3a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 21:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1696308278; x=1696913078; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SYhetJOGeGWONv0pBZCT4Mywf3EBvVtv+lOqGOUogJM=;
        b=MGWqBN++F1Hxu97r99D7yTvRrzn25Xi2XUOhljOaG0Jn2ct8pFRXnLb2vA/phH22Fk
         SlJ7LxABDa4uLDocC99oP7xYLHUFc0mAaIe4EjR5jPuKwPM8TAIWg+9EKV/eEbBYeWKA
         Y93lJK4AIy76U+oFHhitEOfbznFHhYlzoxxf0RhvOiRnbTFhX716uf/rCiERaaU+Abiz
         +6r3/2ESNOPtUVOriAEIhBLX2j48xr8AvLX3b+Dzb72DA+PLRrJRdRkFRH2QAM4INhzx
         L3xCblEQ0p3w5yS66ipFW0mIPYvoZ2GWwDJn542lq4hsbfm/RVz3z4I4KnCYXKAA1V+C
         HyJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696308278; x=1696913078;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SYhetJOGeGWONv0pBZCT4Mywf3EBvVtv+lOqGOUogJM=;
        b=jPQy/IW19l7CLIL2C7kuTTQXzgeLUAb6si6YpYhiS7sJgk3ycDiz5/lCMDKxLHEjsf
         dUQ3Uo7fjAVGQq3CXYbh3rRBZVST71l2M5beSjXZaoShGLSPoEIo6vGSzqUWDJ5RXkiv
         7d1BOapgKDYkrVsXKZrn6FARdskJzZvEsmRmcFh9CxkBZJMXNTT6QWNkRayVgX9FfR4b
         zlbLnlYCO9dkSqEqZVnbb46n0Et7WYGCtbKrcydoRA/chlvp4INwEXEAcnguC9Lf8Mjw
         5w4U5ia8rGnfHGL8/mHuVmQacFvLFLbHqnlo1HMiQb8zQF8yiYb1jF+EpFDJW3TMnMXP
         3XJA==
X-Gm-Message-State: AOJu0YxwToC1/CPzakmjZEYHdxBfWQGy6jVrIj3d/RaQVYO6lYbyvtJj
	3yYHuNisXlhj9lqUdzN87ybLVw==
X-Google-Smtp-Source: AGHT+IFh2kqvEvnNTxvGwWlu8C31fgUxH+K6y/DHJOiawavSp9uWUY0H+X4gukVaX5d0LvOwRxsG8w==
X-Received: by 2002:a05:6a00:c92:b0:68c:69ca:2786 with SMTP id a18-20020a056a000c9200b0068c69ca2786mr13194905pfv.34.1696308278346;
        Mon, 02 Oct 2023 21:44:38 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.132])
        by smtp.gmail.com with ESMTPSA id h9-20020aa786c9000000b0068e49cb1692sm346421pfo.1.2023.10.02.21.44.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 21:44:37 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>,
	Atish Patra <atishp@rivosinc.com>
Subject: [PATCH v10 01/15] RISC-V: Don't fail in riscv_of_parent_hartid() for disabled HARTs
Date: Tue,  3 Oct 2023 10:13:49 +0530
Message-Id: <20231003044403.1974628-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231003044403.1974628-1-apatel@ventanamicro.com>
References: <20231003044403.1974628-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The riscv_of_processor_hartid() used by riscv_of_parent_hartid() fails
for HARTs disabled in the DT. This results in the following warning
thrown by the RISC-V INTC driver for the E-core on SiFive boards:

[    0.000000] riscv-intc: unable to find hart id for /cpus/cpu@0/interrupt-controller

The riscv_of_parent_hartid() is only expected to read the hartid from
the DT so we should directly call of_get_cpu_hwid() instead of calling
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


