Return-Path: <devicetree+bounces-317466-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zA8sBNx0Q2rrYgoAu9opvQ
	(envelope-from <devicetree+bounces-317466-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:48:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 799666E15BB
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:48:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=F+mc4Xxh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317466-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317466-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B48D301DBA7
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 07:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 606203E2AD6;
	Tue, 30 Jun 2026 07:48:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj2-f0.google.com (mail-pj2-f0.google.com [74.125.227.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08223E3158
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 07:48:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782805713; cv=none; b=k5RuwHbB7yjU/rHSRi/GBZ/RKtHlsrYA9iL9Zv33DCevr6T7+grKUI4m7Y3ADtwPdwD9DlLgirdEsxM4x6pebyPohRPqwCZfPnMLlq2VCXTDtPAPXygEZqLA2+1q3RIhVTQ+6+N5zdREHGwVaFh+6GtOgBVtAd6TNlM1HwtZZNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782805713; c=relaxed/simple;
	bh=5VDdvOioCyiv7v0NuhryTu7UmcEbfixHAtdpdJcVQrM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CKdHBcf258i3UgYSeilGrXu2+ihDqxfEpeo5q6AlLGLCDJ+MXrWkXC3HeevOW3trTbiaG1sUHqDwK4znZiXZ052GSQhOtRNJmy8+AOvAfi+eKZOxMj+Ouj9dMtIfMFe0E6FStSjDnaX2vVeLo0mUyopi4OBNfvXk+8VVViylR4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F+mc4Xxh; arc=none smtp.client-ip=74.125.227.128
Received: by mail-pj2-f0.google.com with SMTP id d9443c01a7336-2c99784b434so2273155ad.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 00:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782805710; x=1783410510; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kOeOq8JJcDQksJBuje0bYH/ntMqvxfxyxa0O7Jz9Ya0=;
        b=F+mc4XxhY9MBW8hSqo0P5WXVyHNFRSQXd19TVvX6sYL6HUcIRkRWlx3Mo36DKyEfU0
         ieUqbmPbhnKbWFK80aTMh8awQGYSVd23BNxPZbbo8mCoJBtlewRoaqNnMDp0FAa5W/rB
         rcxH5K4E+KVe3xtUjOSbOlSBtLn82rnBltdPrXBaZchgDAiQOug97Nbt1FbCkUH8jqgC
         Ldn9rA/5l45caDAdBu6tr3b82HsTKQoMRjlwB5IloK6R/XDh2EW+xi9B13Tn04HHDOYL
         8iASwz5WtqEUVvKzOSkmQQO6GYJLYwV7F90C9B7pK8YJFDY7ZG27SAZm3HoG+daWApcr
         aoSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782805710; x=1783410510;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kOeOq8JJcDQksJBuje0bYH/ntMqvxfxyxa0O7Jz9Ya0=;
        b=ax1yCxZRTODslOUJSq88dKEO4wX5sxDGBdcjugllNjFiw4A72TnCs24XPCJVLcqWc7
         f9g3p0WVZBL9YrnvgWzoUd5fyOSUERWUVYPR2dsNpek2vM4liTZTEuG8RlCVGvCj4mYi
         UfTMH8+klZmtGwYHX+izrnB9bciHjJLT5xiJrSCQISyzSUwWfqlOdW1L/dJsuwN1N1ui
         7PGTvcxgL16DYg5BLt9H8+o01ISUumsrnxNGj8CvpvyoAevwYvfGXfoYj0gTH81mt/5D
         lElj2nLnZy/0SszC7ChQJwxCF52D1gJUYksXnQW2D0VDP+znGkQyVSHNgssP1BTanXKV
         fJ7Q==
X-Forwarded-Encrypted: i=1; AHgh+Rq1/h8MC6/Ut8ZqYsv064NBhEkBd7XL5mIAX1el58Qap/9Y7Sv05jn3mUPRYdvBXmUfytubY0xVH9jg@vger.kernel.org
X-Gm-Message-State: AOJu0YxmCFRhSOnEFFrRNizdr6J5OUqHi7ZA1Nk/bNemtXkuh6yFfvJa
	jcVOy8QWNH1nVXk/ELmXrqBhnq9/6BkzulINa87jCbirDQTm08kAjc9A
X-Gm-Gg: AfdE7cnlsZrKoPTiukRuiLUb3TihvCZ0bz5NQ8BSziKGg3hB2bzVBH55/6+/LVQAxJ7
	G8EXAox7JhnU3CH/JkuSN5gR8ymsPWtlKHiFjoDP+UPEjyGYRCLXVQYBvuEtLLbRboyQQOupBkJ
	beCp77N6LXK4byhcIUr8cTMf9qWbfHEbL/yZup3y+XbtwsxitxLQSDTyLvPRIBHTs/0R/d49i1J
	PUASlcv97pyrVa9yXlglJRur/T2UG7CNHu6xaviFE1TU5yDiZD9rUSWjv8TPQM7r636rb5CjzYf
	iyqH60KVg175gTNXKazT6KZxT+QK5fxHbH3lmZrQRbPfqNLZIyk9IzMGHpNnrBI0uoVTyTI/dXC
	u8VL4pyJzf9oW6bQ3826ecYNa5gj5RIb0oXZNx1dqkN/wDM774xPz1IlBnbYBylyK0FKR46KOXE
	A6XFACv4mdCif7z05yECvvV3Pp3Q==
X-Received: by 2002:a17:903:1a26:b0:2c8:e13a:f23a with SMTP id d9443c01a7336-2ca2e714d17mr18921635ad.28.1782805710141;
        Tue, 30 Jun 2026 00:48:30 -0700 (PDT)
Received: from intel.company.local ([210.184.73.204])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca382a2d3dsm7821045ad.55.2026.06.30.00.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 00:48:29 -0700 (PDT)
From: Wandun Chen <chenwandun1@gmail.com>
To: chenhuacai@kernel.org,
	kernel@xen0n.name,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	robh@kernel.org,
	saravanak@kernel.org,
	bhe@redhat.com,
	rppt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	loongarch@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	kexec@lists.infradead.org,
	iommu@lists.linux.dev,
	zhaomeijing@lixiang.com
Cc: catalin.marinas@arm.com,
	will@kernel.org,
	alex@ghiti.fr,
	akpm@linux-foundation.org,
	pasha.tatashin@soleen.com,
	pratyush@kernel.org,
	ruirui.yang@linux.dev,
	m.szyprowski@samsung.com,
	robin.murphy@arm.com
Subject: [PATCH v4 06/10] of: reserved_mem: save /memreserve/ entries into the reserved_mem array
Date: Tue, 30 Jun 2026 15:47:10 +0800
Message-ID: <20260630074715.4126796-7-chenwandun1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260630074715.4126796-1-chenwandun1@gmail.com>
References: <20260630074715.4126796-1-chenwandun1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:robh@kernel.org,m:saravanak@kernel.org,m:bhe@redhat.com,m:rppt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:loongarch@lists.linux.dev,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:kexec@lists.infradead.org,m:iommu@lists.linux.dev,m:zhaomeijing@lixiang.com,m:catalin.marinas@arm.com,m:will@kernel.org,m:alex@ghiti.fr,m:akpm@linux-foundation.org,m:pasha.tatashin@soleen.com,m:pratyush@kernel.org,m:ruirui.yang@linux.dev,m:m.szyprowski@samsung.com,m:robin.murphy@arm.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317466-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_SENDER(0.00)[chenwandun1@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[chenwandun1@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lixiang.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 799666E15BB

From: Wandun Chen <chenwandun@lixiang.com>

/memreserve/ is used by firmware or bootloaders, such regions hold no
useful data for crash analysis, they should be excluded from the
kdump vmcore, so save /memreserve/ entries into the reserved_mem array
for later exclusion.

If a /memreserve/ entry overlaps any dumpable reserved region, mark
the whole memreserve entry dumpable as well. This may keep slightly
more memory in vmcore than strictly necessary, but avoids splitting
entries and never drops data that may be useful for crash analysis.

Signed-off-by: Wandun Chen <chenwandun@lixiang.com>
Tested-by: Meijing Zhao <zhaomeijing@lixiang.com>
---
 drivers/of/fdt.c             |  4 +++
 drivers/of/of_private.h      |  2 ++
 drivers/of/of_reserved_mem.c | 52 ++++++++++++++++++++++++++++++++++++
 3 files changed, 58 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index b97775f6c9d4..3e478d29e247 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -497,6 +497,7 @@ void __init early_init_fdt_scan_reserved_mem(void)
 	int n;
 	int res;
 	u64 base, size;
+	int nr_memreserve = 0;
 
 	if (!initial_boot_params)
 		return;
@@ -514,7 +515,9 @@ void __init early_init_fdt_scan_reserved_mem(void)
 		if (!size)
 			break;
 		memblock_reserve(base, size);
+		nr_memreserve++;
 	}
+	fdt_reserved_mem_account_memreserve(nr_memreserve);
 }
 
 /**
@@ -1286,6 +1289,7 @@ void __init unflatten_device_tree(void)
 	if (!alloc_reserved_mem_array()) {
 		/* Save the statically-placed regions in the reserved_mem array */
 		fdt_scan_reserved_mem_late();
+		fdt_reserved_mem_save_memreserve_entries();
 	}
 
 	/* Populate an empty root node when bootloader doesn't provide one */
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index 81c8ec9378b9..a67929c0a6ec 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -188,6 +188,8 @@ static inline struct device_node *__of_get_dma_parent(const struct device_node *
 int fdt_scan_reserved_mem(void);
 void __init fdt_scan_reserved_mem_late(void);
 int __init alloc_reserved_mem_array(void);
+void __init fdt_reserved_mem_account_memreserve(int n);
+void __init fdt_reserved_mem_save_memreserve_entries(void);
 
 bool of_fdt_device_is_available(const void *blob, unsigned long node);
 
diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index f6c02b37deb7..9db0502989c3 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -251,6 +251,43 @@ static void __init __rmem_check_for_overlap(void)
 	}
 }
 
+static void __init fdt_reserved_mem_add_memreserve(phys_addr_t base,
+						   phys_addr_t size)
+{
+	struct reserved_mem *rmem;
+	bool dumpable = false;
+	int i;
+
+	if (reserved_mem_count == total_reserved_mem_cnt) {
+		pr_err("not enough space for memreserve regions.\n");
+		return;
+	}
+
+	for (i = 0; i < reserved_mem_count; i++) {
+		rmem = &reserved_mem[i];
+
+		if (!rmem->dumpable)
+			continue;
+
+		if (base < rmem->base + rmem->size && rmem->base < base + size) {
+			dumpable = true;
+			break;
+		}
+	}
+
+	rmem = &reserved_mem[reserved_mem_count];
+	rmem->base = base;
+	rmem->size = size;
+	rmem->dumpable = dumpable;
+
+	reserved_mem_count++;
+}
+
+void __init fdt_reserved_mem_account_memreserve(int n)
+{
+	total_reserved_mem_cnt += n;
+}
+
 /**
  * fdt_scan_reserved_mem_late() - Scan FDT and initialize remaining reserved
  * memory regions.
@@ -305,6 +342,21 @@ void __init fdt_scan_reserved_mem_late(void)
 	__rmem_check_for_overlap();
 }
 
+void __init fdt_reserved_mem_save_memreserve_entries(void)
+{
+	const void *fdt = initial_boot_params;
+	u64 base, size;
+	int n;
+
+	for (n = 0; ; n++) {
+		if (fdt_get_mem_rsv(fdt, n, &base, &size))
+			break;
+		if (!size)
+			break;
+		fdt_reserved_mem_add_memreserve(base, size);
+	}
+}
+
 static int __init __reserved_mem_alloc_size(unsigned long node, const char *uname);
 
 /*
-- 
2.43.0


