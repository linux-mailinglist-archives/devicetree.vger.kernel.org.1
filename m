Return-Path: <devicetree+bounces-44696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3706A85F4B7
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 10:42:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87050B2539E
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:42:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A34443839A;
	Thu, 22 Feb 2024 09:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="F1unxOpY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B433F9E5
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708594875; cv=none; b=XyRIRD3PeZR0b3chjc23A4moVkU8hJ7ZrLaij5iqs5mgQAqfLVLiDNsIfwbQoYvcnKLGMkP7bcLppvzasXro0gBUfye0bDyJZVx4teVyxv3cxzXR+phPhwmvgizZvawlXXPx19wQoYyLJ0AIEl3s3OoSoB+pM2Baeyc6sFl60qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708594875; c=relaxed/simple;
	bh=4ipmzzw4N/1s36yujXDL2FWU6D5+RIErGNPMLbFlHwE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NYMdDKTksCoiBRgkWNnVe5S0R5Bz+k2kI6P/JQfAhvnKTNTyrKT2Nk87gduVYlC0/C51SauDmku78q7zm0HbmIfVkFasusZpr7Mq1bk45VI1SePngeM/y79yaID6iL9Nb7QkX/hd8yC0dPECgau7NbfezVts/OnKY8ubUIHjYXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=F1unxOpY; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3c049ccb623so5086999b6e.1
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 01:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708594873; x=1709199673; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yFOwokt/Qs+I70jfKIbSgbLogS64uTxBCY4KGhVh6mo=;
        b=F1unxOpYLYiVYRWfbszPf2MHONyIU7xUJ0EuibhcknXWMxNqlALnRnlh2bWJorLxNB
         +xJkqtdPbpdbD4YHGxVbRp10xQvwTdDM+9HCCtRDidknaaW9BGuC13AkSUPlX3YsTzNl
         fEXCB2kfhwMa7Lc5LlBlQR0wKW60x9FswUNs902lLIYJM9HbOwaxeLC280/tm/v+Ab33
         fbjTkj6cOMaAfAFVPIclhSNDvC0rPYO1BFG4zqF7Q3gL35a0eIjWfnnC0mQQVXedbt+Y
         y3zkWRxb+7FUpFQVvrld6xgcWXEGphEltnFFZkibZvjU4TPsJt1vrnwdJv1tXfr/Ux2J
         wWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708594873; x=1709199673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yFOwokt/Qs+I70jfKIbSgbLogS64uTxBCY4KGhVh6mo=;
        b=h5tCMT8gBbYvyiS4oG2BVAm9h8YN8WwFirEwjbUnTVlDX625OF/OpWU+lOqiaifQ05
         1wFoijD7W8PrLZTJ8LgMeRm/NhO7iGmuOBxnTxYp6r5q2ia5RC1clQDv8A138C5213U9
         dUZrLr/oLxK3zN3EYHl5OufkPe/re3GUcOdDDRcFA4yVJmN82UecmS3rpo7e0cS79Aw5
         gBExSq1sx+iPzcfqlyOFmdysCJL/MsOiw9FcWBqQCHoOUokdAgxNiG4HALyXhvFymqF4
         6A0/lPwWTjnXSx/8OgHEgKW7/al+yfdRKp988GOyvNcY+n/zdGXDa4atWwPS4FPMfLjR
         bb8A==
X-Forwarded-Encrypted: i=1; AJvYcCW6tv1u9Z9MnCmE/S6nY2zzbJpE4v8vT45AgUtzZij6xO+ULSmtY00YezpJTKDVALJXcwVy+FaMUxB9H2aiP9vgejJmxUcCJ6QsMQ==
X-Gm-Message-State: AOJu0YzYzxOqNYGg5li+2Z+/x3i7usBtNkFDQgb52aGPvPZ35iPne/X0
	2ozhT+0bFRRqdKSmFyH1Cpc3QlkoljkSdvX4/UjuwlIxfDccPA/GQ8Mrf4aUSxU=
