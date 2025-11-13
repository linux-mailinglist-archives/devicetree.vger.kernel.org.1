Return-Path: <devicetree+bounces-237894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7888FC555A1
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20FBD3B8438
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:51:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 045352F39BF;
	Thu, 13 Nov 2025 01:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="GLFWgebK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDFF2F25E8
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998448; cv=none; b=VFMfK5a8/AsZ40/wuHancOqf9FHoqvqyeDaGTmcJc9R+pFH2m26+hNQ6Xd4hv7DZERsJ+QnIKPFan/NlEZGR0bW97/XDSzl7Pas/oUPZtP25w55w5s1TOTp1+nETqFedmhBxb2zD0YQga2AZyZiJCCl592Ya/7+l4zJC6sxHTTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998448; c=relaxed/simple;
	bh=dpDUJYbCUG5DE8ks5it/OO03BiZ/1BxCSuYFxo0W7R4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=vGYL5r1pZoEWEO9t12nRsACSUE+4DLK2L152FXMeTwOMqb4ffEd6huNXYAPWKV+2HuuI6c+f/WaL86lhhS5MTDYMC3yTq4Fk7ltFvKrowuasTkGtWPJ6sJeXqr4eB75EQEY1IHNIYHqPxUXwgE5cwudigZfLmIFhoaoAz1qCjOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=GLFWgebK; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7b9215e55e6so138202b3a.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998446; x=1763603246; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tJUQdwbie0o7hgZvF0fBCgnf1I3C+S9yUEzkmCq2LO8=;
        b=GLFWgebKN00QlKqL7HbDjZoN9r/Skdq1GViY0ma1TDXfm5Ihcz2Ru2trFzwmvTQMS3
         wN+JYB0u8H1x4asuxQeVhEfKzyySc/G/THY+lsLeMzg7mw3Ga7SyaUzhX6/kt9s2bpwP
         X/glgU1cQg5vmVNLko6SBx56rSM6lZhsSQ9af2RzTaWWdC9jdiIGk1GdwZo3GLUMmdlN
         5yP8WvwwW506UeodpGJAvcuveUIE7PTQEWQdID95y17FMVi8KJQlZQa1cbP4zaSg9Ing
         Nlpv0ztQAlev2DxaF7Ipr23nWXGaayQUl9+bu+cVAH7Uqs+F2BDHwXU8f2l5xqkTidLk
         5TQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998446; x=1763603246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tJUQdwbie0o7hgZvF0fBCgnf1I3C+S9yUEzkmCq2LO8=;
        b=GaO/VP+gKhocCDKt2JrSryBTpKPATI7+L64ctATG627wOijFy2EFPJWn5IVMjjhaBX
         I5rC1+mJkTJZvZPbPGE0bBNVaJqVe9Dgj848FJiK4FYjCRY40W4eO5biLd17sRf6igXk
         6UGE6ZVE8cTjbPZfKpDvLDNyyP6Umooe5Hn1b8F07ZeKfx6XPPYhrB+8XwZj768tlqVf
         2oJB78lbyLpkpkv0D4/P5bay1+97ZQYYT0tr2gKdCWCvt4XV0nbj0xpFaK0wXe7FbK6Y
         gFPNb1TKdOibHqhIoHIs75WsqWm7t5ECxMGik7jYWF86Zi87I+rO5pM5igEHADHC1Ioa
         eqZA==
X-Gm-Message-State: AOJu0YyBd/8N36eF0F7WOeDvqxtSgh80qyFaC/q9jSpWNVuer84en/8+
	/fnbCP1tNn2ndJ6zuN1X7aEqq3ws3+uAZ4guSb8t0GmKwSHcOG26kGbLIhXoo/qTfVM=
