Return-Path: <devicetree+bounces-35830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F032E83EE74
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 17:23:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C227284A88
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:23:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1FCE2E62F;
	Sat, 27 Jan 2024 16:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="jN2ttUfJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3625C5D73B
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706372397; cv=none; b=f7X03soSunjbx8EMKv2SNlDxQXIg2osMCWkJJXjf+Xu2V7QGT+GBtq3HVtXuSV1lK6TSJ2q5b6Bz+/LMgozVvPnz1bYxJSKrZEzDS/ia108IKX3jca9Q1I7tHXYv5AVBVj6jHVwxUXL+scnWWFjAAw4U0PGeaXRft2x6k5w9v2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706372397; c=relaxed/simple;
	bh=v7MGRVtZtPXfGkmyqYWN6Y63LLsHhhJ5iWWU9xTfhDY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=m1DamaYde4/2QKWPatVyWkO29PHciU3mS3cgMduuJ1+hvyAipCbbfJmdcaIBFM8vNmsfcusZxKS0MsK8HVYqQgghZ2rkkcP4/7UfGC8k2QdrFpXd6aTEmG2ZCaq/kL5P3lwc1cSEvj8f8e4uuYotkC+02vLw58tIWJ65ngbm3BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=jN2ttUfJ; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2906bcae4feso599584a91.3
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 08:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706372395; x=1706977195; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=104PBPP87dGRJ1dWRj3TJVt38h0tClUYGYzJ0Qy5+KM=;
        b=jN2ttUfJUBzfZjgVodEnThF8xCifBFgPOKFgoV56WDBsmTNIWW2J5c/X/RfW4tYi7q
         r2Qbdjt3DzeIBdI/6qO3Dgg++Xyry7e9b/7Uz9+vQncEuRVI/+v3uGqV4Ix6RjU3GD1O
         oAIMfPra2kBp6yPgIo+/+pV94KTdp28xFhiCE4X6EbbFOvyg0Rj+54gVht3X8c1nHe3G
         BXQ5JbYNcs/u6bE5mMrcZbXTXoxWBDKAno9uAn+oRREFYcTW1WgKSxZfP2RI+hvUPEN5
         oTDzGG+HL9LzbauBuHQ8Quyr8oEwj5VHvOSMSI5KhcxI0Yf71DuvUlGKDeHzsl+IMOuB
         yf8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706372395; x=1706977195;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=104PBPP87dGRJ1dWRj3TJVt38h0tClUYGYzJ0Qy5+KM=;
        b=FeT7JpnflLxPM5NemU2SuM9ikKOTIf9fxIDaKWyPMmjbuB3JTmPco0NGTJWXdwFgAP
         DB7aKfKHyR6ZoliHAFDgK/8sQbNlCAVOPnGsll2b+gsrxV3byPUBk7UHFL/ZUAP5qeM7
         JbItgUyIwDaQLPSZtLtqD2nw1NRBkrbd6IVHasvI43mj5MLqMmzJ7A/2R/HE0ntAGlI2
         sOkJVn/gfYwu7gr6ebZSNiVlND1M8thH4p+sYwidn+yoiExJVJM5yLQBS8hyCb4FdvYG
         wXd6SXrgy0JjOg/fPbBnkZBjhsHQhpm17gY7u9HE8Clt3Hch/MGxC7nHwmi6DAjPZ4Bg
         1eyQ==
X-Gm-Message-State: AOJu0Yxj/rRZXKQYou+obXuihX52wV7T4nnBXiFy4X3lGYlDyeCqqp+d
	bdbfKrCSfk95tv8L8F+I5v3ARdbhilZEr5x/0Js9ULu0yE+RzXr6Xmg5/oj+SHM=
X-Google-Smtp-Source: AGHT+IFw60sBjhZzP3OtGpGnPIYlvLc3K10/d07qGX8jMkSQJpYxEHRTdlY+1NIY9ZTwX2uWP8xCuw==
X-Received: by 2002:a17:90b:a01:b0:28e:86a3:11f9 with SMTP id gg1-20020a17090b0a0100b0028e86a311f9mr815362pjb.34.1706372395429;
        Sat, 27 Jan 2024 08:19:55 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.17])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090ac24b00b00290f8c708d0sm5091620pjx.57.2024.01.27.08.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 08:19:55 -0800 (PST)
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
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@rivosinc.com>,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v12 17/25] genirq/matrix: Dynamic bitmap allocation
Date: Sat, 27 Jan 2024 21:47:45 +0530
Message-Id: <20240127161753.114685-18-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240127161753.114685-1-apatel@ventanamicro.com>
References: <20240127161753.114685-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Björn Töpel <bjorn@rivosinc.com>

