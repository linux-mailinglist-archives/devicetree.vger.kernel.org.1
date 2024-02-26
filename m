Return-Path: <devicetree+bounces-45748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B358E86693E
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 05:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E533B1C240AF
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 04:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB30C1BF20;
	Mon, 26 Feb 2024 04:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="UvHc+HTW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D86E1CF8B
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 04:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708920597; cv=none; b=c/GQY3TnWYIBRxhyLuvHZjo0gG+8cBh0RAM2hvnAB+b2farfuhUWBrH/zLkL8PrrLbFU8a0yTPOEKBxc/7z2qKyeXEJbkr4MJO5zuJXwXEaR68ig7cvURHBPqkQcuMmVl+Pe7TOwup4bYAZIiJGhRhnSTA0RLT7Hqn1UQO4USF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708920597; c=relaxed/simple;
	bh=cHX9yVZX2U/M0SSdzvjQb4m+7zWASmD9kQu3egh0Rao=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oPojVZVFcCS+Ni1f1ihrqcY0YvPMEa2KJ9Vqb6Id+Iq/RIttbNmdwnt3ML0mXmcaDiBiNJHGTN6lXegX+gIik08lHbB2oMSQ5PIXM4iUYpuv6STggibE4jFpaJBTSCVwLy+5agdMoPoeE6xQgAnMoV5aZCa6oJtbNBfHKW94I8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=UvHc+HTW; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6e4f49c5632so231245b3a.0
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 20:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708920595; x=1709525395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KTFsbe7fY6CIFM3QbszGAvcCN7xF4yBveTkrIBLrPJ8=;
        b=UvHc+HTW/kng637kcRm+uzKhBY/NCdx5AyH5TZfTlbjx6rxCM1THjniPNlTUWKaFcr
         GrMuw0MTV1/yiy94RcBlCe775nGgAakK+ujukMofkKMHF0Iy88Mzi2PwvwhZmhgGysae
         LgosrDS2dBVMEg8alKkPlr8TaZ0+542EAccbbmzlqZPisYzFiSmpG2DmFPpmM20RA58O
         YqcSj2cZ73GJ8icc1/uRwVCFAjUti28CbYi0nfNmArgHsqZRP+3iqs1pTu99LagtyWO5
         iXzD0EhxvnxxADFIhcwXG7C9zPIP1IVNHKFjlPTaGjO1FWrkhLn0CkFsm5PHM8/RiR7W
         eHmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708920595; x=1709525395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KTFsbe7fY6CIFM3QbszGAvcCN7xF4yBveTkrIBLrPJ8=;
        b=TZODCNfPMrgUvDwKZ76gbcm/7s+7s8HBEGMg36MsbjdYYLLd+fN3Wv/ZJneACMH1ht
         At5xJinjP0gntI+pI7QCyGCj+3nnBJb0E0nApUd2+YQtzMdaZHb8e8enuDYO41uxYBDq
         lK1ZH/x0M+CZmoM1SccSHJjWK3XPjff1suy3VYViNMOA/ERgNQxMBFtpGcX0yM9n+GWb
         u8NDznY50JnaM3Hztnl2CkNq5NQLm3pyH7yozRZlSHD1EJZVVJW+1g/S1v3lMLi0QkS/
         Y0lnW2+wG7RgIi+xedDDOyrmat38gTENphs5FI0eeZ0hzow19qSrX2UZTx+AMOsN9X6R
         r/cA==
X-Forwarded-Encrypted: i=1; AJvYcCUpehuQtT6U/7VKb+0+Xl/Rzeb7NhOMZ6mTrryUa23hkXOhro/TWLplx3Zvp+c9qGJPMhbClQ8lowiSF6uj/fiRTvOM7dHs/0g3ZQ==
X-Gm-Message-State: AOJu0YzmVu39c1kPTd5J/MNbMLThpZD52f8y5mcceBHjAz0k1o1n2Me/
	V4cg/XgIE09ECyZwNkVPOXRE2jx9TlgMgf2j9dUiuoaW7cD39p9tHFqo1ke3X1c=
X-Google-Smtp-Source: AGHT+IHj9OgwVeQU3Cywg5QOFfuPC+ebRt4KQX5RwmYYiHt6jMDZHnRVOUIEP3MvR2JMPDXGFDjhPA==
X-Received: by 2002:a05:6a21:350f:b0:1a0:e8dd:f488 with SMTP id zc15-20020a056a21350f00b001a0e8ddf488mr5082090pzb.3.1708920595534;
        Sun, 25 Feb 2024 20:09:55 -0800 (PST)
Received: from localhost.localdomain ([171.76.86.62])
        by smtp.gmail.com with ESMTPSA id d11-20020a170902654b00b001dc6f7e794dsm3023258pln.16.2024.02.25.20.09.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 20:09:55 -0800 (PST)
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
Subject: [PATCH v15 10/10] MAINTAINERS: Add entry for RISC-V AIA drivers
Date: Mon, 26 Feb 2024 09:37:46 +0530
Message-Id: <20240226040746.1396416-11-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240226040746.1396416-1-apatel@ventanamicro.com>
References: <20240226040746.1396416-1-apatel@ventanamicro.com>
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
index 9ed4d3868539..d948f9210f1b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18801,6 +18801,20 @@ S:	Maintained
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


