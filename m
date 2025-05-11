Return-Path: <devicetree+bounces-176005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A17D7AB28C9
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 15:45:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CC763BA118
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 13:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C8192571AB;
	Sun, 11 May 2025 13:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="n//j3aCT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E06452571A8
	for <devicetree@vger.kernel.org>; Sun, 11 May 2025 13:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746970943; cv=none; b=B54mn9I5CNUkscxIR3Pbh6jG6yEscfjSBlcMMlueg+2HUj2jIe2+YnT9W2l88KsT9CiHvZJEytzeBB+h60+Izumwnyl/bm12W+BZvMgLW8XhvKqhCY9/JfJo38ydlAA8y/Z2ymDgghlCSpxKQ6eDpMYwhSf4qWltowqNdBAv7Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746970943; c=relaxed/simple;
	bh=BiKDpKKLxE/k6ZY8kMmrwXJi+9HFJObjqUV7Aozt30A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tcYjcxTP2vCreyLu4rpNMKBbIKc+YH4h8gol5pRg5O9p97sceKayl1QnDHgErFLnHHYbO4dYTbNrUlQu08+0OSUZDJzl8RPfcOygdWHWO+ZAiBwaZPSLE7GXWnw+zS0XhE1k17u0zLBxnJzp+3gYy48Y01ebsDSiPUObg7qAn44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=n//j3aCT; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-72d3b48d2ffso3768860b3a.2
        for <devicetree@vger.kernel.org>; Sun, 11 May 2025 06:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1746970941; x=1747575741; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SXNxvUrDvrPEDXD7o9bAHtY/zIDAmgnS5reR+x10ajU=;
        b=n//j3aCTQDze7HJVK70lCkZrpzub6/BV/wJKMGlDAP+k0V1EMy6J+3/N6ovCwvDuH5
         xiaDFRR+vuAA1mEpegbeIj2i4ZmnWT2pexMhHDponVKCKFa2NV4RpWCEPu6xcruciCaU
         xz4RA1mSto7Q02vDxLuwdVqVyMHtSaBz5Rgej6zaSYEn3FyjHxQjAl+s5fESRkTwreD1
         9XXdTRrUC7qOKDEYjNei8WA1/NN7PoX/koHxpPpphDySymYJDHeDhvcLRA7w4e1VszRa
         q6lufTE8V9SsMmHSgxpgY+7LZcTMNtca5UPtWhg0iNwN5f7qEy46PWjrKiLGJO2zu30l
         u+XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746970941; x=1747575741;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SXNxvUrDvrPEDXD7o9bAHtY/zIDAmgnS5reR+x10ajU=;
        b=SR2ICxiGSP15mpACEdxZX6Z5xz4Aasix3WJEl2dkz1pQcUiTXt5GC/ogcZkPG31357
         CKvpHMLZ52I+BQn0mz38jFXg7bYsg4RXJGVP4BKLtbt1EcfaE/OoGDvrowNcr3y/x4kw
         3xebGk2wDMgmYwwh6eFf6ivnw/kl9KxxfDdci1R6AAkiJug1Oh3YEFjWHlV47tKYcCo+
         bYEyKQb3zjIEf5NtZzDhHde75ZnO6WY5KLdDXeJaiQRIRWGdEEz3TYxUnu2AmhLeDvHQ
         WAkEu2/LTmHKAeJA352JrBZQ4bawGlvhGxK8JgIGSe1WVar5SZ8yREK2t1yf4zk8+mWB
         fPzg==
X-Forwarded-Encrypted: i=1; AJvYcCXBQw5Z/XzNcMsfD3zZVl3Dcwp1Gjb4qBJAQR0nysTuIgm/cy6cyql1xB765sw7jha00RCmMYfTgf9o@vger.kernel.org
X-Gm-Message-State: AOJu0YwwG2npMa/gAShNhiscORtAvsp0Be8g/Gx2kvpmGTb7FyY+ZYsR
	kjOGPFs3SigtqtM0n/oWDz34+0trY5kpKK/cquPB36jWuf1PXjcG5eWsa+8FHzA=
X-Gm-Gg: ASbGncuT1kAgtoR3EBrkUX7yYjy00IKy1TByJbefKLdbvYNvFGINdrWkW6tohpApMJv
	ivFw0cXykMs5EewR8b1GGS2Y0TaRoQfpmqoicGO5U+FlPirBHude2rEfUgKZrqM6ZOJ8+CoYW1v
	zEZhQN+hgoysC9PvRlIrFSvZ4DnginAQdTbSB0LTyurQiL6Y2wCRBxtxOmOFPnsE0/4oGLuissQ
	iLXyj+KQr9tupC6ntp5DVjQlZ60uUEZrPY+h7a4LqIs6W9MKw3wyFCfH5lnZ11wkC9YXc3NTeYN
	erh9PmdCDpRk4r+NAGSErW1DDIB5ucTBAfSgDLivpK6tfnGdkg3/tY9sbZTKTgeWYaBoG0jKO2H
	g+szfa03OhECqcA==
X-Google-Smtp-Source: AGHT+IExo0JFN6HOT+mbUBxTAOi/++2rhBZ3oW7UFgUXMGLrtCOMV0AdwEfD4kuAZAW5D079x04psw==
X-Received: by 2002:a17:903:228f:b0:223:4d5e:789d with SMTP id d9443c01a7336-22fc8b415e8mr147781135ad.19.1746970941076;
        Sun, 11 May 2025 06:42:21 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.17.86])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc754785bsm46665805ad.20.2025.05.11.06.42.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 May 2025 06:42:20 -0700 (PDT)
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
Subject: [PATCH v3 16/23] ACPI: scan: Update honor list for RPMI System MSI
Date: Sun, 11 May 2025 19:09:32 +0530
Message-ID: <20250511133939.801777-17-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250511133939.801777-1-apatel@ventanamicro.com>
References: <20250511133939.801777-1-apatel@ventanamicro.com>
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