Some (future) users of the irq matrix allocator, do not know the size
of the matrix bitmaps at compile time.

To avoid wasting memory on unnecessary large bitmaps, size the bitmap
at matrix allocation time.

Signed-off-by: Björn Töpel <bjorn@rivosinc.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/x86/include/asm/hw_irq.h |  2 --
 kernel/irq/matrix.c           | 28 +++++++++++++++++-----------
 2 files changed, 17 insertions(+), 13 deletions(-)

diff --git a/arch/x86/include/asm/hw_irq.h b/arch/x86/include/asm/hw_irq.h
index b02c3cd3c0f6..edebf1020e04 100644
--- a/arch/x86/include/asm/hw_irq.h
+++ b/arch/x86/include/asm/hw_irq.h
@@ -16,8 +16,6 @@
 
 #include <asm/irq_vectors.h>
 
-#define IRQ_MATRIX_BITS		NR_VECTORS
-
 #ifndef __ASSEMBLY__
 
 #include <linux/percpu.h>
diff --git a/kernel/irq/matrix.c b/kernel/irq/matrix.c
index 75d0ae490e29..8f222d1cccec 100644
--- a/kernel/irq/matrix.c
+++ b/kernel/irq/matrix.c
@@ -8,8 +8,6 @@
 #include <linux/cpu.h>
 #include <linux/irq.h>
 
-#define IRQ_MATRIX_SIZE	(BITS_TO_LONGS(IRQ_MATRIX_BITS))
-
 struct cpumap {
 	unsigned int		available;
 	unsigned int		allocated;
@@ -17,8 +15,8 @@ struct cpumap {
 	unsigned int		managed_allocated;
 	bool			initialized;
 	bool			online;
-	unsigned long		alloc_map[IRQ_MATRIX_SIZE];
-	unsigned long		managed_map[IRQ_MATRIX_SIZE];
+	unsigned long		*managed_map;
+	unsigned long		alloc_map[];
 };
 
 struct irq_matrix {
@@ -32,8 +30,8 @@ struct irq_matrix {
 	unsigned int		total_allocated;
 	unsigned int		online_maps;
 	struct cpumap __percpu	*maps;
-	unsigned long		scratch_map[IRQ_MATRIX_SIZE];
-	unsigned long		system_map[IRQ_MATRIX_SIZE];
+	unsigned long		*system_map;
+	unsigned long		scratch_map[];
 };
 
 #define CREATE_TRACE_POINTS
@@ -50,24 +48,32 @@ __init struct irq_matrix *irq_alloc_matrix(unsigned int matrix_bits,
 					   unsigned int alloc_start,
 					   unsigned int alloc_end)
 {
+	unsigned int cpu, matrix_size = BITS_TO_LONGS(matrix_bits);
 	struct irq_matrix *m;
 
-	if (matrix_bits > IRQ_MATRIX_BITS)
-		return NULL;
-
-	m = kzalloc(sizeof(*m), GFP_KERNEL);
+	m = kzalloc(struct_size(m, scratch_map, matrix_size * 2), GFP_KERNEL);
 	if (!m)
 		return NULL;
 
+	m->system_map = &m->scratch_map[matrix_size];
+
 	m->matrix_bits = matrix_bits;
 	m->alloc_start = alloc_start;
 	m->alloc_end = alloc_end;
 	m->alloc_size = alloc_end - alloc_start;
-	m->maps = alloc_percpu(*m->maps);
+	m->maps = __alloc_percpu(struct_size(m->maps, alloc_map, matrix_size * 2),
+				 __alignof__(*m->maps));
 	if (!m->maps) {
 		kfree(m);
 		return NULL;
 	}
+
+	for_each_possible_cpu(cpu) {
+		struct cpumap *cm = per_cpu_ptr(m->maps, cpu);
+
+		cm->managed_map = &cm->alloc_map[matrix_size];
+	}
+
 	return m;
 }
 
-- 
2.34.1


