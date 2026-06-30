Return-Path: <devicetree+bounces-317473-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pZL/Ln12Q2p6YwoAu9opvQ
	(envelope-from <devicetree+bounces-317473-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:55:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F7F6E1700
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:55:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=HemHFzTc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317473-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317473-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44DE3305197D
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 07:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F02853EA960;
	Tue, 30 Jun 2026 07:49:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343513E928B
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 07:49:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782805753; cv=none; b=gAHC1est4USrr8h6zo+6vutGFNYvWbC7Ei4gvOySpPXglqhmz10EnMRz4il81VR0ROmlS1smFlyBJqfYjX3CPc3Ksiblg7FJ7/eZeiO0P/PgpNFLlxKBQlkfqmv7hIcJBfKQxH+BMlrrxOs9bXiEkBEAtZQYScYjy1p+vuHlhmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782805753; c=relaxed/simple;
	bh=uLOeasSEYWAvpT8ERSE9h3DlJwiheu4obyaLXpGYn9A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Lbws3qUKCycqvldvIP2pI6OG1AV87lQctv7Xdm4FFyoQ+IOVSFg+9gVBjPSuDij3pcRSNQJimXQdvjZ59UzpZrWllCEoXMLfuybl2KOkaKJFEaIp/o1cfXGMNWXtqUYmXYujyAHbmZohGACfZNYiBsSDBZgg7OhSwxEQ+9x5zf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HemHFzTc; arc=none smtp.client-ip=209.85.214.195
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2c82538b6c0so24615125ad.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 00:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782805751; x=1783410551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HcszoUDc7316A03Dx3QXGOd8FcU7DWvjuNUEWPnVcI4=;
        b=HemHFzTcNUZ/pPHqpLvtcF4ByA5v0RCyrdhGArUWA8QQPMhPo2U4Orul5BA3HKEXur
         OzafsnM6VoM+dw6ryBBjFXDUV5oAU+FuBZAn7ukY8jvWZdRfjB4f0W/gz0jaha/rKlgA
         R0Dl1nOnxBSLHGUraSo/fiNlQ8+isctG4d/Au/w1patlR+zdrQ4GDVsErla370qm+Btv
         8NLjayTaU2QbMm6K6b/2e7a9/bs4581Z5TXcGDpt3xu5o3l+A6kPb4TJvO4KV4GjFJdW
         mcAwhfnW4VyIvDk1klo0GTjFYd/m4rvvSCtQs08VEYpCYjGuwRFtG97QlS18ZYJ8TTKh
         NutA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782805751; x=1783410551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HcszoUDc7316A03Dx3QXGOd8FcU7DWvjuNUEWPnVcI4=;
        b=FP1wBzcc+L51RU54t5nYDP04JFCoaq8zh0LTynmT9AemzOFk+CXubv+LlABR7YulBq
         t0uCCYy85aOz2fSOoZ6khkNGyMRU14IU3c4QBV2vWABap9pK2jiAy+aA/BFsbvBuh2vG
         W7MpOKNUWDJcaTF7lrvOtXzWXiszXLldujI/7IkMJpn0W4pYXQw4NuUS7XNxdNKX2oXE
         OfNRyPfks1IwvB/3EebrdfygwcZPNOLEVQfSlfCpbrZaYhn3sPro0CdOXxCQg1J+H2WZ
         4jpYbowR/+Cr+p3hCBH5X2N4ROTY5GoH3wuxXyb0lOaII34RHhRzVI0dShG3dKuiX1gI
         GIHw==
X-Forwarded-Encrypted: i=1; AHgh+Rq5a83AUGL2FDUkJVtsSl2EGvX84C2jZXF+xdBg9GJtYRESDvw07JXz0a9lP1LGtJRQueUsImA59II3@vger.kernel.org
X-Gm-Message-State: AOJu0YyOL6b2AX7lbY+voFPI4boFZiZ7mpDvAzfz/NSdMR4UCyPlc8i9
	HdqX4pDdvSX2ctND0E8O3gDdbFghA5yqA2zvAflKTtW4tepUVAywunOW
X-Gm-Gg: AfdE7cnwjhZbcvHNn+hmiIeGEFmcBuwme5dMsC52alGklSQhfebCcsFiqEx8PYDAFa6
	/Cjy7dOzOKTeWQVfvTC3QKVXacMU73FmbxkUa3R2qgMn7J6eJ3nu9TpQBZneh90o11YR29tvNMO
	ZwHa+C5ccHbfSamtnVPTZc/UVgWaMxDSYApc+TSVLWlagiJClqS84MOKv5rgaXD653rGHXUFnkR
	h70JgnwJfy9hygd5d3XFuPCAcGnIU8S3UUrK0EgNmvonVJ+/3tXnHQXXF9TK4sFlgF0whj29sS9
	yKcQqNB1v27hne1T+aENS0fhmRI3Oqp6YOhxH6xqBwLf4STXDgSY7TNyX+vAyNkI+AVHPwfqk+G
	Vi75x7Ma8omWQRTmp51sYQm0Ll2KjnWXgDJPGdij6lk3kjIvYWazEVCHqa0qi9zJOHXqTrj2nSd
	8HhxKeF8zQe8awLeq8d3+hs/dcjw==
X-Received: by 2002:a17:902:c94c:b0:2c0:cb0e:ac3a with SMTP id d9443c01a7336-2ca2e71832cmr21250665ad.23.1782805751208;
        Tue, 30 Jun 2026 00:49:11 -0700 (PDT)
Received: from intel.company.local ([210.184.73.204])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca382a2d3dsm7821045ad.55.2026.06.30.00.49.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 00:49:10 -0700 (PDT)
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
Subject: [PATCH v4 10/10] loongarch: kdump: exclude non-dumpable reserved memory regions from vmcore
Date: Tue, 30 Jun 2026 15:47:14 +0800
Message-ID: <20260630074715.4126796-11-chenwandun1@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:robh@kernel.org,m:saravanak@kernel.org,m:bhe@redhat.com,m:rppt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:loongarch@lists.linux.dev,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:kexec@lists.infradead.org,m:iommu@lists.linux.dev,m:zhaomeijing@lixiang.com,m:catalin.marinas@arm.com,m:will@kernel.org,m:alex@ghiti.fr,m:akpm@linux-foundation.org,m:pasha.tatashin@soleen.com,m:pratyush@kernel.org,m:ruirui.yang@linux.dev,m:m.szyprowski@samsung.com,m:robin.murphy@arm.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317473-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lixiang.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 18F7F6E1700

From: Wandun Chen <chenwandun@lixiang.com>

Apply the same non-dumpable reserved memory filtering to LoongArch
kdump as was done for arm64. Use of_reserved_mem_kdump_exclude() to
drop flagged regions from the elfcorehdr PT_LOAD segments, and
of_reserved_mem_kdump_nr_ranges() to pre-size the crash_mem array.

Signed-off-by: Wandun Chen <chenwandun@lixiang.com>
---
 arch/loongarch/kernel/machine_kexec_file.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/loongarch/kernel/machine_kexec_file.c b/arch/loongarch/kernel/machine_kexec_file.c
index 5584b798ba46..4b918c3d4a28 100644
--- a/arch/loongarch/kernel/machine_kexec_file.c
+++ b/arch/loongarch/kernel/machine_kexec_file.c
@@ -14,6 +14,7 @@
 #include <linux/kernel.h>
 #include <linux/kexec.h>
 #include <linux/memblock.h>
+#include <linux/of_reserved_mem.h>
 #include <linux/slab.h>
 #include <linux/string.h>
 #include <linux/types.h>
@@ -67,6 +68,7 @@ static int prepare_elf_headers(void **addr, unsigned long *sz)
 	nr_ranges = 2; /* for exclusion of crashkernel region */
 	for_each_mem_range(i, &start, &end)
 		nr_ranges++;
+	nr_ranges += of_reserved_mem_kdump_nr_ranges();
 
 	cmem = kmalloc_flex(*cmem, ranges, nr_ranges);
 	if (!cmem)
@@ -91,6 +93,10 @@ static int prepare_elf_headers(void **addr, unsigned long *sz)
 			goto out;
 	}
 
+	ret = of_reserved_mem_kdump_exclude(cmem);
+	if (ret)
+		goto out;
+
 	ret = crash_prepare_elf64_headers(cmem, true, addr, sz);
 
 out:
-- 
2.43.0


