Return-Path: <devicetree+bounces-237880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 229CDC5556B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:52:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 790C234E8B7
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6E52D6621;
	Thu, 13 Nov 2025 01:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="KG7OcXl7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA43B2D3724
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998427; cv=none; b=rB2yfo+2kNrBsAuekwH3VBYdtTOMNYft5rxsOeWhnvqssccXFdsdkziSlAO71QhgR+I1Uu1aRbzMWNmIMJOJMe8i+cpfT5iuF8KBGmMEY1F+Tj4RB2ovKNQPdOACg7Yk3HDU7lSClohgvP3Qw3ggyLY2Fjc0Jbr0FpB2PX1uFqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998427; c=relaxed/simple;
	bh=eKBqONdiSsBUuobmEdY1mAtYTYL7O9m2hVGhf0V16mA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T3RdltlpdSCuhkL+2fm49I9o1OXclXyRN1l9QLoKRLHSaDGJ5QpMx2+qq8XlaWN6qOU5RJSjMhWrwZUW+3djDqgmJUwg+Oa9lNj348+PfEJx4CrmxI/dSTiVk63CclwzClzjVErk46i03EiaQE9l7OIECxDoRT9at7d3vElO58g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=KG7OcXl7; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-ba2450aba80so158444a12.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998425; x=1763603225; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7sKtwP//OgsTzC5xxNl/Xd6UYX/1wT9VConzzoLFoks=;
        b=KG7OcXl7nxmT2EksNPHe/AKIJuk5Vy9O35FpuQ2rjXW5WqrT3/YWNFJ6h/1s6Tws8P
         KFQ5IzmnR0fKvxLQLB9y31oIJLHsdKqLRbM9ixCzRIx5rZSlidMXLFPZu06zUzf9lnU8
         HNxkrzksKrwM9iIddJ3vSGeqaUXPoeWnHbcLFRBho8/jVB4PFqZXiDY48UWX+w4dUe6s
         KnQm6JsaoEmdBWrw268jdp05SZhLPEKLyGyBXula8iLNwedZK8GXQ1moW8snzTgx2yje
         OH/PxclioA4yXk5wUhRmI9m+9nbPLjlvfZClqjPUuMIQGMigZ0FyWEQTStKYBSYq/zoB
         0nbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998425; x=1763603225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7sKtwP//OgsTzC5xxNl/Xd6UYX/1wT9VConzzoLFoks=;
        b=sOTgbsEfk4UR3GfEkVFxgYkZgMghIN6nL2TpfMM1/Yez3eiGLR1zkJxSdnzmd+rjCm
         nsWBr5B1WVpUswQBua+NTYSfMf76dALtGIKLVdfGRfGNnZIfMpMGlmxzSlyMse55snIH
         Uapi+GXuqoLbHLwiZ6uMLhqE6QsukTyLv4PW4vQOlKlrjPiXgYN2ZpeIfMd4v1RrkbdN
         Dnghot31NoWE2ZU+dNM7rrEvM30HKuxORla2SeFPixhiqAOwfJtuk0xPYcrJSK8DaWEG
         FQB+7w94EC7Z03EdCp9eBTyV1FHDmAfDXTNW5uuLiGfnyfH+Syft8FjCgZYDJ8k3kF+K
         P6Ag==
X-Gm-Message-State: AOJu0Yz+NCJduHF/TAjrXErxKIa5Q9HxGhKeZD9AYt0RqclGq4QOoSU1
	sJj69g4kzbu2n24JTFVvtNGFDTwpkHHnoU5BfxhUiIGuCpe7Npp3qqL3xJbC9u6KMDU=
X-Gm-Gg: ASbGncuTg4u/cE9uOZ11NimoPewA+OtnvSvcdZGs7HWZCp487dYDvhxVAugddORHVRH
	XRi+Ow8n6r0v0QSyU6bTvViDpiWEOrLh6bBtOjRuk7fQ/TnxhUrJTMIifUGkTgwBT07Dt9M7TeE
	FJbeNj7O4Wy2ZUaygns8hO7SrlWHVu6tJ2+5OsDUTQcVzebYuIIbkysSehUog63BtF8gfvjKhfu
	Gba1FV7YC9kVFrDF9CfwlVamGfx99z9js37anQ331Oeuf8tMkSPBLQrcKPPoIpAaUkF1GocKtQs
	7/zcb0c311mHdgj21wMqP9vrYBIPJwaXytTIEw7VGwYZ8/iaAW331Rf1R2XAt5PHFosGsqxDpD+
	CLLuoX7jzZSZvPPBxKXez5lljYk6IcqDMSLSOsh1VAMGnHdPc2uLfeCl+cVJ3asqmuYE6TZWU6v
	EQgpHpixuHF9zeYUQtod/XOQ==
X-Google-Smtp-Source: AGHT+IFyAjw4zT369i2V/HQmfngUMRA4j/oLD3IR8XNvQ6Htb0EplxsCGv5RKISA4ePCqfHnQtITTg==
X-Received: by 2002:a17:902:e788:b0:297:d4c4:4d99 with SMTP id d9443c01a7336-2984ed30d02mr63149505ad.6.1762998425114;
        Wed, 12 Nov 2025 17:47:05 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:04 -0800 (PST)
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
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	linux-perf-users@vger.kernel.org,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v3 04/22] perf/events: replace READ_ONCE() with standard page table accessors
Date: Wed, 12 Nov 2025 17:45:17 -0800
Message-ID: <20251113014656.2605447-5-samuel.holland@sifive.com>
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

Replace READ_ONCE() with standard page table accessors i.e pxdp_get() which
anyways default into READ_ONCE() in cases where platform does not override.

Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: linux-perf-users@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Link: https://lore.kernel.org/r/20251006042622.1743675-1-anshuman.khandual@arm.com/
Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v3:
 - Replace my patch with Anshuman Khandual's patch from LKML

Changes in v2:
 - New patch for v2

 kernel/events/core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/kernel/events/core.c b/kernel/events/core.c
index 1fd347da9026..fa4f9165bd94 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -8122,7 +8122,7 @@ static u64 perf_get_pgtable_size(struct mm_struct *mm, unsigned long addr)
 	pte_t *ptep, pte;
 
 	pgdp = pgd_offset(mm, addr);
-	pgd = READ_ONCE(*pgdp);
+	pgd = pgdp_get(pgdp);
 	if (pgd_none(pgd))
 		return 0;
 
@@ -8130,7 +8130,7 @@ static u64 perf_get_pgtable_size(struct mm_struct *mm, unsigned long addr)
 		return pgd_leaf_size(pgd);
 
 	p4dp = p4d_offset_lockless(pgdp, pgd, addr);
-	p4d = READ_ONCE(*p4dp);
+	p4d = p4dp_get(p4dp);
 	if (!p4d_present(p4d))
 		return 0;
 
@@ -8138,7 +8138,7 @@ static u64 perf_get_pgtable_size(struct mm_struct *mm, unsigned long addr)
 		return p4d_leaf_size(p4d);
 
 	pudp = pud_offset_lockless(p4dp, p4d, addr);
-	pud = READ_ONCE(*pudp);
+	pud = pudp_get(pudp);
 	if (!pud_present(pud))
 		return 0;
 
-- 
2.47.2


