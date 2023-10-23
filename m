Return-Path: <devicetree+bounces-11044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6417D3DB2
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:29:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64F7B28154E
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 058DE20B31;
	Mon, 23 Oct 2023 17:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="FWz9cTzT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6976820B29
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:29:31 +0000 (UTC)
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5E051738
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:29:21 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-5a1d89ff4b9so1830839a12.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698082161; x=1698686961; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Z+lM1psdaIr4vqzMn22M1QYDstohuJWu+yz55IiCnA=;
        b=FWz9cTzTFoLUyU1GHdasai+atLj/rWbT3oQ+M3vgLxZi/eM8bABmnW1QhAPo7yczEl
         qa7RleVFtWl4SSuPF800ubDAKJS11TDLKHEz5L94FZf6KTnM3YWBp1EDgC8RM/s4zgMo
         B1gXNzva7fSzXgxwpzg4zSGIp104FPe2PIum4+KcNHxIfhIWbzAcf1J/XTkub2kwPByE
         g2xFq70etWLIZWC9ncgPO3T/I98A0h0aPLRqd3T5YWuVikcbniDAWJwvAZV6QpJC7t7G
         7oXpDk2JvjCDnYALPyNJ0CUx52N4hOFSzJIglMS0oUJBiuXnTWGKH6zEPOZsA8qKmYYP
         F4uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698082161; x=1698686961;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Z+lM1psdaIr4vqzMn22M1QYDstohuJWu+yz55IiCnA=;
        b=Or7/hJV3IhOBrBUvKsAwQoE8MoSFUQfDFrUT4G2vbWqIENAlEiwyS8muI2HBCmgfNn
         f6mE74Mn6qU5DEB3Ur2y3BdV5DwjNjJr8GLRYNGfFitVfOESjpkKE4EofKDGnWmZ5bWW
         Rt55zGPHE4wneGPaqtJ0VMiRFs5F1o8CY2+TlLYdNcc1jvKmQZmL93/zpS8PGR3SICbL
         V3bCmnmgYd7y3VmRB0M4q0vZxjCNLfTKw8WULKpRgbYFCMDRz4w1k2Zhoic6S8X1WLBy
         TAEZ49ACTVV41QnXqPRbD71jQUN08TCZ/KVmJzSui/yeI2NE811hgL3ol4griwLU9ui5
         Yz2A==
X-Gm-Message-State: AOJu0Ywk6Z7pHdqhuMlIPZA1Axt6pFKO3MGZ/0K1IIu3qpI19gmMdApO
	i1gzOmuK1XyWl7pK2qt/cUlxDA==
X-Google-Smtp-Source: AGHT+IHo6USP3pcRlXKuqJ79woJTXEsC0Rq2g43o4Sr9KzMGrxRYLsluIqp45MjwhV/47Ir+x9eEvA==
X-Received: by 2002:a05:6a20:daa3:b0:157:609f:6057 with SMTP id iy35-20020a056a20daa300b00157609f6057mr319511pzb.27.1698082161065;
        Mon, 23 Oct 2023 10:29:21 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.9])
        by smtp.gmail.com with ESMTPSA id g5-20020aa79f05000000b006be055ab117sm6473194pfr.92.2023.10.23.10.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 10:29:20 -0700 (PDT)
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
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v11 14/14] MAINTAINERS: Add entry for RISC-V AIA drivers
Date: Mon, 23 Oct 2023 22:58:00 +0530
Message-Id: <20231023172800.315343-15-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231023172800.315343-1-apatel@ventanamicro.com>
References: <20231023172800.315343-1-apatel@ventanamicro.com>
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
index 801a2f44182c..4557675c6086 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18410,6 +18410,20 @@ S:	Maintained
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


