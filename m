Return-Path: <devicetree+bounces-237898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F225C555C2
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:55:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5F38834792D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE3292F656F;
	Thu, 13 Nov 2025 01:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="l8hbQNKt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8932F616E
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998454; cv=none; b=m6TgEslRb+3rI4dZtm+vpTOChAj8b8DjIrcv+goBZKNAFogYb2/mIXqDpvelEF/tTQ9YrZMERV2EcqWT9SpH52JWcZe2bwRA+JsPt+4ktWehttPkmIn52x5N4cNOg4ImuDUSQXzp/d9+wMT/fvTb4IxeidBbrtdhGe++MHNvNH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998454; c=relaxed/simple;
	bh=DpKcrTFSXMeznvqkI5iYlK6aDcUsXzIaprU9WCwGV2Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Wfc2vP9Caj6a/qZAXdnLHCg6ldmIVDGS9pwHfpYLI24VHiY73zXyNlGiucGUEcL+FdU8HuoYa4wz3IVIDpJbYvS3QFyDYUMT6SkAmRsp2cFbFPwKfJsLudHsKhXO2Du01VvevoBYjSc3al2+s7LgNqsGNMrcpvPrDILVcJ/lRLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=l8hbQNKt; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-29568d93e87so2241205ad.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998452; x=1763603252; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hmm07HI+8fQZ9dsXPTz2+pE8ZdXEYclRtD5hDrzxz+A=;
        b=l8hbQNKtfpr3CcUQrWA4fF+haHAk32uyKO1PUswuVflU3srHyNJ3tC/JfY6ALP6XI2
         icRwY7+2KAl54HQIpdMlm1EJWJPZ9xiPzGLaIJPDkNcoNW69kokmfMNPHsf4FTEqQi8A
         MT88jXftjN7p6dtpujK954AkIoMtCx+J0CzPH0KxHVwBEIM5HplMF83kT7fWPXV00HKy
         6gOTG9wIHZ8O58ZTC15bHXAmbHEJ9S5+IniDC7mmu6lOc1eA/cJkXkzY5kgscHJjIB/Z
         PyjTWcvHrivtlSVjCigZOVVomLonitj3oqb10Z32F/7Bgmyhr74XJQwRu/bQbFSqq8LC
         OqDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998452; x=1763603252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hmm07HI+8fQZ9dsXPTz2+pE8ZdXEYclRtD5hDrzxz+A=;
        b=IVDKzpDjJ88KrSkWhZH4dLsOT5YC+bRLo9jzWjA1n3u/51N9dnqAgyEQo7Hny/mIWa
         0/C43EO0msy3qUZl4vv13zHJD/UGSlKWmCxpt096lv3KMjncNys8mxc5pny9RgSL4aOZ
         1/MC+8zqhAHw4xYpNcrDVi6R056Aeoj2MB6GFRaZ6IEeAbI7BMXb5+L+3G054KxFchJv
         0KBG+tb+C8V7Mzxd9kfAMcMG2D+C6Gz29ozdLTO4/nCiPFL7oXf0IE2gyrjvRpJx9Uzv
         eBnEOuSIpnkZrnlxqj71CiJ9xR/z2tlRFYnro2XI/KAfXxNZiFVPfjRij72/t07nq85S
         Hj+A==
X-Gm-Message-State: AOJu0YxvP7j8v5YxjW7DxV5OL3LaK4T7b/6PlFBFBMvvVKc5CzS0o5qS
	QY9gZvmIvmDDShSJTG1OTiKDYR//dG+icmKM0xMg7dgtYjjrgn6F5MoBNKBHCd6e3HI=
X-Gm-Gg: ASbGncts36dz0qo7hde+5nUHfO5lhufeY8F/s7otNbhit5GR9SLLoQWCKkwnUhxgNjK
	bjcib4ljV38bwbdQ35NBlwtEdxQkzAbp6zlyrMvrZhKHfceQjNpXxEVA2MSwKH4zymO0tnTgMeM
	XmLOIJHNNolzA9PfZtBdNHPvW+DdToZh4uO8XJzdCfidrUxgQNXHC+Z7ecPmEpxQVtxsfqKoIT9
	RB6GBDIFBzrr/C0nPZMdJw563xYJAUgLcr/cafph+2tKF7GahPTWsohVoNAn+gVJw4joe6K0q3P
	H7BJdniJeBjARxumYTgPFMxQ6oR5p8Ty7Y/sRMPWMvDni9HeKOsf5Qv3rYiLPcy9JyxP5B9V4M5
	zvRACGulaF8QJfCAYz9lD0jMmFijV3TVjLsxqmse8Djq8xj1yq92eAYBTP7xnmGY02EnE90VK3v
	4YtPp1BOW26JiaR6xxKKKBYQ==
X-Google-Smtp-Source: AGHT+IHJJ32S+3DmD1CuHHRA6pREy7usForarOqF2N3irQZblubt51Eou/L7IV170eSGC/5u/UdVRQ==
X-Received: by 2002:a17:902:e841:b0:295:86a1:5008 with SMTP id d9443c01a7336-2984edec288mr76669175ad.38.1762998452211;
        Wed, 12 Nov 2025 17:47:32 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:31 -0800 (PST)
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
Subject: [PATCH v3 22/22] riscv: dts: eswin: eic7700: Use physical memory ranges for DMA
Date: Wed, 12 Nov 2025 17:45:35 -0800
Message-ID: <20251113014656.2605447-23-samuel.holland@sifive.com>
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

EIC7700 provides a physical memory region which is a noncached alias of
normal cacheable DRAM. Declare this alias in the devicetree so Linux can
allocate noncached pages for noncoherent DMA, and M-mode firmware can
protect the noncached alias with PMPs.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v3:
 - Fix the entry number of the paired region in the DT

Changes in v2:
 - New patch for v2

 arch/riscv/Kconfig.socs                | 2 ++
 arch/riscv/boot/dts/eswin/eic7700.dtsi | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index a8950206fb75..df3ed1d322fe 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -9,6 +9,8 @@ config ARCH_ANDES
 
 config ARCH_ESWIN
 	bool "ESWIN SoCs"
+	select RISCV_DMA_NONCOHERENT
+	select RISCV_NONSTANDARD_CACHE_OPS
 	help
 	  This enables support for ESWIN SoC platform hardware,
 	  including the ESWIN EIC7700 SoC.
diff --git a/arch/riscv/boot/dts/eswin/eic7700.dtsi b/arch/riscv/boot/dts/eswin/eic7700.dtsi
index c3ed93008bca..d566bca4e09e 100644
--- a/arch/riscv/boot/dts/eswin/eic7700.dtsi
+++ b/arch/riscv/boot/dts/eswin/eic7700.dtsi
@@ -5,9 +5,14 @@
 
 /dts-v1/;
 
+#include <dt-bindings/riscv/physical-memory.h>
+
 / {
 	#address-cells = <2>;
 	#size-cells = <2>;
+	riscv,physical-memory-regions =
+		<0x000 0x80000000 0x00f 0x80000000 (PMA_RWXA | PMA_NONCOHERENT_MEMORY) 0x0>,
+		<0x0c0 0x00000000 0x010 0x00000000 (PMA_RWX | PMA_NONCACHEABLE_MEMORY | PMR_ALIAS(0)) 0x0>;
 
 	cpus {
 		#address-cells = <1>;
-- 
2.47.2


