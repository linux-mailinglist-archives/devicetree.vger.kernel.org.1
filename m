Return-Path: <devicetree+bounces-224700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFCFBC725B
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 03:59:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 829154ED43D
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 01:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8B541AAE13;
	Thu,  9 Oct 2025 01:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Nlm8f60g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7FDE1ADC93
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975136; cv=none; b=PuJB8wW1RL9B8UPI1tHJ9d0A9+uQViWwK8yY/oUnb87FTY7OaYnGwGK2h7cKgdeIw9f9e7CdgyEcT2AWUCFRnoQ6/b7UsroX0Ho61dApvuGeHZdGERmh8q8RCNQ3+6SrHIGSN5voPVy+aUG40z8Man+kYG5SgSPxxX9Ivn0F8f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975136; c=relaxed/simple;
	bh=B+hlWYQ373hjO9SpfVlMPTai5uiOn1pNvN2tfFFSltQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bdhPargPNbanydPuflSABxXnUkx2pn97vkyDW1A1TTtq9lRLORQnGnXXwMicWCgNf2/tUHnx+sM7EF/LjXagRvkRI88fl7mi4juFMavJxzElgUoIAsNUBGQ3SnmfGH+7LPIuam8fMbVdPJd+Qk31LwA24OMArOX6u+62FbAXH/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Nlm8f60g; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-279e2554b6fso3148255ad.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1759975131; x=1760579931; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6MxHL3qUwy+t0aO6eARfxrO+qA5Rm8YXQr0n5njGXfs=;
        b=Nlm8f60g8LL8fbLO95zt25t+WGp92eH3rU4f+UnVgZILIic/PZ5GOoBZfpStVHm5l0
         UStlxdtJ7r11NqHxN7kk2Sj3LVpxUO7pBrpdEDXkiaem9lhi+cdUmga1y0RuDnOMSX13
         HK19IuNpzeal6eTsFNJNvHYVt8d59Kph1tElz8m8zbkReDFeFjMu5mpD4lscM068aCPl
         eQhkJwlWVju2WAQYHZdrkaNMZgpoC576m1gNKRZezJUGxSQNzibLmNkmPvp4QS/9PWEL
         HSq5d3URS/choGNMABaDrcEvOVZY1UwuHVWDWtrzTewA8bxryuXflgiduM5xaWGal2yH
         AzRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975131; x=1760579931;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6MxHL3qUwy+t0aO6eARfxrO+qA5Rm8YXQr0n5njGXfs=;
        b=AEhndRx8pQf6VMoAmEWQ1W8hBhwb3WQ9IgqLB5SCv00jz/rRLIM+rLy+t6f0Lnqr2r
         hD1PkfWTiEkXdX8863YMcbGzJsvc0oAOxEmmKfUuHPKe4gfV7av1pEAyoTObOXzR4vUe
         M+pfiPXfXlfWyFEzgGMvkUvIPrIYxHHNPhmVVkAUwAv9WoqhADFV6et7x14Zj6gxrZQ6
         PQ4u6MzsUrNt2v8Ya9w3yfuTmlwVmEQLR+6rlPY36vs3UOs54OJPm6HSU5u59NHs77mF
         d9QQrLWG0BgUStloajB4e9VLB7qvMNNr6aj419ozlv5wavvtFrM95KIieN0r8mBTgShc
         jPDw==
X-Gm-Message-State: AOJu0Yy9Q4BsoTuzk08gjniuIiYIOOa51sKCiWe9j7QMvHLmge+djJ9o
	o/7Gtppebncvt0HjC1aea89U2//FQMdMmHUqmekUjTdXchqOkEZhWDHCFzCzoj2lEiw=
X-Gm-Gg: ASbGncv8DdiDXriqMqRIcrIJLjJH34jNdpYU5ngF9MyMmvekHVnQxBMJuArodsjfPZr
	8I03H00Y6GJH0C4M/SoJlQsEE+bRABhPIfd9WcKJUbHVjtE45UDG1jcXDsvLalfKMhAt22VVnYz
	DCcgwsn0LYaau4v+9VJIfQ23qmuftYHItSwb6hnz+dBxvi7TAiCyS4fWFGCChZtFPTr2bGVWyEe
	nrQCEKd+6Syxex7qlZs9Ec4qBuA/D42iOptPdN5br6hlgBTtFB39qNVSwO6RF+pNgtqz1s1ChXi
	IwAc8eM9kUtFoLyPCkGfVw2+XBh5FsbgZfC08PCyjWqVcin1iu4To2fqwG8JRuOFUzlh48pUAU8
	ZercjpePprUU1HoWylVoLrd0NPb54T2W4DBedxYeddO2Evr6H2YRlGwl2lSsdFthPtRLF
X-Google-Smtp-Source: AGHT+IFWANPjuzJhuuxubYaVO2GJhHx+Uq0HfBlhgHOgbCi5OPe5NLGhSbpBSxbnLiNpsX7PUf8iug==
X-Received: by 2002:a17:902:d592:b0:240:48f4:40f7 with SMTP id d9443c01a7336-290273edf23mr67433045ad.39.1759975130859;
        Wed, 08 Oct 2025 18:58:50 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de53f9sm11033585ad.14.2025.10.08.18.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:58:50 -0700 (PDT)
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
Subject: [PATCH v2 08/18] riscv: mm: Simplify set_p4d() and set_pgd()
Date: Wed,  8 Oct 2025 18:57:44 -0700
Message-ID: <20251009015839.3460231-9-samuel.holland@sifive.com>
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

RISC-V uses the same page table entry format and has the same atomicity
requirements at all page table levels, so these setter functions use the
same underlying implementation at all levels. Checking the translation
mode to pick between two identical branches only serves to make these
functions less efficient.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v2:
 - New patch for v2

 arch/riscv/include/asm/pgtable-64.h | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
index 1018d22169013..7eb23c24310f9 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -273,10 +273,7 @@ static inline unsigned long _pmd_pfn(pmd_t pmd)
 
 static inline void set_p4d(p4d_t *p4dp, p4d_t p4d)
 {
-	if (pgtable_l4_enabled)
-		WRITE_ONCE(*p4dp, p4d);
-	else
-		set_pud((pud_t *)p4dp, (pud_t){ p4d_val(p4d) });
+	WRITE_ONCE(*p4dp, p4d);
 }
 
 static inline int p4d_none(p4d_t p4d)
@@ -340,10 +337,7 @@ pud_t *pud_offset(p4d_t *p4d, unsigned long address);
 
 static inline void set_pgd(pgd_t *pgdp, pgd_t pgd)
 {
-	if (pgtable_l5_enabled)
-		WRITE_ONCE(*pgdp, pgd);
-	else
-		set_p4d((p4d_t *)pgdp, (p4d_t){ pgd_val(pgd) });
+	WRITE_ONCE(*pgdp, pgd);
 }
 
 static inline int pgd_none(pgd_t pgd)
-- 
2.47.2


