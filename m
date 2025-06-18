Return-Path: <devicetree+bounces-187116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF090ADEC02
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 14:26:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4506E3B06F9
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C32442E8E06;
	Wed, 18 Jun 2025 12:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="EXpB46Mo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E88D2556E
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750249021; cv=none; b=e0LHI82FGKqIKghDzmID3pys+iruyntyW6hRUUGhq8MKPjQsoLrjjbArrfWeCuSI59HU9V8/f356XoHqD7AtRUYQnQ8uIik9U2hlM/jD5ZTaVqIpnx5vPCA3JXoZKBKBZ2+r4vzg1pI8uEJckXNFMKbNEUEEYrQc7cY4PfHKhqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750249021; c=relaxed/simple;
	bh=bbsKQgQKotFffImznTiHFRZUkpn3l2AEmmz1a9sty/k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pPwzh0CKtp/9OgcerCOB87Kg/YFk5P8mWNuXCiW2WGYeM4Xx6hDGiyUSUsFvAnO9QgESca/poPS4BamweeYJPYHEfgty0Zxh3O70QTcupeNS4JoKk0qj9YenHRy3UKnnHc396P72/ndk0jjn1R0M3H8QhBSX9AUMo7hqiCmia5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=EXpB46Mo; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-747c2cc3419so5314539b3a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 05:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1750249019; x=1750853819; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qFaQ5Zs1hbK8MQOtKnNrpZ/cBeXTMcFHCuSD6j9WtSo=;
        b=EXpB46Moh4BlUDcC+6KBLChivoNe1xMSJHngqqrOKsRyxr/jnLmIgIuod7ER51BcYx
         IRkOHWITv3hSwy+HjfPGtL9cE/sSY2u8LdDt7e/c5EwmmZpE13/zqA2LCalZ/GJFSlzN
         9lQzu8YfTbjl4KIuKIFXGKzHDtIZ8o2hE26ldXkLMS4ZDzU15DMVVNRy5bxfR8yuNRJt
         9FxJaKfq4UQwSxX6qmXuvVJPtG8O3odn9XCsIe+Tj2fS0ubCSq8sH9MBwiXmJMsTRbAU
         E8rOkrKTqxtDoNou2K3OXeLvPqZFk4D96IZPQ8Oj5+2bCxi71HfvXJRw2og0lCBEq2wR
         wxjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750249019; x=1750853819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qFaQ5Zs1hbK8MQOtKnNrpZ/cBeXTMcFHCuSD6j9WtSo=;
        b=ZSLwTjg6M2m1jq0qparT5ankZSLnXbvgR2iw8Y9alhe7YlBiup9y6IApn50cFs2oF7
         h66jhbOl3ok3VmeDGW6tuif/zvV7wwfCY6enkQWMi/Y1g8lVH9cSrPSy4+hw3NY82qaD
         z1K6vPgZc5m+t9v1zjYRy/8Go8yBJZrW9jLurdBm+Eal2yj6UckYgjW5JLiApW1aPDUW
         A7KoQ43DiJX4bT8rmpjgDBMnQEaAo4ZzymREh5se7a3/VQOP3FfW0uqhui/bSr6jHo11
         M2Ix2n/oeoTSG5LYCwC1n6mcWuzkmXgP7pMAu1fMKvNgQfkuToRGEZ8PEc07BrwLBvyB
         dAaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIYIL3Dq2L9aQCo/GCEh0K+hmaY6pXzUo0IDCPnh7WETsv+72hILSnFiTBykbqLOBiTmzEu8sc8ida@vger.kernel.org
X-Gm-Message-State: AOJu0YyIA83AdUyCjFnDsjOlT4nSK8R1Mf50mioerQancSHKc4R0DJfa
	ophY+77lA5uMvWEz6Blg0L2oAiY/vaQd38FvUFJO0IDYkn5ky+TZWxbTtI+awwEdnPE=
X-Gm-Gg: ASbGncvg2v2YoMoNRoYoRgKTZkXAJbNIFLjDrcztnpW1ug9qLdE+MFhjsMCgdI92Gs2
	iUxSc+QRCarTCXkXFebcR3xaFqzxSE35QjQm2yFTBks+9MfJ+0FCQ73uf8YZxA7M2C0XIR8yDeg
	dmObBPUsVpX9oKKxy59M3YKyUqgKwgVsYpPeYp4FLs+In5qW/PVvIVRVHhnEelMuCBw6kk2E4hK
	yY6ppJD8oe8XqZgIoMu1ZjPNMCDU2I8o0dTqV69OTe13ovumVwIhi99eXHotXbfuVyNhZhffoG2
	jLuXv303+8YLBXK6T1k+FfPTDHo28ZjbRt5j8v6vMlaHjjQwT2m1Gl3gL5cEQ6Y11QClK5ID3rq
	zd2Wl23qqtaQZpWKlhrTKBdiTqKgM
X-Google-Smtp-Source: AGHT+IEv6PclcgZE5s21rcdHdcRt5I4k5x5biP7AB5bvAwlqWXB9wOizxmLyeD6IHY4DarLLQ/gyEQ==
X-Received: by 2002:a05:6a00:4b4f:b0:747:ab61:e4fa with SMTP id d2e1a72fcca58-7489cfffda6mr23313956b3a.14.1750249019180;
        Wed, 18 Jun 2025 05:16:59 -0700 (PDT)
Received: from localhost.localdomain ([122.171.23.44])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900d7e0asm11201177b3a.174.2025.06.18.05.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 05:16:58 -0700 (PDT)
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
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v6 19/23] irqchip/irq-riscv-imsic-early: Export imsic_acpi_get_fwnode()
Date: Wed, 18 Jun 2025 17:43:54 +0530
Message-ID: <20250618121358.503781-20-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250618121358.503781-1-apatel@ventanamicro.com>
References: <20250618121358.503781-1-apatel@ventanamicro.com>
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


