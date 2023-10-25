Return-Path: <devicetree+bounces-11904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 325F67D6EB3
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:29:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA79BB20EDC
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0A802AB2A;
	Wed, 25 Oct 2023 14:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="IbFrlO1q"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7270A29422
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:28:56 +0000 (UTC)
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD49F191
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:28:54 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-6ba172c5f3dso4924629b3a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698244134; x=1698848934; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VOj9ECaB96rIjjnLWcT6tpDdCA0D2GI5mFoVxJymrv0=;
        b=IbFrlO1q1IRLg9KJdY4YdwXCNPZ6p9LFwh5ho84gZfYYXJVhcQK98W4YAvYYT98A4N
         L77j2bBCG6id+d8xwPOeRpU2JLRF8y469rV16O1SC5j9V8shgLg3TygD6BRHxUvO30p0
         jVlCKGDyIH8LLZrPfwKB4ox9B/hHHCH2xV3VgmtGiM4q/Tv6MKlmn919QTG0EY3Cufrq
         FwXoqge0GuOiUFihcWSeEb440nfIbvNEEsAfjPMqQRyjxf9O6HNVdPDP3Vcd+Fue+tI/
         jljLRYsJswYcG1IZjqW7w0xkbUhNyQYvqWOhOt724YIeTLy5uoepN8o429wAB1gDm24Z
         X8nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698244134; x=1698848934;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VOj9ECaB96rIjjnLWcT6tpDdCA0D2GI5mFoVxJymrv0=;
        b=Byr16/9eh1Rsm9RiHGNJgYPepWobHR1+jeUMgywdQ/2TkNNyhMZ99+phXMXxIq2i2d
         Ixrn/PL5OIxH1JTkBrQ+5orDp+swZBcqN6lwAtNdQqwPH5ZIaAjixFe1s8AeqtXGlJjK
         zKbsSsmWYJZboI0liUaixkNZW8i6exsbinKDEuSVUTAziV0P9b8nJl5KgsC9mip4YZ23
         UxbD20zkVk7TmjVZZ/QXoWoUx86njC8oWpk5rJxF/Pc5JG34rfFP/U0iSFmp0o/3R+xR
         mQxuc0/onDQ9LBecAdiWzdEiRugeBV5f2kwObVFgo4GgVxmxhqzwzM0hggIixiCA+VzP
         QFaw==
X-Gm-Message-State: AOJu0YwRXXgdrneHsZz02CsDdTbHld4kQg01nlk6mbUFnoqNcikgywh6
	0B//1kHXhKiQdbkKYcDyaYkqNw==
X-Google-Smtp-Source: AGHT+IGHCSEg7Io7oj+lSNy3jedLTxF0ufcFdVxgxPqyNpxvjQpIXsr2HA/g8AyNGEr3ud2qdGJrTw==
X-Received: by 2002:a05:6a00:990:b0:690:c887:8cd8 with SMTP id u16-20020a056a00099000b00690c8878cd8mr14948358pfg.32.1698244133835;
        Wed, 25 Oct 2023 07:28:53 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id g2-20020aa796a2000000b0068ff6d21563sm9817411pfk.148.2023.10.25.07.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 07:28:53 -0700 (PDT)
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
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH 3/3] irqchip/sifive-plic: Fix syscore registration for multi-socket systems
Date: Wed, 25 Oct 2023 19:58:20 +0530
Message-Id: <20231025142820.390238-4-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231025142820.390238-1-apatel@ventanamicro.com>
References: <20231025142820.390238-1-apatel@ventanamicro.com>
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


