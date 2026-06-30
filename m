Return-Path: <devicetree+bounces-317461-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id up7qH2x1Q2olYwoAu9opvQ
	(envelope-from <devicetree+bounces-317461-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:51:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AB06E1656
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:51:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=IuuBtdIZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317461-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317461-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1245130730EB
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 07:47:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96B293E4C66;
	Tue, 30 Jun 2026 07:47:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F9E3546D3
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 07:47:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782805662; cv=none; b=E5iFqMB5kIyysYEpb8QNJbpqca+aSUvMjycY1itwqknkxhvGXXAC2ru0pj0i+lu4BVZbJlAT+i9C4Lv0tdLZa5rHywMNIEVQ9RmyxvyXrIieJwg95SKsjMY+jWjgxIy7oiHbYTOeGZ/ofVL0VlqhzS4uLkPgFxiZeNGh68zCWNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782805662; c=relaxed/simple;
	bh=ILe8sZYbhc1aPGHkfBxgnEvKOHpdfl8WUXOCF6YnUmI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JhB/4BHcm4M29UMNCdIn4h/cXvGrRkQf/hq5jn/pjl3+1pcX6eKn9uVr0+8BW3RN8eCB/R7iQjTOUGeWFZZ/bfrLxQWnSeM4GJP/OSbz3j/BjDXfNsvuoshU1dyxp88O+J10zwbIJUbMZLIds8HCYS96166vBb/4f2hkJBlMR0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IuuBtdIZ; arc=none smtp.client-ip=209.85.216.68
Received: by mail-pj1-f68.google.com with SMTP id 98e67ed59e1d1-37f7a5a217fso1818008a91.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 00:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782805659; x=1783410459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=D1eYeJpEHCAPY9Qi4Hjh6YOaoS1rocMPAJ4EFRgZ7L8=;
        b=IuuBtdIZ55U/xgd4aH8Pt3slJbSYen4FljUi9vHG4OSUOSWe/v7zKf8Y2ui4Dg47xG
         qwAqY6p8O1kmkpeGkjPq2U1mtMVISjpDdonlxC0zgpEX4Ypts6YJ5bcpX65FlVwKdsHP
         vvtg3m/rCIKf/Ey3w3eyPeGpU6Sh/qMOJj+radwEooP18XC44TRwwyWZRICb8cnivOgZ
         4amjXKhPqnnA4ezc8EyWCKxQdN7NDW/yQMmIBCIkfnDztY8IVzMQaEosgthlrLZFp4si
         iIPV6cJhyQpLPSPANdcFqUdAuQ4y1S44oQA79/aHa4lraN5+w5J4aFCg+vaYQiU9QwLc
         atBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782805659; x=1783410459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=D1eYeJpEHCAPY9Qi4Hjh6YOaoS1rocMPAJ4EFRgZ7L8=;
        b=M58u2cePo2cDds4vkxzNYMwy3YBvY3Our6KvvoDoUqDEyO+gpAAbcqpFvdpR017kjC
         DeN1VZvuR7aQt8CKc0beGiYY/BMm4EWvmat5JFzRDwI0cgOb3vO/ALkEUIkUFu2cjAQI
         +f7RNmGB2gDLlanOJd20eA4m/EyzER+gxHLhyc0dCl1v2UWlrjzXyttoEm3KekFmA0Nn
         1VSiOfQYLhtlaAoqba2Jrnqx3TzJGfqvARRyLapwVfS+sWVFBtWHaySeXoCVtpoEPyiQ
         HkuABZF4YR6pGQi7NZU4jWWAMggS4W/GrUoP19D5RYvb8cBYPqjCP4wPzaP5QdDYhLEi
         L8mQ==
X-Forwarded-Encrypted: i=1; AHgh+Rr6NkHMspFayoM7hMEH0a7Myv5Duc1XstuMkv7a8aHbmHYpTuNZ4LfsYPzgjRUFmv/LzN8FCMaVNdwQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzpiq/CIU9m+jGaW3GQE4OSZh2v18hC8ABaoFfHUdYAGOCYn/+Z
	YSA9K27IWhUoh+ZLEUh2tGM1cAIwk8dP88SnXu1b7Z8o/pSUEYy46mWJ
X-Gm-Gg: AfdE7cmWjeq2PmmfuAns5YuKpY65gdZcJEQjQuLUwGm77PIxtRflfgdp84EaqcxADmr
	xNVjFM+pabVu0sampWvRYQMl9kxUoGDtIqrR91NwJUFzKyh2ySuXazMvAJv2LIAi5eOPja1YXfd
	YmGl522dO1p2rDMy8s3zOlPdahzrZyRLodg4nyNnIwWjA3VgUTEtIS06aQxV6S1aLxqrK74puhe
	4dempgTa/fx7BfuoW3tS+xlnRNibQaVyzUsTZnDx4QHw6U8s6i6C64i3l+TTp82s71sCwWyJiW6
	xaWio7VbF9CWHLnQhSOj6y24tEkwyAvaB+dB8dwHCbpcXnOnRzkzOyVrh3O9QVpFExTfdqdQv7H
	MlfUNn28/SPqu3JMWvKt7hk4BEhQRCtdxNhHoDg9EKab0X65BGfNH8CMCbD1Oj90wLNpH6qrtYq
	NnSRpilYDH+xfO3u2zMVSnDEitzw==
X-Received: by 2002:a17:902:d58f:b0:2c9:fa31:850c with SMTP id d9443c01a7336-2ca2ea33e96mr19629385ad.39.1782805659205;
        Tue, 30 Jun 2026 00:47:39 -0700 (PDT)
Received: from intel.company.local ([210.184.73.204])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca382a2d3dsm7821045ad.55.2026.06.30.00.47.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 00:47:38 -0700 (PDT)
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
Subject: [PATCH v4 01/10] kexec/crash: provide crash_exclude_mem_range() stub when CONFIG_CRASH_DUMP=n
Date: Tue, 30 Jun 2026 15:47:05 +0800
Message-ID: <20260630074715.4126796-2-chenwandun1@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:robh@kernel.org,m:saravanak@kernel.org,m:bhe@redhat.com,m:rppt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:loongarch@lists.linux.dev,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:kexec@lists.infradead.org,m:iommu@lists.linux.dev,m:zhaomeijing@lixiang.com,m:catalin.marinas@arm.com,m:will@kernel.org,m:alex@ghiti.fr,m:akpm@linux-foundation.org,m:pasha.tatashin@soleen.com,m:pratyush@kernel.org,m:ruirui.yang@linux.dev,m:m.szyprowski@samsung.com,m:robin.murphy@arm.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317461-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lixiang.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F0AB06E1656

From: Wandun Chen <chenwandun@lixiang.com>

Prepare for an upcoming change that excludes non-dumpable reserved
regions from the kdump vmcore and will call crash_exclude_mem_range()
from generic, non-arch code.

No functional change.

Signed-off-by: Wandun Chen <chenwandun@lixiang.com>
---
 include/linux/crash_core.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/crash_core.h b/include/linux/crash_core.h
index c1dee3f971a9..0033d4777648 100644
--- a/include/linux/crash_core.h
+++ b/include/linux/crash_core.h
@@ -87,6 +87,12 @@ static inline int kexec_should_crash(struct task_struct *p) { return 0; }
 static inline int kexec_crash_loaded(void) { return 0; }
 static inline void crash_save_cpu(struct pt_regs *regs, int cpu) {};
 static inline int kimage_crash_copy_vmcoreinfo(struct kimage *image) { return 0; };
+static inline int crash_exclude_mem_range(struct crash_mem *mem,
+					  unsigned long long mstart,
+					  unsigned long long mend)
+{
+	return 0;
+}
 #endif /* CONFIG_CRASH_DUMP*/
 
 #ifdef CONFIG_CRASH_DM_CRYPT
-- 
2.43.0


