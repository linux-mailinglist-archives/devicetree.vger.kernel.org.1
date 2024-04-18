Return-Path: <devicetree+bounces-60690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A8B8AA017
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 18:33:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 027511C21C7B
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 16:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35C32175548;
	Thu, 18 Apr 2024 16:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ibKcUqd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A94A171E7C
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 16:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713457962; cv=none; b=c7SfM94MzNF9rnQtQzSe7E4aQb/qhRFS4yDlZgvH6uwoCmSOriMt+j1cvvC1UjffmihFUAMGPzN9Vlhlmh84fuhim+AbjiYE0xJ2vSmGrv4CtqCXyxqwoFhic+OHyUPFSm3bXvFXY/dneB+rh15gZIaLCz43kVA+SpvohNy4e2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713457962; c=relaxed/simple;
	bh=zyf5O3P9oEu/Imgz64wtnsPjVe1+RqGXAF5Ettibd6Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mWrofKbSC0GDjWmvstmffGQqofa7aapRBpL2zaH2Htx/HX3KirxQs9hqzU5UsS7b31rENTkm5QMUwm2zQB7bjH3b38xSJMlsNDRXcjB2G6N8UZbMgh9U8MTUUZLUDl4wZGmLwgRTG2Kp+QAeWwC5fKkezR3TcAp0UNl60kFmXhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ibKcUqd0; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6f07de6ab93so1096265b3a.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 09:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713457959; x=1714062759; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ClrhxH/v7i3t8bwZbyxYzN1k2YxvVKno6GgPljZAZHM=;
        b=ibKcUqd0BHQSy9bZFAtoiAlIMIEABt2gfpDxYGy10WScKiGd8d1MyYy/fv/m3pdafX
         iFMv5yClyPlpQC5ffvCC+aFxt1dPfNPO5YaUvxWU+DoazR0T4G+iM5qM+ZJbZIcoqNqS
         eF0r0a5qklAEA85a56uXubbcP/bcdEjodN1VzunuCaHBonAzVnj2eR2kEslPkpggf+uv
         CETd09cPG/SRXcfy5wX8ZI9/2+keqIriJ5nXQ9kaqucxeEAg/MEYgyh4Nbt5iUMGLb2l
         MxitQfhmJSn1lGn9cYumHztmxztEYnbOYjt42SBHnnQZkksFw2T3xvMU8+Of6xrLe87M
         dX/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713457959; x=1714062759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ClrhxH/v7i3t8bwZbyxYzN1k2YxvVKno6GgPljZAZHM=;
        b=SLmK9sLeJ5AU7j59I/bWkWZQi061kHaj/4rMQYuWE6M7htgqxiGaM1PKh0/BLHnrR5
         WLx04CQXOKKN/oIFNCxCI2QY7jTC3Z3zH9XVhPteXk0TGawsUuXgGOadq15/Lb/j4Yhi
         KsYWDBuvtJU3BMgIZnzCav9MtYn9JDMjfUnWk8Xu+EHJ6kAN+9Z9G0DvzJbmuRHoO2RN
         Hp6IPwgfvvnPkDNFLDGMXRdggt5ohh+vw1a27LlsXXcPMTInYHsYSBbMB0lVfKBqKfi1
         fbcSO89xW4N50hE9LFLlKI7vAFz8julF/EBiGLq+MdZpKR3/YbkXrnJi7m9x6idhjo6H
         l7Gg==
X-Forwarded-Encrypted: i=1; AJvYcCVKGxs9LKn3pZMymITaYFo+gHExPVMrbNnJ60WczNGBPsI+dH6kBlm9vDVeaBccCj7hx4bt0NMKvL4cQ2FBqL6jwWc21RLnRvrY6w==
X-Gm-Message-State: AOJu0Yz9TSiZkO+Zz+tZMAiko590a3f7s88ykcnKBLc/Ht+NDTI8ES3/
	nIEdAbw/hPeZRwrPNusM1LOBtKsx+HX7EveM5kWHu4kdGyUeGAM+GZ2oNieICYA=
X-Google-Smtp-Source: AGHT+IERN6e0yVXm7jt86/mFHrIhsHHA2BKFeOAgx+SKZn+2UN/ngzedc29EmyEbV1Y4ZmH/DB5nrw==
X-Received: by 2002:a05:6a00:4d09:b0:6f0:bb90:26b9 with SMTP id gr9-20020a056a004d0900b006f0bb9026b9mr142485pfb.5.1713457959459;
        Thu, 18 Apr 2024 09:32:39 -0700 (PDT)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id b19-20020a056a000a9300b006eae3aac040sm1674755pfl.31.2024.04.18.09.32.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 09:32:38 -0700 (PDT)
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
Subject: [PATCH v2 4/7] iommu/riscv: Enable IOMMU registration and device probe.
Date: Thu, 18 Apr 2024 09:32:22 -0700
Message-Id: <c681ad581ddf644a288cac44ed4f7fdfd1acae0a.1713456598.git.tjeznach@rivosinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1713456597.git.tjeznach@rivosinc.com>
References: <cover.1713456597.git.tjeznach@rivosinc.com>
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
 drivers/iommu/riscv/iommu.c | 69 +++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/iommu/riscv/iommu.c b/drivers/iommu/riscv/iommu.c
index af68c89200a9..d38317cb2493 100644
--- a/drivers/iommu/riscv/iommu.c
+++ b/drivers/iommu/riscv/iommu.c
@@ -18,6 +18,7 @@
 #include <linux/iommu.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/pci.h>
 
 #include "iommu-bits.h"
 #include "iommu.h"
@@ -30,6 +31,67 @@ MODULE_LICENSE("GPL");
 /* Timeouts in [us] */
 #define RISCV_IOMMU_DDTP_TIMEOUT	50000
 
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
+static void riscv_iommu_probe_finalize(struct device *dev)
+{
+	iommu_setup_dma_ops(dev, 0, U64_MAX);
+}
+
+static const struct iommu_ops riscv_iommu_ops = {
+	.owner = THIS_MODULE,
+	.of_xlate = riscv_iommu_of_xlate,
+	.identity_domain = &riscv_iommu_identity_domain,
+	.def_domain_type = riscv_iommu_device_domain_type,
+	.device_group = riscv_iommu_device_group,
+	.probe_device = riscv_iommu_probe_device,
+	.probe_finalize = riscv_iommu_probe_finalize,
+};
+
 static int riscv_iommu_init_check(struct riscv_iommu_device *iommu)
 {
 	u64 ddtp;
@@ -60,6 +122,7 @@ static int riscv_iommu_init_check(struct riscv_iommu_device *iommu)
 
 void riscv_iommu_remove(struct riscv_iommu_device *iommu)
 {
+	iommu_device_unregister(&iommu->iommu);
 	iommu_device_sysfs_remove(&iommu->iommu);
 }
 
@@ -82,8 +145,14 @@ int riscv_iommu_init(struct riscv_iommu_device *iommu)
 	if (WARN(rc, "cannot register sysfs interface\n"))
 		goto err_sysfs;
 
+	rc = iommu_device_register(&iommu->iommu, &riscv_iommu_ops, iommu->dev);
+	if (WARN(rc, "cannot register iommu interface\n"))
+		goto err_iommu;
+
 	return 0;
 
+err_iommu:
+	iommu_device_sysfs_remove(&iommu->iommu);
 err_sysfs:
 	return rc;
 }
-- 
2.34.1


