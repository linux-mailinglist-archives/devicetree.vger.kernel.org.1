Return-Path: <devicetree+bounces-180304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E2506AC3326
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 10:51:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5496B1897B4E
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 08:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD8A51EDA2C;
	Sun, 25 May 2025 08:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="i2vPtOoY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAC71F1921
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748162978; cv=none; b=JCLDrs+0S0VTGtlLAYS0B85DHyzvFIO8a49OVlIpFdihd0HjEN6MabtpUTN6yuC72uhfTZRjvgGPMj8+TgvwluOh/MPb3xscpGeYZ2T/RRmx49U9NdjHeF6y+RqL93IQ0z3B8AdGU/WszsgwIyf2ppvkvPVRdWuM1OfbSaU9Ykw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748162978; c=relaxed/simple;
	bh=BiKDpKKLxE/k6ZY8kMmrwXJi+9HFJObjqUV7Aozt30A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Nu4qOjuwmBPeGhf4j96fcG+7WsLcOxTXFAuQlrbUmXSf9FSgzxgr9oi8SIuMqeCyE9K6vmk3OriarPTrYkUkcz0HAwZXF4QTZFljbWPySMXjkWVN8FqlEdot75gGewJDwF05bOjW8OAZi58C9UrOu1Wo65uyFt1Qo/ZG1jaBu2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=i2vPtOoY; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-742c035f2afso761372b3a.2
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 01:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1748162977; x=1748767777; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SXNxvUrDvrPEDXD7o9bAHtY/zIDAmgnS5reR+x10ajU=;
        b=i2vPtOoY8rgAgb0c9M2NNSFOPbvXJ6i4lfA24uoKjwFtGJJBS8nmMsjVU21AfDj9nF
         1a8HbAk1N4ZBQGloyu9oz9hNrDZ8LcXM9JLKuODnOvxZVtivwVKis7ABRwoohpyAZnVD
         qZt5FAqC+Omq01fVg7gIyVNqo0bDK3DUNPrd0hur+BbIxBeupd18bEkdZCp/HdE7wQ0e
         F0HK1zH4X15sIDJ/aPdbzt0SU+rHVhQk8SCl6PUa1nDUP/wyTaWXs/4EVfqQl01uD/0Q
         tHD/2/3fdq9D14eVDNulD7Sf+O5Gx6+fUsUD3WU+0jiCKO6Qo6lGNs2iaHoWSJoaQObP
         4stw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748162977; x=1748767777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SXNxvUrDvrPEDXD7o9bAHtY/zIDAmgnS5reR+x10ajU=;
        b=CyxyeNEU6fBcDX6MyP2zL2Bzf5e11kTGSo4RBuTr9qV6pVa7RYaLIdifXxoD0W1a8y
         UX9n/LLlCP6VcVWhjQPGk7yaiABXk81awx0Xqvxh47hfz0UhhYshSj5zshned7n0f0cl
         2GkzoB9S06MCysuOmcQA1rxF9BqRIW+zZF3QssvbDbRKrNZ297Cdog3ul+jy/ceg5amf
         shTGEiXcBc320+N4aK4eEUq7uEmLIgvWE6OLmWPmp8u+gQUqpMriFidV6hMTITzT0uvu
         6iSMu/0WTQE+FfZ0ONFy2GleJMBuyP6DbeENt/xV4pvEIg8PWluR4xZeu1H3mmiel+6s
         kX0w==
X-Forwarded-Encrypted: i=1; AJvYcCVIi9iAzgY/u+8Ic/PvOzCV17JGNAtUp3DPDPemyI1lFtMAHNcQGo9xikfL8dZWx7UAjca0TSqwcNU5@vger.kernel.org
X-Gm-Message-State: AOJu0YxL4AA5uMOqaJLahLfthTZm9HEZBqFqqUQPc+56bRucxJv5EIcc
	DaeOLC+zvjdbA25nLQ0gzgoTJAwiKvB+pyAbe2yRf8PP4wUD2BmkkdsW3aoiXXHAujM=
X-Gm-Gg: ASbGnctkomBvUkkWncAzA+YSECAINjJShFjN4o/4tLyyQHRmzaYHpQOfgvaYrJVmvC5
	JqNAHCJjANeoILs27erdlEeDet7zEqeCup67gCC1Y6fdYzJvwlNsD5hvos4bouvJNWcnqmLRmaw
	bhfmcYaBFW06s+l2XHWf5Pdu9IgBAH1Ujjr3Iq+J2lUALD3P3zJ+jlgcu5KJdk9qTnGsJPOuKe6
	RlzXMgMr/nm5aVe3eOOYVAeXXKIK3W5eMcIpraZwr8ToEh3au7IxDH+gcozYCNC28tplWZAvCkc
	KSXxanRhiiQw3CpFi4eWIy6jn6dmxdv3Iq48dpgcStpUrdeKfkK6s8znOsCBksRzThSc64cV9Zw
	7Oyrx6UXr
X-Google-Smtp-Source: AGHT+IEMtmYq1fIqRMzhXzdfqRTh3cIPR7oyaCz2qQz6tIkocykg6S0/hjESUlPztU71trdqlLiVMQ==
X-Received: by 2002:a05:6a21:600c:b0:1f5:619a:7f4c with SMTP id adf61e73a8af0-2188c329374mr9918942637.29.1748162976641;
        Sun, 25 May 2025 01:49:36 -0700 (PDT)
Received: from localhost.localdomain ([122.171.22.180])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf6dd83sm15250627a12.18.2025.05.25.01.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 01:49:36 -0700 (PDT)
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
Subject: [PATCH v4 16/23] ACPI: scan: Update honor list for RPMI System MSI
Date: Sun, 25 May 2025 14:17:03 +0530
Message-ID: <20250525084710.1665648-17-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250525084710.1665648-1-apatel@ventanamicro.com>
References: <20250525084710.1665648-1-apatel@ventanamicro.com>
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


