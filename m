Return-Path: <devicetree+bounces-11033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C12A7D3D9D
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:28:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64F76B20D26
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCCDB20320;
	Mon, 23 Oct 2023 17:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Vj8O3yXj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8007C208D7
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:28:31 +0000 (UTC)
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D60E10F9
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:28:26 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-5a9bf4fbd3fso2590352a12.1
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698082105; x=1698686905; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VOj9ECaB96rIjjnLWcT6tpDdCA0D2GI5mFoVxJymrv0=;
        b=Vj8O3yXj48ezfKEVXZH6OQyv1S30Aao9NdA6oLxtvtclpgtOCXCrm8UTgpFJOqp3cO
         /eKUomcuxxUZXDHV5YlfaOJqdbbDYY4ZHE2RPqRChyaMHogtlCgEOuvJ8BmdRMcntD+t
         jUNFhiHzxkOnfS9MEnTusVHZuvnS+MFMph/avmp/JeMognpuFDUoKJoR1zwCtVolgj+y
         asIcHW9XMvcoTgBtrckRP6tHrCMY7VkwUs4HeYzaGWyKNdD4o06YN7hAlk2VPzav412L
         Dttk72f8RfpUjDK0RqWLxGdfgeQrI2Y6XuQIewgQi/iq6UvZqbg6SOABBli1zGMQ7zHi
         9GlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698082105; x=1698686905;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VOj9ECaB96rIjjnLWcT6tpDdCA0D2GI5mFoVxJymrv0=;
        b=JxV1r+sYfjFQT4qFu0JjT7t4z1qxDHpeAJe6csrU8zCQpS5mGWjJdn39IiOXED+FjH
         YC8VP+2/tC7DlHbsZkWpAhgWSE2M2ewZkwq3GQ6mY/5W5fB1is/jlti7kAT2veLjNWZ+
         Sh8CE0Jzc7MEa++IKKJ59BRCQWPxWFcmjnxclZEQdrAsWpZyEQ5E/UQVj+sYmyrSoeUW
         yjSTZwQpJ0bT4++VW+U+hyFNm4+uEpIMQOQAgBRRW86d/PK7tuAvRgxIPqC29ausO/fs
         8MKD/9M8ea6pZfBRKJDG/jYyM5Q4Syejlt4Khv9or4l6Eu/195Kme5UHR7xt6q98jm6/
         ebHg==
X-Gm-Message-State: AOJu0Yw2mk2+tbeNq7uOyqGBx3EMn84cKyr/DH65pRMdxJkG2QPuW9jS
	2R8AtrVjseJsiggBTqiBlDkcvg==
X-Google-Smtp-Source: AGHT+IEnHahVw3qnJm1+n/UjAUiTilQ3VeBFGYVhtzAuitdx99t+7TC49sKKyAJtXJ+4NIsGQtReyw==
X-Received: by 2002:a05:6a21:3d83:b0:17b:cfed:52ac with SMTP id bj3-20020a056a213d8300b0017bcfed52acmr225463pzc.49.1698082105149;
        Mon, 23 Oct 2023 10:28:25 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.9])
        by smtp.gmail.com with ESMTPSA id g5-20020aa79f05000000b006be055ab117sm6473194pfr.92.2023.10.23.10.28.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 10:28:24 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v11 03/14] irqchip/sifive-plic: Fix syscore registration for multi-socket systems
Date: Mon, 23 Oct 2023 22:57:49 +0530
Message-Id: <20231023172800.315343-4-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231023172800.315343-1-apatel@ventanamicro.com>
References: <20231023172800.315343-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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


