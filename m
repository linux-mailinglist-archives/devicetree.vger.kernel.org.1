Return-Path: <devicetree+bounces-118285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 368489B9B73
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 01:11:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83DF5B21E87
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 00:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91338148FF5;
	Sat,  2 Nov 2024 00:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="V2q5SS4z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C145113E022
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730506135; cv=none; b=FDANroQb/w5o2N+JSunZnG2s5nbCuDB8y99AzqGbWWt1+2MVSHWQEvGTPC+sSE2g4Uh0RgfUKcXA6/50Jrda2pkHj22TGq/x8f2zT2WDAjShFazUVoKS3f/OLv6pLFAQRhUyG8sb6Aa2NnmrvsjVYe59Tuh0US2SsFYGPymXGDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730506135; c=relaxed/simple;
	bh=Esqvb8XTtz8KDAVXrjRDBkMExGaysFhCT21Y3EvyG3M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gwaOBosoiLxtO7Pq4FmwAa6/RPxcS+9HRN3Hs74nQl2I17pZWiIZm8Bvxod4BKDPhD3dd3xhc3IXaclpGOKeG87G8S2h/CPUSXlMlXxc/nriEwIe3PdfXRl6dCzGlzaxU5t8ABuidxOelvRRNWFG35P0VrCssgrBdoY3ECz4Pvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=V2q5SS4z; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2e2bd347124so1987933a91.1
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 17:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1730506133; x=1731110933; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6f0bfv/UG/JqamBlr6Ml5vEqFTtFdcwNeUu8mlrjgUs=;
        b=V2q5SS4z16QhtOrgIABzWclv8nq1iDCOyxaPUADKm3t4Wzln9rVR7Z4AQofVHGKel9
         Jjq4pMxxa5/mCjmr3nrVNKqs9IbbjteQn8XGwATnbJDdbC+FyYjpD6VXd80J183EcaKM
         WfufT61YkSHcAiwx8kllKpy+t2N74mN3K91HRE0ViltSk/XHf0wxLbPsw9Yv2C1EgNtu
         CQexe6G9IX2lQJ43iTVH6EZ3AwNLmVlvcgf/WoN02WClnYIJv/Y2bKGswycEB20MXv+f
         hYDeA5dRy7kbmnveWCUEKf6qexEaxVMh7zqhHpM/w/RrC0iKTQj6IN6XvqlWj/0z2TMw
         hSzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730506133; x=1731110933;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6f0bfv/UG/JqamBlr6Ml5vEqFTtFdcwNeUu8mlrjgUs=;
        b=ZMBzaIjbPnW4iJex6dRab+2lic2m//ugkJad8OrfsXFDYHk4S1hVfSzJrTUR9l9cs1
         /kMJhy5W1IRqCfa4Mod2snP93zv0NNAJIknBw3kjijTxDkdSxDw2dgnrt+kypNc6dUH0
         lc/ufQc3B843METxXEJ3YzlBUWDg1TlD1Ngu4mYXx+cRUQyBgpUNN0LzIIqwrIw0DzzA
         JEWmbWvuytx/YfKAOXBEigCN7TmY9I/rrgKk4t9je3A7VE1jNSXoheP0i+CImOOgxrlt
         0p0M/b9jNvu+nDPox8R7FaU+NtVkf3ZAlm4LpwMBzYgtSSZbPstTBizuMIAQUpaIqy1I
         CfNA==
X-Gm-Message-State: AOJu0YxmOFb7oc7ys4dRD9RMvVFm9gJ3Ci/V739kQqR2SUxbGaZNMseS
	gUoVC3a67abvsglpBanjk6q8WAL6jdfVqHTy2zpCK0Hx+2+bhJfstNP+akhaVfE=
X-Google-Smtp-Source: AGHT+IFzEa5gdEJWrmZ3qEErWiVz4Nclj5KffdLeaW0o88JxBl0OqASLc7B/YtrAYBvQuvsBiZVowQ==
X-Received: by 2002:a17:90a:7c03:b0:2e2:e6fa:cfef with SMTP id 98e67ed59e1d1-2e8f11bad3emr24772724a91.25.1730506133062;
        Fri, 01 Nov 2024 17:08:53 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e92fc00856sm5505749a91.54.2024.11.01.17.08.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 17:08:52 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org,
	Conor Dooley <conor@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH 05/11] riscv: ptdump: Only show N and MT bits when enabled in the kernel
Date: Fri,  1 Nov 2024 17:07:59 -0700
Message-ID: <20241102000843.1301099-6-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20241102000843.1301099-1-samuel.holland@sifive.com>
References: <20241102000843.1301099-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When the Svnapot or Svpbmt extension is not implemented, the
corresponding page table bits are reserved, and must be zero. There is
no need to show them in the ptdump output.

When the Kconfig option for an extension is disabled, we assume it is
not implemented. In that case, the kernel may provide a fallback
definition for the fields, like how _PAGE_MTMASK is defined on riscv32.
Using those fallback definitions in ptdump would produce incorrect
results. To avoid this, hide the fields from the ptdump output.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

 arch/riscv/mm/ptdump.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/mm/ptdump.c b/arch/riscv/mm/ptdump.c
index 9d5f657a251b..58a7322e9a82 100644
--- a/arch/riscv/mm/ptdump.c
+++ b/arch/riscv/mm/ptdump.c
@@ -135,11 +135,13 @@ struct prot_bits {
 
 static const struct prot_bits pte_bits[] = {
 	{
-#ifdef CONFIG_64BIT
+#ifdef CONFIG_RISCV_ISA_SVNAPOT
 		.mask = _PAGE_NAPOT,
 		.set = "N",
 		.clear = ".",
 	}, {
+#endif
+#ifdef CONFIG_RISCV_ISA_SVPBMT
 		.mask = _PAGE_MTMASK_SVPBMT,
 		.set = "MT(%s)",
 		.clear = "  ..  ",
@@ -215,7 +217,7 @@ static void dump_prot(struct pg_state *st)
 		if (val) {
 			if (pte_bits[i].mask == _PAGE_SOFT)
 				sprintf(s, pte_bits[i].set, val >> 8);
-#ifdef CONFIG_64BIT
+#ifdef CONFIG_RISCV_ISA_SVPBMT
 			else if (pte_bits[i].mask == _PAGE_MTMASK_SVPBMT) {
 				if (val == _PAGE_NOCACHE_SVPBMT)
 					sprintf(s, pte_bits[i].set, "NC");
-- 
2.45.1


