Return-Path: <devicetree+bounces-180305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE61AC3329
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 10:51:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B56D01897C1D
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 08:51:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0989215C158;
	Sun, 25 May 2025 08:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Sere2Dq9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85DED1E633C
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748162986; cv=none; b=Rtr/f2go6ZnCELVFWo9+Au+NMr/fUiZ8AEzSYCGuASITG35/CGHdwYVBxuZPhwoQIQs82mY+hWwEUYkbvTYFPUvnkF57RfXQrM+kBdCJ+gGXfXbIvg2hFbew+yOmD5nAsoHC9OmskE1vJuhtFrOf7R5Q6JjRdzuB4MH/DahQbuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748162986; c=relaxed/simple;
	bh=iYFTMRQJYHERqAkl7SYjQsJyICxvZIoB3wXVxoG7tuE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FJEF7I8YoUgR1EEvia2rFxlGTzKwz2rhD3i8E/z5OK0kLsSmfsUMG9l5j5ZRFqM/H0PGdKrkq/Gt7QUFQ/dTB+szyA3P/6RCyHam6P1zm4R34WrgRVKAPNQFOR0TAVwuV3gFtbCdX0ju7sWA4/6M3cyl2NgYB0P72SUuUhwygls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Sere2Dq9; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-742c2ed0fe1so1170244b3a.1
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 01:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1748162985; x=1748767785; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L1ncfjwU8x+M93RwaeMxt+NygYvFIPfXleFyJrSEwNk=;
        b=Sere2Dq95x7CnZcCUYc9cz0+IFwF/lerDK3DWaP8wS7p98iA1k5O1lQuFXxWbuB/El
         /rRZAvWVjDJkPcKlsq97fMCq1LfgqBJn+JWl2L1kOntuHsCGkalOhR2S5VqspYA+uTVe
         cWGXGc3gpK0wB5vPhrn4F46vAVlgjKR7qmoGBi9Uxann9oE8Oeu8JPXD/rNoftCBeF/H
         8Y9BQEroTBZtZCqN+00Cg7t9GuZ/vNLptPjatd5lXVeoMf8O76HUbPzKmtX0zi00e75R
         C1HkRlH1eMTkqvGUAkNXaBekg0wED4KVfl3AxYQuXeEmnKSIsHVYvgxGeX2H31bVwy1u
         eivQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748162985; x=1748767785;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L1ncfjwU8x+M93RwaeMxt+NygYvFIPfXleFyJrSEwNk=;
        b=INZl0S7GWqyUNhKfSjRQfgCXcGKEQOAmIsty0fzBSyNIPRRz7W1AVOZE0nbEoj3AKE
         ew6kPmwgjeMKpUFW99ThjGWLeEyRxmwmaEbWELn0GrLRx5w4FhcS66Lq+48zw69xVJJy
         BU39UthzJzNuCnFLSUEBuf4MsoWjI3Yt/X3cfOmwMqLMz4Y8AJ4oZWoqH2LArgHg0Xro
         h6b2YzrGMHQoO70GEtHI18z1JM5RRZDd1UbPhxeTLhJkRZMykTL0yJYqJ8kkvmXG57h8
         kkeL0/s9XWpR5eG2mQsxMvnhzEosSpvvmz31md8oVBOc7UCIYMADvcz+9+nqVz3BHHSE
         xsfw==
X-Forwarded-Encrypted: i=1; AJvYcCUOKwUJxf1Lis4+jZ7pZc9nNfTuQnPpG8qf+JRceQ2o/kf39hkbJ6gG1FPMwDzLDniGvVZrQRAHfCXh@vger.kernel.org
X-Gm-Message-State: AOJu0YynNI14U2egutEeL0XfO2k0eS1bW77VVoMIcMpu5J4bqOv0+h0a
	qApCpfHPWKMLVZ5nh+okBWr5WKa4eIej9SK2LhpoGM1kj36NgCdnPLYu845to29sIS4=
X-Gm-Gg: ASbGncvT8a/D1clTjwbDtjSwql92jJpkoY11pvMqGfi3+Fcyx6DrgvVD4TxCKr83cSL
	3keP2TAYBD/8bTJSrDenowFYZ+BMwNPBdFS9YX7CEODAg+8PtWYqMncBYSH0VTXlNqcZ2iaeE/R
	ikgODYHOkqER4V66k/zXkcrIuIKS4VQod/SY+MIRb0tgmusgVkFizizZhCsbfqEJZzksf5JfFnk
	Ai3joF87U6ozsNrCupA0OYSjwp62Cb+EwwUtC8r5cua1Yy+fPMaJTyf236zDA4ySyfA5wRtDlqr
	UjNqe4/N5VRCCcV3LaN/eWkTYieD8I/QXlfgCoyDEjhovKMoCzRYJoUG75B7pXxXKo10P0Awbkz
	69KxY2zxc2rhCNGER5EQ=
X-Google-Smtp-Source: AGHT+IG9TTZb+OY85zw+H0eNYjGgFyHc981BMuloFhe2PCTtl6RRkSB8ul9TS3wJ36HaA/NGbUjQ+Q==
X-Received: by 2002:a05:6a20:a11c:b0:215:e60b:3bd3 with SMTP id adf61e73a8af0-2188c353194mr9297558637.29.1748162984743;
        Sun, 25 May 2025 01:49:44 -0700 (PDT)
Received: from localhost.localdomain ([122.171.22.180])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf6dd83sm15250627a12.18.2025.05.25.01.49.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 01:49:44 -0700 (PDT)
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
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 17/23] ACPI: RISC-V: Create interrupt controller list in sorted order
Date: Sun, 25 May 2025 14:17:04 +0530
Message-ID: <20250525084710.1665648-18-apatel@ventanamicro.com>
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

Currently, the interrupt controller list is created without any order.
Create the list sorted with the GSI base of the interrupt controllers.

Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
---
 drivers/acpi/riscv/irq.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/acpi/riscv/irq.c b/drivers/acpi/riscv/irq.c
index cced960c2aef..95b4d7574ce3 100644
--- a/drivers/acpi/riscv/irq.c
+++ b/drivers/acpi/riscv/irq.c
@@ -115,7 +115,7 @@ struct fwnode_handle *riscv_acpi_get_gsi_domain_id(u32 gsi)
 static int __init riscv_acpi_register_ext_intc(u32 gsi_base, u32 nr_irqs, u32 nr_idcs,
 					       u32 id, u32 type)
 {
-	struct riscv_ext_intc_list *ext_intc_element;
+	struct riscv_ext_intc_list *ext_intc_element, *node;
 
 	ext_intc_element = kzalloc(sizeof(*ext_intc_element), GFP_KERNEL);
 	if (!ext_intc_element)
@@ -125,7 +125,17 @@ static int __init riscv_acpi_register_ext_intc(u32 gsi_base, u32 nr_irqs, u32 nr
 	ext_intc_element->nr_irqs = nr_irqs;
 	ext_intc_element->nr_idcs = nr_idcs;
 	ext_intc_element->id = id;
-	list_add_tail(&ext_intc_element->list, &ext_intc_list);
+	if (list_empty(&ext_intc_list)) {
+		list_add(&ext_intc_element->list, &ext_intc_list);
+		return 0;
+	}
+
+	list_for_each_entry(node, &ext_intc_list, list) {
+		if (node->gsi_base < ext_intc_element->gsi_base)
+			break;
+	}
+
+	__list_add(&ext_intc_element->list, node->list.prev, &node->list);
 	return 0;
 }
 
-- 
2.43.0


