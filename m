Return-Path: <devicetree+bounces-172279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ABEAA45C5
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:44:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6B661893F9F
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 08:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 594DE218AC8;
	Wed, 30 Apr 2025 08:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="i/JkN+D6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F96F218E81
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 08:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746002543; cv=none; b=VZCHT12uDBS3Tj35j/vg5cYb0C9b/3sVWAqcvZVjkUDcIVCUliaOicff+6pbIarLk7yY8xe0EUqB/KumZ1y5YunUJCiqJdr3bdTVtdTM8urmTzXsCF308HEG+blyUF3ZR6MqBVUg9Kq8kbIJyDSWJMAK/dwfENZqoBnJZwgDx6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746002543; c=relaxed/simple;
	bh=lrOuAr7//CsCE16uws5U23OQFFSQw7lF11vTqjRDSzg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IYe4WgjwEQ1vMuHfMTD7S/VE1PIH43uafgFgT+dogzwO6lgYAVsMYNL/6zWeB25yQO9It6sSYeOWXXUVrCwnzHSZZhCUkQuecSCU8w2Xai4rGwWXgB6X35wQAyLVz4E1OxtjHdVdpatV8hqj1/ahacRfUzMEwVqKYiJpT9RfvDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=i/JkN+D6; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5f6222c6c4cso10833967a12.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 01:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1746002539; x=1746607339; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OUfMAZkI61yB2821Vq79bnRbndqVmGSRfkgPEIOM8kc=;
        b=i/JkN+D63ROIBA6DJGutGsEMbrWDOAAdpL8odZ0nniSdmuwRLzVN6X/WIz+p0hdRQV
         V/iohUXWjVN98kJblpSPnwI5ldVsTPa/UBBTbCzPoYnrUzmZIomfHquwGH7DcLgwgQ6g
         n7iz0zGqhxnlHjoSX78xbG4SYyPgQ9UEtaAyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746002539; x=1746607339;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OUfMAZkI61yB2821Vq79bnRbndqVmGSRfkgPEIOM8kc=;
        b=rnI5GfbyI6eS8ALk2kcwUnDxtHS37AfGQxhkN2IrTkg7e3Pk3mwijDuCpecn51afnK
         RttceBviHZCwHEEXIqzaAfmMcfeIHu6H9Qc1C4uUit6w3tdw/22JmLdA+w3/9CFnN+Jp
         aO8/6lRLVggJ28Wc3/krJSJ/MEOkcJgBdg6lGNpMbz0kGcFPg9y1oJy1gATxPUvhShiY
         41HUebU7OvmmZkBkyLWgFL7lnkzJmUh043w9p7ssgHd3rNAQ7a9o7tELF9T5JZs7nvAq
         +Tigi9qpKIY8lJXhsEvv/xyN7AyFSi3w5uiK8CkjUEqmUQisvKN33j0Jr8CskA3lo6d9
         DY0A==
X-Forwarded-Encrypted: i=1; AJvYcCUk/myWCJSP7sp3tJ74EBGY15+7OcnlMWw1gWbCOA5SmNHQ26mRzvYoBvy11Hp4IhEsScFizjJdS+Em@vger.kernel.org
X-Gm-Message-State: AOJu0Yyd2CNpxV8I1JXPuRiDUcNUYaevE7LUZ8c8QVkOlQQChs9xPtVh
	HZO1E2MArsoYH0Eld40ukcVV7KBLl6gV7n9kuOPqxnnk8mtX+mV7QJYR7h35cg==
X-Gm-Gg: ASbGnctTB8wvINBz1vbKZXTnW/hk8vi6T44+p+PivrrQxatqjqjfcAeNJHr7mnEuUSL
	Ffm61jJ47nE1Me0NIQ242FUFh5ZlxGr8IEvC/upuPFH8VFxgE8Yza8Om2PAz8A7JwLLbRMorG7E
	cpg//9jU7V2jpwqLzw+1ZXvFFvrTkJV+Roqj7ku1pObtTpZ8AoBhX/Us9gXUn4aEpYu+OJWxo98
	Jh8dfx1Khia0TWU0jvcmfxsU1Tz1rh4fSxJpVKdF40r+E4UaygWv4O+1/VAUspeeX2On+lFIJk9
	jCVhdFYjwFj+SQPPWJTrnsXIdKzkoIVHwh96boC8FvdOlMKlZNAjGrefiXW9d9VUoq0Ydq5KPvI
	fznF6m9BEicJd5/NuNHhjzBddqA==