X-Google-Smtp-Source: AGHT+IGSHWVbV1tcxeH3+z11dMA97PdpaF9ANlA0nsm0f5BLNAt/QDzUFxbA279Ntl5owUYgn9cD2g==
X-Received: by 2002:a05:6808:2e93:b0:3c1:3f84:7a95 with SMTP id gt19-20020a0568082e9300b003c13f847a95mr25335778oib.14.1708594873059;
        Thu, 22 Feb 2024 01:41:13 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n15-20020a05680803af00b003c17c2b8d09sm130699oie.31.2024.02.22.01.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 01:41:12 -0800 (PST)
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
Subject: [PATCH v14 07/18] irqchip/sifive-plic: Improve locking safety by using irqsave/irqrestore
Date: Thu, 22 Feb 2024 15:09:55 +0530
Message-Id: <20240222094006.1030709-8-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240222094006.1030709-1-apatel@ventanamicro.com>
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Now that PLIC driver is probed as a regular platform driver, the lock
dependency validator complains about the safety of handler->enable_lock
usage:

[    0.956775]  Possible interrupt unsafe locking scenario:

[    0.956998]        CPU0                    CPU1
[    0.957247]        ----                    ----
[    0.957439]   lock(&handler->enable_lock);
[    0.957607]                                local_irq_disable();
[    0.957793]                                lock(&irq_desc_lock_class);
[    0.958021]                                lock(&handler->enable_lock);
[    0.958246]   <Interrupt>
[    0.958342]     lock(&irq_desc_lock_class);
[    0.958501]
                *** DEADLOCK ***

To address above, use raw_spin_lock_irqsave/unlock_irqrestore() instead
of raw_spin_lock/unlock().

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-sifive-plic.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index e6d23fde51ed..175d02f7fd64 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -103,9 +103,11 @@ static void __plic_toggle(void __iomem *enable_base, int hwirq, int enable)
 
 static void plic_toggle(struct plic_handler *handler, int hwirq, int enable)
 {
-	raw_spin_lock(&handler->enable_lock);
+	unsigned long flags;
+
+	raw_spin_lock_irqsave(&handler->enable_lock, flags);
 	__plic_toggle(handler->enable_base, hwirq, enable);
-	raw_spin_unlock(&handler->enable_lock);
+	raw_spin_unlock_irqrestore(&handler->enable_lock, flags);
 }
 
 static inline void plic_irq_toggle(const struct cpumask *mask,
@@ -236,6 +238,7 @@ static int plic_irq_set_type(struct irq_data *d, unsigned int type)
 static int plic_irq_suspend(void)
 {
 	unsigned int i, cpu;
+	unsigned long flags;
 	u32 __iomem *reg;
 	struct plic_priv *priv;
 
@@ -253,12 +256,12 @@ static int plic_irq_suspend(void)
 		if (!handler->present)
 			continue;
 
-		raw_spin_lock(&handler->enable_lock);
+		raw_spin_lock_irqsave(&handler->enable_lock, flags);
 		for (i = 0; i < DIV_ROUND_UP(priv->nr_irqs, 32); i++) {
 			reg = handler->enable_base + i * sizeof(u32);
 			handler->enable_save[i] = readl(reg);
 		}
-		raw_spin_unlock(&handler->enable_lock);
+		raw_spin_unlock_irqrestore(&handler->enable_lock, flags);
 	}
 
 	return 0;
@@ -267,6 +270,7 @@ static int plic_irq_suspend(void)
 static void plic_irq_resume(void)
 {
 	unsigned int i, index, cpu;
+	unsigned long flags;
 	u32 __iomem *reg;
 	struct plic_priv *priv;
 
@@ -284,12 +288,12 @@ static void plic_irq_resume(void)
 		if (!handler->present)
 			continue;
 
-		raw_spin_lock(&handler->enable_lock);
+		raw_spin_lock_irqsave(&handler->enable_lock, flags);
 		for (i = 0; i < DIV_ROUND_UP(priv->nr_irqs, 32); i++) {
 			reg = handler->enable_base + i * sizeof(u32);
 			writel(handler->enable_save[i], reg);
 		}
-		raw_spin_unlock(&handler->enable_lock);
+		raw_spin_unlock_irqrestore(&handler->enable_lock, flags);
 	}
 }
 
-- 
2.34.1


