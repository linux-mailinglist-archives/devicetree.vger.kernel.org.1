Return-Path: <devicetree+bounces-192929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7F1AF88C3
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:10:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6E881CA06D1
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 07:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36E5C279798;
	Fri,  4 Jul 2025 07:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Umh9KFfY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02E2275855
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 07:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751612843; cv=none; b=DZkBiESamNXaHH+tUnkVLTa91kFIoRoVTzzNtBpl2cI5OmarM0gu/XVqe/tl2asVQq/16DE1ej5vpCnI6XjYL1/idLbUoTJVEr5W1Y4jZkohQ9VWPgcofAn29SfgnVnnHZJgEwcZYLhFT2WJrKpHhlYqrN+7ht4O7pr/tceHkII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751612843; c=relaxed/simple;
	bh=kOJ0GefeAd9UEbFEyV014zsaaRwCNdDHSJBAudKVMFQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bKQrmBXE+FnE6sKzPkny3FXM7DjXCt+pb4xRU3OEp/PODzYKW5uIyBU2QC4NnRsqtOw27TIkuzIE3SenIjwWM/Wcjy5pYEFq2H9EgsA4z5xLyYIRi/2lGdlEqYGSCQNlQQlHcLeXSLJSvDZ91nMw98+8QRJQv4qgZGWjlxsfU3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Umh9KFfY; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b26f7d2c1f1so900022a12.0
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 00:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751612841; x=1752217641; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RQx4DIh4Piuq7HhjaN41eXcQRyGY2O2ucSjN2pwnllI=;
        b=Umh9KFfYnNsJyzELZ24DHzss3F7/qLLiZUELYJVHgzLonLaH3xl04FQ43oTy7NjUiE
         P/BkrTLzWf4Vd6Xz5kSgJIrByDLd3f1V9vCb68nk//4wP0OBx73/9m5tisKEKRWqSD7s
         i9aKnCL33bD60rKu2AeQ8l67e+758M3jXJwP9YisMazYAJhX+744fBkZshwxViX6LmZy
         LeVJIHh8iFGYsOVoHjZGBGRdJW6C/3tr7FtPT9+xVciQAndU61DWCkgmkSFvC5uuqR1s
         +7xQP8yY1LdEUxsUshLbibqKrfFI3lNY5/yU3uGCnoixMOe+rh0Q1DnyaWK49fybSsrA
         vMUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751612841; x=1752217641;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RQx4DIh4Piuq7HhjaN41eXcQRyGY2O2ucSjN2pwnllI=;
        b=cViza3IBdeOdhenLHxvJSdT+lzorqxFo/TQAUVeTHdgvt7fJY7/M0w9bQksCG4SAoG
         m9O22TKMfa/kgx7OqFVjGg4NpxO+82hutZdCatDZSXdUNmSMW9txrWzEKy57L6LcRRyF
         xovyCC03WurbtPjPX2VHpelIPGQ5TT5vz+73IAuxmPP22avEjeacPtxsRffUSJj1KyLE
         IG//zRXktpN6iPRLtFXXgz9SQVKJp0/Ml16zst/ojvhGt/uL0mHCa8xoQo69gzMH/i43
         B5uk2GSzXdce2k39Kw13D9vfajVL9faCIsPTCzKcOaOaAQvya1QHItnh/QGNBQ6YlCmn
         gPSg==
X-Forwarded-Encrypted: i=1; AJvYcCWyvzwCUuOlFwP90T+lxJ4y6kclIvr+6+soQLhXRZiVkwW9Tnbw1IyrEl8ltG/kUW75OaMmn3e9w9um@vger.kernel.org
X-Gm-Message-State: AOJu0YxS/5YlyWo/Kbzm+xqk8HlJAsPDbcmBKILXQb7AoAzmK+UZFKam
	rm+CqTd8SpjLL0ZIzA+7gYw52rvi0PaA6fLLaq6/W0zhBx11gcc+SbojSQSki+t1+GM=
X-Gm-Gg: ASbGncsdOLBZ696UWx6ydQSNQDzyvyPd4luXpuACumSIPMSESYKxt2V3amnvoZhjbM6
	/Uk98bxAF4R5Qrf8pSpFc18CQUceMCXCtmI1X+SZAdLRcZLYNZrZqw50ekFyXjdSqUzlokSeaS6
	6mbPWsa/DJn07CXOqoweM33Xa+vmM/3pB68jhPWPbd2embwKaUUfNq6zVAI1pqYWW86XT2bZlOt
	G/dmj31TDMif2h/qkJKLlKBz1cWnoi73EMQSm2cEGnzRNbC2Udgw0qYDcgABDd9qSE3ihS0S8o5
	GrJMDiPvLYTcvc+S7eiW1rlCoi0r01Q7cyqQ1zyXKc+rgoS9oS0jvzpejJ3j/vd5W292BrSlHHh
	mFvyS99cHSp9s/99Xq6uBU6/EjA==
X-Google-Smtp-Source: AGHT+IE8RuxxpKedqzy+uzoXVkR8qJBvZDITw6LQzH2d5wo1aXkwsTRyqrE+z4geahCSOD3aMg/Q4Q==
X-Received: by 2002:a17:90b:2245:b0:312:959:dc4d with SMTP id 98e67ed59e1d1-31aac43290dmr2637314a91.7.1751612840937;
        Fri, 04 Jul 2025 00:07:20 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae59a93sm1358697a91.12.2025.07.04.00.07.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 00:07:20 -0700 (PDT)
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
	Atish Patra <atishp@rivosinc.com>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v8 16/24] ACPI: scan: Update honor list for RPMI System MSI
Date: Fri,  4 Jul 2025 12:33:48 +0530
Message-ID: <20250704070356.1683992-17-apatel@ventanamicro.com>
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

The RPMI System MSI interrupt controller (just like PLIC and APLIC)
needs to probed prior to devices like GED which use interrupts provided
by it. Also, it has dependency on the SBI MPXY mailbox device.

Add HIDs of RPMI System MSI and SBI MPXY mailbox devices to the honor
list so that those dependencies are handled.

Reviewed-by: Atish Patra <atishp@rivosinc.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
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


