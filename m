Return-Path: <devicetree+bounces-5335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD547B5FFC
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 06:45:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 998E5B20993
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 04:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F1961366;
	Tue,  3 Oct 2023 04:45:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C361113
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 04:44:58 +0000 (UTC)
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EDDAF2
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 21:44:54 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-565e395e7a6so254507a12.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 21:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1696308293; x=1696913093; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VOj9ECaB96rIjjnLWcT6tpDdCA0D2GI5mFoVxJymrv0=;
        b=OUIhVTg0w3otEiz9JTv35uLP4rCDXwqmTVC9TLZZLxpZSds3ylqEsc0otktFPMXBux
         BWNwGSTcITMP+EOZT9LrvPRI5kTENgMy6s7wx7ar25T+C6rrAHDBG6RjhwTo2cqyFWDh
         98rIC8Tqi5A6cNG8uc93TvngDHYCqt+HQnPm5JKUFu/Q5x5JdZMmZPD6ZSYgLQuFC2Fs
         HblaY3qkc1wm9GrV9oj026WnZbXJ0oyTl4PnYG+kd82rjl9UsIiSnW/r8THYuRy/UU1I
         xGmDGeB+DFK/XH+XUU5XwmZHHBoc7cSjhKsbf6GPQVI6gvpbnkhUs60AILAxMccjjYxU
         qiNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696308293; x=1696913093;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VOj9ECaB96rIjjnLWcT6tpDdCA0D2GI5mFoVxJymrv0=;
        b=iqu9GqpriAIeK4x2ODigdeRCAQAOxbrsDw2eSLC97BaLp2t7y6BYoqNB93fUDIu5N4
         MyvcjoD69El+xuCTrX4P8f0pRxdi38nd8K+8wFJoYd73PzGkuRnhoKX9Yv+Cbk1Xmo8D
         0xkZhLrqCxE4XwgjyYixfu3Bao1FDvW/D3E2QEfsItQjn4OVnmq6OWJW+7IhSTWFY9I0
         4LAQeVzvtXvsDCaq7cVaUVlXsxABSenc+/A2pStP5CKUUFVG44TpnOse8NoJDnKkCA7F
         ekgM7OTAnB8LRxwtc1h1RCGfNLckZ969nFE+TaYuE6ACj0rEyMV/oS8QNsFoZuBZZx94
         o/TA==
X-Gm-Message-State: AOJu0Yw817TilcdsxonwMncSqlPu8Omvu2GsAqisCQvnlBnHlQ82aLBO
	3N2oKjHrT4miyHAJwWyCMv7sBg==
X-Google-Smtp-Source: AGHT+IErIGwew/5bRYW1/++ahAiYLbcPWxK+l3oardRgJZqLBMo54T3jsTCtBmg9kGmFkIXSEs5qEg==
X-Received: by 2002:a05:6a21:81a0:b0:15d:ae4a:9a72 with SMTP id pd32-20020a056a2181a000b0015dae4a9a72mr11250884pzb.61.1696308293211;
        Mon, 02 Oct 2023 21:44:53 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.132])
        by smtp.gmail.com with ESMTPSA id h9-20020aa786c9000000b0068e49cb1692sm346421pfo.1.2023.10.02.21.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 21:44:52 -0700 (PDT)
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
Subject: [PATCH v10 04/15] irqchip/sifive-plic: Fix syscore registration for multi-socket systems
Date: Tue,  3 Oct 2023 10:13:52 +0530
Message-Id: <20231003044403.1974628-5-apatel@ventanamicro.com>
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On multi-socket systems, we will have a separate PLIC in each socket
so we should register syscore operation only once for multi-socket
systems.

Fixes: e80f0b6a2cf3 ("irqchip/irq-sifive-plic: Add syscore callbacks for hibernation")
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-sifive-plic.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index e1484905b7bd..5b7bc4fd9517 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -532,17 +532,18 @@ static int __init __plic_init(struct device_node *node,
 	}
 
 	/*
-	 * We can have multiple PLIC instances so setup cpuhp state only
-	 * when context handler for current/boot CPU is present.
+	 * We can have multiple PLIC instances so setup cpuhp state
+	 * and register syscore operations only when context handler
+	 * for current/boot CPU is present.
 	 */
 	handler = this_cpu_ptr(&plic_handlers);
 	if (handler->present && !plic_cpuhp_setup_done) {
 		cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
 				  "irqchip/sifive/plic:starting",
 				  plic_starting_cpu, plic_dying_cpu);
+		register_syscore_ops(&plic_irq_syscore_ops);
 		plic_cpuhp_setup_done = true;
 	}
-	register_syscore_ops(&plic_irq_syscore_ops);
 
 	pr_info("%pOFP: mapped %d interrupts with %d handlers for"
 		" %d contexts.\n", node, nr_irqs, nr_handlers, nr_contexts);
-- 
2.34.1


