Return-Path: <devicetree+bounces-45739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D7D86692B
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 05:09:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C48A5B2218A
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 04:09:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BBE31B7E4;
	Mon, 26 Feb 2024 04:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Z09s0Zgg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC7A1BC57
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 04:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708920548; cv=none; b=TtiHAFeH/UyTN1AqDCklFFavyZs36ZJdqYUho3tiOkZPGh7qNAevd0bGjAJxDK7Np2PNENv7NNvwiVWVG6PlGe0OYoOdtxYRUk805YPYJYMB8cC/Ln3de6LRQo+WG9DUJ147T9MmwUFMMTvHRDFc4Cih5jvCktQSJW9q/ovCOQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708920548; c=relaxed/simple;
	bh=APFJu97iF/Q7yQHW0TErFqGPGHZVLbEuv5/pTvZH4GA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JxyOyrCjbOkAZNz28yEn5+3h9TU2hZwMMWSeWGECtKbdAvC/0Xhxsjk0XAwU98Slm74qbWhHtFSR05aWnVl8CkeKckKs6iOICua32TyvoNnLUkWR/3MDGAT1TVWwnriR833PgpWcFLv5KQxfSyreolxSqzDVbNG523zaz1mURwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Z09s0Zgg; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6da202aa138so1645083b3a.2
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 20:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708920547; x=1709525347; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e5v94DxHTEIb3n5F/F4oKqeNpt9RHfDtfleNBZBAcsM=;
        b=Z09s0ZggUIbKcl+XdQCkd5ML3+PKdNEtzLnlBC1KW3m7yA3JDQI3vSdlrgme+jjN1d
         xTpOM+Bql9UCC3cOhnnvY8bnc6NLsItvK69bdCiaqXER6L+LRYy5em6MutHZqSn4hepC
         S/3yah306vwchVmciMc+4Q3JQw9JYIiicCywzhal0QHJt9mA08/oGMvqmBd6Mas8zLVD
         7YSJWsM01acw7wPLxRR6FodKHKVm+qQReUgLLnJNqGJJWbACcoiqQspcPdrG35pmqG/z
         Q5J/+B8zqVM19L2I+yecps0fwBuNaZMpakIAeyq6Ow2HkCChgKEcFpmxITNjK5WTgfd8
         2nfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708920547; x=1709525347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e5v94DxHTEIb3n5F/F4oKqeNpt9RHfDtfleNBZBAcsM=;
        b=Uw+J1rJlAGQ5UnQ+U2XcGTf4znsTsy20eqFHnatBjayOeCbxixcn6Fk8JxPobZskGQ
         Q5azHLdJG49Mhjs2tw+xSYI4panahQiaT+oViHgV4ykRFxTCF++15Zvf/X+F3KXj+Y2z
         eyC+evV+t3Lo0KcXxa7qHCtlH3ROkmnSAdb6HCSieOfnUcZSTXuWdgA7wMQj6YHalnM5
         0pmvku4n4hAcXvPYoq/kFA+QzunIXcWKNt+voEszyX2O9QKitiSHGCDzbYWAkFLNoiY9
         ZBTSV/h6C18AyxRIbv5qqgZaQH+f5fiLoBb/HM9gzzMonVjRBhqg3MNMbukxuRC9LDP1
         d5AA==
X-Forwarded-Encrypted: i=1; AJvYcCVFkK62JFgr314yOo/UwrmCb5HwV78v2posF3IYhqxagXfTQCmiWsqUIRMWvLTzfJ+CGrurYxZGRLKNkx69gE//8Hm0DHI+rccv4g==
X-Gm-Message-State: AOJu0Yyy9TE8OV4gZBrN1SumEr7PWPrib6iFl2SupBizpyG7x1C5+6G1
	m3lMsCa6QRji/Rl6flR2+hPm8gfg6bNxut2zVbPbuAWIMtgT1XFG42v7SSv/SRE=
X-Google-Smtp-Source: AGHT+IEDPxbGJSvrlZ93JjP4+EdbzDDtWpP2MPh5tJ8fgAQjYG+gZtkJ/x/LoQqtZ7r8SgdKF1ybmQ==
X-Received: by 2002:a05:6a21:2d0b:b0:1a0:e59d:1dc4 with SMTP id tw11-20020a056a212d0b00b001a0e59d1dc4mr11149308pzb.11.1708920546850;
        Sun, 25 Feb 2024 20:09:06 -0800 (PST)
Received: from localhost.localdomain ([171.76.86.62])
        by smtp.gmail.com with ESMTPSA id d11-20020a170902654b00b001dc6f7e794dsm3023258pln.16.2024.02.25.20.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 20:09:06 -0800 (PST)
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
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v15 01/10] irqchip/riscv-intc: Fix low-level interrupt handler setup for AIA
Date: Mon, 26 Feb 2024 09:37:37 +0530
Message-Id: <20240226040746.1396416-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240226040746.1396416-1-apatel@ventanamicro.com>
References: <20240226040746.1396416-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use riscv_intc_aia_irq() as the low-level interrupt handler and print
"using AIA" in the INTC boot banner when AIA is available.

Fixes: c1be2ae5987a ("irqchip/riscv-intc: Add support for RISC-V AIA")
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-riscv-intc.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
index cccb65339982..f87aeab460eb 100644
--- a/drivers/irqchip/irq-riscv-intc.c
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -183,7 +183,10 @@ static int __init riscv_intc_init_common(struct fwnode_handle *fn, struct irq_ch
 		return -ENXIO;
 	}
 
-	rc = set_handle_irq(&riscv_intc_irq);
+	if (riscv_isa_extension_available(NULL, SxAIA))
+		rc = set_handle_irq(&riscv_intc_aia_irq);
+	else
+		rc = set_handle_irq(&riscv_intc_irq);
 	if (rc) {
 		pr_err("failed to set irq handler\n");
 		return rc;
@@ -191,8 +194,9 @@ static int __init riscv_intc_init_common(struct fwnode_handle *fn, struct irq_ch
 
 	riscv_set_intc_hwnode_fn(riscv_intc_hwnode);
 
-	pr_info("%d local interrupts mapped\n",
-		riscv_isa_extension_available(NULL, SxAIA) ? 64 : riscv_intc_nr_irqs);
+	pr_info("%d local interrupts mapped%s\n",
+		riscv_isa_extension_available(NULL, SxAIA) ? 64 : riscv_intc_nr_irqs,
+		riscv_isa_extension_available(NULL, SxAIA) ? " using AIA" : "");
 	if (riscv_intc_custom_nr_irqs)
 		pr_info("%d custom local interrupts mapped\n", riscv_intc_custom_nr_irqs);
 
-- 
2.34.1


