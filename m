Return-Path: <devicetree+bounces-275418-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EL+HCJs2tGnTiwAAu9opvQ
	(envelope-from <devicetree+bounces-275418-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:08:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A45DF286B22
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:08:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E63163008277
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37B2B3C13F4;
	Fri, 13 Mar 2026 16:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Pta9ysXI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAB73BD247
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773418046; cv=none; b=IA+mhY8ltPyBy3aUeAtaeP0Ckp895AMJKXlrDWT4lf3/i3BmxpcNFHUsxQnvBFCf3xZa4uU1fTZT5KMlLnPaFHzBSyOJbnaPQokoGS4M0ijgozzbte/c46c1ukk6ihf5dXkx2hv6Zys2RgiktFa1RJNDXELtCc0YeN+qsxipu+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773418046; c=relaxed/simple;
	bh=Bmfl7ft/YjK5LyDZL/lyphuYczIreEHAVKWBpakrNTg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DLotz8Y4OzPvM6pQnnBTML1a0zZo19r57Uheqj9yE1Gwjur9u0U6xCSlHb/cBp0hEXfxIThhBEDL91ijCpDKriMIuMmZviDCB1txboy3Ba7tdZHkvTTgVgQa89aX8F06TP5niWLwY2WBFEb0T5msyYQ3IWnKL4BZ5tWm8doiv6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Pta9ysXI; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-6611d20c026so3535027a12.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773418043; x=1774022843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6c9kfdEWLKd/Nu261uajCPoEnKn4RxRPk/xf66gdPHE=;
        b=Pta9ysXIDdcEQwMeIB2mAPHuCx7aeyqwTdMLT11lNbfIpqhesHNnEDNC6VtDA3m5X9
         t/3Z7d0y9qLb+bABSyA+TxGN4pR3k6OPKXctljcl1l42dBUrZj+koMNunDnFASi2ShlG
         vTLXPy/ZnD+ebPpBD8OroRSCgpWVhXCoMALpQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773418043; x=1774022843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6c9kfdEWLKd/Nu261uajCPoEnKn4RxRPk/xf66gdPHE=;
        b=aaJb8yP+qjlSDIYqZxwgvl8TKYI72sQy4wAM207GXdgj/Y0vLw97jdctNpTpqovtUt
         P9A5lL1uXpAoOUT35rj+NCy2zpfX8xoOqumj6mED+b6Mc22XWVr+GqVCo6uzpQ569ocB
         J0G2vwBTJTdx/WQDGhAZKwxZoc4h26vUK3tmt72N827qROQok3pLp0D0pUHMcgM/7sXs
         4U1aC/MBXSZoYmBRKwuaUDO0Qa10FfZBqKj/ADaDM6hQNrThpQB5mP2sElFTTQCw03gd
         Oi08LMfRIEjW0aP/z9fbcbfOvvnuLFdNR3JxwCwPBzCF4aqMG6yKatLlDGMmebQLRF92
         pvoA==
X-Forwarded-Encrypted: i=1; AJvYcCWCXNX+SD0QEapelKHJoCeNXWGonvrimsnUr7uoGwEzzzuBqDwrM7d7o+p0cGFVuuUmYu9KzCkg0FH7@vger.kernel.org
X-Gm-Message-State: AOJu0YymqsYayjKgO3jjm13cfPMAK5izve7VcF6KKO0TEUBhgIx7/fWU
	M9x0uIGa5I2Z4XYTHi/GbZ+QS/QLsCEygT/cGNVLWaL2jTBHyOW3KoBZZ8eCsMsguQ==
X-Gm-Gg: ATEYQzzI32jE5t99a9MSTKXrW9pUJoN3DvqLU8iO2Etd9j/EG1JDvHmUXC28q4VJ43a
	aIVgZtc/pj3HEKsQwUsjOFdPyhMhh1sq3lsWsipCsbJjz93sdgPJwTeq4TsyE1QzXQMiz9uaKT1
	HHI+RvvWsHj5Hy+edKKDamU+f/Brk+h4yVBvc07pxTNndIqVJdfJ9StKUH2X8udO5wkILNbBeoI
	nUuqPsthglek3upGYIDQNmKPBbFJXtSVLX1QJpA6LYH5GztNIrdxGJ0VKLxnyLuoHIUBEeKXLzT
	8g+DgOiJCvOV+lpkokAlcv4y0uM5VL8uKiAKBRWJDBBObzo08HBK4qP+/vC8Un/DcqOWX5k5sPw
	O1DLnFayDWBVE9bAVDHIXPXPc232U7TUCdBdgUWocrb/Jo3vg0uIPBvJO0qHoCBA+XRqO7jbHvy
	gSEax2oGpWhIVk5Sxx0VSOUYPTlUwY9A+18DckESxdqNMDDAk+3O6E0jpwqlPce2z3JnN83bgdL
	bk5hB/ZFmuU
X-Received: by 2002:a17:906:3396:b0:b97:464:956e with SMTP id a640c23a62f3a-b97651d0b0cmr163866166b.34.1773418042960;
        Fri, 13 Mar 2026 09:07:22 -0700 (PDT)
Received: from jaz-virt.c.googlers.com.com (131.44.147.34.bc.googleusercontent.com. [34.147.44.131])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cba6ec4sm62749266b.5.2026.03.13.09.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:07:22 -0700 (PDT)
From: Grzegorz Jaszczyk <jaszczyk@chromium.org>
X-Google-Original-From: Grzegorz Jaszczyk <jaszczyk@google.com>
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
Subject: [PATCH v4 1/2] x86/of: add early setup of DT reserved-memory nodes
Date: Fri, 13 Mar 2026 16:03:46 +0000
Message-ID: <20260313160347.2843005-2-jaszczyk@google.com>
X-Mailer: git-send-email 2.53.0.851.ga537e3e6e9-goog
In-Reply-To: <20260313160347.2843005-1-jaszczyk@google.com>
References: <20260313160347.2843005-1-jaszczyk@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275418-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,alien8.de,linux.intel.com,kernel.org,zytor.com,google.com,chromium.org,gmail.com,vger.kernel.org,linux.ibm.com,qtmlabs.xyz,linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jaszczyk@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,chromium.org:dkim]
X-Rspamd-Queue-Id: A45DF286B22
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The x86 allows booting with ACPI and DT simultaneously, and while basic
DT support is present, the processing of DT 'reserved-memory' is
currently missing.

