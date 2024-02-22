Return-Path: <devicetree+bounces-44693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C184E85F4AB
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 10:41:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 626361F21740
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0135E38FAA;
	Thu, 22 Feb 2024 09:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="mftllXqr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D8EF3BB46
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708594852; cv=none; b=df6i2f3ehbS4ybsPPLW4Pu10s/rzxguJRM/slqyJl1k6Hiadzaecg8bylJRTaPT6OYQyGePbZDw9yUZMeKdaiiMir1OCzOzU6rTbY9TvzB5DZoEAo8qWdevMnU+q/sc8qL3hc9KmpvgxJH65LMgZJa3BeGDq8ubJCWPTYcQYZJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708594852; c=relaxed/simple;
	bh=4G67odiZOEE5i1ZAiyiSEHpAMTN6+HtBvz8ZjUgdki4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MIKB6BTWYFYtOKOqWIeWgS4ID6zOcgoYYqVKU7abxnRHTmgAuoMf1sFzHOglTYw4tVTWC9p3AR6p/63kChBruO42AabhYAkcVZvD56XwiiIFVQ76SppTALzQD0rOgWZHYyQmevOhOUK9olu/RUcTdr1UOQq6Euhqf2KYCdbTWGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=mftllXqr; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3c02adddb8eso1232181b6e.0
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 01:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708594850; x=1709199650; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n8Ocksk32SLy+uqf+lOwT2Rti1KnrinKQe1UyB1vdGY=;
        b=mftllXqrp2tqWaprTgexUSQKg2yEjthhw1FMW503Jxjy7FUapFKkKnC1kRKw4g67Co
         ZVlKWAhYWbpSflBsAG9BRPmc0BjDy5CJbirK0gKlTIwL6ioJT5L0doH/Wcgg/ly7kn4L
         R7euwVpi086Qf4IsPr8VZvYqz7LA69bHn2OHfaML9Xh0SFK9/T0ULEcCLW5A0PNymLGz
         IFKKuh97HiKu0oyP0hd/CH2jRKp/jizKeWm0/aJ23NMESq4+Y5lLpcfRfTcpDqKFR6Wo
         ifQLzAOxurethNxoMXbHRd6mui4R+soJB+CWegHflR8G3OFhtojqIvMwhnq2widkF4xA
         m17A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708594850; x=1709199650;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n8Ocksk32SLy+uqf+lOwT2Rti1KnrinKQe1UyB1vdGY=;
        b=X3FT6UT7GZuUFpxVQ/gXFCBOfgeLAAXvhapDVYEWlUtXXRyycieG2hL+gc5DDA0iXJ
         Zyt4lKEvPlgO2LOhDEHLg6uDlFHZW+BaSdlopKN1zN2NpqzdJCZRn74klluNlOqQXmdB
         ew0bAYp9hNocErXhSdq51PLXeg0EFUec6RhlTK5/sRXwU5y9JJGoIOxeAn+HkiwNLUoS
         WMMQzIUq25waYDmEFeVHFAHA+Z1MU6Qcs1E0GvoHdQ11ul2PlrjC6OL3eSTA5CgbgKO9
         yloTdMkbPplqBzxWj2dt/y/lvzWcZGRUaL7TyjvcCR8GU/svCT/LXfu89fhcvmHT8ova
         ZHTg==
X-Forwarded-Encrypted: i=1; AJvYcCVISCFoehe3kQFNipBDp5ufck8+pDrWEEeNB5nLeqnNK6ISsAMistnjW/OPnXc6M+l8kf1akk1feB3+O+e0KaRQqBm2mqqNjheRRQ==
X-Gm-Message-State: AOJu0YxMg3mNHq02m0V1nwzx5Emo0cn30mIfkSfJpwKf3LCLn6cUVMh1
	mLZ7lBJWoB6AsEdCjCrUtAoZM42GHDbnGuVeUrcQpTy13JwipI6QFK1SSXws7l4=
X-Google-Smtp-Source: AGHT+IH5OKcKJyZKoiJWHlEtV4ymh6yBEg2cp7+WIXAmpNd3ymvmgUIHcqDcQqaA486cA4C3qr2pMw==
X-Received: by 2002:a05:6808:1306:b0:3c1:82ae:d61a with SMTP id y6-20020a056808130600b003c182aed61amr14216oiv.14.1708594850533;
        Thu, 22 Feb 2024 01:40:50 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n15-20020a05680803af00b003c17c2b8d09sm130699oie.31.2024.02.22.01.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 01:40:50 -0800 (PST)
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
Subject: [PATCH v14 04/18] irqchip/sifive-plic: Use riscv_get_intc_hwnode() to get parent fwnode
Date: Thu, 22 Feb 2024 15:09:52 +0530
Message-Id: <20240222094006.1030709-5-apatel@ventanamicro.com>
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

The RISC-V INTC irqdomain is always the parent irqdomain of SiFive PLIC
so use riscv_get_intc_hwnode() to get the parent fwnode similar to other
RISC-V drivers which use local interrupts.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-sifive-plic.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 558ae63795d9..615498071b6e 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -422,6 +422,7 @@ static int plic_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	unsigned long plic_quirks = 0;
 	struct plic_handler *handler;
+	struct irq_domain *domain;
 	struct plic_priv *priv;
 	bool cpuhp_setup;
 	unsigned int cpu;
@@ -501,8 +502,9 @@ static int plic_probe(struct platform_device *pdev)
 		}
 
 		/* Find parent domain and register chained handler */
-		if (!plic_parent_irq && irq_find_host(parent.np)) {
-			plic_parent_irq = irq_of_parse_and_map(to_of_node(dev->fwnode), i);
+		domain = irq_find_matching_fwnode(riscv_get_intc_hwnode(), DOMAIN_BUS_ANY);
+		if (!plic_parent_irq && domain) {
+			plic_parent_irq = irq_create_mapping(domain, RV_IRQ_EXT);
 			if (plic_parent_irq)
 				irq_set_chained_handler(plic_parent_irq,
 							plic_handle_irq);
-- 
2.34.1


