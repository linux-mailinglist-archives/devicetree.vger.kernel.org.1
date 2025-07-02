Return-Path: <devicetree+bounces-191861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C94AF0A8F
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 07:20:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 56E3F7A6A06
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 05:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CCC423BCFA;
	Wed,  2 Jul 2025 05:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="hBIMJ2Qx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A0323AE96
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 05:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751433401; cv=none; b=QLGFyO4UkPVVFLKWh0YO4wiOH634JkiK52xvziMn4xogE7HQAc0eVwKzTYU0qQVXYnE6UuvFQhRLnQ1lERYulpynnEqv8DzLk5VVWxWe1AdpfmRShM/o6lG36KBPPkq4CiyLQJD3sowoeUae8BAKxUfG89CVGTKQDBmjg1MoIBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751433401; c=relaxed/simple;
	bh=bbsKQgQKotFffImznTiHFRZUkpn3l2AEmmz1a9sty/k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DPr8LczkZRACPoVRM0Rahe2eJgJr0IyzC2QZfX/3B65Gm+UvZS9LxMn7z3m7dbTak6bqlVKCSJa9oBVHlPEoo2JTAmErpgpziGA2Cy8suQs/KpYMp9kP6E8r7N8hJkkEFSCH+JQXsrVlkMEKAjv3KTy4dxMpwBVyXdumtKFYLk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=hBIMJ2Qx; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2349f096605so47455235ad.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 22:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751433398; x=1752038198; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qFaQ5Zs1hbK8MQOtKnNrpZ/cBeXTMcFHCuSD6j9WtSo=;
        b=hBIMJ2QxGvBn9LASwz6VN2AHYtgG3f1h+RAJXq50OgG/snVrBDiENXdK4ZvlzuX+k+
         fKIRNe45LAHzrcFabnLUvcaXaDxAzGmhW6DWKe79W+8KiiEyHctLD8MxCK7Vp3xu3faO
         1eSwFFlBnqOmH03Wj0mJ7F+JLWUTjYFchFFZ30nFBulWe6WMuDtI2nQfNqe4it7DJU2V
         O0K1sRs6tv+gpwDW1Pq/mdmChe/jGILGmBRgO08IvcmuWUjhbozAZL8IiZ2L15SwQ2Er
         JWOm1UIHk8/TJwxPtqV8NLiZgdJtMGiqE2CPcCdzMfNgsTI+hNaDIxZZEEsLvTocM2eD
         tb1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751433398; x=1752038198;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qFaQ5Zs1hbK8MQOtKnNrpZ/cBeXTMcFHCuSD6j9WtSo=;
        b=ZQfT8bD8wPLn2LTvwO06sJEhRT7PT8CYBoV9kftwgFF0pg/ViJ/PV9H7M7/DeVv8WI
         it6WyLBtcis2QGI9fFauNDGAIP5ETVB3ejjd/0LGqAgXxQPJuP49A4/KrnGc1XqYGuMM
         1mzVgQvou1qgEj4bZTWp6u9kLNLAa8bBehwwQy18e+RxBGGWZe6b6X+7A1r6Tt/UaddW
         FBVj0f8SlFeYm3JQVSLtiwitAaIT7tftHfvOzkvrA/oQC/6ew0Klulh0h9cZ3eZqTGge
         +CcOUVQ0EIO1z6WvuVwfDFDiwrn4BLwUSCMeoXmT3tDJop3dDrKtaXzMPoAlVb6K5yuo
         D4Uw==
X-Forwarded-Encrypted: i=1; AJvYcCXffu6IxCdi904MToLm97GoTcKo0iYYiezNuD6Us79pNDC0++MMY5bchCCU+WMEJa090+/uSMVhL22U@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj0ypSBwMig0zN9JkBHm7nzJ0XIQk8r00roVShxUlP2auHJP4S
	+EEzRJinxOCWHo02endQri25boAbCxjGfbcOrtk1mQedc30eD4FHs6DIzQWftYXyF6c=
X-Gm-Gg: ASbGncur1auri6GU7Uyt3aTzuB4j016/8cl1Hl4dWX7rFBvivE2WeglY54xbre8Gprp
	ygcSrar8zV+UABESjEm0K6IRM7R1YpW8hYsolSe4HMhRb3xD0/2+Y/YHZ/A0mMREmusxY07OR6V
	Ebzgo8MB/JIJkA73PI42V94z2SJpz2NZbQfcrdeMyls397CVvLSV3UNVnIgcygd22VUew0Q317M
	5l7KJKLOJJFIW9/LMz8zqsjVlDTHMQY6GGHSk+HT6/0OcLQMkEVVHkZPrMgyMoYTW1K0HE3GezU
	vczuYVci2f4JnCUbI13sQgVR3UVX7VCV4UsBt3W+pGQf4zo+C541RxOsHLvgrQsNcb2ea7/ECtY
	lcC3vbu8zt2ZdL2Iy
X-Google-Smtp-Source: AGHT+IENCvcAnrrecQXBt5V9LFuZ+rQKh4OUv2G9tNtl1lHXMhnri6Hzogn+Hw60JHYcRZ/blVSc/g==
X-Received: by 2002:a17:903:4b0c:b0:234:c549:da10 with SMTP id d9443c01a7336-23c6e5d6335mr17948045ad.47.1751433398116;
        Tue, 01 Jul 2025 22:16:38 -0700 (PDT)
Received: from localhost.localdomain ([14.141.91.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c6fe31933sm4719595ad.220.2025.07.01.22.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 22:16:37 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Len Brown <lenb@kernel.org>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v7 20/24] irqchip/irq-riscv-imsic-early: Export imsic_acpi_get_fwnode()
Date: Wed,  2 Jul 2025 10:43:41 +0530
Message-ID: <20250702051345.1460497-21-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250702051345.1460497-1-apatel@ventanamicro.com>
References: <20250702051345.1460497-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sunil V L <sunilvl@ventanamicro.com>

ACPI based loadable drivers which need MSIs will also need
imsic_acpi_get_fwnode() to update the device MSI domain so
export this function.

Reviewed-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-riscv-imsic-early.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/irqchip/irq-riscv-imsic-early.c b/drivers/irqchip/irq-riscv-imsic-early.c
index d9ae87808651..1dbc41d7fe80 100644
--- a/drivers/irqchip/irq-riscv-imsic-early.c
+++ b/drivers/irqchip/irq-riscv-imsic-early.c
@@ -7,6 +7,7 @@
 #define pr_fmt(fmt) "riscv-imsic: " fmt
 #include <linux/acpi.h>
 #include <linux/cpu.h>
+#include <linux/export.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/irq.h>
@@ -215,6 +216,7 @@ struct fwnode_handle *imsic_acpi_get_fwnode(struct device *dev)
 {
 	return imsic_acpi_fwnode;
 }
+EXPORT_SYMBOL_GPL(imsic_acpi_get_fwnode);
 
 static int __init imsic_early_acpi_init(union acpi_subtable_headers *header,
 					const unsigned long end)
-- 
2.43.0


