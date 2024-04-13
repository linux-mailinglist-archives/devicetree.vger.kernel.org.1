Return-Path: <devicetree+bounces-58915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B968A3BE4
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 11:19:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A18591C20E66
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 09:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E854224A0D;
	Sat, 13 Apr 2024 09:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="IVuWcay+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B572137F
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 09:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712999996; cv=none; b=s6HRZnGIpzmrz467X0uE9GVHMxzaBpzAWFyWzyQV5V4TdkJbEDX9T9xOhaGWy+FJg/UJURvY2U8IrU1smxR9YxbtfGyI2PAZUkZr8cEJS9PwFFPCp2bxQ+Gq6jr5+4WmILPvUzGfkqK6bZueKdJpYWPj2Fyb5//ECyr/0N43sgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712999996; c=relaxed/simple;
	bh=xtrhNFYIL5DFjvG5DohoWbQ0qLKf2DBPOxnSj+B1Pv8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mQN5hZwSWUCbzXa4Fd7/HUIUGcNBtMeeypqGsyxQsij2kTBDUbAdkCwYaglq2FzuZeQ8glPRTjOxuvp+nNl94srgMbBdk+nB3j3p/8yHBlUvwkScFm61XOcdzjPlKxQu2wLOu4dyITSdJPvlnwNOTFGDkgPeBH5Og+sVDEFVEjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=IVuWcay+; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1e5b6e8f662so9459685ad.0
        for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 02:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1712999995; x=1713604795; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=69pCu+lIE1wVXKqySWp1XZJt2aC2QI11IyQxjcSF8a4=;
        b=IVuWcay+iPBZHYrHvYohZYwRfKpDbTXVfyoxKtYc2SkOtRC7N9DSBil0k5CZ3jNifh
         uEC/e6eLcZ5sSTdsYXkX41S4MhuRq/Qk5QjQV7Wha0S0sQX2JhnhQvmbgbJXLPYcOIn9
         k75mZ8R+9DN27TnEKcOpmDO3C9dxPQ6TfMLDiS81/yyyupur73VdRD0DbpYuYA9EwgMq
         p/hPxY8gwsGWxj1qKIyZFUf+uZNlYyU1Fz/d5q/RKYq1XtDexN5nhXbE6I+FzMgJ7vAF
         EkzntIkH43rBcwe3vSV/06ePjyLs3nLTr/Betc8k1Bqjs42MEdIgA1DLP7yo9Vipb4Bt
         Zliw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712999995; x=1713604795;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=69pCu+lIE1wVXKqySWp1XZJt2aC2QI11IyQxjcSF8a4=;
        b=mCUEOoK3Z/Dba3PyNNWF8mJs1+67SSt8rlTr8ufbJcEMlukXzC6BKlFYmAkWgTy+Ex
         qU1sXPYhNPGrr65aSpENkOyXbS1fCoi3UCpSa7tRuQCBZmdUX/kfTAVhrEzD6MtuuGv2
         gYiIa5WLZ3/xnTH2QHqWWiWo/zMSRnT3nlfaz9lWaJwWjCulLn8V7ppUtM36V0e8tuNi
         ORwaZ9rSA547SZkB3BJLOHJeqcgpDN0RGAfgSnfiAGuYlkWiCDTBHunLsd4Q3UHn7m6r
         YNFVJRTHdD1fAWnbBo+lcyFjNO7CupKafTDC4CZJfgGjh9hCa2dvnh3dAWiqbOCUvd7U
         wuLg==
X-Forwarded-Encrypted: i=1; AJvYcCVecLZrppTbsUipjr/Vsg0t+FLPfjVQWLYHcU9dFLSOa99i8N7AIvFWFYkEIfPv6F8TV298oyFqF8RZnAfnyIlqT+m2vZWZ01FhCA==
X-Gm-Message-State: AOJu0YyAL9PzmqXsEyEFWME+OK6hhjchRaE6+bW9Z5ZHt0gi3QmJQv9D
	KI1fQW64zW/gIPB8LQTCvMrFs4GqExx1gpoQNPG9iikHmuwoGqAadxMQvfZXwO0=
