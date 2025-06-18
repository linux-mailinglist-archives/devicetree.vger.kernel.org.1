Return-Path: <devicetree+bounces-187112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD80ADEBC3
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 14:22:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E12F1892C6C
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 407C02E54CF;
	Wed, 18 Jun 2025 12:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ppcrbtdI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86CD2DF3D1
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750248986; cv=none; b=Eo326oh0tUSSxkI43uIjclvANcxYvTPTI6mL1q9iFzMp9GwBakr2bEVMM9FBgkHlWAbF31hO9R76jXoO2wGJ97lFQXY5wzJ2Bd6u/wH3JppPfavjUojCrHpamWQlzQvCSwsIF7Q/MKIT3ZpAK6oLBgndpzPFVkboqwRnhy8whN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750248986; c=relaxed/simple;
	bh=vaT9fKqdkrP7eBvkYV5AtQjKTPo8A3kQSz0hOZrkoeM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nyQi4pK5ew14aBakwPL4H0e3rTFqczrQVxdDWeQwSjAPFFfiknuiIaajPGI0TEfd6gTHPFMaN/eF/ym1P0U50086HnDnWRz6viC4FdFsptBA/wJaV9Mz3dzf9MMsS9Kj5eoufa32VYWJ9mGmKM7mWmKXEJUoC3pzZMrDZhq6QdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ppcrbtdI; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b3182c6d03bso5541578a12.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 05:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1750248984; x=1750853784; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PBceoBehx8BvgZH4kIrIZIQMdJgc3OIIxRIhQIQqZsc=;
        b=ppcrbtdIblDj11MqplfzTs5utSx7VIEi/5Pbd/NPApfxsOn0/AnzK9BsR0gYuCgDdM
         /H1mB/hMO1OWjTwZNyZZsUtTZmzNmdoUAay/DcR17j/+dKFJttNfcXiA4lSPTDkKvvL0
         YKHTiDXg5SN4G4bLgCR+Yxd8RaQTSejfQ9dMgWkydVGimMcBdD/6Iws0B0h4C07SZZl8
         a0xrF8MhiaubZ/BCq6Jc1F27BFpcJOzFbbG6I9/ztK+tpYQ/Dnq9elFa9qrUFX7GniMj
         Nh5xUKGrXn3HfXWsJyU7AySvJW/QCbShI4+lvU/XBUu1q6DPfg3LxEw2zqmn8fuTftko
         NjVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750248984; x=1750853784;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PBceoBehx8BvgZH4kIrIZIQMdJgc3OIIxRIhQIQqZsc=;
        b=k/VlIind+LS0G8hgu9Ioljr+/vBVLsDRzV3Z2Ym6Yh45bVG+hE4nZEBgUqtN2N9mjB
         GxUcaMQXeSyrGr9L2hUIZ5P2RmPqSjFjRemI/HQjQIofkP8b5RzbM8Ip+pCYNatgbkgY
         E98xZBa8JxujuWtFEUA7D2SpLtdpO94YN8uwt8peHFRH33x7dqcYFBexYRc6ImWiPXXK
         hobbKO0UALqzYPxbFcwSzJTqhZDWE+XHGruaF4AFVGFkZb3vHZ8vlVfOld3oQ4Q9vJlq
         AQTfw3PQoODJSG02iuqVIHsR3VszU4/qMWw8+Y1NW0yHPxcuAL7Jq4q6mBws+ZmXp4Xy
         Wymw==
X-Forwarded-Encrypted: i=1; AJvYcCVAmpM+Su/o3jvPUFLs+BIaiRUwJxLgQ8675k+Sm7CyN+aIV7x5reu2/tBFAU3g/oC4KXl6r0ZyL9IT@vger.kernel.org
X-Gm-Message-State: AOJu0YzTAXib+vn+suNjNOMaf6Re9VHL8gM2Ikp34M67lR3yoZb1HosC
	go1GVD1VlGLhqTyluwDsxpm8Neq2g3wdbtM3J8sws7T3AcB6FhwjFthhgNcLYNgHMf0=
X-Gm-Gg: ASbGncs7lPDTxQgTMQj3V8IQOi086lOzTKZaAsJ2fuUtvyRqVvbldUc8HyMSyISgQ6D
	2d067lcdQxa8NUkyqdNvOcuVRY9XC0UYgFY6NLHnxI1cukay4ss3NLXdzxb+WloRpwgzGZWEXBA
	t7DhZ72GYAuBQ3Lk/Il+0sI9GdgHMRqdm57Y3V5uRApYkMMtQvW6eRnjmPJ19vVWycu+KuNUzIg
	mnnKpkk7pYGkQB0tl1WBI9lax/mXsLgM0RJ9FmSFcMdD+35cFDGEmB20SwV41DdrIzGpQj/gpiN
	vF2ZF5bYE/9r4lm7E1z9coFs5bQGCqg19c1t75sPzQznGY/Rp/XRKX+GGs5kr9elNqMXTDvz/Lx
	H8nyzFG2KXqNVUL8Emg==
X-Google-Smtp-Source: AGHT+IFC5oonHbqa+1WgrcguufpT3Zth20l/25Hqy8auGK0Yi1uMoUCsHOZcemPZLHn8HliZdK3kyQ==
X-Received: by 2002:a05:6a21:4d8c:b0:1f5:8b9b:ab54 with SMTP id adf61e73a8af0-21fbd556dc5mr26732280637.23.1750248983978;
        Wed, 18 Jun 2025 05:16:23 -0700 (PDT)
Received: from localhost.localdomain ([122.171.23.44])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900d7e0asm11201177b3a.174.2025.06.18.05.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 05:16:23 -0700 (PDT)
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
	Atish Patra <atishp@rivosinc.com>,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v6 15/23] ACPI: scan: Update honor list for RPMI System MSI
Date: Wed, 18 Jun 2025 17:43:50 +0530
Message-ID: <20250618121358.503781-16-apatel@ventanamicro.com>
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

The RPMI System MSI interrupt controller (just like PLIC and APLIC)
needs to probed prior to devices like GED which use interrupts provided
by it. Also, it has dependency on the SBI MPXY mailbox device.

Add HIDs of RPMI System MSI and SBI MPXY mailbox devices to the honor
list so that those dependencies are handled.

Reviewed-by: Atish Patra <atishp@rivosinc.com>
Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/acpi/scan.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/acpi/scan.c b/drivers/acpi/scan.c
index fb1fe9f3b1a3..54181b03b345 100644
--- a/drivers/acpi/scan.c
+++ b/drivers/acpi/scan.c
@@ -858,6 +858,8 @@ static const char * const acpi_honor_dep_ids[] = {
 	"INTC10CF", /* IVSC (MTL) driver must be loaded to allow i2c access to camera sensors */
 	"RSCV0001", /* RISC-V PLIC */
 	"RSCV0002", /* RISC-V APLIC */
+	"RSCV0005", /* RISC-V SBI MPXY MBOX */
+	"RSCV0006", /* RISC-V RPMI SYSMSI */
 	"PNP0C0F",  /* PCI Link Device */
 	NULL
 };
-- 
2.43.0


