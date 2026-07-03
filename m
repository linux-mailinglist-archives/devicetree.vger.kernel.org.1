Return-Path: <devicetree+bounces-319744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3pvKFYk6R2pmUgAAu9opvQ
	(envelope-from <devicetree+bounces-319744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 06:28:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE7E6FE6C9
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 06:28:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=HKoDTSBU;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319744-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319744-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 460303183B5C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 04:16:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5C60339705;
	Fri,  3 Jul 2026 04:13:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6544E283FCE
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 04:13:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783052034; cv=none; b=YUhPlo6fmYRrBfz0JXmJaWSD3pIpY8s9ewhXA2NxJYW0u+73oI6zjHD2AD5uP9+DMh3jEbz0gaEqK6U+DFeGn2V/bAt9DhTonMM0sTxHZMqe9phFyFK8LhWkguNCbr+29da+GJBstj+GzeWE5Vbu5KhUwMiIzLdvz91XjGxTJ0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783052034; c=relaxed/simple;
	bh=OUpPeEes/y+ArXs2upxEA1BNgKsnrkR9ayItzVy6vm0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SswKJs7bsXEkbBMpCuykA4O1rQlYdLmdnM6dnkK9STHoI4CeRH3sKABVkIR9zJikByROrgZBtpqumQATIGeywJviyxfuaVT26cJ8iclfnhSAaMe8PsLboG1vodyz2STlKjzuJHo9VaSFMXVCsmcQwq9/nw69N2epBaehg6ciQxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HKoDTSBU; arc=none smtp.client-ip=209.85.210.170
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-845b6d9bf39so126315b3a.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 21:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783052021; x=1783656821; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A6npnmvUqCM8/66CqqYCk/mzyWieSpjEbi8Gph9LP44=;
        b=HKoDTSBUA6sKXVIX114K/UqgKvUb6Gw/qUAwGquRpCIDKfRQm6O6djVy11KUutiK9E
         5QX2ldxj4DHothJbfWBU7eMHJdDM6R6lJ2i3nIJuEfI4f/fQw5Z1xp0VrbC2CanGVbJi
         /arT5ZcjVb1sQTSa61TBP8X4y9dTm7icCFQA3Dt5xpTBOXgj2oP170LUsJPv4QKdQz9g
         r0EBzkiczKVwyd06TjzuTBDLbU/ICaHi6UEt0SEZJb8rxvhdBKjaGZrJaqJAzpSQ+NDa
         jbVwG7v1+FRWHnwwFYR9tNknIdGGKM3L61YngGLscSpCig2F60cWMJlSDfe+6g0jFrpx
         1+Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783052021; x=1783656821;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A6npnmvUqCM8/66CqqYCk/mzyWieSpjEbi8Gph9LP44=;
        b=GWQxaQUKe7WF6FIYT+yTiWfNHTwxUOjoZBXps7+5yEHRr1K4j/zmS87U5hil1jG0kX
         LrcUx0lhaBiQffolpbaNlhCeSXkvm4b0We5fw8iv8B+PYGLZzQAqfoD6gkbsI2XzPA9Z
         8RumWfRnKTWttObx28x+sKBTT2JFZ9wxXoxCXRV6bD7ZAGdPjVjEC3KKoQxthG19xovd
         Q2urgss2InWJ3hwoXCZGKaQcY6Ksrq3xTYH3aJ8B4CWI37lUX5Kj9RBpWr5RYD3UlqPG
         ar4iBGc2ywVynbnUVjwbGBDV2nQne/eHJzd8p/5TQ72+HyIsV3gSs9EyON53WmqJJcu0
         1jlw==
X-Forwarded-Encrypted: i=1; AHgh+Rp79mCkG6eG8eln3qPIDZgYHl0PpjyfcxhHH2/kvnP0JW/tdEtQge/dk1poo1gXrjdepgrazRn50gNg@vger.kernel.org
X-Gm-Message-State: AOJu0YwPMGBm7k2VRIRK6NXeHtMy9KgzdzWlHghTvEkrRdFPq3cBTpt0
	VkvV6Xn5sg+5Q2zpwDDLtb2vPymNfcNPKDjgzFtzHcgt+cLUDFrNAGP/
X-Gm-Gg: AfdE7clCg8g5p7JGk4Q71jMXHJWab9zEcm3sDs5ZPdmmQrD09/guGuMM70l27odsyHa
	JbqmkvLPb51hdkY9QUeS8Aswa0fBXLM3naG4GPbfQ8HKMgA7IgkyFh1cXt20o+WnYWALlmsfSC9
	OxfkbA1+P+6eYn08GFDdMVqvcuLKRyvr+i/VVdyr+AogvTRjFwM6PAjErotMAf4CtLeUILgAt5I
	/FcpmrS1wsNU7G0nb5TGcWnMcYCy767cfiMYZynTjW+Z67ifHRv/PKhctIPEWerC+zA9FzGKyfF
	EDlG0yFj3QWdTbVe+5vaaTTDaGB5fFIfrhJjyxKCzhRem3VdafBFfz3cpppJKF+l3WCxQG5YHSJ
	hLs/41jhIyYXmeU4q9zdrhFBU1uqbkEpRyMm3G1xwaph8EV47C+dqQZI1fYRDlPP2YdmwzbsxYj
	xvvGnzKfOYdUlBr3HAHw==
X-Received: by 2002:a05:6a00:244d:b0:842:63f5:d097 with SMTP id d2e1a72fcca58-847e17360d9mr2456212b3a.3.1783052020555;
        Thu, 02 Jul 2026 21:13:40 -0700 (PDT)
Received: from ubuntu.. ([110.9.142.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847cb94bd7esm2207768b3a.38.2026.07.02.21.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 21:13:40 -0700 (PDT)
From: Sang-Heon Jeon <ekffu200098@gmail.com>
To: rppt@kernel.org,
	akpm@linux-foundation.org,
	Andy Lutomirski <luto@kernel.org>,
	Borislav Petkov <bp@alien8.de>,
	Danilo Krummrich <dakr@kernel.org>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Huacai Chen <chenhuacai@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>
Cc: linux-mm@kvack.org,
	Sang-Heon Jeon <ekffu200098@gmail.com>,
	devicetree@vger.kernel.org,
	driver-core@lists.linux.dev,
	"H. Peter Anvin" <hpa@zytor.com>,
	Len Brown <lenb@kernel.org>,
	linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	loongarch@lists.linux.dev,
	WANG Xuerui <kernel@xen0n.name>,
	x86@kernel.org
Subject: [PATCH v2 0/9] treewide, numa_memblks: remove redundant work during NUMA init
Date: Fri,  3 Jul 2026 13:13:20 +0900
Message-ID: <20260703041329.2797584-1-ekffu200098@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kvack.org,gmail.com,vger.kernel.org,lists.linux.dev,zytor.com,kernel.org,xen0n.name];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-319744-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rppt@kernel.org,m:akpm@linux-foundation.org,m:luto@kernel.org,m:bp@alien8.de,m:dakr@kernel.org,m:dave.hansen@linux.intel.com,m:gregkh@linuxfoundation.org,m:chenhuacai@kernel.org,m:mingo@redhat.com,m:peterz@infradead.org,m:rafael@kernel.org,m:robh@kernel.org,m:saravanak@kernel.org,m:tglx@kernel.org,m:linux-mm@kvack.org,m:ekffu200098@gmail.com,m:devicetree@vger.kernel.org,m:driver-core@lists.linux.dev,m:hpa@zytor.com,m:lenb@kernel.org,m:linux-acpi@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:loongarch@lists.linux.dev,m:kernel@xen0n.name,m:x86@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[ekffu200098@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ekffu200098@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AFE7E6FE6C9

Every existing numa_add_memblk() caller passes a valid node id and
separately marks that node in numa_nodes_parsed with node_set(). In
addition, numa_nodemask_from_meminfo() recomputes the same "nodes that own
memory" set from numa_meminfo, which numa_nodes_parsed already contains.

This redundancy implicitly depends on the callers' node_set(). So, before
removing the redundancy, make numa_add_memblk() set the node in
numa_nodes_parsed explicitly. Then remove the per-caller node_set() and
numa_nodemask_from_meminfo().

Also, since the generic numa_register_meminfo() already sets
node_possible_map to numa_nodes_parsed, remove the duplicate assignment in
arch_numa's numa_register_nodes().

Patch 1 adds the node_set() to numa_add_memblk() itself, so every memblk's
node is set in numa_nodes_parsed on add.

Patches 2-6 depend on patch 1 and remove the redundant per-caller node_set()
from all callers.

Patch 7 removes both numa_nodemask_from_meminfo() call sites and the unused
function itself.

Patch 8 removes the duplicate node_possible_map assignment in arch_numa.

Patch 9 is a minor cleanup, using the existing numa_add_reserved_memblk()
wrapper in numa_cleanup_meminfo().

No functional change.

---
Changes from v1 [1]
- remove warning in numa_add_memblk_to() when start == end
- add Acked-by tag
- rebased onto latest mm-new

[1] https://lore.kernel.org/all/20260628135828.1393120-1-ekffu200098@gmail.com/
--- 

Sang-Heon Jeon (9):
  mm: numa_memblks: set numa_nodes_parsed in numa_add_memblk()
  ACPI: NUMA: remove redundant numa_nodes_parsed node_set()
  of/numa: remove redundant numa_nodes_parsed node_set()
  x86/numa: remove redundant numa_nodes_parsed node_set()
  arch_numa: remove redundant numa_nodes_parsed node_set()
  LoongArch: remove redundant numa_nodes_parsed node_set()
  mm: numa_memblks: remove redundant numa_nodemask_from_meminfo()
  arch_numa: remove redundant node_possible_map assignment
  mm: numa_memblks: use numa_add_reserved_memblk() in
    numa_cleanup_meminfo()

 arch/loongarch/kernel/numa.c |  1 -
 arch/x86/mm/amdtopology.c    |  1 -
 arch/x86/mm/numa.c           |  1 -
 drivers/acpi/numa/srat.c     |  2 --
 drivers/base/arch_numa.c     |  4 ----
 drivers/of/of_numa.c         |  5 +----
 mm/numa_memblks.c            | 39 +++++++++++++++++-------------------
 7 files changed, 19 insertions(+), 34 deletions(-)

-- 
2.43.0


