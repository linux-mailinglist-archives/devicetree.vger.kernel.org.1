Return-Path: <devicetree+bounces-11902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A46177D6EB0
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:28:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF4ED1C20E10
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:28:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 566D32AB2A;
	Wed, 25 Oct 2023 14:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="mCzYS6nD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1CC02AB20
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:28:43 +0000 (UTC)
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CB9E199
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:28:42 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6bee11456baso4795735b3a.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698244121; x=1698848921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SYhetJOGeGWONv0pBZCT4Mywf3EBvVtv+lOqGOUogJM=;
        b=mCzYS6nDySUvdJr17CiMC67ONyFIfKc1V5K91Ov1W62LK4H8TQYXMePBuad7GtJg8b
         Zz4XbiMb/+jWfcwqiBFhPNuzIH5F2ycKnO5Tv/xhu1nSCPyZj/nPuOPOvnX4AuNyHAZ0
         eJiGEY7Q43B+GIPYD+a4Dqt+4i6bHsGxxVuEFOydjy83bPdJYB30sXDpatFNNduYBO2k
         5T+b3v4/kJEHvPLFDB6BbB7SkZNDpxvomge/NhqDA8vjrEdMvZNspz3DWef8XHqRyo7v
         mA+5B7tJ9fsPUrdVeJj02nAvYPRJfna8ZMv6jChb355PLdMf77ET6Ebg7dqV67dMbcPk
         jxcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698244121; x=1698848921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SYhetJOGeGWONv0pBZCT4Mywf3EBvVtv+lOqGOUogJM=;
        b=IUQY9Gbu59fUKUxr/J/KZhw3jdLWdEHgRARlZQfxZr+B6BpxryU21yElrwV0qXzItz
         i+s3kIqhVCekv/7NeLeuycWOi3SHy4k/pfmpDBsZWLdQ1MfDYEkziwR4q1zGAOAM4I5z
         vt4g0pJCCsJE6jh79tQEdw/0rGQ43qPDJDFe21HhyK8oHnXIDEQ3/z0VO8EL4OlgRsz8
         pYznRTA/c9Eqc9LZKuI3HKsPfJU/vKY4YuM3O+pNqnnjGqSnUe9Zi6LzRi8zm85y4aYP
         FKLOlUwvyag4TXpSSenwgnTXxP2h+VyDCbZ8eAmmZ9NSQ3miLNh+cn8iBkY2nwUoIsjC
         9WPA==
X-Gm-Message-State: AOJu0YzMC/7ydfwY6ne/7WWj7XjwUaKQwBY0KpF3AxGYpB04W0ncbnbY
	O83wNPqLICfLNDiFGw2U4kogkg==
X-Google-Smtp-Source: AGHT+IFQNbBr+sMT3u5z/l+o0iF+ppZGPFxjQxnFACN4M50PeyfMhxm13pEjMBXrYf9gZntSp2P55w==
X-Received: by 2002:a05:6a00:985:b0:68e:417c:ed5c with SMTP id u5-20020a056a00098500b0068e417ced5cmr14915842pfg.32.1698244121321;
        Wed, 25 Oct 2023 07:28:41 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id g2-20020aa796a2000000b0068ff6d21563sm9817411pfk.148.2023.10.25.07.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 07:28:40 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Marc Zyngier <maz@kernel.org>,
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
	Atish Patra <atishp@rivosinc.com>
Subject: [PATCH 1/3] RISC-V: Don't fail in riscv_of_parent_hartid() for disabled HARTs
Date: Wed, 25 Oct 2023 19:58:18 +0530
Message-Id: <20231025142820.390238-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231025142820.390238-1-apatel@ventanamicro.com>
References: <20231025142820.390238-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The riscv_of_processor_hartid() used by riscv_of_parent_hartid() fails
for HARTs disabled in the DT. This results in the following warning
thrown by the RISC-V INTC driver for the E-core on SiFive boards:

[    0.000000] riscv-intc: unable to find hart id for /cpus/cpu@0/interrupt-controller

The riscv_of_parent_hartid() is only expected to read the hartid from
the DT so we should directly call of_get_cpu_hwid() instead of calling
riscv_of_processor_hartid().

Fixes: ad635e723e17 ("riscv: cpu: Add 64bit hartid support on RV64")
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/kernel/cpu.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index c17dacb1141c..157ace8b262c 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -125,13 +125,14 @@ int __init riscv_early_of_processor_hartid(struct device_node *node, unsigned lo
  */
 int riscv_of_parent_hartid(struct device_node *node, unsigned long *hartid)
 {
-	int rc;
-
 	for (; node; node = node->parent) {
 		if (of_device_is_compatible(node, "riscv")) {
-			rc = riscv_of_processor_hartid(node, hartid);
-			if (!rc)
-				return 0;
+			*hartid = (unsigned long)of_get_cpu_hwid(node, 0);
+			if (*hartid == ~0UL) {
+				pr_warn("Found CPU without hart ID\n");
+				return -ENODEV;
+			}
+			return 0;
 		}
 	}
 
-- 
2.34.1


