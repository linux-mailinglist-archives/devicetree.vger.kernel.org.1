Return-Path: <devicetree+bounces-49157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB08787514D
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 15:07:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6893B1F22365
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 14:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C4A4130E2C;
	Thu,  7 Mar 2024 14:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="l0SAGa+K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DA212F366
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 14:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709820254; cv=none; b=aSLNk6Sj2Pwvxy5Egvg172jVrkzg1FgQEW5Z8lz2HbHHUVXjJz6YlemZLDwOIs+RoTyBc9fGVazqExngMDjl7HrybT7NoqMndp5XKVi3quB+lb5gn6XLF6+gKNCJgVCH+n9ZS2jTIu32APEUz2wz4KXbFpl5xvgc+408uNeQpuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709820254; c=relaxed/simple;
	bh=rKzBeXR+4dT60DV6BPmoejLJGwtYaFZERH7vUM6fJO4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hi+Hk+NjMYN5Hpae2JdeYy10xBdRxuxm590yKLcFr1dloKNFFGjt8EJyOxYT6FyMudEYovYKmC4OJPtncm//oxPjGTWwfnfKPVDrLCFXhILGgmDcdGYYtx9B84WTqWBMFCw2nTlyHuqNedq5NFXeAMQ+zVwBt03BYebFtXJYBfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=l0SAGa+K; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1dd2dca2007so7050005ad.2
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 06:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1709820252; x=1710425052; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rjwrYvBNyQ/qNRs7Txb/BN/1bxuD6Rbun1oh6hMbldU=;
        b=l0SAGa+KAPCBaYwjNC8heARGc8FKob5mDVxV5kO5azaEThS7M/5adLrfpj5WE1fD57
         IFCa5ZVi2Jrcm2M4iaPhHlxpInFsKDleVVSaLXTFyQJatICfJj9Brs5AVWycXwIyRrCz
         NqFZu8Y+H+gCSgI1wtOsroCPkgri2U4laTbtV446L82+2eupfU+U2jXbAczez4nRLR8i
         NZ7hmi3peb6degP4uLY0AieQj/NcGlx7811bj9k8r822tVnr60p/o1GQBSVr2cRAR6fJ
         39KQAxovNheJvymVr51YkOcn/ccsmIy1FpQ5EuOvoP/HcM73qRFR7FBWpRph8yTs+u6N
         FsHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709820252; x=1710425052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rjwrYvBNyQ/qNRs7Txb/BN/1bxuD6Rbun1oh6hMbldU=;
        b=bvmsvfq+m+ynE0KV+inZVIsvmbsA4iRskh7zbaP5NQJD42ljHGMEvH3BVtFxNhpr8o
         DHwT8r50K9OSgLJ3WhGi8h+fAEwg7M3GLoAHQDKRoDE/tOP2gIjRSX8KX3/bfwobZ/hT
         USl2kqCIMPkJvedS+jEou0Qa4nDdVYwLEuinhAHhAexetnMx3nrB8PZU1vvILd5zO8sR
         txf7LvlyrvcUcAfrt5lDh/QCZYOwRzBXrDA8adusH2/90y0yboe4HwN+5+v5hR30P019
         fIiW04urNOr4QC+0Fv/Pd/N9zpQLWHzroq2nuqcOhbPVWfDWv3hkig0JSDm5+7cJAlsr
         yEqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOquB7aZNrwA07mtvg4+0JHDQBMr9BMQsUb5QW5flpsSOr66BSFPzsDjzr+lXOj8fsTfNIN5O8KnksQoAntms8Vv2nvrfQeN5mDQ==
X-Gm-Message-State: AOJu0YyFDf6Gxpumzbio0YVS6pk/0fYJwsOdsyjozFAeYNdLWf2MWLoY
	zBspTfsCcVEitoUZlRiUoIhWoyT0bU0GHdRnjC0ohPBlgCLIYSGb7GPcjQVlHkI=
X-Google-Smtp-Source: AGHT+IH4vsjzsOStS+FThaKG7EnDgUZh+Gtnp0D2Nf7vkFgGFqKrbJUaxP4JwhRT8tXdH9oU6TvuQg==
X-Received: by 2002:a17:903:94f:b0:1db:edb8:35d8 with SMTP id ma15-20020a170903094f00b001dbedb835d8mr9704187plb.34.1709820252379;
        Thu, 07 Mar 2024 06:04:12 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.79])
        by smtp.gmail.com with ESMTPSA id w1-20020a1709026f0100b001dd6174c651sm386228plk.149.2024.03.07.06.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 06:04:11 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v16 9/9] MAINTAINERS: Add entry for RISC-V AIA drivers
Date: Thu,  7 Mar 2024 19:33:07 +0530
Message-Id: <20240307140307.646078-10-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240307140307.646078-1-apatel@ventanamicro.com>
References: <20240307140307.646078-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add myself as maintainer for RISC-V AIA drivers including the
RISC-V INTC driver which supports both AIA and non-AIA platforms.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 MAINTAINERS | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2ecaaec6a6bf..92efe5bcb3f6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18803,6 +18803,20 @@ S:	Maintained
 F:	drivers/mtd/nand/raw/r852.c
 F:	drivers/mtd/nand/raw/r852.h
 
+RISC-V AIA DRIVERS
+M:	Anup Patel <anup@brainfault.org>
+L:	linux-riscv@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
+F:	Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
+F:	drivers/irqchip/irq-riscv-aplic-*.c
+F:	drivers/irqchip/irq-riscv-aplic-*.h
+F:	drivers/irqchip/irq-riscv-imsic-*.c
+F:	drivers/irqchip/irq-riscv-imsic-*.h
+F:	drivers/irqchip/irq-riscv-intc.c
+F:	include/linux/irqchip/riscv-aplic.h
+F:	include/linux/irqchip/riscv-imsic.h
+
 RISC-V ARCHITECTURE
 M:	Paul Walmsley <paul.walmsley@sifive.com>
 M:	Palmer Dabbelt <palmer@dabbelt.com>
-- 
2.34.1


