Return-Path: <devicetree+bounces-64130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B11DC8B8108
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 22:03:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE531B23EED
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 20:03:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 593451BED7D;
	Tue, 30 Apr 2024 20:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="22I8+9ov"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86A2199EB6
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 20:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714507368; cv=none; b=buXc0gHsB5iJEPX68h8RlDyG2ysV/U91nF2x1OTpFUBN5h4NXUedEmm+8z9i5N243XZIH8aZGO15RQqpXT8prTiFLdbK/IucAXb+Wxq9CsY/CiI/iqCYkqzye1reWqwDhCOrCiaLcFqoWNtNjVmuEPzkxdtIlrH1+HhqsRQ5j8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714507368; c=relaxed/simple;
	bh=LhLhw4bea4YTAJnwj6A9BWGlpcgoGr12CUOji4lNSfg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZKnWN2oYjp/QYA/dnunTjcX6YecYoFDYRa6CJdafV8lJ0MuZNZIrMb2/E57UOonO/wq3R8mjfq2PHNBQMJjO3a0AXvQkBqNN7LSywQVpm4SSraYQ2w1hMzKuWfU4LBLfaeUQznyWxctWSJgtzz3FAMM8OCZBUtORnI1hGyhYpvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=22I8+9ov; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1e9ffd3f96eso49616175ad.3
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 13:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714507366; x=1715112166; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3KfkX2coDIYxHK7IeteKYtlpeAwqJsH66Gz3p82MjVU=;
        b=22I8+9ove3wS/TzVkSL2pG37tYaoQfZF4BABvKq0RFpfIpl8mTgaKztQEvHjcq9Cbg
         /mNE+bYYpLKbGCI+016+ui7rIxFDZwqBmZkc6UkAc792Flrfx0yWUjuWUbDC0N7vrvd3
         Xi3lQlR/2jj/jAVgHMHwcVPzk5mI+OHfk2XKsorKbN84NtLYk0KHKoqOlv5XNrEpp4wB
         DrGhWHubqv78g3kG5RW5jwpXMxednx0LTKba/kv8z6hmbdTBlZPIiLNffwmpMrxvIm0E
         HI8C/7F9RJn+yFNheBzJVeIwbT7Fj7xBQn16Sp4qKC2+0niZwC4+/d2RcAiDTPkxG/gX
         QB2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714507366; x=1715112166;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3KfkX2coDIYxHK7IeteKYtlpeAwqJsH66Gz3p82MjVU=;
        b=UN5fxB+8/wZO65fbX4pEmuOmGc2nk3JD92+wpa2KYGq6xnogFP+xJztboS8Ln8LaYE
         pFGfbiaRm5gQ/SYgFl6baJe7Bp6l0FWIMuRZmb2pEU+XgUGoaq7xlNN0LKcp1Tr5CDpI
         2YtSqeK9B0OyU6LeoHxtj5IryO4Nt6WvInD51aZ1oxiCkMf76rzqr5zr5duFTPuC4LNj
         xCL7a0G4TRyEsB5rOjyjT2BxvHd2x/cH6TGRO0gXHjUFeF8sHvnjw0nTD4REB5cPh3tl
         6+kxYYtoDib/aaCZU8A1zA0DgwSgdDGjCAjKRmGqq1yMf/43dhYBNRy3CLecMIvnKFdp
         Tjrw==
X-Forwarded-Encrypted: i=1; AJvYcCVj0dXnHCXEHMh4ZrdmNP4NWVHY0XT28qkrVwiTkeP/wa7NYbSzkfQw60xJUM4pp4CieOZw7imp4h+NwcFhUh3EqprtvTlqlelIeg==
X-Gm-Message-State: AOJu0YwHqQlKWzlN0TfIBk74Gr/w8lHNmzQEhzkjErAXYc4V0JG7xtaS
	Z14SVaUIXNgUjfyBGtv0QgKT49PfM2tEunC067pOoKli0R9qaLDogBPLsqNqYFo=
X-Google-Smtp-Source: AGHT+IEowGVg3Eqknf3Al/Z4DshsuVQulgWG+lvIcIxZjDaV8J5h3onGGQksmulabRBZQqDlJV7n1A==
X-Received: by 2002:a17:903:58d:b0:1eb:3e13:ca0b with SMTP id jv13-20020a170903058d00b001eb3e13ca0bmr448656plb.37.1714507365982;
        Tue, 30 Apr 2024 13:02:45 -0700 (PDT)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id w19-20020a1709027b9300b001e435fa2521sm22809820pll.249.2024.04.30.13.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 13:02:45 -0700 (PDT)
