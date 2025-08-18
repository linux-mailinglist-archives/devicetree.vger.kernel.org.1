Return-Path: <devicetree+bounces-205587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35056B29800
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 06:16:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 642C3205A1E
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 04:14:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D54F267B9B;
	Mon, 18 Aug 2025 04:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="f/muIKnc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E392C267B15
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 04:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755490372; cv=none; b=nquL6q5I4zXXLxhNPaK0lG/BW1URt0eWvNhzrX6PLa+Ijg2xZyDYvfb3p7K6SKfQ06bPbyu+KNxeVRo4IPVqw9n4VYKcgmrWyzrCBc03vfcl+Bl80t/nvS0BSH37JqFHlVhAk/av5FiX+aMxTqKHr8ds89Nt0R40s6m7FEpvGJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755490372; c=relaxed/simple;
	bh=rmp0C7txImCtQLNbB7l+5FEegOeoCIFY/QO5lS8kFpE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nQhnSwFKZEkjD2B8gw9xfJhAnSiqrQEpv0BEk/1H2wkgOUsHVwJkejAS6YbHJJha3N0JJ42WtSxgQvuryXXEYHFzVPhNEyOFUvXsLq2vPOrTYjcJ9yGzIi4Hl250c2FtrCZXqkllppSKPhykKuq0mUCRKTzj1rmv6AvglfDeC9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=f/muIKnc; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-32326e2f0b3so2578281a91.2
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 21:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1755490370; x=1756095170; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lSO7EIKKecSXu2aYLs1QJ6fLwvTSI8gnzNqTWtwR7X8=;
        b=f/muIKncdv+8+MqViP76GMiDIwEkNn5v4o/bl7hIktLc3CB3iOfanexZ/7gz2A+ECI
         RTPTBD0F0gjYTkl/CW1qgZE7rj6tuQD/bWQt0aoa3SFeojCjQWdSV1tAuNjTZlhCYbjN
         ProQJhkQKvZqzAH1Oq9T31DQHvFVZBIt9RfdxThzDtX0dLQA3qinijADW+PEMeV1OaId
         ZLg1B4HyGlwhwQ4pqVCNuTKtYnUXoiwIDfoRF3Krd0NWX+uMOqSb/uAMldSOPfA7WaIi
         gVO6aj5oyPVJM9/C/pe4O4bM82pFV0bGIEyfcC2IEaPCk1QvI8e5N9PvtrkRwGm6cFA7
         nK9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755490370; x=1756095170;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lSO7EIKKecSXu2aYLs1QJ6fLwvTSI8gnzNqTWtwR7X8=;
        b=BmYOG4JkRet/cZd0wf9rVkgwppuQyjCkIXa/vd9OqKacBoF7zR1JXFD3wQOeZU+uuz
         sdbLAmYUUuIJ7bYP7q1fGCXmZHDvJWOsS6r7Om/527oqtCchz8CQb5Quj1RYsVKy0ZNn
         illqsUyQsDaAVMY6kc+0MYwFyYLTjxOzD2adxuajVyGZ/kEcIaFXhUmQfYOL2Kh/WOFn
         yW0OdaNkDVTATUDapvyG84m/C6kMU0sJFxkJ9OKW7zvWw+b4/4BzVqzEosAu/pnmtIk7
         4zsZXuJB4tGSbYqze54VwayeIWJYocBkvvgp1QJA8grOqcVBR6E/B72C8sn9X0uRQVfo
         3OSA==
X-Forwarded-Encrypted: i=1; AJvYcCVADwhkPcPMK6mtfD0Avo4QRnjjX2R9OebYz9F9LrLM99ujxBXZuVJPn2z/Wo6UEUzhzoode0963rdM@vger.kernel.org
X-Gm-Message-State: AOJu0YzK5H/YWdSAktcf6Z3Hf4b4anK7K/mGmzQ51Ef6mwOzP9LdRV4I
	eOTg03i3mNZX4SDI6d7tITBdpKT4/mDFOsgTtQNKY3YkQZpvAIMhU8srsS7yAfsxATk=
X-Gm-Gg: ASbGncvYwpeuyjyva9Z2CwJ+h4fBJaSmdKJ6WVn+EMxHJRvcynAAdp/b72ygR01icHj
	5pl7tL1lAdzcF57+d3O9QCRbkO3PzBXuKd3tn+e5+oDClCsJjjBzDTJfAVZ3y4OxydR2xnuVUH1
	BcgAtklvpH1TTP6Ggx9d77Ush/okqdhf8mgXiqa5B698in76lDHU0Uh19Nb1rasUisbgDn13PsV
	Hl6cWthDcMBkz0aE5gCeom/mKIxzCRF4upOCxkZ8bMosq/cxo1X5mOjbzMSTnWvc0xWWBAmYuGm
	wEQ8LN/dIl/wXRI0ik5IItuX1OuT4mMg6WA+Uxm9tN/eeGUSRzWpqFL8oOyd/idfBA6AI0GKhgx
	EcNvLX0CpPYEq/xPGKZ8MTW1Xoc+xe4u47hfmPF+NVbatwRRhYFI/08iuv6L10wt/
X-Google-Smtp-Source: AGHT+IExLgk4LFH6XvWJh2TlOkeN2K8sXn/NODhuvQLQVVN3l8PFGUqseotWWhf1jijDquDiamajVA==
X-Received: by 2002:a17:90b:55c4:b0:31f:30a6:56ff with SMTP id 98e67ed59e1d1-32342141f5bmr14558099a91.19.1755490370228;
        Sun, 17 Aug 2025 21:12:50 -0700 (PDT)
Received: from localhost.localdomain ([122.171.17.53])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32343c70356sm6560972a91.25.2025.08.17.21.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 21:12:49 -0700 (PDT)
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
Subject: [PATCH v10 20/24] irqchip/irq-riscv-imsic-early: Export imsic_acpi_get_fwnode()
Date: Mon, 18 Aug 2025 09:39:16 +0530
Message-ID: <20250818040920.272664-21-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250818040920.272664-1-apatel@ventanamicro.com>
References: <20250818040920.272664-1-apatel@ventanamicro.com>
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
index 2709cacf4855..2c4c682627b8 100644
--- a/drivers/irqchip/irq-riscv-imsic-early.c
+++ b/drivers/irqchip/irq-riscv-imsic-early.c
@@ -7,6 +7,7 @@
 #define pr_fmt(fmt) "riscv-imsic: " fmt
 #include <linux/acpi.h>
 #include <linux/cpu.h>
+#include <linux/export.h>
 #include <linux/interrupt.h>
 #include <linux/init.h>
 #include <linux/io.h>
@@ -233,6 +234,7 @@ struct fwnode_handle *imsic_acpi_get_fwnode(struct device *dev)
 {
 	return imsic_acpi_fwnode;
 }
+EXPORT_SYMBOL_GPL(imsic_acpi_get_fwnode);
 
 static int __init imsic_early_acpi_init(union acpi_subtable_headers *header,
 					const unsigned long end)
-- 
2.43.0