X-Google-Smtp-Source: AGHT+IHtYnolIIRYPs/EmR5EEzZ1sL8+zY8lf7mTvGypESElWwhDypuX4pBANdN1oJ2iOm4IuKjKVA==
X-Received: by 2002:a17:902:968c:b0:1e2:6d57:c1bb with SMTP id n12-20020a170902968c00b001e26d57c1bbmr3726399plp.21.1712999994631;
        Sat, 13 Apr 2024 02:19:54 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n9-20020a170903110900b001e5c0ac3279sm2157153plh.74.2024.04.13.02.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Apr 2024 02:19:54 -0700 (PDT)
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
Subject: [PATCH v2] of: property: Add fw_devlink support for interrupt-map property
Date: Sat, 13 Apr 2024 14:49:42 +0530
Message-Id: <20240413091942.316054-1-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some of the PCI controllers (such as generic PCI host controller)
use "interrupt-map" DT property to describe the mapping between
PCI endpoints and PCI interrupt pins. This the only case where
the interrupts are not described in DT.

Currently, there is no fw_devlink created based on "interrupt-map"
DT property so interrupt controller is not guaranteed to be probed
before PCI host controller. This affects every platform where both
PCI host controller and interrupt controllers are probed as regular
platform devices.

This creates fw_devlink between consumers (PCI host controller) and
supplier (interrupt controller) based on "interrupt-map" DT property.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
Changes since v1:
- Updated commit description based on Rob's suggestion
- Use of_irq_parse_raw() for parsing interrupt-map DT property
---
 drivers/of/property.c | 58 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index a6358ee99b74..67be66384dac 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1311,6 +1311,63 @@ static struct device_node *parse_interrupts(struct device_node *np,
 	return of_irq_parse_one(np, index, &sup_args) ? NULL : sup_args.np;
 }
 
+static struct device_node *parse_interrupt_map(struct device_node *np,
+					       const char *prop_name, int index)
+{
+	const __be32 *imap, *imap_end, *addr;
+	struct of_phandle_args sup_args;
+	struct device_node *tn, *ipar;
+	u32 addrcells, intcells;
+	int i, j, imaplen;
+
+	if (!IS_ENABLED(CONFIG_OF_IRQ))
+		return NULL;
+
+	if (strcmp(prop_name, "interrupt-map"))
+		return NULL;
+
+	ipar = of_node_get(np);
+	do {
+		if (!of_property_read_u32(ipar, "#interrupt-cells", &intcells))
+			break;
+		tn = ipar;
+		ipar = of_irq_find_parent(ipar);
+		of_node_put(tn);
+	} while (ipar);
+	if (!ipar)
+		return NULL;
+	addrcells = of_bus_n_addr_cells(ipar);
+	of_node_put(ipar);
+
+	imap = of_get_property(np, "interrupt-map", &imaplen);
+	if (!imap || imaplen <= (addrcells + intcells))
+		return NULL;
+	imap_end = imap + imaplen;
+
+	sup_args.np = NULL;
+	for (i = 0; i <= index && imap < imap_end; i++) {
+		if (sup_args.np) {
+			of_node_put(sup_args.np);
+			sup_args.np = NULL;
+		}
+
+		addr = imap;
+		imap += addrcells;
+
+		sup_args.np = np;
+		sup_args.args_count = intcells;
+		for (j = 0; j < intcells; j++)
+			sup_args.args[j] = be32_to_cpu(imap[j]);
+		imap += intcells;
+
+		if (of_irq_parse_raw(addr, &sup_args))
+			return NULL;
+		imap += sup_args.args_count + 1;
+	}
+
+	return sup_args.np;
+}
+
 static struct device_node *parse_remote_endpoint(struct device_node *np,
 						 const char *prop_name,
 						 int index)
@@ -1359,6 +1416,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_msi_parent, },
 	{ .parse_prop = parse_gpio_compat, },
 	{ .parse_prop = parse_interrupts, },
+	{ .parse_prop = parse_interrupt_map, },
 	{ .parse_prop = parse_regulators, },
 	{ .parse_prop = parse_gpio, },
 	{ .parse_prop = parse_gpios, },
-- 
2.34.1


