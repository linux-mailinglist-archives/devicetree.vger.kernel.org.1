Return-Path: <devicetree+bounces-159164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDF4A69DF2
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 02:59:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A62543A7B53
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 01:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 360771EEA5E;
	Thu, 20 Mar 2025 01:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="h1tb6Pwk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C65151EE01A
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 01:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742435784; cv=none; b=ANionCzlI1Ujd5W/M3OgcpaluAx5pccrZNWv9xzfsXciKpylAnlmdcii5t7/167iMLXR0LEwQp07+TkuOikx7OS26/2+bFslB0AXxt6/sHeiMi9uFfCCepzNglFKp2AqW8UF7dpfE+EcXZzvPE+v5BIIROjCyQ25+u+DDZAu83o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742435784; c=relaxed/simple;
	bh=r9/SrwfoCrKr3QU0pZq22rncXuc1JlS8dJ2sh8vOIYQ=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=KuITcYSbQY5cTz3EeKNR8zvt0qpBXA1hs/6wFfifKFkxntT9plLZHoNEgkfIIDpMwRdoW2GJLVsTjNUAijt2ApLryn32WSjn1unrlirRonHmC63abnmKIIsUbzldz24j6hFQB08W5kQcdnMKQ2CdPsx2ibPNTPflhsd+5hWBtQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=h1tb6Pwk; arc=none smtp.client-ip=209.85.214.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-224347aef79so4644175ad.2
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 18:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1742435781; x=1743040581; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=Q4HakJ1xIrca+h2lsnqHQuPoA99HtUJXt7bntXeIsss=;
        b=h1tb6PwkLgspC8mq+LJoALv3MWVpJ+dqlBB/n+Ftmo5htTYMdlRWqTBTUOjbgK3NZV
         REqdIuNNzaTyHKQFeoSi2eXurONwsGo0Tq/GIqHguXoU6jLjBcW2HFvJKyt9UEmFQ7fo
         axCbHd1msR8v+ysGlTdBYrwETYCbRhFqFjK/oqpdVDyS29qAIxX9D2v+oJdLi5e5G+5d
         eE8rXldAt8bBN4fkJKg6tk/c49IsFrrs0oIddNwLEgn7HyPd4jSvuMYHT9dyUEWqLl8I
         W/LyoedmzDA6BH0W2H0W9Iok9YOsNL54rqZbcS8n0p0wGCSTuE/H9Ild0j4nTUNIb3gm
         5Wlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742435781; x=1743040581;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q4HakJ1xIrca+h2lsnqHQuPoA99HtUJXt7bntXeIsss=;
        b=Omc03JCGYJWRhiHgV6pF8Hv7bjlcJrAT3vTZfiC3gyoNFUQ72dTHgB66Jx3Xc/UujL
         T6gH6ziqXsRTjYwuSxqejbMTCKk7j0yE3EsTL3mJzwyJAct/1RSuIYGBNFoBfMueMPkQ
         yb1cRrFoF0NU9zlFIugB6hIc2uGB8Y2UCc/S2JqexRXAbpojFcLFQLcLS4ISyfvWFbn5
         hMfDdK2YtpCnV6OZLN3TVacUWG7jobAebuJ/IkvJOpx14hxowZ5/VtKpAI4byV1S0fSN
         UgylQ6u1SX8ScB2VR2zT50f9iNdtqMBMp3+4fcPyaCnug6fmwf54nRq2ULXzIaxY0s1i
         dTgA==
X-Forwarded-Encrypted: i=1; AJvYcCUvssAmVSJeHbjrldTHAYr0HjTIsTY/1jafboy553FbSMSySjQLQ52EMW1r5Til7XEQpx1KxKbySUGp@vger.kernel.org
X-Gm-Message-State: AOJu0YxJbYg5LkHUSGRcojGZwZDUcntfuQx8wpQrePFSEzeVBlDEkleG
	U4EWCfuJxv+ECnUBEUzLofnjMQYITtSsLI3MJTjorGWe/PCUjfqGISL5smiBtobCKxwKb+n4CKF
	YP5QicOXHggUW5vqucw==
X-Google-Smtp-Source: AGHT+IGeUFjJTWpK4QjhVVj4506qhZmgM6+vP3bTkcGXoNreK6tGzf61M1Gbm1yeqL/C/F63sl0IwvGvOY21BMKy
X-Received: from plof5.prod.google.com ([2002:a17:902:8605:b0:21f:56e1:c515])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:f548:b0:21f:b483:2ad5 with SMTP id d9443c01a7336-2264993273bmr61032515ad.20.1742435781232;
 Wed, 19 Mar 2025 18:56:21 -0700 (PDT)
