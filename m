Return-Path: <devicetree+bounces-35826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8211483EE6C
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 17:22:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 368782815BF
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB5ED2C194;
	Sat, 27 Jan 2024 16:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="DZWl9CeV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692E75917D
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706372373; cv=none; b=CcHhfMLTnyz1v86xdwRQeEfmM0YUzXpQFKNZMXg4E8c7wdYrkuMazEB7xZanHrgQXgwNWjBPY1N5/4+GQpe6eBC+H78cByMihHS/lB57n//3b8FH2b8PVrsz9ClhLGN3BFJadb7RiCQ4KJtUOLS/leKT3iqNJRG6tU9BisBtKTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706372373; c=relaxed/simple;
	bh=+GBBwOVuguSzaQzNF5b8/hRaY+qoPU33UHIOV0yAeGc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=i2q5glGnnTGCIJqBAvZU8zi937GgvCIGq7W8Hy9ImwlWz4FbcfappY35+AdvBMCbFO8hGnGS8WVooZgQfsIcXfKu6Xk3yxgKiVbPM5fTeFCcUQS8lNLS64htal1/z4QCwOLV9AG3zQ9kkc92lpDIs+AoEncixNarkgqQf314Ghk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=DZWl9CeV; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-29080973530so1345820a91.1
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 08:19:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706372371; x=1706977171; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pa75apFvoQqeTQYHEjcSyJSyGrlM+GD5Ss5R8F0skYA=;
        b=DZWl9CeVODnlE4L1lyYT8iLI3m4e24NR5K6Wr1CJZD7IrEP8WUPnH+xjHyVoXSnFoU
         dQMG+O4mXJUNSr2w0QJaFIv0q6pZh1dIKcSkYKdQfoC/YGFJfF7UNOFaqiKN1LvaIb14
         1grvkvCBZpHGnutHACap5FgDz/XP+SLaQlG5AZXaalDFPOyrZgj0Bxme72S6ANjaNgxs
         8eMdqYCIy7/lSGCdCjP/289Bp/kvma/T60hpHZARHwVZ3EcJhh552KiN13cVJXpXT5TL
         Edr1wXQKV5/S+j2fo5Tl4qQuYpvyPtmlGqBBNdxfIv+zMmt2J6mI7db7lShlmLqmzDWZ
         qbWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706372371; x=1706977171;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pa75apFvoQqeTQYHEjcSyJSyGrlM+GD5Ss5R8F0skYA=;
        b=o8o2B8sMqk9AV7tsOnJoXYj6Jvr0f8LKxeDQ7e9HFLVYDx9xawRNQASVFevyYnBJIg
         mz8A64+nDYQ+Ktj8bLPjzdn1ZywS/hSuS+hauYdfsHgcn+AftTFnwg+iZJm5Ljsv3tHt
         QSKJixpUYIBL5qcNPHFkAh9uFjZ8mXPSTmqNwZYj2ir65MLGE603HJAaS7XpfQjnmFYj
         HPv4X688wX/AVmtJDXaMUX9txx1gAwz3RAM2RTJqlPMiw+z30A/kaw6ce41XruK/ERCv
         r9ioIh2gKLV0vp4oPAKUjKfDxds2SIQTRQgnmOdkej5y3lESrBS5kFFh2IwjSErl+OLm
         g71w==
X-Gm-Message-State: AOJu0YxzYyVLRAEasmXIkTTRSsbImaHugNpHq/Un2nvI6quvMeA2KzDz
	ZrYto/EOeJVogYzJSGyUj61D/jgeTedPddowv7MY87HeCZ9IDmQYTokefPGgVO4=
X-Google-Smtp-Source: AGHT+IE/rJ2r2skLkyRBRQ7dQ1nBUrmMrx5hJrAYD8oWBMwqSdt16t4NKyP2y8H/3zZRRkEi017a7A==
X-Received: by 2002:a17:90a:72c6:b0:28e:8b5f:6406 with SMTP id l6-20020a17090a72c600b0028e8b5f6406mr1198317pjk.87.1706372371612;
        Sat, 27 Jan 2024 08:19:31 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.17])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090ac24b00b00290f8c708d0sm5091620pjx.57.2024.01.27.08.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 08:19:31 -0800 (PST)
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
Subject: [PATCH v12 13/25] genirq/msi: Provide MSI_FLAG_PARENT_PM_DEV
Date: Sat, 27 Jan 2024 21:47:41 +0530
Message-Id: <20240127161753.114685-14-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240127161753.114685-1-apatel@ventanamicro.com>
References: <20240127161753.114685-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thomas Gleixner <tglx@linutronix.de>

Some platform-MSI implementations require that power management is
redirected to the underlying interrupt chip device. To make this work
with per device MSI domains provide a new feature flag and let the
core code handle the setup of dev->pm_dev when set during device MSI
domain creation.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 include/linux/msi.h | 2 ++
 kernel/irq/msi.c    | 5 ++++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/include/linux/msi.h b/include/linux/msi.h
index ac73f678da7d..b21581ca8e9a 100644
--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -554,6 +554,8 @@ enum {
 	MSI_FLAG_FREE_MSI_DESCS		= (1 << 6),
 	/* Use dev->fwnode for MSI device domain creation */
 	MSI_FLAG_USE_DEV_FWNODE		= (1 << 7),
+	/* Set parent->dev into domain->pm_dev on device domain creation */
+	MSI_FLAG_PARENT_PM_DEV		= (1 << 8),
 
 	/* Mask for the generic functionality */
 	MSI_GENERIC_FLAGS_MASK		= GENMASK(15, 0),
diff --git a/kernel/irq/msi.c b/kernel/irq/msi.c
index 07e9daaf0657..f90952ebc494 100644
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -845,8 +845,11 @@ static struct irq_domain *__msi_create_irq_domain(struct fwnode_handle *fwnode,
 	domain = irq_domain_create_hierarchy(parent, flags | IRQ_DOMAIN_FLAG_MSI, 0,
 					     fwnode, &msi_domain_ops, info);
 
-	if (domain)
+	if (domain) {
 		irq_domain_update_bus_token(domain, info->bus_token);
+		if (info->flags & MSI_FLAG_PARENT_PM_DEV)
+			domain->pm_dev = parent->pm_dev;
+	}
 
 	return domain;
 }
-- 
2.34.1


