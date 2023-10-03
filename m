Return-Path: <devicetree+bounces-5345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7BD7B6006
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 06:45:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5C2B128134F
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 04:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E6331379;
	Tue,  3 Oct 2023 04:45:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3A6A1392
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 04:45:51 +0000 (UTC)
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E08A9CDC
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 21:45:44 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-68fb85afef4so390335b3a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 21:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1696308344; x=1696913144; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=36mJhajWQppw1r4vewDK4hFKpILxPms9Bh84cWTmNnE=;
        b=NpXDBuxGGhPQ5kCIPJWcLPkytUmI6tmbzMl/G+Y3fx4kfMmbKk8fr1Kg5cAV1vs4Tu
         VQfxEB79xsivM4DQ4hJcDFtQA0G9WgctuqLeHnn4QyLYaD8VoKkJVj6d4LhXM8fL036r
         E6+PzPejJ/0h+6Mu+IqNXfqrKjnuS6ZvejVt+zeb/NvC8qOS0ogCyZa+p4tEIK62vN57
         8R09CyERAXrjrH7KhUhsWg4grPZMBgm1gRV19SOQhGWFDXLhjNdEX21dAHyu/qvVQ4bq
         sQB4iFmnJ0UDGIxJJLq9A68ohdCCVqGAU1fcmxje1Bv0ERRnlqsAWbQoc6DfoxPZKupa
         L6lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696308344; x=1696913144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=36mJhajWQppw1r4vewDK4hFKpILxPms9Bh84cWTmNnE=;
        b=TdNVhBDiZkE2WdYUZ50NGEEK86AUL64/RFnBpvOpDBFxLBl2mxFLGgvoF3l759r2O9
         f4F3r89hSfUT62P/+TQA99G1lu+zzpw3o3kAEK75QsqFr46425NIhVfzRPaxMX3QFFnU
         mzIKClbCNJj48kZePSoXOFp70T+fettIUDShS6Gzxg210KVLixqS107a0e1mPmEFPThI
         SxbSnglxL5tKQWt7aTIYAWpoHhLoaLFOgSXojhrssJTCe20pjB6z6CA1ECHCw/Q9cDzz
         mKaer+08H0m0zrq70z7mTI/oB9S6AzR+k/B4zLsck0flYPgUrN4Of+6zRX3qKMmJvjn2
         q/1g==
X-Gm-Message-State: AOJu0Yx87CfA7dhX/Sj4xycBYp693tQbClHtIrLyXtbmZmxrKjDuZKc2
	yvlHf6bUmmyvxv/JIuzr/csA0wm1QnIRR3ukbLg=
X-Google-Smtp-Source: AGHT+IEPf6VZJFHiNyB06jIOgpeLIxIG7B35aAuu0113CgIcNf9v+plMLjwZEC9Lc1L+0gdLK8AvRw==
X-Received: by 2002:a05:6a20:3ca1:b0:160:643f:ad54 with SMTP id b33-20020a056a203ca100b00160643fad54mr13378897pzj.20.1696308344308;
        Mon, 02 Oct 2023 21:45:44 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.132])
        by smtp.gmail.com with ESMTPSA id h9-20020aa786c9000000b0068e49cb1692sm346421pfo.1.2023.10.02.21.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 21:45:43 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v10 14/15] RISC-V: Select APLIC and IMSIC drivers
Date: Tue,  3 Oct 2023 10:14:02 +0530
Message-Id: <20231003044403.1974628-15-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231003044403.1974628-1-apatel@ventanamicro.com>
References: <20231003044403.1974628-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The QEMU virt machine supports AIA emulation and we also have
quite a few RISC-V platforms with AIA support under development
so let us select APLIC and IMSIC drivers for all RISC-V platforms.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index d607ab0f7c6d..45c660f1219d 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -153,6 +153,8 @@ config RISCV
 	select PCI_DOMAINS_GENERIC if PCI
 	select PCI_MSI if PCI
 	select RISCV_ALTERNATIVE if !XIP_KERNEL
+	select RISCV_APLIC
+	select RISCV_IMSIC
 	select RISCV_INTC
 	select RISCV_TIMER if RISCV_SBI
 	select SIFIVE_PLIC
-- 
2.34.1


