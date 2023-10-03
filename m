Return-Path: <devicetree+bounces-5334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 202037B5FFB
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 06:44:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BFDD52816B4
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 04:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5AFC111C;
	Tue,  3 Oct 2023 04:44:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A74A10FE
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 04:44:51 +0000 (UTC)
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59E66FA
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 21:44:49 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6910ea9cddbso387045b3a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 21:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1696308288; x=1696913088; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=STPmpWfv6fDT1bub5fGqVvG8FTLSWrxke8YCaHE+OKo=;
        b=mXu67i4fz+Jsiss7gLnUpkd5kLMr4SHN24KxFClpQ/lpzhvDdK4Hbz5l582k9G21KL
         NeqG0iuaphnbeggW7bgTDT9HGbTy7j5b8aUhFwB+yu6Uh/Jpo7NJNa3U8r+32vf6/BXb
         2LBPj1+LimLO714Ss47uX4/1SUI+IhFCmR1cJM/2sk2fMMm45wNv4zOnDcdwyPs3UBXb
         pEju1LBbrKMZBKUpPaTStHfcqHT1a52eptEzbrIDgp+lGJH3Te5Mcb7n6ofEj5wi4HqQ
         s/MbW/fdzUgs4nRMgxwjVpx5ikRe+tKMkSJ0J8Dmvc0Q6FtjCTtApAxZdnZA+nUtJv14
         pPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696308288; x=1696913088;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=STPmpWfv6fDT1bub5fGqVvG8FTLSWrxke8YCaHE+OKo=;
        b=HQRkwGcm3qOOgqSoKVQ4THMtADeTqD46WU6+GQLa01ZqGEC/PkjLHfcFpWsV0HD+sg
         0OGTwlxEnztOOD/WWe/iRZqVlcCXAij3GkgFwqazv9SCby29PnzrLDPXt8HBWfeCOq86
         BuEuUA4C4BKxndQaLOuFSO/08uulo7rFAZFmXf5bS54uZ5a6YZeKenvPR8Vy7iZJ8Gog
         VWwQ9R3ZhAwkfMZHlDMIHa8KpJP43mhmXWmPPay2hMPOHfJs8fYVu2axZbm1FypXsHif
         YAGQ0BzIL98pV5Kic3Vtiqrw7jBeWedEWh9BaMnDLA0SfMLPUIVyrJz44rB+A0gdo45H
         aVrg==
X-Gm-Message-State: AOJu0Yy4vmmUEtuszG3UIkxGf8g6VMkdSdWVhqrdQHxKlHoTcJR/xqJM
	KuckTPW8PZykA0BFieG/JWVGcA==
X-Google-Smtp-Source: AGHT+IF2dmo1dKvIs9q4omK+naW5Au+dEwzuViVCk7Mt3KLduGp9n30ZoJDJqzh9tpgMQuElVmERsg==
X-Received: by 2002:a05:6a00:1503:b0:68b:eb3d:8030 with SMTP id q3-20020a056a00150300b0068beb3d8030mr15091860pfu.1.1696308288481;
        Mon, 02 Oct 2023 21:44:48 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.132])
        by smtp.gmail.com with ESMTPSA id h9-20020aa786c9000000b0068e49cb1692sm346421pfo.1.2023.10.02.21.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 21:44:47 -0700 (PDT)
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
Subject: [PATCH v10 03/15] drivers: irqchip/riscv-intc: Mark all INTC nodes as initialized
Date: Tue,  3 Oct 2023 10:13:51 +0530
Message-Id: <20231003044403.1974628-4-apatel@ventanamicro.com>
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


