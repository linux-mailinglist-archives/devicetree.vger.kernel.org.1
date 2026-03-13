Return-Path: <devicetree+bounces-275420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DIzGg44tGnTiwAAu9opvQ
	(envelope-from <devicetree+bounces-275420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:15:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D91E4286CBF
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:15:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E2FFC3124CF3
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:07:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C941B3C554A;
	Fri, 13 Mar 2026 16:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LpBoY2SE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CE13BD634
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773418047; cv=none; b=cFFly8PNjhN+kfnRfJKKvZOqcycqLy4mTceHYdWyvBTUdXyNtOywgxnxdagNqkJGzCInk7WOD8g7dpymtDZTqtqZQb5VwlzAQ0KPx8gwwejhos1wAJJ9i0f0RrMwhLR/5pmId+QcXYO9Ox9K2WyxKSnjAIvjxVILFoc6lRAgY3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773418047; c=relaxed/simple;
	bh=ECkQNb3eCzal3WAJjRaDEW34t/R2ONA0tGGbLwPNcHY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ASwN9SNkDK2jNuj2RNZ825ogNfSw+qtUYgCeeyOkgB+iqfvU7vrunAcXpHY/k64svr8ceu0qU6YTS/iTlDIdegn08hDN4GD8MvP0ZjDDaDnbqCesqteMkhHc6MVTBmL/NrN/qp/hLJkD+pZz0rE794zP6IbhF4L+WBrZV6u2yRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LpBoY2SE; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6642a16be1cso1012587a12.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773418044; x=1774022844; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6IuFt080J2Skvkbg1SWMG28SkMd4vofTIXNDcp/JD4o=;
        b=LpBoY2SEy8o39lQ4A4d2lVbk/q9d8HnWULUohXpuqBcAvlC+UMYBtuLbZVAxrrROFw
         yI0bddsqBrHWr6ymkG/xicHopsZmr3Ba3B1VIQpht+Jcf3p3k5zv3XQxjpXlaRU0/t+X
         xmK3sj7jTnqBcdH4CDxVt2WPQ4lGgayG2rN20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773418044; x=1774022844;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6IuFt080J2Skvkbg1SWMG28SkMd4vofTIXNDcp/JD4o=;
        b=G15M/Ix+jjcyX1wdJ3N9GTokcVxnlfR8zK/dRZQDX0BSSzO9nLF5tpiAMgUGohffyC
         Cpvk0VGD63yqEwmJtSE0tJAT6h1mWmS5aXDQXHzMHG7aTBULjDXdiPcxGrt7L1eIl3UL
         jJAFLpZ+XgWiKmhGfACQ9AidUsQPOf3yU3eNPKOrhUpYcbf8h/SUSAP7cR/NPlxLi78X
         piQiExVUUsyv5/Q+cA/Y/BrdB7VscgTixvaKxxC+HYibyyfvsRF9gk/TIXYitlLQGgEC
         KIHORkRNSzRfkvmZFwz3l9/h9fTDjRGlThf9Tm573r54YVLaiU89N0KxdETeA2y9V8pX
         w9zQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8SRQx1bBshDaXdjp47KFJZajY6/aBvzED2vDNk3gWt6qycQ3fElNJ3JkBMkf4RMdRNx+TRQEj0GnG@vger.kernel.org
X-Gm-Message-State: AOJu0YxFp3XF2hkJPiMJf67LEyjuNNwzWsZYaZUe4Ie0WsphFez5tSE/
	v1xPOHPyhZZkzthFSc9j2Ry/coPgP4PES/DmhQtbegYGZox+yeLD57jf6ZP0sMMzvg==
X-Gm-Gg: ATEYQzxD8m/Izul1YdIrd/NA5FNcn170ZzXD6TjiMr6QJ/91BD7TanpdTqwY2lT76gT
	7oeNac7zaLmHG/Gp1O7w9BxdgpVXI0Gdf47wsibI0G4Ax0GNvjEVeTRvoLbUhf0arc0xt3MYJiI
	hqOmT5BP4ReWSdXN7Lr+WEwPXlAGEa/IQjgtKJTvk21sXf/Y0caQkZPBFGWDxRBWRBhm80ScKwZ
	QQDZbaNGTpGExaoIidJ4P9WKH/8I70ISzmL5J5BCmQsO29EAcKj665mjmD4kShw1ST/9bVttpgE
	eyx+ScyQvniBwm41M4vpH9p6ptuebWTU8cfo6RrY6YfDLxwsn/vE8soiid8HHp2a6Hm2Gf9vZw2
	ONhk82Krp2MwtlkiW2joV/FNYVMOAmUlqHku+0RbMlcnZNXE+yZMJoZvNOxzjHtL7NA7auur2YC
	bXjdjfrpU7uUVf486idGk8v/HcTV6HZtPBt5qr1Z0oCi5ifxZ/+DilFetwBeNSsiS2oV2qU4lEC
	2Rhsuncki/J
X-Received: by 2002:a17:906:7953:b0:b97:73ae:e1f with SMTP id a640c23a62f3a-b9773ae1114mr133921566b.34.1773418043836;
        Fri, 13 Mar 2026 09:07:23 -0700 (PDT)
Received: from jaz-virt.c.googlers.com.com (131.44.147.34.bc.googleusercontent.com. [34.147.44.131])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cba6ec4sm62749266b.5.2026.03.13.09.07.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:07:23 -0700 (PDT)
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
Subject: [PATCH v4 2/2] x86/e820: reserve corresponding to DT reserved-memory nomap region
Date: Fri, 13 Mar 2026 16:03:47 +0000
Message-ID: <20260313160347.2843005-3-jaszczyk@google.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275420-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D91E4286CBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The DT reserved-memory nomap region shouldn't be mapped and registered
as an IORESOURCE_SYSTEM_RAM resource. On the x86 platform the resource
tree map is built based on e820 entries (via e820__reserve_resources()).
Consequently memblock reservation originating from DT are not taken into
account by x86 resource management unless they are explicitly injected
into e820 table.

Injecting the corresponding no-map into e820 table as
'E820_TYPE_RESERVED', ensures that the x86 architecture builds an
accurate resource tree. This aligns x86 with how other architectures
(like arm64 in request_standard_resources() during resource tree
 creation) protect DT no-map region.

Adding a corresponding e820 entry also allows other parts of x86 early
kernel initialization to rely on it. E.g. e820__setup_pci_gap based on
the gap in the e820 memory table picks space and passes to the PCI
subsystem.  Without adding corresponding e820 reserved entry, DT
reserved memory nomap region could conflict with such region assigned
later to PCI subsystem.

Additionally updating e820_table in this stage of the x86 setup seems
safe since it is performed before mentioned e820__reserve_resources and
e820__setup_pci_gap and there are also other functions, which updates
e820 table on the later stage of early x86 setup such as early_quirks()
and efi_arch_mem_reserve() (used by efi_esrt_init).

Signed-off-by: Grzegorz Jaszczyk <jaszczyk@google.com>
---
 arch/x86/include/asm/e820/api.h |  1 +
 arch/x86/kernel/e820.c          | 20 ++++++++++++++++++++
 arch/x86/kernel/setup.c         |  2 ++
 3 files changed, 23 insertions(+)

diff --git a/arch/x86/include/asm/e820/api.h b/arch/x86/include/asm/e820/api.h
index bbe0c8de976c..9568d88e8df8 100644
--- a/arch/x86/include/asm/e820/api.h
+++ b/arch/x86/include/asm/e820/api.h
@@ -27,6 +27,7 @@ extern unsigned long e820__end_of_low_ram_pfn(void);
 
 extern u64  e820__memblock_alloc_reserved(u64 size, u64 align);
 extern void e820__memblock_setup(void);
+extern void e820__reserve_nomap_region(void);
 
 extern void e820__finish_early_params(void);
 extern void e820__reserve_resources(void);
diff --git a/arch/x86/kernel/e820.c b/arch/x86/kernel/e820.c
index 2a9992758933..6f8a65dba7c7 100644
--- a/arch/x86/kernel/e820.c
+++ b/arch/x86/kernel/e820.c
@@ -1374,3 +1374,23 @@ __init void e820__memblock_setup(void)
 
 	memblock_dump_all();
 }
+
+void __init e820__reserve_nomap_region(void)
+{
+	struct memblock_region *region;
+	bool updated = false;
+
+	for_each_mem_region(region) {
+		if (memblock_is_nomap(region)) {
+			/*
+			 * Add corresponding e820 region and let
+			 * e820__update_table sanitize e820 map
+			 */
+			e820__range_add(region->base, region->size, E820_TYPE_RESERVED);
+			updated = true;
+		}
+	}
+
+	if (updated)
+		e820__update_table_print();
+}
diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
index cf6c93f8be1a..cbbc7abdabef 100644
--- a/arch/x86/kernel/setup.c
+++ b/arch/x86/kernel/setup.c
@@ -1078,6 +1078,8 @@ void __init setup_arch(char **cmdline_p)
 
 	x86_flattree_get_config();
 
+	e820__reserve_nomap_region();
+
 	/*
 	 * Needs to run after memblock setup because it needs the physical
 	 * memory size.
-- 
2.53.0.851.ga537e3e6e9-goog