Date: Wed, 19 Mar 2025 18:55:48 -0700
In-Reply-To: <20250320015551.2157511-1-changyuanl@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250320015551.2157511-1-changyuanl@google.com>
X-Mailer: git-send-email 2.49.0.rc1.451.g8f38331e32-goog
Message-ID: <20250320015551.2157511-14-changyuanl@google.com>
Subject: [PATCH v5 13/16] x86/setup: use memblock_reserve_kern for memory used
 by kernel
From: Changyuan Lyu <changyuanl@google.com>
To: linux-kernel@vger.kernel.org
Cc: graf@amazon.com, akpm@linux-foundation.org, luto@kernel.org, 
	anthony.yznaga@oracle.com, arnd@arndb.de, ashish.kalra@amd.com, 
	benh@kernel.crashing.org, bp@alien8.de, catalin.marinas@arm.com, 
	dave.hansen@linux.intel.com, dwmw2@infradead.org, ebiederm@xmission.com, 
	mingo@redhat.com, jgowans@amazon.com, corbet@lwn.net, krzk@kernel.org, 
	rppt@kernel.org, mark.rutland@arm.com, pbonzini@redhat.com, 
	pasha.tatashin@soleen.com, hpa@zytor.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh+dt@kernel.org, robh@kernel.org, saravanak@google.com, 
	skinsburskii@linux.microsoft.com, rostedt@goodmis.org, tglx@linutronix.de, 
	thomas.lendacky@amd.com, usama.arif@bytedance.com, will@kernel.org, 
	devicetree@vger.kernel.org, kexec@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-mm@kvack.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"

From: "Mike Rapoport (Microsoft)" <rppt@kernel.org>

memblock_reserve() does not distinguish memory used by firmware from memory
used by kernel.

The distinction is nice to have for accounting of early memory allocations
and reservations, but it is essential for kexec handover (kho) to know how
much memory kernel consumes during boot.

Use memblock_reserve_kern() to reserve kernel memory, such as kernel image,
initrd and setup data.

Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 arch/x86/kernel/setup.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
index cebee310e200..ead370570eb2 100644
--- a/arch/x86/kernel/setup.c
+++ b/arch/x86/kernel/setup.c
@@ -220,8 +220,8 @@ static void __init cleanup_highmap(void)
 static void __init reserve_brk(void)
 {
 	if (_brk_end > _brk_start)
-		memblock_reserve(__pa_symbol(_brk_start),
-				 _brk_end - _brk_start);
+		memblock_reserve_kern(__pa_symbol(_brk_start),
+				      _brk_end - _brk_start);
 
 	/* Mark brk area as locked down and no longer taking any
 	   new allocations */
@@ -294,7 +294,7 @@ static void __init early_reserve_initrd(void)
 	    !ramdisk_image || !ramdisk_size)
 		return;		/* No initrd provided by bootloader */
 
-	memblock_reserve(ramdisk_image, ramdisk_end - ramdisk_image);
+	memblock_reserve_kern(ramdisk_image, ramdisk_end - ramdisk_image);
 }
 
 static void __init reserve_initrd(void)
@@ -347,7 +347,7 @@ static void __init add_early_ima_buffer(u64 phys_addr)
 	}
 
 	if (data->size) {
-		memblock_reserve(data->addr, data->size);
+		memblock_reserve_kern(data->addr, data->size);
 		ima_kexec_buffer_phys = data->addr;
 		ima_kexec_buffer_size = data->size;
 	}
@@ -447,7 +447,7 @@ static void __init memblock_x86_reserve_range_setup_data(void)
 		len = sizeof(*data);
 		pa_next = data->next;
 
-		memblock_reserve(pa_data, sizeof(*data) + data->len);
+		memblock_reserve_kern(pa_data, sizeof(*data) + data->len);
 
 		if (data->type == SETUP_INDIRECT) {
 			len += data->len;
@@ -461,7 +461,7 @@ static void __init memblock_x86_reserve_range_setup_data(void)
 			indirect = (struct setup_indirect *)data->data;
 
 			if (indirect->type != SETUP_INDIRECT)
-				memblock_reserve(indirect->addr, indirect->len);
+				memblock_reserve_kern(indirect->addr, indirect->len);
 		}
 
 		pa_data = pa_next;
@@ -649,8 +649,8 @@ static void __init early_reserve_memory(void)
 	 * __end_of_kernel_reserve symbol must be explicitly reserved with a
 	 * separate memblock_reserve() or they will be discarded.
 	 */
-	memblock_reserve(__pa_symbol(_text),
-			 (unsigned long)__end_of_kernel_reserve - (unsigned long)_text);
+	memblock_reserve_kern(__pa_symbol(_text),
+			      (unsigned long)__end_of_kernel_reserve - (unsigned long)_text);
 
 	/*
 	 * The first 4Kb of memory is a BIOS owned area, but generally it is
-- 
2.48.1.711.g2feabab25a-goog