X-Gm-Gg: ASbGncvabZ3qd/+H345iyatuYJkGSm7TSlDCBgV9RX7u5wKifWP7AnSDCWcaLao85+X
	5cjcKINNljijpF/yJOZnwYJule4lfvFShEh2lJTrnBWtLqcL58c4w3wAk3v7N/7VH19VLy/nXO6
	JppRMGe9NxsbdI0AZVTa+QBl1NuZzV6nEKlv8l+gM/i/uBz+jjoJvdL4HRxDCt/34nLPl++Rp8Q
	2WmFBhzmzeDW0sV1SFvUgZLV8dLjQa9lmvVylMGf85xq1bydcqu6ijUl/HCB9PX44kl3QpWV3KV
	HDXsNaJIEttAg/u+yZSpC/jQnt/0AAOXCmWGD5UaJPo/Pr7inZdbddzZjD/NCFxtPmW9puAzSEF
	XltMNtwyzq46OXeGMEAdnSluEm2xqMD4LQFQ2WHwB3NL+F4Q0DA6yoNBjFGjwUv0NUrrTrUcMwX
	XNf5Zn8R+1+1ebKR7A668Ctw==
X-Google-Smtp-Source: AGHT+IHaQsvIpnkLWjWR0rawHh2zoCdjthdQ4AoC5mETU8kGh9msFPBhPFlU6AScOiEA10G8iQrBZw==
X-Received: by 2002:a17:903:3c64:b0:295:3e80:9aa4 with SMTP id d9443c01a7336-2984ed46fcamr62454685ad.22.1762998446285;
        Wed, 12 Nov 2025 17:47:26 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:26 -0800 (PST)
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
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v3 18/22] riscv: Fix logic for selecting DMA_DIRECT_REMAP
Date: Wed, 12 Nov 2025 17:45:31 -0800
Message-ID: <20251113014656.2605447-19-samuel.holland@sifive.com>
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

DMA_DIRECT_REMAP allows the kernel to make pages coherent for DMA by
remapping them in the page tables with a different pgprot_t value. On
RISC-V, this is supported by the page-based memory type extensions
(Svpbmt and Xtheadmae). It is independent from the software cache
maintenance extensions (Zicbom and Xtheadcmo).

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v3:
 - New patch for v3

 arch/riscv/Kconfig        | 2 +-
 arch/riscv/Kconfig.errata | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index fadec20b87a8..cf5a4b5cdcd4 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -598,6 +598,7 @@ config RISCV_ISA_SVPBMT
 	depends on 64BIT && MMU
 	depends on RISCV_ALTERNATIVE
 	default y
+	select DMA_DIRECT_REMAP
 	help
 	   Add support for the Svpbmt ISA-extension (Supervisor-mode:
 	   page-based memory types) in the kernel when it is detected at boot.
@@ -811,7 +812,6 @@ config RISCV_ISA_ZICBOM
 	depends on RISCV_ALTERNATIVE
 	default y
 	select RISCV_DMA_NONCOHERENT
-	select DMA_DIRECT_REMAP
 	help
 	   Add support for the Zicbom extension (Cache Block Management
 	   Operations) and enable its use in the kernel when it is detected
diff --git a/arch/riscv/Kconfig.errata b/arch/riscv/Kconfig.errata
index aca9b0cfcfec..46a353a266e5 100644
--- a/arch/riscv/Kconfig.errata
+++ b/arch/riscv/Kconfig.errata
@@ -108,6 +108,7 @@ config ERRATA_THEAD
 config ERRATA_THEAD_MAE
 	bool "Apply T-Head's memory attribute extension (XTheadMae) errata"
 	depends on ERRATA_THEAD && 64BIT && MMU
+	select DMA_DIRECT_REMAP
 	select RISCV_ALTERNATIVE_EARLY
 	default y
 	help
@@ -119,7 +120,6 @@ config ERRATA_THEAD_MAE
 config ERRATA_THEAD_CMO
 	bool "Apply T-Head cache management errata"
 	depends on ERRATA_THEAD && MMU
-	select DMA_DIRECT_REMAP
 	select RISCV_DMA_NONCOHERENT
 	select RISCV_NONSTANDARD_CACHE_OPS
 	default y
-- 
2.47.2


