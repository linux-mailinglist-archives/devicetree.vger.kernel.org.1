Return-Path: <devicetree+bounces-224710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0D2BC727D
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 04:00:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F87119E2F67
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 02:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A051B1C84CB;
	Thu,  9 Oct 2025 01:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="KGcKbXJu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4B619CC27
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975149; cv=none; b=KS99zZJmzaUFpFSYBSybeGTbRj4s7DgcplHotEq0dd5LD8xcMpikQQxsdzNhSU9HYrNGdkDJsG9BN4cWg27W4wRhBm1uRUgGdetbc+dBvZTCLfdFbMipa2TteAg2O8XxRHUTDctUKylbEC38zwrXMu3bV24DfhZKK0iHHaPbTRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975149; c=relaxed/simple;
	bh=fz/lHHixe+6qbU8BmIUmjqU5K+n2uPZ5xsU+fBDfYsg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AchrVFyz5ZLaj7SjeETuK26Y3gapcFmj/5EB+xsW4vhPoonf529brB+sTWEKZOfe9GVerLbgt/2dVgxoufzRSMktwiJztYEHACm+In9DuJRBxpi2Ye552iuFK9L2wXpd8LBCmnvw/FvwgjT8Hs1Pe7DNa7snX4yE8wzVCVvAXOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=KGcKbXJu; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b62ed9c3e79so275522a12.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1759975143; x=1760579943; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6BAMdYf9jYg430LRuIQ/78MgeGFhJjBTPRUD+PdvqOQ=;
        b=KGcKbXJuakwv6Qf/Um0mCf/gxhPgiWA2iQ75foYGAyjEvDDJSviUMwbJQeAEYzx+Xc
         WuF7rFGgOTZnIBBR/oJegcnlUpCCNLmbFkvsmg+F3o/0yw8fgfs9E8RfbgGP+/S89GAB
         n4hBBfDZvEIBZbuY5sqN4r8Tagtr08e/YYJRdqAerufdmqEk6/+3zoKBCUMacCPPSzR+
         K4LQTc3SlFlHVACn/3A+m5NrVmo1QD7Rej6eouEdMZkTvknllAqyzT78/v9CwdT8Mp3Y
         u7dRwu1rveGmmHggwN25ou1ZK/HV669+kN0QLRbs6f4QovyG8msA7dhsYoqMKNE3QauB
         P8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975143; x=1760579943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6BAMdYf9jYg430LRuIQ/78MgeGFhJjBTPRUD+PdvqOQ=;
        b=OsuWQIUQfvr+62JVSfBApENf/08IiYNP2cnwCqhvip8eTa2NTr2yzIONTBAR/sC48G
         FxaQaU568rBjw3FhK0SKwqtluUoCMQWhidz0dGeaEmxmzwgxO6u8eRzwFdMzdUm66GU2
         lsBGFGVwnihLg+g+e5KYlZ4YGulcqld+IjG6n6Vo4M/7w6HDNz16sI8LI+DxOohXAeXb
         +tZ3j80sZVVu65AvawP2Nw9xjXdS+dlJBKJPMz+lNa7aVr5xUfY61y7Lc4lgMz92aEug
         ATJ9r4YsB6K63B5uWe5ZXyIWjfoP3aZoUwI83eOnO1P37FeEzhg1fA0XSGq3uDkciKoN
         1d1g==
X-Gm-Message-State: AOJu0YxpsaTktA9buWjYwWyHjZ3yZpbl5MmYrga91S5htSG2rXpRI3Cw
	A/a3Ti/ZSNjjM+iXLnkf7JF6euPMep/sJL8KDWL+MxRq/mntPtD/p73aZESHbegpgsYuC+p/UuQ
	49Du8
X-Gm-Gg: ASbGncupv6GFhUAQ/pYgv7ZdXOPh4OSKscx35xtSzC8tqUhrfhp0CULNRcpYGUmhNy+
	r7Zir9pq6trfYyGfo7Zg2Gkq4qv2qgAM2/iqMnyvOgdhdb0SXjiL6nXfKwsOe31z8RdRxIDs6z6
	G1xPq7Ej03x8vxu25as0NwNF+fmlSM+7AnAT8c6oybgAwIFKC91+2mnPAcVRb8JGlevDFnxXlL5
	ikpBkw7vXtEMOWTrWIAnUIXpqhxgEmeOyS/SbxYkQkMhFto4YuUpm8dbO1zgrIkNaXvg9dymAZP
	OX9rIyZx/BRPrZoi6ZeHoNZ/Oba3yC9X+fvTYl79i9ohoXtq0E47xn4AV6H+zekoQWop9UL9D9g
	mDnZfgLmq1YF3OmTpPu5+HnRjA4YQB3YtzJ1ssF3SRHWc+u1KXEXvvRuZ6yD1VCR6tKWE1Kc9sp
	MpnUA=
X-Google-Smtp-Source: AGHT+IFH8AKgqsZnk4E4iyKT3yuRTpeHrZ3gNSsclL9XuJ0PoMWOCXT4FRimy04nwWVVyn2iJvf1+Q==
X-Received: by 2002:a17:903:910:b0:240:3b9e:dd65 with SMTP id d9443c01a7336-290273eddc4mr77201595ad.38.1759975143155;
        Wed, 08 Oct 2025 18:59:03 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de53f9sm11033585ad.14.2025.10.08.18.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:59:02 -0700 (PDT)
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
Subject: [PATCH v2 18/18] riscv: dts: eswin: eic7700: Use physical memory ranges for DMA
Date: Wed,  8 Oct 2025 18:57:54 -0700
Message-ID: <20251009015839.3460231-19-samuel.holland@sifive.com>
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

EIC7700 provides a physical memory region which is a noncached alias of
normal cacheable DRAM. Declare this alias in the devicetree so Linux can
allocate noncached pages for noncoherent DMA, and M-mode firmware can
protect the noncached alias with PMPs.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v2:
 - New patch for v2

 arch/riscv/Kconfig.socs                | 2 ++
 arch/riscv/boot/dts/eswin/eic7700.dtsi | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index a8950206fb750..df3ed1d322fe7 100644
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
index c3ed93008bca1..09292910065b2 100644
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
+		<0x0c0 0x00000000 0x010 0x00000000 (PMA_RWX | PMA_NONCACHEABLE_MEMORY | PMR_ALIAS(1)) 0x0>;
 
 	cpus {
 		#address-cells = <1>;
-- 
2.47.2


