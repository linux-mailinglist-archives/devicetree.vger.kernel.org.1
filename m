Return-Path: <devicetree+bounces-159153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B26AA69DD4
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 02:56:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D1B08A5004
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 01:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA5CE1DFDAB;
	Thu, 20 Mar 2025 01:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Wns+4D/8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655E51D7E3E
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 01:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742435765; cv=none; b=QGNDCYOdtvcSdSzV6fogHVTTj8RDLhbpUFkeq6Uup8Z9bnmE3lHEwri564fd/R84wuX9dAu+YCGurbwaH5u2SCwvnc6ACqwXomSkixnIwYTD0IVQtwYsV1n0qZ5VXGcSxMLAkmQWDsmrFmbRnDmPs4sNGuNAJdVsmo03oV5ZGno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742435765; c=relaxed/simple;
	bh=XtZM1W7Vhek+FlKle8HV/b1w62G+SFaboeOkqwxl/xA=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=ZYvAKp47F4qopbITvQ185nBgD1CrsSATfx53iwK9sSOlR/h4gnys28+Moi4xFDITqdmpjQrviwJ7PtDOTRJ61EUWC026BcimJtLDPy7a7e3o1DmT4IZp4r9YhWwoshdwnXUKoJGBI9WkFGFRTBezBgNs5XD6jMXQxsNrZKyXa00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Wns+4D/8; arc=none smtp.client-ip=209.85.216.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pj1-f74.google.com with SMTP id 98e67ed59e1d1-2ff798e8c93so394223a91.2
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 18:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1742435764; x=1743040564; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=ilsQeNiRJnAcOliWxyBDLHi9DId7Z2YXJm9lAmFy6DI=;
        b=Wns+4D/8LO4HLQx0tAIxAhBJyYjypYTaAi64987h2xXNo8jBjLpfSMwChs4L9pVQaN
         Z8Pz0sqGq4ZIM/IYJSxDnOVa4D+6B0/fXMGVHS3ZRxjryLbAjOTYRNVrwgGBFBMP04Si
         38sTOL6J6vf6LVBJhvkr1WfkC9jrcGSck10h8mm5tl9AE5F885rNP28uLtdRACVA57pg
         alPC+aoJrOBvjM3gYo0GHH6AlFzWNRPfAPrLjmOeT5AD/AyXVWiIymQ1JygKA7vc0zrR
         P4ol1vyKaE38kW2lAjKuDZAfAD2fIWz2B+XUTEdFNT0g18aukGj69jYbuMre3lCFTaEJ
         VhHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742435764; x=1743040564;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ilsQeNiRJnAcOliWxyBDLHi9DId7Z2YXJm9lAmFy6DI=;
        b=fCV1uolor8Tb+YYe6YUboD/91qosGj/tF8wN1WwGMlydXrous1w8VseSFhGEj5P+Fb
         lTgx62lwnidfIAqw6i5K8KtfpNtbN6GWPADznnv7vf7gkAVtaQu8VlR+9LditCat0zKR
         LIbU/UNcDARSTnPoLgjH6Vha9kJ/ahqug97hT881STe3X+KS2TB5RpTGdE2MG5+ZjGKp
         lY07K2wz6lXxbiFCdn8WjpUWartHhFznHAJxJS9lBPGQ3r1jFgf8XZSnyd6NeMx4Frjf
         LouJPYX1uOEPygFrC14bbEVbZL2FV68yGSXgYIXrlACvryo9KLaEZd5jwI1wCEJnkeyb
         QJKg==
X-Forwarded-Encrypted: i=1; AJvYcCUAdF8tFNANqDMD7sTjlyA0xYkVIgkuLWRoV4mNclwMYNkqiSkSwu4CC5Vs++KjakCEYQTqUYndZo3+@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ9jobvUk/q3xE0iHWQoSakONsc1zPTDMP5kI+u2zK6+g1jGZ7
	2kEp1CHSdlpawEwuhlrht7uk3dcqXH5Wk30u0WJtHEgK+l8Ld/ryfUkGR9OmwoaNjEFRRqdpZak
	UFwZ9UJpH5VGndg31Mw==
X-Google-Smtp-Source: AGHT+IHLp0TM25605mfB4iWKOjzImtCB+u2sC+62Tcd+2pSs/X0minmUzplavXz6x1NXqtyXk3N9lUuGrg30J6Xe
X-Received: from pgbdo13.prod.google.com ([2002:a05:6a02:e8d:b0:af2:8474:f67e])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a21:594:b0:1f5:7b6f:f8e8 with SMTP id adf61e73a8af0-1fbeae9141bmr8613381637.6.1742435763548;
 Wed, 19 Mar 2025 18:56:03 -0700 (PDT)
Date: Wed, 19 Mar 2025 18:55:37 -0700
In-Reply-To: <20250320015551.2157511-1-changyuanl@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250320015551.2157511-1-changyuanl@google.com>
X-Mailer: git-send-email 2.49.0.rc1.451.g8f38331e32-goog
Message-ID: <20250320015551.2157511-3-changyuanl@google.com>
Subject: [PATCH v5 02/16] mm/mm_init: rename init_reserved_page to init_deferred_page
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

When CONFIG_DEFERRED_STRUCT_PAGE_INIT is enabled, init_reserved_page()
function performs initialization of a struct page that would have been
deferred normally.

Rename it to init_deferred_page() to better reflect what the function does.

Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 mm/mm_init.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/mm/mm_init.c b/mm/mm_init.c
index 2630cc30147e..c4b425125bad 100644
--- a/mm/mm_init.c
+++ b/mm/mm_init.c
@@ -705,7 +705,7 @@ defer_init(int nid, unsigned long pfn, unsigned long end_pfn)
 	return false;
 }
 
-static void __meminit init_reserved_page(unsigned long pfn, int nid)
+static void __meminit init_deferred_page(unsigned long pfn, int nid)
 {
 	pg_data_t *pgdat;
 	int zid;
@@ -739,7 +739,7 @@ static inline bool defer_init(int nid, unsigned long pfn, unsigned long end_pfn)
 	return false;
 }
 
-static inline void init_reserved_page(unsigned long pfn, int nid)
+static inline void init_deferred_page(unsigned long pfn, int nid)
 {
 }
 #endif /* CONFIG_DEFERRED_STRUCT_PAGE_INIT */
@@ -760,7 +760,7 @@ void __meminit reserve_bootmem_region(phys_addr_t start,
 		if (pfn_valid(start_pfn)) {
 			struct page *page = pfn_to_page(start_pfn);
 
-			init_reserved_page(start_pfn, nid);
+			init_deferred_page(start_pfn, nid);
 
 			/*
 			 * no need for atomic set_bit because the struct
-- 
2.48.1.711.g2feabab25a-goog


