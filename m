Return-Path: <devicetree+bounces-5346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D4C7B6007
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 06:46:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C0826280F75
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 04:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B8B81383;
	Tue,  3 Oct 2023 04:45:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055E21379
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 04:45:57 +0000 (UTC)
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com [IPv6:2607:f8b0:4864:20::c34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 204E9CEA
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 21:45:50 -0700 (PDT)
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-57b5ef5b947so316948eaf.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 21:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1696308349; x=1696913149; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6yTTiHhEWIYYloan0CscIp/F7E/ZlHNo/ergGTsj5g8=;
        b=JY3Q1eyM+gbZpnUKpIzle8dF1hDecIs4iO8Rus5GoKQvI5ngJgKH+DdTI2v1bXYaME
         bXV7dqMgs+PjVmXtN/2YjAunZl+38TIay1gssTH4vu73Fvd+c62dxWIyKZP2/tIVIB0O
         J4zZOsh9yn8JmsYM7b2MuLs1gw6byG2OAZHI/wywblg1SUmIBvQmUq+XIuijkTKOJJll
         BJLQ1CXluC2CVRIE9LFbyMx7vmcPnCJfBId9ReWlQaLMSysGz+UXx6xTeGzFawzY1NN8
         Tcefc28nLHdutUF1ro3AVELo7WheknxkyWPyaQDtPKoIWQmfcM7hzCFR/HhkBsN9udRt
         zaeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696308349; x=1696913149;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6yTTiHhEWIYYloan0CscIp/F7E/ZlHNo/ergGTsj5g8=;
        b=xIascJHMH10R3PjJVv8p3qBpqoVGqPMa6xBnFKcRdYcjwfg7L0RxCvSwAIWqQGeWwt
         CDALrXkfLldZvtKWXo5LayhwHMO48EFJAJADKOfSFNvM9CWzyMOUfx3uRZRdakL9Rgcj
         vQwUfa49s6lQuJe27aFqL0v3jGPmuy1nKh7oCVjQhkTTNSsW086QKr3uuwJ/hyg/Jt0R
         4I/5ObQ5TboTgL88TKMWMlAQtUyOj3hIunD1pTMGiGzHj739AqUnP9i9Z9K8NSSwIhtq
         iO+67Ini4c0I6/UWy/rru1XLvG2NPuk8gs3mZ5zdo81aYsC5XJcupcIFeY+17i9jQNDQ
         8zNg==
X-Gm-Message-State: AOJu0YyrPOMBloABzUmJLbYwwDF99TrngBVUpkCUBgPP1roN3rnoZBkX
	tjnOH2y3SV8yPVMWBayHLhNs8w==
X-Google-Smtp-Source: AGHT+IHLAJgEPycqczoH84XL+AoZbMmX1MwzyCnQamOo/lGbqhEbvHIiPeGFR2Gb/Z6v/Ae9L3Buhg==
X-Received: by 2002:a05:6358:d048:b0:14d:b8d3:97e8 with SMTP id jb8-20020a056358d04800b0014db8d397e8mr13502205rwb.16.1696308349196;
        Mon, 02 Oct 2023 21:45:49 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.132])
        by smtp.gmail.com with ESMTPSA id h9-20020aa786c9000000b0068e49cb1692sm346421pfo.1.2023.10.02.21.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 21:45:48 -0700 (PDT)
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
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v10 15/15] MAINTAINERS: Add entry for RISC-V AIA drivers
Date: Tue,  3 Oct 2023 10:14:03 +0530
Message-Id: <20231003044403.1974628-16-apatel@ventanamicro.com>
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add myself as maintainer for RISC-V AIA drivers including the
RISC-V INTC driver which supports both AIA and non-AIA platforms.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 MAINTAINERS | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index c335ff64ecf1..89f0e7905b59 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18412,6 +18412,20 @@ S:	Maintained
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


