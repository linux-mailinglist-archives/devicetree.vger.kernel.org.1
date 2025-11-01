Return-Path: <devicetree+bounces-234065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 22519C281A9
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 16:45:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BF721A21F59
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 15:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55A1A2FC031;
	Sat,  1 Nov 2025 15:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="iz/E2qtf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5062FC00A
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 15:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762011854; cv=none; b=oDmE59Ir3/u/yPy3NOWl/x+QpY7xaI/Dv6vlzCsBG9ET57wiiEHSEtWNV+9WAp6bE3m0qBQMkNa0DNhcIELSpccmv5Em2oPjcxNWYOyZMWUzNXP+QmACqA3p8RFMyf3qZM4//0HghRK8l5KB5/JTFR1lVrYN6l7bB6Na3Z8ep7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762011854; c=relaxed/simple;
	bh=25h2zSA984OKtQmRh9EqfuGp/YR9+0RmE5X6wuvM7LU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IDJc5BIXOzDWEuWdDz1N/k79jV5TdrStgYW2eqqDuXBxzarNPO9gx/+N51pFfOPau7CFtg8wvekh7vgL6yrkjwROPV+7RpA2HOFVg+PsITp2vkS9Wu/2a3jivXhsS+SdGZUCSN6yaoRGLdqUiV7SOWPdLpEnINuvkVQ+22gVg2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=iz/E2qtf; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-29470bc80ceso35233295ad.1
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 08:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1762011852; x=1762616652; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x2XwcEWhGPqe4YWn8OiU0EgUYXN4uylgwxXcr7hecLU=;
        b=iz/E2qtfTlg2N7kby5Vgqk8rnBxBJQxU40j5E3Z1KXrX29uDF7Nxi2c9SlAt8jR48k
         ywcR28icwE6yOyePBWRKzZMw+sTdKbxrZ92v0iqNOcfzaHWzMFhq4jKnIxrBHQ8IUiZh
         jzNXR2Q+fPtXQfgS23bw71q1SWEgRwCJ0lFdYZNJFgdracT774BByC2e3BXT+8xxnrxc
         iI3tZ3f1aD2jxYzkoDUMA4Wkd8mgbe+XOOJmLaaV/jUe7TngMgIpNBR1Vh//9n1/7pmp
         Vehpvt2qXQDh4GkAIa7bugR4wg9alepnNZH6euzYuaPvG9Efz1bQe0q2wOSUMxO1otHz
         23Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762011852; x=1762616652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x2XwcEWhGPqe4YWn8OiU0EgUYXN4uylgwxXcr7hecLU=;
        b=mHtBnVhhvq0fcSlR1oILjvkZ+PtKyt1svyxuVHU9ESwK3VCbZUBwBeUavaDDzgNsf+
         YRgjL0lmuVz4y/XIV0TV04nRjBek149L0Hd7/0l/YjhWEU+l8N5UtVGsngdqMNFbSNI+
         nXPfUe6CTlsSX40yr/7r3icUofA9H4mNiQ9mSs7a+JJ0F5YQINAI4aPhM5bu23Cu2Wez
         FFrg+eb2jR+fgwTSwY4NlzkIonBHYLgRMrfZfTy7NoiWVhqx8H+MVWhuP0++uwV9id9D
         lgnsV0vta911Ca8lc0T4VLGdrGXizA3WOQzTn8CxP4t4Cve5lLqjQ/4DPBYIoVCbSRm6
         d17g==
X-Forwarded-Encrypted: i=1; AJvYcCWla9ZdhraOLyHTZ84HBYee16OHVw/HEVo0i9Tr0YLOqVqIagGMZpV9SeFXCyUxMQ325a4u5s0CrK/e@vger.kernel.org
X-Gm-Message-State: AOJu0YyziylNy1E5ht+uJ7vErcIDY7rI6SCgSQLHPktB+himsculIUzm
	TuUuQJwEXn5x0MMwJicStYcSqi5cg3dw68LNTCdrNGEMV/pGIEa57Ff4zL+T9GGeHwQ=
X-Gm-Gg: ASbGnctZPXxI0NgBx/92F5IyC3g6xE68I9/OZo0/n/sE3Oitm4e9tejRI2W5vrk5eVV
	leVfY5qKBB3SJnvzqN90u2Rucd2xX87x6bBPhBrmKlG/kUad3JFabtg3gk+C98JaYJv/3ox91vX
	lT4gyd9fQpSnixIYPTGECwouwA6rjnuavAYzk9h48ue9KFOaszZl+Pws/YYxd8F9slStUBFF1yX
	4fUizvpvNq+8lwKwC4bYG0L+cBcz486qQnw8AMIQlkrBskc+zatmUyP/MB+2yxHsqkdZh5IsTz2
	AZY7HTQ36EJq7sYTOTmJkIXJqUWKrg9BhTw0omPdEvH1QxOa9f9C7+mBbPTNz0uydm7JphzqBKJ
	S3BczkBTOjpYCLkjO5QybDC/vwIgO8GleotV+sTaZu1Jlr4WNEQ23RWnt4XYXt+PnX0e2yWVcG7
	QN13PWoaALhUKx3JoJr+Qa/ekoKZ+7ewU=
X-Google-Smtp-Source: AGHT+IFLXAEw3tjU/Pr/6wioFbhUuNkqtSYjBkNNCIo72pud4xy2at7NIHMIFUUJC02TK+9WqwH1GA==
X-Received: by 2002:a17:902:cece:b0:295:5898:ff5c with SMTP id d9443c01a7336-295589900b9mr26809925ad.16.1762011848203;
        Sat, 01 Nov 2025 08:44:08 -0700 (PDT)
Received: from localhost.localdomain ([122.171.20.36])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295269bd2fesm59990105ad.105.2025.11.01.08.44.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Nov 2025 08:44:07 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Ian Rogers <irogers@google.com>
Cc: Alexandre Ghiti <alex@ghiti.fr>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Liang Kan <kan.liang@linux.intel.com>,
	Mayuresh Chitale <mchitale@gmail.com>,
	Anup Patel <anup@brainfault.org>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v2 08/12] riscv: Enable DMA_RESTRICTED_POOL in defconfig
Date: Sat,  1 Nov 2025 21:12:41 +0530
Message-ID: <20251101154245.162492-9-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251101154245.162492-1-apatel@ventanamicro.com>
References: <20251101154245.162492-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RISC-V ramsink trace component may have implementation specific
restrictions such that the component can only write trace data in
particular parts of DRAM.

Enable DMA_RESTRICTED_POOL in the defconfig so that dma_alloc_*()
and dma_free_*() APIs work for devices with DMA address restrictions.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index d2c1ea2a866c..4e870b8f2220 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -305,6 +305,7 @@ CONFIG_SECURITY_APPARMOR=y
 CONFIG_DEFAULT_SECURITY_DAC=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_DEV_VIRTIO=y
+CONFIG_DMA_RESTRICTED_POOL=y
 CONFIG_PRINTK_TIME=y
 CONFIG_DEBUG_KERNEL=y
 CONFIG_DEBUG_FS=y
-- 
2.43.0