X-Google-Smtp-Source: AGHT+IE2tUm9vY4g6n13IEUjGDpcQXgLL2IoWAKbWzvId5UL7O470kgqnETeVgxpGEkAr3echu2a4w==
X-Received: by 2002:a05:6402:2707:b0:5f6:23d2:e6f7 with SMTP id 4fb4d7f45d1cf-5f89c10be57mr1961159a12.32.1746002539605;
        Wed, 30 Apr 2025 01:42:19 -0700 (PDT)
Received: from jaz-virt.c.googlers.com.com (23.31.204.35.bc.googleusercontent.com. [35.204.31.23])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7016f5342sm8351783a12.35.2025.04.30.01.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 01:42:19 -0700 (PDT)
From: Grzegorz Jaszczyk <jaszczyk@chromium.org>
To: tglx@linutronix.de,
	robh@kernel.org
Cc: mingo@redhat.com,
	bp@alien8.de,
	dave.hansen@linux.intel.com,
	x86@kernel.org,
	hpa@zytor.com,
	saravanak@google.com,
	dmaluka@chromium.org,
	bgrzesik@google.com,
	jaszczyk@google.com,
	ilpo.jarvinen@linux.intel.com,
	usamaarif642@gmail.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	tnowicki@google.com,
	mazurekm@google.com,
	vineethrp@google.com,
	rppt@kernel.org,
	agordeev@linux.ibm.com,
	dyoung@redhat.com,
	myrrhperiwinkle@qtmlabs.xyz,
	guoweikang.kernel@gmail.com,
	kirill.shutemov@linux.intel.com,
	akpm@linux-foundation.org,
	joel.granados@kernel.org,
	sourabhjain@linux.ibm.com
Subject: [PATCH v3 1/2] x86/of: add support for reserved memory defined by DT
Date: Wed, 30 Apr 2025 08:41:37 +0000
Message-ID: <20250430084138.2287031-2-jaszczyk@chromium.org>
X-Mailer: git-send-email 2.49.0.901.g37484f566f-goog
In-Reply-To: <20250430084138.2287031-1-jaszczyk@chromium.org>
References: <20250430084138.2287031-1-jaszczyk@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Grzegorz Jaszczyk <jaszczyk@google.com>

The DT reserved-memory nodes can be present in DT as described in
Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml.
Similar to other architecture, which supports DT, there is a need to
create reserved memory regions for such nodes.

Additionally this patch changes the sequence and calls
x86_flattree_get_config earlier during memblock setup, just after e820
memblock setup, so the DT reserved-memory can be properly reflected in
the memblock before it is used for allocation.

Signed-off-by: Grzegorz Jaszczyk <jaszczyk@google.com>
---
 arch/x86/kernel/devicetree.c | 1 +
 arch/x86/kernel/setup.c      | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/x86/kernel/devicetree.c b/arch/x86/kernel/devicetree.c
index dd8748c45529..f7db0e8f9c3e 100644
--- a/arch/x86/kernel/devicetree.c
+++ b/arch/x86/kernel/devicetree.c
@@ -307,6 +307,7 @@ void __init x86_flattree_get_config(void)
 		}
 
 		early_init_dt_verify(dt, __pa(dt));
+		early_init_fdt_scan_reserved_mem();
 	}
 
 	unflatten_and_copy_device_tree();
diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
index 9d2a13b37833..6f4eddc11560 100644
--- a/arch/x86/kernel/setup.c
+++ b/arch/x86/kernel/setup.c
@@ -1047,6 +1047,8 @@ void __init setup_arch(char **cmdline_p)
 
 	e820__memblock_setup();
 
+	x86_flattree_get_config();
+
 	/*
 	 * Needs to run after memblock setup because it needs the physical
 	 * memory size.
@@ -1157,8 +1159,6 @@ void __init setup_arch(char **cmdline_p)
 	early_acpi_boot_init();
 	x86_init.mpparse.early_parse_smp_cfg();
 
-	x86_flattree_get_config();
-
 	initmem_init();
 	dma_contiguous_reserve(max_pfn_mapped << PAGE_SHIFT);
 
-- 
2.49.0.901.g37484f566f-goog


