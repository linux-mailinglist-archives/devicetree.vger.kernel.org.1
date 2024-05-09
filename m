Return-Path: <devicetree+bounces-66025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 267618C0F5B
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 14:10:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D077A28207B
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 12:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3715814D28C;
	Thu,  9 May 2024 12:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Bub+Bivc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D0014D2A0
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 12:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715256515; cv=none; b=JgmHwafhAigFhVIPlbLKCEqbiJXQ7o1lNDQgqjOydZwNl7Md7hCigrb70G0pZs458vtNtKrU9K1ct/F6YeNut62GfLDDENk+fQ2gulbtT5JSUvjYnmKAI/42wgTYusjWXgMF+88iBYti+sAKBWvUQ4Oub9Q2ktv0MDsHBilQbs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715256515; c=relaxed/simple;
	bh=kWgF3tD9Ik2YdBsN+KBUHfHvGZhsFYBdloxc7qbA964=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=iYaKyEccHZwkomZBNZkjxMM324Lh89jD/+nW/UqW1r9gkkO2Z13zTtZ5y7CZVU1xCjwzPfYZepJiMrS+28bK4t7YUWWKtuxkdZrmP0/0viCUxnrX2v37Z/hLeHLsGIJJBUlynZkXQXzwFNV6YUxao3xC7ygucL1heG3rzqZYaFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Bub+Bivc; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3c70d8bb618so465543b6e.2
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 05:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1715256512; x=1715861312; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nJC14KI5N51a3HwicqFWcq+QiW6+wpgCB8tEHpU3Fus=;
        b=Bub+BivcoOJb4874MGTs33YFce8MgDeGN7oGRdZcSK+wzmnoZys1C5MvZNQ2jp+Prg
         QP7Uu4g8+xz6kVKlnMVSSPGpzraRknVblr/QQApriuMJkTF2qIBtgs1+CzIY3c3HHmJr
         mRfpfcw4Yc67XUNJSdWRLaIDCUiCqC1aPsnni4W0xbjm+qFu5v7UTHxx8BToNVHI0Bs9
         Ycki7NNEWnI7Np2/ggO+1Q/49jtTdem4lGKjJ70kPzSvy9M8hx7Y6AJgblmmH3vrzxs1
         Q81Co80vsa16RIr97TZ1kCAgnbqsTwA6co2E1YRHwLAPrpwfPxXWVnA+ssA1lB2tiUKY
         pvqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715256512; x=1715861312;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nJC14KI5N51a3HwicqFWcq+QiW6+wpgCB8tEHpU3Fus=;
        b=kpUA+UcjqZRXo7LTzyc6FrIeP2CoFdzmZCnvVDjVBTB7JWSojor/KhHEwbYCXTMWXF
         X0G+IgKvFAzh1kelIwqZ5jP8Csir+entExm09xJ4biyz0297fd3HFMAuK6G8npBsNSUc
         xJpXoIcmlxnly9sg2+0AVUZjsJ2W+bzqPl7hn0NbsrLazA/8B3p2MvtdTJIkvEAkYKhL
         OgIOI9DBMOYJ9VTIwGH9IfshLGMBq+GvEQ5NEyWCBv3kQHWEjGdlF+XKcqZPDoXse/Vm
         fwv2C3NhVqrNPUhn02FbFIAWZPWaOOHDhdKZaDrTiXEqcKVPHxqgiEK/CDO9Wrf++Wol
         JfKg==
X-Forwarded-Encrypted: i=1; AJvYcCVEaDoZBE8li1qhenDwFuMpN4CTN9PW46bHZDg0xc2POn3sXb4CyaV6f4yYaCtB+Ta06hVsNcniyCwtKFBKPERSyNVmni1Un0GYvQ==
X-Gm-Message-State: AOJu0Yzk0YXx//cmmGjr+9L9oZ3FJdMCXoSOfUxgdTT4OSMcmSYIZLZK
	xsBJWBUp9fB1R6qqjLgTrtLIiOD7y8HrDzxZxhRY85dFyVJb06gcCMMf91vQ0ek=
