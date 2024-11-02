Return-Path: <devicetree+bounces-118289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 269AB9B9B7C
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 01:12:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 60B28B226C9
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 00:12:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB362158862;
	Sat,  2 Nov 2024 00:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="LqmGvR8O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F85D156228
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 00:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730506141; cv=none; b=o42JAKU2lGAmHiayF3ToQDWSfRs99l3y05JKxBwve+k0wxbUcFNWlNLX5rGKJh1D78JHhrSIToDsaLUpQE1wRBgkSUpIsZ8WSYX+lQYrgj1SWfClRtJwNCDTMJ3WiMMUdXK4B8I1CuCBwPMMSw8SUHpgZc5QgiR1oU2YQO64tdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730506141; c=relaxed/simple;
	bh=fk/tTqVWYjU/0tRNnqT1WguFbBT89HpTQst1uQHgeXM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S2MjCkd+0ZFgVbndZgFNqdN0qS8XCRayWKIVlCwQp4ZmBRj9tsTjGfTvc+g2Y9kznGCDIaiWXu/LZuuIBxxLDYv8NYTSLhmgfPj6/c6nLz3eOYf+DYRQFFiiUo3p93LeEb3qE15tez5G2YNEy77tKMeN2VgWwKtjziXm+Cxqalc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=LqmGvR8O; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-7ea9739647bso1856383a12.0
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 17:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1730506139; x=1731110939; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qj12kTh6O/rQ/Xl4Qt+B24adktPEP3DMoxSVhcVbOAI=;
        b=LqmGvR8ONVIKejd0DvKkKMo+TmOBElqlbiGZGupfmBBTvTi4BmUpxcNixBEIM1ul7o
         CmP7AFteFLgw0TH6U5gSSgvQiKbW4HUusNj9Td5+4OxBsWV9056opVXELshkk4hHrsrV
         TFk6QJQVOnN/9bd3l3vmYw1R7e6JsH+ah4L7WeOvHcGo2LrhmuKSbki8UBgBClhL4ANY
         ySGHcVAedJnk9VIXN3WCnJ+ZxJkyfKakH+RfhpeI2XI051TuWGUkOSN8X5koEx4+esic
         7ywjedl42Rfw/PyAj/fMDyLgdjkqA7k9s4IwVOSDPRn89EE8om7pyl+Xl90Mebl13N3X
         7UKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730506139; x=1731110939;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qj12kTh6O/rQ/Xl4Qt+B24adktPEP3DMoxSVhcVbOAI=;
        b=AZNE2KUcNuZ91FIwcWvC8NhJ0zSdiNKhXKhcdMbV9F6LVK/4mdmxPyz6RMdnXdAMab
         Uu2LprYdW5gYSHuvc2huk4UtFcyXO3tyhmCiiW9zv1pXZRvc38yHZWqNH/6nqW4rXFiy
         SqQqhyH2qVkbch90Gr5epOPJ4i1HgLcsgzFpBAXa9tADD2tEqbXDKPwWxyO7t0lkpWUI
         kXhnNRvmfAPlRYZm0sKENKBhzHc4p4F4+mF6eXZskOOa+irLSTwtm3RJ03Vs8Q0/oMAg
         wYoZmyQEk48R/RyEM43ZFh6yPR6sDy82ud6D2NggLZMiv+2YIilr/50VUC/2K2lfxbgz
         Hkzg==
X-Gm-Message-State: AOJu0YzPI+6Xu8keEu27Zg30qWRgPTRXxwlNUNJxpb8ndVDlOuIjbSvk
	9SUs/4YCFW2JVxViD4BfRAoJfHqmppiK02Fh/XuoIOZNvEtK8Rgb/OOz8y6a7kI=
X-Google-Smtp-Source: AGHT+IGji3cval3a5wb8acdD/53zei/e3sJ2bqSexeB5xbUIDHdLdQW6YclDCN4wNPBQMFu1+TtgTQ==
X-Received: by 2002:a17:90b:315:b0:2e2:ba35:356c with SMTP id 98e67ed59e1d1-2e8f11dceb8mr25968856a91.39.1730506138674;
        Fri, 01 Nov 2024 17:08:58 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e92fc00856sm5505749a91.54.2024.11.01.17.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 17:08:58 -0700 (PDT)
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
Subject: [PATCH 09/11] riscv: alternative: Allow calls with alternate link registers
Date: Fri,  1 Nov 2024 17:08:03 -0700
Message-ID: <20241102000843.1301099-10-samuel.holland@sifive.com>
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

Alternative assembly code may wish to use an alternate link register to
minimize the number of clobbered registers. Apply the offset fix to all
jalr (not jr) instructions, i.e. where rd is not x0.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

 arch/riscv/kernel/alternative.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/alternative.c b/arch/riscv/kernel/alternative.c
index 0128b161bfda..54d79e6f4afa 100644
--- a/arch/riscv/kernel/alternative.c
+++ b/arch/riscv/kernel/alternative.c
@@ -121,8 +121,8 @@ void riscv_alternative_fix_offsets(void *alt_ptr, unsigned int len,
 			if (!riscv_insn_is_jalr(insn2))
 				continue;
 
-			/* if instruction pair is a call, it will use the ra register */
-			if (RV_EXTRACT_RD_REG(insn) != 1)
+			/* if instruction pair is a call, it will save a link register */
+			if (RV_EXTRACT_RD_REG(insn) == 0)
 				continue;
 
 			riscv_alternative_fix_auipc_jalr(alt_ptr + i * sizeof(u32),
-- 
2.45.1


