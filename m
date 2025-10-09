Return-Path: <devicetree+bounces-224696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AB9BC724C
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 03:59:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F3733E4E16
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 01:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 268C31C5D44;
	Thu,  9 Oct 2025 01:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Q21gbFYb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DFE192B90
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975128; cv=none; b=Nfh3Onsd6N3YP539ffdTogBOYSnTWWeAzwnk1UVzAjmVJ58EaG46wmp86LcboUacDTiIBgWH6d2CNKXowzVLAftPsdCNlfxeH6xujHHAFnV7FdYyntRc1rEfBxohkfIILLFhr+/FGms44FQrXtlKGtmBeHdf22Bv2454AQ+cwvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975128; c=relaxed/simple;
	bh=IuzWaZaq52AseT76aIk2++sO7Nvet3qY616LVEnMRL8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Sp/R2CYo62JcgjsTbOqlKKfylhFytKM+GrYbtctUsqRHBPdwyz7ckZpY/JihTI7sH/loP6Grxb+tdOxuVF3jDEdD8yy3VShObwiDWof4EwZ30jYv59W3RPDyL+JXbbQBLIFEwucK60Qp4v9fN7k/bQItXAZUcav3eTV6wCRH0XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Q21gbFYb; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-27c369f898fso5654265ad.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1759975123; x=1760579923; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mdiVfcIiYEtPdSKu0CqenqZ/5C3LyfHi/KY36+7mBoA=;
        b=Q21gbFYby36TOYfFh7lINpJ8iWH7CHwNdfVwWA6bEJJrseu8Ej27JBu/K2PxOAv3pc
         J7TRnUYp8wH1LyH9brorXwrljspCNWk42SPagoD4xg1KzioebSCXobZAv/K4eEyGTqCb
         jDBAjYRJOh1cTKE/wD+Yqr8/9uWl8o5V2M1PZpDPMee7bdjQeAkqykrD3z1vA8hX2KOp
         rXUNQo7wHmkXD5UUlkWXc5VrKIbObb+C9PAjqcGa+TQ1Xpc2MXwzkhVv6W4E7sEv5bS/
         ZfTV7jpYnmLP97VYv/D4RwKF+J6Qf+hRuky0uWd/ELotLqa3sSTWCRniSRFYS5AwZDmP
         TbTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975123; x=1760579923;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mdiVfcIiYEtPdSKu0CqenqZ/5C3LyfHi/KY36+7mBoA=;
        b=WOxjfIjW08wqsN6haFloO26G4Nmy6uKz1QkY0X2pJwUynjYwExSpuSyaVyMcZTCtHq
         oXe8QrCMYDz4nB0QqyM2CrjdwfmNWpKtr9EIHPGmjKeOUZzcVSB4CWbFTTAE6CGwyoCV
         H9IYPTIlBgfHyuLJinWUzAbWZUTFqaFF/lxhrXWAg/xlsnQ6TjibrhzVEAUecHDQ7O6C
         7rQ2z2c82C2aovSTq+CXYTv3UBBlXHULSqSh1GKnAK+TuWXlbSD4iZIgHBln3H2JugQl
         GZcARMRYJV+OV31+stRRv9IXH01fvaVili0OmJQdz8cphl4NLdAvqHhajMA/JOllW/yT
         ZZHg==
X-Gm-Message-State: AOJu0YyXka/99BrQ6aJPZTT9Bz/CSzG4vX+0MQLpfZ+4wSAnjhNgOLoa
	DYZQz7kv/VrgagDzPCpIfTMOuRT8azjDPBy09/uPhXPw1H/zTtZWMC3CmPcF4/x2Jx0=
X-Gm-Gg: ASbGnctfY7mMXVlymAMzWmsmBPcht9dqLTifAO0n11TBTD+Q7mw24qhX01I4xq7RwpW
	X6b4WMVVuiXAnurUAfq4doko3msHYh/IsC5uEN6HtD2zcm0h4Op8g1D299nv6KM/VFfTkLhOMA2
	eDOqM9/YAWY69J8kh89C1mIa7I4gqVOJNyIhACVnbmAwsgeLCJE4c6jR4VImMwMY8o91QaRAw5n
	dtVRvId22nLfAOPf8SSzR9galRAfH+VeEht8JNMzBY44If75PjVhsiaXevOrNAiyKFdjirBjffr
	40tI2nomhY4+zeG1ePQZePjKmOciSaPQTcb0N7c6H7BD+9TPVGMIE0BRNg5yQdypLPXshhVf9EP
	L4g6ceejAKOTJS/c1JXSfB3AlHRSV6w46+XHGPAeQnzrBsQ7wG4FgUOzHFViOFl9vCDWAnFxkC2
	tWjA0=
X-Google-Smtp-Source: AGHT+IEAHeuoGA0XLStPTncgvhvYEundXEr0shvSlmxf+pcjXId4G/S6mKP+GMbaTviYedqoip+3mg==
X-Received: by 2002:a17:903:b4f:b0:288:e2ec:edfd with SMTP id d9443c01a7336-290272154a4mr64152045ad.10.1759975123319;
        Wed, 08 Oct 2025 18:58:43 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de53f9sm11033585ad.14.2025.10.08.18.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:58:43 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	Conor Dooley <conor@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v2 02/18] perf/core: Replace READ_ONCE() with standard page table accessors
Date: Wed,  8 Oct 2025 18:57:38 -0700
Message-ID: <20251009015839.3460231-3-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251009015839.3460231-1-samuel.holland@sifive.com>
References: <20251009015839.3460231-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace READ_ONCE() with standard page table accessors, i.e. pXXp_get(),
which have a default implementation of READ_ONCE() if the architecture
does not override them.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v2:
 - New patch for v2

 kernel/events/core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/kernel/events/core.c b/kernel/events/core.c
index 820127536e62b..952ba4e3d8815 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -8110,7 +8110,7 @@ static u64 perf_get_pgtable_size(struct mm_struct *mm, unsigned long addr)
 	pte_t *ptep, pte;
 
 	pgdp = pgd_offset(mm, addr);
-	pgd = READ_ONCE(*pgdp);
+	pgd = pgdp_get(pgdp);
 	if (pgd_none(pgd))
 		return 0;
 
@@ -8118,7 +8118,7 @@ static u64 perf_get_pgtable_size(struct mm_struct *mm, unsigned long addr)
 		return pgd_leaf_size(pgd);
 
 	p4dp = p4d_offset_lockless(pgdp, pgd, addr);
-	p4d = READ_ONCE(*p4dp);
+	p4d = p4dp_get(p4dp);
 	if (!p4d_present(p4d))
 		return 0;
 
@@ -8126,7 +8126,7 @@ static u64 perf_get_pgtable_size(struct mm_struct *mm, unsigned long addr)
 		return p4d_leaf_size(p4d);
 
 	pudp = pud_offset_lockless(p4dp, p4d, addr);
-	pud = READ_ONCE(*pudp);
+	pud = pudp_get(pudp);
 	if (!pud_present(pud))
 		return 0;
 
-- 
2.47.2