Some drivers (such as open-dice driver) rely on the standard device-tree
bindings (Documentation/devicetree/bindings/reserved-memory/) to
communicate securely reserved memory region.

To support this add early_init_fdt_scan_reserved_mem as part of early
flattened device tree parsing.

Additionally this patch changes the sequence and calls
x86_flattree_get_config earlier in `setup_arch()`, just after e820
memblock setup, so the DT reserved-memory can be properly reflected in
the memblock before that reserved-memory is used for allocation.

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
index eebcc9db1a1b..cf6c93f8be1a 100644
--- a/arch/x86/kernel/setup.c
+++ b/arch/x86/kernel/setup.c
@@ -1076,6 +1076,8 @@ void __init setup_arch(char **cmdline_p)
 
 	e820__memblock_setup();
 
+	x86_flattree_get_config();
+
 	/*
 	 * Needs to run after memblock setup because it needs the physical
 	 * memory size.
@@ -1186,8 +1188,6 @@ void __init setup_arch(char **cmdline_p)
 	early_acpi_boot_init();
 	x86_init.mpparse.early_parse_smp_cfg();
 
-	x86_flattree_get_config();
-
 	initmem_init();
 	dma_contiguous_reserve(max_pfn_mapped << PAGE_SHIFT);
 
-- 
2.53.0.851.ga537e3e6e9-goog


