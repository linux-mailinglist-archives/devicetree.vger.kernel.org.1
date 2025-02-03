Return-Path: <devicetree+bounces-142426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3142A254EC
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:52:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4371D166856
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E750204F62;
	Mon,  3 Feb 2025 08:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="QHD2r9Kh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8471FC7D7
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738572728; cv=none; b=m1UPeESOUjJKaa56jPZ+mKhrb0pe6dQg1cqY1djCjDqjt2/u7YabrJlCVn+X0iqgXK2tzPMZKZ8/Tn2IQjXLIlmU29lt6bg9n81jfPrLgu3r7TnGby8aT1WqXBblB6zjgE6GsYOOpqHYW3CbAohVKdf7Jvwvj7HwVGPdX1wjRU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738572728; c=relaxed/simple;
	bh=DJLPtY9fSqVBTgjSnM4FsYGiupFf6DQ6YZNtl53ByuM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LgBVzuqgJ7dhRYmxCrxhRTLeeb6lVasRbSwUpkETgN3MCY5QJLZltqmlAI4WOx7NKsd0+uLiBTAdmImKUKHAlimCtLJFtCh7iuisQbky/QynpX/tKZsqd19K3V0DGMx30cxqOxcovM2kmSnZVPBEOwKFQyp8Vf1buB6fzRQLgTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=QHD2r9Kh; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-4679d366adeso36837511cf.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 00:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1738572724; x=1739177524; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QqHKfwEB4phXeApzs0j4obzgLpliUPZiImb73QFVqNg=;
        b=QHD2r9KhgzYkpj+Ek3lp23DEggbnvfBWsrkIBgs+4F2MatGM69ZlCUJ2TI/ZHwO5kc
         tPrY1WKHAj+EGj/eyZDOptlXagzEgbfjJ8coXuMHPKHyATSgRPXR6foaYSsNWjbiD/Sd
         V2CHLFjMEFbuPjMFjCZjx+u3GRA19FrPwQtg/F8Mw2AHTrWCzBm9KSY/MnujKEk672x3
         ieL3VFHElVkAPQjzLSQbizfVLhlXzkJll4c25fHPMjbIdDf46BufXOyhzahSkjk5Oo/j
         T2e4c+1PZuCmQVhAEWQeKBT3PUIR2KXHxaZGiq0R+iNANuFOQln6ITAdkkZcRisqfj6X
         Hd4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738572724; x=1739177524;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QqHKfwEB4phXeApzs0j4obzgLpliUPZiImb73QFVqNg=;
        b=keSf0xtKbzrX15TYCcFYl+C8+fz4bUib4IjIzdiZAXZTh5hH1GgCy/NQawkuLseVmL
         U9qf7jjPillErqYW8AaEWulcEztB5CkN4gr4MUC8cuinqMXgSxIcY0O6+qOg0ovxUAhX
         4fkC2rH6WpfokrhIx3KIl3ETGdeOffrgZ46afy7UVFPNAHMAkVgYELra26LXqQt3+8QC
         OZsEb77kKpk35qOcYE3JBYirNdYEPg9bsXewTT233MrYj9IZPbgrIhB35QW1T/tOMuLH
         iANMyQio8mZRUW3MkhHGuebshtsRK4QCk1xiyfNQ/Cqc3GIVMeG+fZC+1DfszgPaZiMv
         2CXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMUWVJGiLlCuz5+B5nsX5C2/czVHGdDExmVdBnaA6vGjlkANpziBVRkbjgYvXky6LobDa2+0aS5wrW@vger.kernel.org
X-Gm-Message-State: AOJu0YwnSwbn8gVcpYGv5G8ywXpzDOWmFA8+Mx+GJNP9jCLtb6JBtVqG
	TnQ7B47zpm0SGb8WUp+ETxrdhbl4F5xcH5fbTvTqXwUsFD35r5W+VMWTcVUbCCM=
X-Gm-Gg: ASbGncuSMFLU4DIMlhO2rfEvwEsH2Rgk9Hc5/3Ei1zl+C1KLmi52pZ0P8C83SeS5GWi
	n2X4Ag1JDvFC3zYm+n2e8tSnVbKBSwH7fP33093N7KhmiZ7jSU9zImSPOKw/6iJg3VRn0HEF16y
	z9sosPDNDgY/nVyinlHjB6bu6iQ4X49699M6cYsX+zUetszDB5HFMeUP+ltGLJDNIUdKYQ3zgcG
	kbkrrDCQ0Rv3TK/V39HgUVkz9V7JVuerKJapUd53UD5CmV+NN4E9X+psFPMba6fLnoYO/78jmIq
	pQBvGc1R7v+viNYu3A46tbTF4e4WkeDCcnoDcSs1NQ3FOeaWc9mVHow=
X-Google-Smtp-Source: AGHT+IGWVNCE2D8XvH1GGSIfS5LXa9bxJFfSjFmLfIb7zNeOXcqdzBvLSHp2sbBS6h1VqkAcm9r5rQ==
X-Received: by 2002:a05:622a:304:b0:461:7558:892f with SMTP id d75a77b69052e-46fea0ab7d0mr150479241cf.15.1738572724220;
        Mon, 03 Feb 2025 00:52:04 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46fdf0e3089sm47657911cf.46.2025.02.03.00.51.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 00:52:03 -0800 (PST)
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
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [RFC PATCH v2 13/17] ACPI: scan: Update honor list for RPMI System MSI
Date: Mon,  3 Feb 2025 14:19:02 +0530
Message-ID: <20250203084906.681418-14-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250203084906.681418-1-apatel@ventanamicro.com>
References: <20250203084906.681418-1-apatel@ventanamicro.com>
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
index 9f4efa8f75a6..e490b4160612 100644
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


