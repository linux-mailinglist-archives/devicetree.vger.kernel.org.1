Return-Path: <devicetree+bounces-191858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC654AF0A92
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 07:20:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 259F63A3270
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 05:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83BF1239E9A;
	Wed,  2 Jul 2025 05:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="mLshOdYw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A77C4239E67
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 05:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751433378; cv=none; b=coUfqsRfANOHBoZoExVmYg5kB3KNqc3IKzSToEQR8aGOLKwxX0V8wlCQp62BnBEmPfA+Ti1rmaQrc/mMPm8jWa9/D5aBAk3a1yWoHQdQ//s1qdSprOFdYduSxBOFP4+Gtf4OCeeYLtZLHE2Ro2+V5aC9CgfQuRhi07VIACM/Zp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751433378; c=relaxed/simple;
	bh=uLkW3DQcKIIgVHib4AKQIVSEPy4uT4MPjoilFNj5tRA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p6hHIcySPpjJ2T/E76xLUd26sgv0tk2zNKi7MdcNrmCJ9OXVW03kvmUhG+G/VjXIvRhP+Q3G3PC3LNBYltiSk97jQJ4xLO0q3pc49EvZMcDwVSxph0QsXS9lbb6UBhCWv8CV7+X3mgKHv7XVu6fAR+YSEqzZKDyJg/tjsAUSAsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=mLshOdYw; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-23636167afeso38221675ad.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 22:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751433376; x=1752038176; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yiu9LW4OQPcl48oQrH2DU+mLfm2FHbXqcRasNtW9C8A=;
        b=mLshOdYwRso9NYdA2xWmc5BHkiXVkNhdQRS7fkM+oi3HN9lYqr2zu+SU7N3RFUXsv7
         6ixs635lpXrjRzRqmEGLVFAvMZYxRbbj9BnsG4/G52+rBkAwMedcv0iYG/S8r4uw3BGp
         OUaaVq7kS01vqrJJfNWDVrkhOV2F2ciyegq6PCPnDI8PbZS6aEYt3Ut5rNJ52eHvhi1/
         Ia0j1DWBdlf+DBMsGVNyK0YGqBBmyMnrf51ZfVLtHmEMP225zyJRRLxmuy0xAPn3OAu+
         xnLRVfArzUqmBP/G88cgclovYfLVBPVixhnrcpYvPXeClFjaiHKS6ZFp/YfqDN08lr3U
         JfzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751433376; x=1752038176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yiu9LW4OQPcl48oQrH2DU+mLfm2FHbXqcRasNtW9C8A=;
        b=UdnJ6sIUzVlahB0+FLewnKnNMluM3ZmaimP5RvCTlwnx4SyvDCW/Aoy6gcshIcb7ER
         dRLu3J5OcxNt+dUhYpGcLu3sOqEKKVujK+miR/86N0rEofKHabBhBi1izv0DBDDPSP5h
         7m/1qEH9dOHIokeKScPjVB4Q0wUnxhmsA8sj9DnmddpLMIjiQKqE18Lkbe4jwJN6nTcJ
         d3NKdVB4RM0bQPwnP83qQdIreOFxWhVViNU64iURuEt4WEjdhFM3D13e48BpY4MYuraP
         Neascm9ZlAEhkzLLPHy4eZh2JsVB1nHxgL9+h19u/GeXIUQDetIwQ7cufTmqj8KRaGLN
         BD2Q==
X-Forwarded-Encrypted: i=1; AJvYcCU2ZZ1+GnXlcBbJGMOsKWSZy9lTkNNCOUnVcv7hTGchhN4pSDRthQEax1MhItQRMSL0Y8QVxytyEAAr@vger.kernel.org
X-Gm-Message-State: AOJu0YztIEp+N4rlCCURXrPjMYOeoX0qm4RAme3z4aR/C3YhJ5VWcGBD
	dPpvwgss4z6A0tPBvheuYxxUKlfm6mG4SQeIPzc9jdbBSn0UGHgLKVtcjPZM6bqN8RtM3o/I2v+
	Xdrfa
X-Gm-Gg: ASbGncuNFyVou19iNs2WSfCrRHZIatXd1FFrK/yXIoXOTleN2R/HloCnUfzMUiHJogc
	LV1zNcccjORvwyMcqWQ/AvfGQuIAR61MiVSCScTpkaxalyO3i9aTp6SA6bmVSEGSAMkV5lJcD3f
	k6gg7q3Eix7kISJ1abP9vG3Iuv8+AVvzvMBcBMp1NIdj29HPBJjrTClzXXKTgZf2P04v8IcMz1J
	yFAbzHRWwV1cf4T5a8W9yuN8176l5D/xrOjbOh3DWPcfFQIcuUBsmMhU6fVZTvsqMk56ATiMlDc
	BdFG0+EI2oHtde96uinIXXPAP4/wKNdNi4uDayihKwGHmmArWSCuZlgxrBBU8pNRgSnfxZ3R2/R
	DxKKaIKJ6Dm16M1M8
X-Google-Smtp-Source: AGHT+IHK7JJshpTCYWIRPYhBfujfdQF43fCmzueM9e8EwtFQkDR9S8tXHvcjhHdLfuN/8WzEAqudfQ==
X-Received: by 2002:a17:903:948:b0:236:6f5f:cab4 with SMTP id d9443c01a7336-23c6e4d3578mr24923105ad.5.1751433375731;
        Tue, 01 Jul 2025 22:16:15 -0700 (PDT)
Received: from localhost.localdomain ([14.141.91.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c6fe31933sm4719595ad.220.2025.07.01.22.16.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 22:16:15 -0700 (PDT)
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
Subject: [PATCH v7 17/24] ACPI: RISC-V: Create interrupt controller list in sorted order
Date: Wed,  2 Jul 2025 10:43:38 +0530
Message-ID: <20250702051345.1460497-18-apatel@ventanamicro.com>
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

Currently, the interrupt controller list is created without any order.
Create the list sorted with the GSI base of the interrupt controllers.

Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/acpi/riscv/irq.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/acpi/riscv/irq.c b/drivers/acpi/riscv/irq.c
index cced960c2aef..33c073e2e71d 100644
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
@@ -125,7 +125,12 @@ static int __init riscv_acpi_register_ext_intc(u32 gsi_base, u32 nr_irqs, u32 nr
 	ext_intc_element->nr_irqs = nr_irqs;
 	ext_intc_element->nr_idcs = nr_idcs;
 	ext_intc_element->id = id;
-	list_add_tail(&ext_intc_element->list, &ext_intc_list);
+	list_for_each_entry(node, &ext_intc_list, list) {
+		if (node->gsi_base < ext_intc_element->gsi_base)
+			break;
+	}
+
+	list_add_tail(&ext_intc_element->list, &node->list);
 	return 0;
 }
 
-- 
2.43.0