From: Tomasz Jeznach <tjeznach@rivosinc.com>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Anup Patel <apatel@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Nick Kossifidis <mick@ics.forth.gr>,
	Sebastien Boeuf <seb@rivosinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux@rivosinc.com,
	Tomasz Jeznach <tjeznach@rivosinc.com>
Subject: [PATCH v3 4/7] iommu/riscv: Enable IOMMU registration and device probe.
Date: Tue, 30 Apr 2024 13:01:54 -0700
Message-Id: <f9c9e5dcdc1457da4af70302e85c0a7be532f650.1714494653.git.tjeznach@rivosinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1714494653.git.tjeznach@rivosinc.com>
References: <cover.1714494653.git.tjeznach@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Advertise IOMMU device and its core API.
Only minimal implementation for single identity domain type, without
per-group domain protection.

Signed-off-by: Tomasz Jeznach <tjeznach@rivosinc.com>
---
 drivers/iommu/riscv/iommu.c | 64 +++++++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/drivers/iommu/riscv/iommu.c b/drivers/iommu/riscv/iommu.c
index 07c2bcb08afd..17dc6431fd37 100644
--- a/drivers/iommu/riscv/iommu.c
+++ b/drivers/iommu/riscv/iommu.c
@@ -17,6 +17,7 @@
 #include <linux/init.h>
 #include <linux/iommu.h>
 #include <linux/kernel.h>
+#include <linux/pci.h>
 
 #include "iommu-bits.h"
 #include "iommu.h"
@@ -36,6 +37,60 @@ static void riscv_iommu_disable(struct riscv_iommu_device *iommu)
 	riscv_iommu_writel(iommu, RISCV_IOMMU_REG_PQCSR, 0);
 }
 
+static int riscv_iommu_attach_identity_domain(struct iommu_domain *domain,
+					      struct device *dev)
+{
+	/* Global pass-through already enabled, do nothing for now. */
+	return 0;
+}
+
+static struct iommu_domain riscv_iommu_identity_domain = {
+	.type = IOMMU_DOMAIN_IDENTITY,
+	.ops = &(const struct iommu_domain_ops) {
+		.attach_dev = riscv_iommu_attach_identity_domain,
+	}
+};
+
+static int riscv_iommu_device_domain_type(struct device *dev)
+{
+	return IOMMU_DOMAIN_IDENTITY;
+}
+
+static struct iommu_group *riscv_iommu_device_group(struct device *dev)
+{
+	if (dev_is_pci(dev))
+		return pci_device_group(dev);
+	return generic_device_group(dev);
+}
+
+static int riscv_iommu_of_xlate(struct device *dev, const struct of_phandle_args *args)
+{
+	return iommu_fwspec_add_ids(dev, args->args, 1);
+}
+
+static struct iommu_device *riscv_iommu_probe_device(struct device *dev)
+{
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+	struct riscv_iommu_device *iommu;
+
+	if (!fwspec->iommu_fwnode->dev || !fwspec->num_ids)
+		return ERR_PTR(-ENODEV);
+
+	iommu = dev_get_drvdata(fwspec->iommu_fwnode->dev);
+	if (!iommu)
+		return ERR_PTR(-ENODEV);
+
+	return &iommu->iommu;
+}
+
+static const struct iommu_ops riscv_iommu_ops = {
+	.of_xlate = riscv_iommu_of_xlate,
+	.identity_domain = &riscv_iommu_identity_domain,
+	.def_domain_type = riscv_iommu_device_domain_type,
+	.device_group = riscv_iommu_device_group,
+	.probe_device = riscv_iommu_probe_device,
+};
+
 static int riscv_iommu_init_check(struct riscv_iommu_device *iommu)
 {
 	u64 ddtp;
@@ -71,6 +126,7 @@ static int riscv_iommu_init_check(struct riscv_iommu_device *iommu)
 
 void riscv_iommu_remove(struct riscv_iommu_device *iommu)
 {
+	iommu_device_unregister(&iommu->iommu);
 	iommu_device_sysfs_remove(&iommu->iommu);
 }
 
@@ -96,8 +152,16 @@ int riscv_iommu_init(struct riscv_iommu_device *iommu)
 		goto err_sysfs;
 	}
 
+	rc = iommu_device_register(&iommu->iommu, &riscv_iommu_ops, iommu->dev);
+	if (rc) {
+		dev_err_probe(iommu->dev, rc, "cannot register iommu interface\n");
+		goto err_iommu;
+	}
+
 	return 0;
 
+err_iommu:
+	iommu_device_sysfs_remove(&iommu->iommu);
 err_sysfs:
 	return rc;
 }
-- 
2.34.1


