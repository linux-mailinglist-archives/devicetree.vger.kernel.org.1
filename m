Return-Path: <devicetree+bounces-184598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E3047AD4BA2
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 08:27:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6E4A17B06A
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 06:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E91BE231A41;
	Wed, 11 Jun 2025 06:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="aGLZ/zBU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78CCB22D9EA
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 06:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749623143; cv=none; b=bPS8KLP95Fe5/pOdzZyYbnEsy+Q9Ve5SKcVGhEJBfuYLcNHJqxDgDnn6qAIqAxMXr5oDP0XhX2Truzz1HDlVv/MdscyfcIO7BExB3p8cGQttDd1FzDWwwj1iz7cAZxHOeaa6Pc8KNnWX2Pei8bJKdrufNRLJ/4Yf9ZOkdb5fVPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749623143; c=relaxed/simple;
	bh=Pb4fKfMGleHNMPqEtSCsUXXEOw0RGKvlO14pbjto6vU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lHusPZAAHdrNMU7pF6oLKpT0ujBSsW2mhH6R5s9KYM9EQXkAzPYZLjqSqCxC9WlAaNODJfto7svfMqD/fLNSVbTBVuEWRmErGDPHvw18lSgxkFh2Ao0XHfFJdGta/8eD9t4SNpGOTLvqIsE226bNTNPdk0vhBdDdeBzC1yb5vwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=aGLZ/zBU; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-23508d30142so79225225ad.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 23:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749623142; x=1750227942; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d7mx0GUiR5U+ns4+v9sHac9w9AvSdl9HF8/h3RrjQkc=;
        b=aGLZ/zBU+cZooKEvosxzzaymDEQZq23CAExcmS07T35i5QHUfqc0aEs2KjFq6wnCHv
         FDgP/+OkyCu1o8hcbHDBUBTGKQ1i1Weke5bYONMRHEblHMHddOdeupxhUJDDXn/PGoAS
         DQrfSOJMtJC+av2YjRC4eOb8i6DT+haU34ZOnJSHKURNHSdFQXCBCwTcWNbYanILxOQg
         9eOUtHEVTLzzop8GSpF6VXzALYUiN1gmgUy1qctCMxVNXOfbABgpiBDZ5/OiWMEDCMd0
         VGvkk6K38rMRK1fEhDZQOrwKi7Bw+tL8X6jCgjiqTPC2G0bX2p5ju1j2Aa9ycNm8PMyt
         GWLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749623142; x=1750227942;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d7mx0GUiR5U+ns4+v9sHac9w9AvSdl9HF8/h3RrjQkc=;
        b=n+ZNZN+GiUaPYo9fMEjFCamKhbCEuTFcnoK3AoJG/P+ViORieAVelRpSLdn3d4doe4
         wefqLy5z0sWYfiNNm/9aIyNfyeAD54TmUDIJ3LRHoOx+VXWmSqm2y2rmhE5vHxZv/5Fu
         86FI6XfS9PtRMRu+0xF6ztxd0kFdpa0quugF/bYouGPdUv6pN+cKtiJwRjLtT/6sD0nR
         2wtUPy0Rrw+1xS26yPbUCHuOoBCiFQzhjGD3iyw3DougTtiIj1X7teCf+cbFU0oQPfUe
         ETumtGl8MGPNiSF/UGDM0bF1PtKyFKnGzV5QzJLBVpEARiIlD/DkJ5bXDIvqyi4o2kFE
         wl5A==
X-Forwarded-Encrypted: i=1; AJvYcCVVqz1iezrHgCv39ILxR6CZaKw2bjhztiuA4o2iG/95pSrlAjEKF91kbddwNUvzF1JndaLL9ABycIKH@vger.kernel.org
X-Gm-Message-State: AOJu0YwGAziRkGomyAxe/FGfstxjKeBn4SjcnmEAs5crP8H3L6XBBob6
	Y3lhF4mGGZ1ekTFHLmMpkrPm7o06nw6nCZkvNPCIGeKerDkKKDvuU/UfvaMSR4t13wk=
X-Gm-Gg: ASbGncv98lL1sQgNhlRrr1RC3a27V/goUQGkIZ1fSgTJlbadI7nruXJKzJJO5l2DjAs
	8Cq3IoP3O/dNqWDuTIIrMsOOPpmW+ovKdW1t851asbtJFgG1EIG54uFNaZfB9qrBujiofIoBPT1
	+leoFg1svqpjItfva0SOkukTdnKoGXgvBKhfIlAYYQ8JmVRZo5cqUapBtF1sOl8xs7At9BW9umw
	DI1I3YfXGNwfZJrgq+0MXCKclPfFyW2CGMaK7ls0v1EyXKQ0QJ1u59xLybSs7ZOzqE2yDCSsFts
	dmOEG7IdYI9Fw2UDgqQV1TDlrlKvkDwwQanc2KByhl4wdrgLKEhI2cfEAmijYuCnV4K9/TlS0aq
	rBvDQyYhg6/r+VQaNxsikGcIdp7cgveVuFY3G
X-Google-Smtp-Source: AGHT+IEfcy/atZIXks3ZUrd+ueaz0kGJBeRvccpphWnGgi4UbEP5A+4LOl8ZEzl2YZ+s8KI4mCAfHA==
X-Received: by 2002:a17:903:144f:b0:235:eb8b:9968 with SMTP id d9443c01a7336-236426b4f43mr22663805ad.36.1749623141716;
        Tue, 10 Jun 2025 23:25:41 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603092677sm79976295ad.64.2025.06.10.23.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 23:25:41 -0700 (PDT)
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
Subject: [PATCH v5 19/23] irqchip/irq-riscv-imsic-early: Export imsic_acpi_get_fwnode()
Date: Wed, 11 Jun 2025 11:52:34 +0530
Message-ID: <20250611062238.636753-20-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250611062238.636753-1-apatel@ventanamicro.com>
References: <20250611062238.636753-1-apatel@ventanamicro.com>
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


