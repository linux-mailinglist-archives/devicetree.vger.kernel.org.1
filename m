Return-Path: <devicetree+bounces-11043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 435827D3DAE
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:29:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F21952815D3
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8620920B29;
	Mon, 23 Oct 2023 17:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="LluxEBrR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346BE20B31
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:29:26 +0000 (UTC)
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 051381BF7
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:29:16 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6b20a48522fso2857254b3a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698082156; x=1698686956; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=36mJhajWQppw1r4vewDK4hFKpILxPms9Bh84cWTmNnE=;
        b=LluxEBrRHQrFQF1u8V8xNPaJglNbQcJsrrwT2tQTExFMPiUqTGE/f6QJe0TR/AIHRy
         0JIFgG9mmENjP3H0ewoUiJsOXAmDzoP8HUGpdxTXSmFZGCEN6FbwUZjjx26kXYbjH7bW
         plRDfsCybkSXmdzx5i4ueDEvkUp4CdDQFeRGUN2rhHAuvEKBXH3upcOe/89XfsqOeVeK
         mQ2b48mmOELgzJzOCHezeWY8Xz4KNxGjiDIPgEgOTpIOVhUHh5bAR/10msNCJGf3bja8
         PkKMvoEWqtOpcG+uOGVF/yuloMJu7in/JOsxApJqMT+hul3Lr2x17NB72sUigQQ0zPXA
         QA4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698082156; x=1698686956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=36mJhajWQppw1r4vewDK4hFKpILxPms9Bh84cWTmNnE=;
        b=E2QzH9bLThe1601JbLKNF7PfQlGFa3p7uV6Xzt9NSMOwG2/JbiiVbh0RGHOL84lbkh
         eEYp7BYmu5h06BEdmzMi4SjPwjzmdZcPGzRT+Xk0V3+4SEDdvZSUrGXHNZFnWDmGwrWN
         Sarflsza9oLnRcr5a/Lg6+0SyxlL7QoMTxIoqRkTqKfXo01tkXfa4tQU3GYbhIZ+EmRd
         6aIs16Zc+dnW5f82traxq51Qv1Pv5ILfL8vslXyhIUANwu2eYupbc+wja8lYCgPaH+9T
         BMbSLadUI52Xo5N9ztryNWpFxrbPAf/eIzuQA82m0EXDefmCpGQtoWhqx6NhgRZi8Shw
         BWQg==
X-Gm-Message-State: AOJu0YxsQpcrZdEzQFyJ4FVbdM3TZffE+VVAzN6UuArx5BfU0MQB93rw
	H59idL2VRcXJ6uXTvEImHuHzAQ==
X-Google-Smtp-Source: AGHT+IFQlv4hAohFN2/tiwcRFKZLmk7B908S6YeDyALw0pkI0TorMC0K86E+LZulzmkBDxtFYTRLeg==
X-Received: by 2002:a05:6a00:c8f:b0:6b5:608d:64e1 with SMTP id a15-20020a056a000c8f00b006b5608d64e1mr8900912pfv.33.1698082156176;
        Mon, 23 Oct 2023 10:29:16 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.9])
        by smtp.gmail.com with ESMTPSA id g5-20020aa79f05000000b006be055ab117sm6473194pfr.92.2023.10.23.10.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 10:29:15 -0700 (PDT)
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
	Anup Patel <apatel@ventanamicro.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v11 13/14] RISC-V: Select APLIC and IMSIC drivers
Date: Mon, 23 Oct 2023 22:57:59 +0530
Message-Id: <20231023172800.315343-14-apatel@ventanamicro.com>
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


