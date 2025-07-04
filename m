Return-Path: <devicetree+bounces-192933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6665AF88CD
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:11:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D3B66582753
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 07:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 256E527FD74;
	Fri,  4 Jul 2025 07:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="nPKIBTF0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B24F27FB27
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 07:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751612889; cv=none; b=UHN9QuJcpPvcWI2o0912t54To4Kzwuh38u2lF37VL7+DACPwcWLjvLoKr1f8Tb80uiVAEIDmH1lb6igNBFiTe/VoWvPRfjpUCnS7bwKgUTGZLkEnibDXztpRJoqrPGvV6vX9Un5TIJ1IwbNtO2b5c3ggx68HE3Xcq/S8EcTD+YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751612889; c=relaxed/simple;
	bh=bbsKQgQKotFffImznTiHFRZUkpn3l2AEmmz1a9sty/k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d24sEZTCknAwzELzkAk9K44ZCZ0du7I88V8YmwogxiqCFw9e7BTzsmOPVrYT8wCVHAREdcWI/3Ka8fpbAA/xhmwv/4kAuvmAAOznEC8QSDwotIgGAyJA4ABOpeK3Px+kK8tgVgXSM97ntTVWtW7Q4w3JdAjHqW+OSFoTNfAIN+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=nPKIBTF0; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-313bb9b2f5bso771127a91.3
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 00:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751612887; x=1752217687; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qFaQ5Zs1hbK8MQOtKnNrpZ/cBeXTMcFHCuSD6j9WtSo=;
        b=nPKIBTF0AK+/1HHoTW+QCGP18nXWXDLUIA9nglN/twuOKc5qKK6669ADY6e8XQfppB
         8oBEqnvbVxtwDWumfi3pJgwBPf7orNb8cKTyoUUQLsinu4DEACYhWsNei5SQEag97w+Y
         FPsM8toAFQPdVQnGO+/EptIvT+Qbu7Dwlzoujf00OyIxc+zFhlrzT+uX44XHSJjLMGu+
         wmrGk7YzjOng0HY+nY6+88eej74P3uB6aTMPZKPFnSCMBXBgYp4hoG3NIOKfIV0wemV4
         JCZtB4JvXHaTU6oHmrKg/9b5uy0bkn5QkySpFgv0nCdWi6iz6duF91Id+OID4XET5yt7
         7k3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751612887; x=1752217687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qFaQ5Zs1hbK8MQOtKnNrpZ/cBeXTMcFHCuSD6j9WtSo=;
        b=WxU98Fu54rd9BYhffBYXW2ifDBQJyPECujmdV3uadTTuIXi6BfcXKzSOS2m/qpEiW+
         +Vg8WWPi3TqQfeBaK4R9MYYEKHFcFE2ybC2Jd1dq39+CtmzVh31/rvpeWT1j1YdfzUmf
         HZSewhpFogkuN+I3YE+vDLdPpUe7nhzbQHguMgX7X8jwO9qolJNnxsMYwwIvJWh8FdGt
         9d0nX9alKUd0olsoJJR7FA3zyoGmSgSzRe4jYyetc88D2cL5pzz2Gb3PJBl31tDTZCI1
         WcXA5bCC9dVQlM/OJTZFdLMcjnrHB6NF/mkTkvmhzA9cHWQlSeYFz6zDPtnllJvB7+yx
         bIAA==
X-Forwarded-Encrypted: i=1; AJvYcCVI5svyZbpZhZ3BJTGDJql4zAlW+cdQaMpebCcyX7stUNFAQdbllQ3t0Qj47TVO7QlVY8kIuzUVuQah@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7EA82DRd14O8vzQNTUB49FOuDjWdxD86pm25wBX7pVyWyl4AQ
	cJpCSxmlbMSmSK+0f7x22nwivjxMJrcWOha5hc3ng2t0Tu/n6X9yrAuJGMw8CIASUB8=
X-Gm-Gg: ASbGncs/XlCchTooPp7q6FRdvPMblqg03HIEqDuX3Xtu4bkvzPNpk1aYfjUZO86JX7a
	GdTTi+Fwirgy2fZVo/f8nNIJf7FP0TpDmFNJV+RePN8BXJsMjCu8sYl614ju0yuHR8kSaFCp5ev
	oy7+WXHI21SHs7wP/ePkdS385n8yAVQ7QrISwoCEOXWSID74Jj2S0q4chxOr9GmwG3RVdh3sq0+
	IxeSKq42Ez+Gwh79wc3IQdWaPV1iZjvwqTDGK7C4HvNiFi6KJMwb2GD/07Et0gnCNknkbGtrKsi
	JInyRBR077vcSTsKLoJiB+0E+bMP3LBDTD5JuSSOZFmCn4rgo1PqDNwC7OGrofGbmhNEwhopGyI
	+QCN9coq9K1qrS1XxaalunGdCmYkb9mJLRZcF
X-Google-Smtp-Source: AGHT+IF0zc2Duk30cC4boPPLQkPLExP0m0SOo91oiLUKWYjOgmAFhVPRmIXRhh+FnhO03cSYBVMJxg==
X-Received: by 2002:a17:90b:54d0:b0:313:d6ce:6c6e with SMTP id 98e67ed59e1d1-31aac449e2bmr2377250a91.8.1751612886401;
        Fri, 04 Jul 2025 00:08:06 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae59a93sm1358697a91.12.2025.07.04.00.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 00:08:05 -0700 (PDT)
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
Subject: [PATCH v8 20/24] irqchip/irq-riscv-imsic-early: Export imsic_acpi_get_fwnode()
Date: Fri,  4 Jul 2025 12:33:52 +0530
Message-ID: <20250704070356.1683992-21-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250704070356.1683992-1-apatel@ventanamicro.com>
References: <20250704070356.1683992-1-apatel@ventanamicro.com>
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


