Return-Path: <devicetree+bounces-237893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 597F4C5558A
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:53:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5D163B79AA
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 426112F2619;
	Thu, 13 Nov 2025 01:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="izNJ5Tvu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB36C2F0C49
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998447; cv=none; b=iIKwMVrHXuiNSEMcodJLV55KBn3shM4zmVA18JYSt4/4+3+T6Qj3RZ08fvtlfgERMVFaZ7PsMni1eLpMO58CNO8ke5t8EcvYuuUeUv7hKrxFI//zZhjJUoGGfq9EWXqzeja5l5Kw7g42hwwJcXdBw0ziVv07ONBAi0b7ZMxpmpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998447; c=relaxed/simple;
	bh=7U/3jWkDl0qA7lpXkEq5MXx7Raqg0ckxjMa3eHyDnac=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QoWNbC87dZEhz1UCJrxsSkjhFsVYF9Nz6MZAgTP4hXO37nn99/Vu7ckgWIbLyfvEydGzjwXnk611embtEmvzsBHBhRJH7iLZb4cNlAjLKdjAxaZuI7cDk9U56QiLRuHHziMlnJuqzh4Bx3VcwQSbbbpozxB2mu2sNjQMdGxiv/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=izNJ5Tvu; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-bc274b8ab7dso219650a12.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998445; x=1763603245; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mnUrJZR22oRvK4b9Hq0rnS55dGa+J0g2wL6xk4xR6+s=;
        b=izNJ5TvuJX4M3VQMrXJO29Ggn6MJs4AfQTdLCbZ6Kxu80+uZfhC+qeWWTXj9+Szfoy
         bzCfJa0FXykm5GQQH4dUNOU9sBlUXUSEAJNy4pNz2LJDJxpClDFUulPj+AAkoGh4HfUJ
         C+t1N/ivr01Cs6VXTrgQMN6xvvLwqwMVy2iFe+k3qchB9I2Z2WWT+l5PvSf5cftlRrmU
         Th1MfbCr1VwdskZvln0VLAnGY0koj9dk9BYTznuoFg3Ulk85qm4+pBuKxfFTRGArN6AH
         HYBKaeq93L0JKLISgDbQLT6U+kPoLyz7Td0MDmwszIXW1Kbv5EkkzJvF2bvHskUBU7st
         fjlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998445; x=1763603245;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mnUrJZR22oRvK4b9Hq0rnS55dGa+J0g2wL6xk4xR6+s=;
        b=vz8bxZ8OdSsL+uK8mpKDLkfpC+k/KGWzAXOqBWR5iNOWIlwbpLEVnpkp0qeki9xTMO
         tHwrvNISDDHKaDBkK9v3wo0zsFT73t+TQ4FAdtNrYzc2Qd3rZ8lpgaQ69SMHqjN7w8rk
         Zolz3GU8CIo1HHHmLPgTHLZqMh+CQ0s5s5az/1XEOpPBWrjp8uRk9sRzr9jEGHwiwulp
         LP/A0vNJ94Bv3OSko/wGMPqqh3MGpYqMf86MtP+ZG7MWwV3QPftOiMWxNG0X4EC+sM9C
         oepy7g0TFWN2AzOB83E3r0eC8rSsN5SQIKo6n2N9d9peE6iv9GHrqA7wuHFne86ZBEw9
         Ggmw==
X-Gm-Message-State: AOJu0Yz07ZYC4EZoDRWZxuacIjLzLpXg8vw+lYL5gvCi+Qk9CKu+PWVA
	2xbkSPKXHredu1uLLnYejFC44PW1VZi4oEwYlSje1q9hs5Tg/6I7us7vzCpZEagsW24=
X-Gm-Gg: ASbGnctJq+4UqsjjzDbY/H/dWzQCCvDadQM3IeDKxOiRuvloo1fGD46dPwUJ7CNAgh3
	G3BiKKjv1IPd70kRKBdB1MnJDAuPs5uxY4+sYC3F/LvgA0qxy9ylH1YNo5pZje6MgPfbE1bVqwO
	k7qap5QH5goTZ5ap7amcZKVfe9emh6TKLOARZNwoxr+Li3MoQni+l4ISkF4GMiR0gweFF56hhWe
	RS1C0LJ9Sbjt5UG0pe5vs1dr9b6cYVQMoS4MnP1/4RJ/AgrrshDzAF1sSuy/nI83+HuoIZhiWp+
	E/sQ+0KdykKPCEqvvW+KKW6eAmcxT1a+OWJvJE7HExKIQgM1UuECWYxWZujV7ixd0NixDRigJhI
	NDpwZg4lnA0GsNr2z8CPyE1+A5E5ng9tXPK+AxEXUsFt6nyYqkUC4+OPl7u3TmxQArxaw7LLzWp
	AGFTIQTyGeMvWOCFFgE+mjRw==
X-Google-Smtp-Source: AGHT+IFqAfqeVcZ22DpgtEmtnZ9MrEayC7yLg/9qX8OddaBkDjNDdLzIDATV5Jsr3mCugzkW5GzqeA==
X-Received: by 2002:a17:902:f54e:b0:28b:4ca5:d522 with SMTP id d9443c01a7336-2984ede9839mr68599425ad.39.1762998444849;
        Wed, 12 Nov 2025 17:47:24 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:24 -0800 (PST)
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
Subject: [PATCH v3 17/22] riscv: alternative: Allow calls with alternate link registers
Date: Wed, 12 Nov 2025 17:45:30 -0800
Message-ID: <20251113014656.2605447-18-samuel.holland@sifive.com>
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

Alternative assembly code may wish to use an alternate link register to
minimize the number of clobbered registers. Apply the offset fix to all
jalr (not jr) instructions, i.e. where rd is not x0.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

(no changes since v1)

 arch/riscv/kernel/alternative.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/alternative.c b/arch/riscv/kernel/alternative.c
index 7642704c7f18..e3eb2585faea 100644
--- a/arch/riscv/kernel/alternative.c
+++ b/arch/riscv/kernel/alternative.c
@@ -126,8 +126,8 @@ void riscv_alternative_fix_offsets(void *alt_ptr, unsigned int len,
 			if (!riscv_insn_is_jalr(insn2))
 				continue;
 
-			/* if instruction pair is a call, it will use the ra register */
-			if (RV_EXTRACT_RD_REG(insn) != 1)
+			/* if instruction pair is a call, it will save a link register */
+			if (RV_EXTRACT_RD_REG(insn) == 0)
 				continue;
 
 			riscv_alternative_fix_auipc_jalr(alt_ptr + i * sizeof(u32),
-- 
2.47.2