X-Google-Smtp-Source: AGHT+IH1//7mPrENMJuaAc7GRP3ThX3QDeZJnAjj0f7u85adSm4sgjE+6KayPsN8zcIL2M9Mq+lMbQ==
X-Received: by 2002:a05:6808:1795:b0:3c9:9339:6fba with SMTP id 5614622812f47-3c9933974a7mr1186822b6e.16.1715256512343;
        Thu, 09 May 2024 05:08:32 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3c98fc97a8bsm174350b6e.17.2024.05.09.05.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 05:08:31 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v4] of: property: Add fw_devlink support for interrupt-map property
Date: Thu,  9 May 2024 17:38:20 +0530
Message-Id: <20240509120820.1430587-1-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some of the PCI host controllers (such as generic PCI host controller)
use "interrupt-map" DT property to describe the mapping between PCI
endpoints and PCI interrupt pins. This is the only case where the
interrupts are not described in DT.

Currently, there is no fw_devlink created based on "interrupt-map"
DT property so interrupt controller is not guaranteed to be probed
before the PCI host controller. This affects every platform where
both PCI host controller and interrupt controllers are probed as
regular platform devices.

This creates fw_devlink between consumers (PCI host controller) and
supplier (interrupt controller) based on "interrupt-map" DT property.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Saravana Kannan <saravanak@google.com>
---
Changes since v3:
- Added a comment about of_irq_parse_raw()
- Removed redundant NULL assignments to sup_args.np
Changes since v2:
- No need for a loop to find #interrupt-cells property value
- Fix node de-reference leak when index is greater than number
  of entries in interrupt-map property
Changes since v1:
- Updated commit description based on Rob's suggestion
- Use of_irq_parse_raw() for parsing interrupt-map DT property
---
 drivers/of/property.c | 52 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index a6358ee99b74..2d749a18b037 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1311,6 +1311,57 @@ static struct device_node *parse_interrupts(struct device_node *np,
 	return of_irq_parse_one(np, index, &sup_args) ? NULL : sup_args.np;
 }
 
+static struct device_node *parse_interrupt_map(struct device_node *np,
+					       const char *prop_name, int index)
+{
+	const __be32 *imap, *imap_end, *addr;
+	struct of_phandle_args sup_args;
+	u32 addrcells, intcells;
+	int i, imaplen;
+
+	if (!IS_ENABLED(CONFIG_OF_IRQ))
+		return NULL;
+
+	if (strcmp(prop_name, "interrupt-map"))
+		return NULL;
+
+	if (of_property_read_u32(np, "#interrupt-cells", &intcells))
+		return NULL;
+	addrcells = of_bus_n_addr_cells(np);
+
+	imap = of_get_property(np, "interrupt-map", &imaplen);
+	if (!imap || imaplen <= (addrcells + intcells))
+		return NULL;
+	imap_end = imap + imaplen;
+
+	while (imap < imap_end) {
+		addr = imap;
+		imap += addrcells;
+
+		sup_args.np = np;
+		sup_args.args_count = intcells;
+		for (i = 0; i < intcells; i++)
+			sup_args.args[i] = be32_to_cpu(imap[i]);
+		imap += intcells;
+
+		/*
+		 * Upon success, the function of_irq_parse_raw() returns
+		 * interrupt controller DT node pointer in sup_args.np.
+		 */
+		if (of_irq_parse_raw(addr, &sup_args))
+			return NULL;
+
+		if (!index)
+			return sup_args.np;
+
+		of_node_put(sup_args.np);
+		imap += sup_args.args_count + 1;
+		index--;
+	}
+
+	return NULL;
+}
+
 static struct device_node *parse_remote_endpoint(struct device_node *np,
 						 const char *prop_name,
 						 int index)
@@ -1359,6 +1410,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_msi_parent, },
 	{ .parse_prop = parse_gpio_compat, },
 	{ .parse_prop = parse_interrupts, },
+	{ .parse_prop = parse_interrupt_map, },
 	{ .parse_prop = parse_regulators, },
 	{ .parse_prop = parse_gpio, },
 	{ .parse_prop = parse_gpios, },
-- 
2.34.1


