Return-Path: <devicetree+bounces-176006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B35CEAB28C5
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 15:44:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6A431898EAF
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 13:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E14B258CFD;
	Sun, 11 May 2025 13:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Bal7FfTg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2772580F8
	for <devicetree@vger.kernel.org>; Sun, 11 May 2025 13:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746970951; cv=none; b=W4kA5SFJZSE5Yoc1z8D7stBEmsuBcnYP7eDT1ObcapREayQFSPs73HJP0uvlXtKh3iw47xPVG4Oqxm8NgVVjfYhWfCgwha5C+WSJABjwsJMEwEWbxE8aSd3B/A8nw32pxCgGsnmfPSK4c/XXciACAjVGPn5LBNVMsK4379ZDKwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746970951; c=relaxed/simple;
	bh=iYFTMRQJYHERqAkl7SYjQsJyICxvZIoB3wXVxoG7tuE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a9WTfT3J2ckAvIebvWRlqRwV/xsvg+ndG3c812804btmPmTbEDWlNK7VjmET3xVJw+qFVnR7AIGzJvD+6/+wfFU554M/Dw3KcKO3hHgK6ladPFuhbVV6dBi6CGsfLr8p+37m8ChGv1QM+cheI0R9molnpjsDFYQUIf24IddDzPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Bal7FfTg; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-af91fc1fa90so3016624a12.0
        for <devicetree@vger.kernel.org>; Sun, 11 May 2025 06:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1746970949; x=1747575749; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L1ncfjwU8x+M93RwaeMxt+NygYvFIPfXleFyJrSEwNk=;
        b=Bal7FfTgTOBojacRRWl75bV127Aj/9YIp3AySd4izIFQld5uz3dhhMu/Y/UG4XdQQx
         FmS+KpUxTjQCINdjvEw+td7Fy4vUH435psmwpcsgKocxSqpqWFYRtXYyOYKbqI7oUEUK
         jd2Llg89hgpabphCnF8zVEODtqVaomG8AfHVNSFcIuwWrsWyFDSu97joXaixDVJFeOFg
         N/GBF4lnKdn8/O5zeECplGI74bA6d8T4kE2eGXsLh98Q6BYcSO5G3GwpQCMFG/FM1zjB
         bYYypLeeKOXBjFU5uzyu36lkCYVptWSaX2j/5/fBBrywVI7wnPcL8V5d0hjJcqoldpaa
         u9mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746970949; x=1747575749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L1ncfjwU8x+M93RwaeMxt+NygYvFIPfXleFyJrSEwNk=;
        b=uCpA5GC0zLhSd6OKh1ImRmmpII0K7SLaFYLnUiaTLSFDuRzDQ2HzIESsKSB2QNgnGr
         qque5vo3iRMnfTkzGQed1CSd5VZ57H36mZWBhDGte6650eT6tPvK1a1tYqW7iepjdKBT
         +x8Q11Oz2Ts+sPLPmlCU6brtXtrpCzlnL42fYe0qcI/f4cnM8Xwautje5KeCPZJh2hon
         BicmGXAAWWnR7bo+89TsDOfg0wcxJ68CFeJXmZw4JgpIqZOUQ+knMEwbfrX6H0WplDUs
         NMw5RekA/h6FzaUU8RwaLaRUuSZcB5mvmk9GDGw+ZCFm1+KraOJYOM42l/0gWInQNBdI
         Zt1g==
X-Forwarded-Encrypted: i=1; AJvYcCVulzcX+zGZLTRMLgJHjblvaq15M83lHFAbvIS3yxg+IMN49XnvMwTa4sil85L5llinrOHNk6qT7uoL@vger.kernel.org
X-Gm-Message-State: AOJu0YzyOsXZEQHpB7GvQmTz0k10+ttlFZq5IBRghuts/NxS3C8jU5Ng
	TEmoizgW4vKOEU884AhiSolxOETN7LlR7J9nH1tS+N5hlytNQkW+bcdA9ax7xQg=
X-Gm-Gg: ASbGncu0UIEVPObMLqgG836gmfIa2y4LIqtVH3ozayGhQoVLch1XysxH6eROHEsyv/b
	1vepfMinqI/MT5J6MojV6fN4kvQIUeNaMGB76CEw0QtqyNTOssGqbZyHbCP1cvD3uZTdCjxqytR
	OX42N9IbRsDGkyYMniaLtqc3Ih6/AQudYpDG7W64Ea73nATUI5deSTNFci2pLg+LiYZNXZ1blF5
	CNOzPvBDXOy+6PglRmJ0RJW/4XOe0tJ+NjDqHm/Oa9QuTwyC4tpwm5CRYMM5qwXfdKggiJcfuvU
	nNOowOC7EDmfNQ39ia1nFioQLZl2ctaVm6CXUPiiLZXl1SOwJ4n8NFTkRcry6VFpV01LuwgJyuQ
	rTbf4sUsOpJtxGQ==
X-Google-Smtp-Source: AGHT+IEe5MoHmRn7VMhcjZzc/oDhZp6CpsUXB5Vc9hjV0uT28JPcfqXvqK8cpfVDg2JO3fpzBT16Ng==
X-Received: by 2002:a17:902:e949:b0:215:94eb:adb6 with SMTP id d9443c01a7336-22fc8e99d25mr152020315ad.40.1746970949344;
        Sun, 11 May 2025 06:42:29 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.17.86])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc754785bsm46665805ad.20.2025.05.11.06.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 May 2025 06:42:28 -0700 (PDT)
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
Subject: [PATCH v3 17/23] ACPI: RISC-V: Create interrupt controller list in sorted order
Date: Sun, 11 May 2025 19:09:33 +0530
Message-ID: <20250511133939.801777-18-apatel@ventanamicro.com>
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


