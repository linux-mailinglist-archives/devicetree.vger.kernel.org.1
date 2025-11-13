Return-Path: <devicetree+bounces-237879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB0BC5551D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:48:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B44C3A53A6
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5FC92D3225;
	Thu, 13 Nov 2025 01:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="ZKIxAztd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360D52BDC17
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998425; cv=none; b=DyYa+RcCfxlhQ4DykGQ54aHGedP9dkJc87AFcgrHaPGBo3G6XOZeD8A55LB9sd8AlkLXZVTLvSr93AJZ3ACkroGSsnzhiVLUAaJS/ycogZJ3lppKNHABzbz4I3Ob560uf+EO902SGdFgAXqU4qrUW9PN0siZK8vQyh9iA3YWvBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998425; c=relaxed/simple;
	bh=yMuACDg4jwZADYcl43+ysWHy4EK2N5esH8pc0xnPjgo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=inaFhXr1wKPw9dZqt5OgDhmVSIfeDutzrmoVgFQn96R308a7QPptJ2HS0K0s45EgIhbtPbMqXielD6UleXan8OcT4vBhdL/8QrvV8cEtlf28PWWV7ybZ0jrR8hZAKOYrEm4uXQK9fjO4Lgc9swuCyRWqYok2ZLyWLe6mKcw+OhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=ZKIxAztd; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-298456bb53aso2706515ad.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998423; x=1763603223; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V+yqNsk4liq+0TyYbfqqqgCxYeLqjkF7jXxObMUTUHM=;
        b=ZKIxAztdm8cok/TI2TUBzyh/aKNJSLAuqak7fa1zowq/nwrf06knh3zz/8301dZ/qy
         LGVBa/wHfbyOdlF+IBmB5qNReNM+jurcEIYqd08ZxRYgaTO5R8J9Ky1n6vm/oddt+VA5
         FcObH4dPgNvzD8NLH0D2GYuVLZnexcnhcqnQq4UvCawBTMMSleuZ9ihmu2MQELNyKNhy
         aj5XM8EJhCuAVYohPQpcJDeT5WCoaevOWUYfBNErTg5/oHID5g4RwBN/z3/5ARQuTIyw
         OCTY/Tn1lFoMebaC+DYOmluzCaeUqmWGAEDbqRtBAzEzBHps4iHDFs/buKZW2L7Tw5Wh
         xCUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998423; x=1763603223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=V+yqNsk4liq+0TyYbfqqqgCxYeLqjkF7jXxObMUTUHM=;
        b=n+Qry+pc/pG5XVPy7fIK+7IYflea0pUNC4IxpfevIMQ96zane068EKPV1z3o3wufBw
         eZQ6o8rijqt9QAVT65hyOCo7/+exu54vnn65AZvoro9hq0loPsFvCEnHVTdQGVV7RWVW
         h7CB6zVsVAbxEgIBktWx4CEPiWUPTZEUS2u+vyRCk0qY+NaKEvLEQK/Bh5oSrnj/swvu
         2y8/mEu/fK7NCHsI2J5UJ8TRjdgFN+PNjhdaKJ7G9omb6WhCl15RyDC65/HB2+Rq9qHH
         IrA4RlAMr3JyQfllDwkj5TImoIKI27PpNCz25mJJ+K7OWXx1qwqyaDePLnCGiSXtrGHJ
         6oEQ==
X-Gm-Message-State: AOJu0YwHbrcXO2zne+dwbobmmGldzNGXaT+2rNLMZ4SJuUsJI6pE0IPy
	2NjkOif1ACIv0qKro1x9Gkj7SNdIHFs+rT+Fs4M4hMtDTP8W05H+VQ+npzQSuJR2d90=
X-Gm-Gg: ASbGncvGUAGCUb1KTVwhM0awM2ofC2JkM/H5h/qz1xWvyHbn3mCLX25TSAPTdbqTxqK
	zy+h0x8v0HWOgJdxMDVG5ZM62bWQHlIR26hB5FNhmvtYjE7vKSvVhGzeMbFwMqxxuVjuBwBYDuy
	Pq8peAMuZ0S482U4j9tVpR2IKkgTGgZ1BzSZzNsy2HgtKNyYzxlUVKpmDOX3h6qwxfRYbMMbXQO
	smFR4s6rM4esjPq/2+xzZdiCvwHI5lcoaRiAQGuG8IR1WQhm7/TQNxaQY4F1eRd9P0WEzRQvFiM
	DBbeTWuO9cvdfDZWmthQ87lCtLJFqKCTCAr6Vhegis2H2PYAyW/fYn8qSUH8GJW6Gisc16jSBpc
	JcYm4wjDR9dOTHI7C40V9FKXlzRR8iqH1PDNcOK4ADwFEHAUuVF430K3q3IANQNYDmUuq74k/6l
	2E7I41AH09bLTTk6k0v+o/tHYSAt/S/67N
X-Google-Smtp-Source: AGHT+IE5/byJkN6PUIJz0PFtm0m4DzcmYy5ZdKT+rzV4QNwdcHdn7EgBhDmqTxsB7L2xrr78NQwjSQ==
X-Received: by 2002:a17:902:d4d2:b0:295:1351:f629 with SMTP id d9443c01a7336-2984ed328abmr54095875ad.9.1762998423477;
        Wed, 12 Nov 2025 17:47:03 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:03 -0800 (PST)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	linux-riscv@lists.infradead.org,
	Andrew Morton <akpm@linux-foundation.org>,
	David Hildenbrand <david@redhat.com>,
	linux-mm@kvack.org
Cc: devicetree@vger.kernel.org,
	Suren Baghdasaryan <surenb@google.com>,
	linux-kernel@vger.kernel.org,
	Mike Rapoport <rppt@kernel.org>,
	Michal Hocko <mhocko@suse.com>,
	Conor Dooley <conor@kernel.org>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Anshuman Khandual <anshuman.khandual@arm.com>,
	Dev Jain <dev.jain@arm.com>,
	Oscar Salvador <osalvador@suse.de>,
	Lance Yang <lance.yang@linux.dev>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v3 03/22] mm/dirty: replace READ_ONCE() with pudp_get()
Date: Wed, 12 Nov 2025 17:45:16 -0800
Message-ID: <20251113014656.2605447-4-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251113014656.2605447-1-samuel.holland@sifive.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Anshuman Khandual <anshuman.khandual@arm.com>

Replace READ_ONCE() with a standard page table accessor i.e pudp_get() that
anyways defaults into READ_ONCE() in cases where platform does not override

Link: https://lkml.kernel.org/r/20251006055214.1845342-1-anshuman.khandual@arm.com
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Acked-by: David Hildenbrand <david@redhat.com>
Reviewed-by: Dev Jain <dev.jain@arm.com>
Reviewed-by: Oscar Salvador <osalvador@suse.de>
Cc: Lance Yang <lance.yang@linux.dev>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v3:
 - New patch for v3 (cherry-picked from linux-next)

 mm/mapping_dirty_helpers.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/mapping_dirty_helpers.c b/mm/mapping_dirty_helpers.c
index c193de6cb23a..737c407f4081 100644
--- a/mm/mapping_dirty_helpers.c
+++ b/mm/mapping_dirty_helpers.c
@@ -149,7 +149,7 @@ static int wp_clean_pud_entry(pud_t *pud, unsigned long addr, unsigned long end,
 			      struct mm_walk *walk)
 {
 #ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
-	pud_t pudval = READ_ONCE(*pud);
+	pud_t pudval = pudp_get(pud);
 
 	/* Do not split a huge pud */
 	if (pud_trans_huge(pudval)) {
-- 
2.47.2


