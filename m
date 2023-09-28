Return-Path: <devicetree+bounces-4049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA23F7B1263
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 08:12:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id CF30D1C2037C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 06:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29F0F1B267;
	Thu, 28 Sep 2023 06:12:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4704403
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 06:12:49 +0000 (UTC)
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8FF1198
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 23:12:47 -0700 (PDT)
Received: by mail-il1-x12c.google.com with SMTP id e9e14a558f8ab-351367c8fcdso25272495ab.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 23:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695881567; x=1696486367; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=STPmpWfv6fDT1bub5fGqVvG8FTLSWrxke8YCaHE+OKo=;
        b=NJ0zPm70Bw9b9tKvA8yFHtLtCak0iQMnq/F47X3U+s49WFF1EAjZRmYV41gElzApPD
         bvPs7GGbSgxF89IDARwTyl4RhurnCq/8OlokcvJiM2MWrEtlT79HaSZIjBB8tYlmJ1/0
         9YeRNBg2DFVuNg6NiTRPOvWfBsT3zQnQLmB4Ocy9qM6XXJJKY7oCIwx4eT3PGFec37Kk
         yihFnvkSHTD51aH+MDELolpKN9D+WmARM+Vicg+iSaF4IvmWLT1+uSBIEo4hxM3z5/Zr
         ZNqn3fFWUYuDp1FxndbyV5pYjZH1tANegqZdJeL4vpZqI8CY6wnnOn4bm3SuUv/+1dDf
         orBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695881567; x=1696486367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=STPmpWfv6fDT1bub5fGqVvG8FTLSWrxke8YCaHE+OKo=;
        b=LFaxFUlOJbGSxFefyt0yfy4GNkh69j5nL46K9Gvr4iHSa+7zWh4YByXzp54JKc2xV7
         IxCtT3rxjcHfrz8kNXI5Oxfr6v9qpUGXGtCjjz50WmlPPMLV0B+NpNRteEsyXCjvWoOq
         Z80F0GVZCy2hm7DhJTyiE+30QtrvqRUEssdmYF+VU9KogbmK6PzN+REeEOg7nFO2/IEd
         rXLftLIR87F5erTDIW+HboQxp2jVfk12Xe3t6J+CXZ0g9eAoKqfUwvo197GPv/a56Qqe
         v9Ppbx8CzFT+fzbJ/JRq9wtKt14DPnz1TPq223PuZchW5kjlWocJb6evtQ9H+NCnElC2
         2yGQ==
X-Gm-Message-State: AOJu0YwCqXbLn2YqBaR0ZxYD/THXt1dAf/1wQdlhYdbBAEki+xnR/rGt
	jmiT3ZJfQtG5g1fQv0SNuAc0+w==
X-Google-Smtp-Source: AGHT+IF5cEULCrsIG+xNyOUk71v9yZPtPKH6kOyBYcgS6EY9LoX/+39gSK0f6Q4Mo9nbNIO0uKdV9A==
X-Received: by 2002:a05:6e02:1c42:b0:351:211a:e86a with SMTP id d2-20020a056e021c4200b00351211ae86amr313596ilg.17.1695881566999;
        Wed, 27 Sep 2023 23:12:46 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id x6-20020a92d306000000b003506f457d70sm4774467ila.63.2023.09.27.23.12.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 23:12:46 -0700 (PDT)
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
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v9 03/15] drivers: irqchip/riscv-intc: Mark all INTC nodes as initialized
Date: Thu, 28 Sep 2023 11:41:55 +0530
Message-Id: <20230928061207.1841513-4-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230928061207.1841513-1-apatel@ventanamicro.com>
References: <20230928061207.1841513-1-apatel@ventanamicro.com>
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

The RISC-V INTC local interrupts are per-HART (or per-CPU) so we
create INTC IRQ domain only for the INTC node belonging to the boot
HART. This means only the boot HART INTC node will be marked as
initialized and other INTC nodes won't be marked which results
downstream interrupt controllers (such as PLIC, IMSIC and APLIC
direct-mode) not being probed due to missing device suppliers.

To address this issue, we mark all INTC node for which we don't
create IRQ domain as initialized.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-riscv-intc.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
index 4adeee1bc391..e8d01b14ccdd 100644
--- a/drivers/irqchip/irq-riscv-intc.c
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -155,8 +155,16 @@ static int __init riscv_intc_init(struct device_node *node,
 	 * for each INTC DT node. We only need to do INTC initialization
 	 * for the INTC DT node belonging to boot CPU (or boot HART).
 	 */
-	if (riscv_hartid_to_cpuid(hartid) != smp_processor_id())
+	if (riscv_hartid_to_cpuid(hartid) != smp_processor_id()) {
+		/*
+		 * The INTC nodes of each CPU are suppliers for downstream
+		 * interrupt controllers (such as PLIC, IMSIC and APLIC
+		 * direct-mode) so we should mark an INTC node as initialized
+		 * if we are not creating IRQ domain for it.
+		 */
+		fwnode_dev_initialized(of_fwnode_handle(node), true);
 		return 0;
+	}
 
 	return riscv_intc_init_common(of_node_to_fwnode(node));
 }
-- 
2.34.1


