Return-Path: <devicetree+bounces-237889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D71C55568
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:51:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 433C23AB588
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BFEA2EBBB5;
	Thu, 13 Nov 2025 01:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="cMIfCgiF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3EBA2EA157
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998441; cv=none; b=ZOaCzw1oyp2pGQ+05K3gRhkhgkvr/rAxF63UuhSsheQUwWJHSnVUYPAYxoccWzKHSGU33970d3jfocBuiWc7gmvscYKFZ6PC1fYWmjv7T1Rjs516GEYz3gQgV+XZOCdmCQrWy4OJtnYB+9rdv5mscqRoULhBn9ZcNofDGl0CZJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998441; c=relaxed/simple;
	bh=iLgqPY34e6LHnAK1SrHQ7ZHSON9/8Yws1CAsFU3netg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mgh59vh2eHYfVT7UkcKxT5Yt813q/mGzaTsvapltNpk4avFY02aiTte83fJ4wMERAiEeCiHiKmirTuhnvmb5l475D3S9q8E8so3NzKj6NbeBycnTL+wOC+TNrsAoymn92BX7gC4lJw8yuR0BSL1KHHxPB28JPJWHs+4sB2knlAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=cMIfCgiF; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-bc17d39ccd2so161792a12.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998439; x=1763603239; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=61IAp/RLZglhPiTIaYZ0zqBWXh5TU3+Z1ZyRv4wlW+o=;
        b=cMIfCgiFpgZbr5MtVWRz9zCHhtaomfBI0eXgVtTUNJpHGlqnbovUZHaRIML8Tb7vR/
         Xkc5dRVRhVP+idjgATGWQiHk7sBxIMSNcXt30QJa6A+sXZ8dcl8gaoioZdJGOhXGnbsp
         omce5Y8q/F7Qa7E2CnPqpVQh75muVWUl34eIV9p+YBwSizZp0ucZLc8oMAV1NNUyGMbL
         lT0G+MLZ4yLzFt5h8UrhRM2WJgy+1SfQ6iTQeRUioxL7wwjIA8wFWdqnbBDJFSXw7Egv
         1Vv+N0UEEirykp0415yBp3rrwjfkvWpn6Qse0JPbLDlrkZsQ49M3LYzlzO0DOnzhn81e
         bSyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998439; x=1763603239;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=61IAp/RLZglhPiTIaYZ0zqBWXh5TU3+Z1ZyRv4wlW+o=;
        b=UTdK37dpoWaO/XueuXOjkEylH9ueuSDCfZNc+VKMS8LHYxkTf2VBSuNiVG8hWfCHIX
         s3IN7+VRvvu1uonTcBLvdETl9gB2geXPLktXIP+Dy0SkjQkE1TxOO6VbWjzZ7vftDVqi
         iAdgDEvBGZgJTL9HArso15ZKcg7RNowXICGilPT4I/QIVDjMUOIP5rb2BaVm/bconx4v
         tLFg2Wjt8kw59eXmvmyfSVfZlSd6gtTydOGpj4KzZRHQLvhPHuXAzxdMtWvPct0jNdWa
         LIDB/+aEzUFXbeoLfC4KVXq6hoB8fn+pTXQnCrA/6PBaiJ32x2vz8cM/2VimT3MDjv5E
         NXBQ==
X-Gm-Message-State: AOJu0Yzz+3l42c5mdsaeBMejdd9KHo+EBKXJXLOZaZ8MQf06VPAp06lk
	PKZ4pHoDMMOKMQ7LdRCNDAfcm3mr6xlXu1tncSdjCIqH/D6BYJ4cBtdvKdexRPcYo6k=
X-Gm-Gg: ASbGncvr9nRUBRVb/5U9tg1gBTzBnrLsIfJXv1qG+GaZdZgQq/CM80ULyNi6VeWh+Oa
	8wTnAq2T8WQVovHn4l+BWxxFILJIG7I2GOF6gZZlszIueu5iykuvx5GxK1CSfpIAYIwF34PUWw6
	hQzLqozT62YD+GU4fUTIX1pon5ARh0R3pAZfmdl1OEPUiodcN82m2y/u221oF31g8WKFVM8D3Zo
	tGbyLZImyulPRbQEm12Efof2s8FOlaocX7yUkvG8/5J42Qtuqf54ZB9it6GakCT7FPahD7qZcM0
	x6cSChfaU2uZFsQdR4okzlFeSKQjCz7ov099rb7ovNWD4PFUcyzEaqAKHVe+qeWx1wA1s4hyg+x
	6dwU7fIoTeR52cWXjJjHQYrkvl6jF6arEPWK4QhVIQY1Wum/AKtsTuEBue3C7vcwcpn3ArUGg35
	z9Dm2EO0tKoT+R/33tInjrdQ==
X-Google-Smtp-Source: AGHT+IFQeTKY4sW5xPwKJekSx5UPto2J8a08JXV7cfYp4pOZ2iobnw+lqJ4IrO6RHskdtg/6++UDAg==
X-Received: by 2002:a17:902:e5c3:b0:295:ed6:4625 with SMTP id d9443c01a7336-2984ee0459dmr58942605ad.47.1762998438873;
        Wed, 12 Nov 2025 17:47:18 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:18 -0800 (PST)
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
	Samuel Holland <samuel.holland@sifive.com>,
	Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: [PATCH v3 13/22] riscv: ptdump: Only show N and MT bits when enabled in the kernel
Date: Wed, 12 Nov 2025 17:45:26 -0800
Message-ID: <20251113014656.2605447-14-samuel.holland@sifive.com>
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

When the Svnapot or Svpbmt extension is not implemented, the
corresponding page table bits are reserved, and must be zero. There is
no need to show them in the ptdump output.

When the Kconfig option for an extension is disabled, we assume it is
not implemented. In that case, the kernel may provide a fallback
definition for the fields, like how _PAGE_MTMASK is defined on riscv32.
Using those fallback definitions in ptdump would produce incorrect
results. To avoid this, hide the fields from the ptdump output.

Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

(no changes since v1)

 arch/riscv/mm/ptdump.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/mm/ptdump.c b/arch/riscv/mm/ptdump.c
index 34299c2b231f..0dd6ee282953 100644
--- a/arch/riscv/mm/ptdump.c
+++ b/arch/riscv/mm/ptdump.c
@@ -134,11 +134,13 @@ struct prot_bits {
 
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
@@ -214,7 +216,7 @@ static void dump_prot(struct pg_state *st)
 		if (val) {
 			if (pte_bits[i].mask == _PAGE_SOFT)
 				sprintf(s, pte_bits[i].set, val >> 8);
-#ifdef CONFIG_64BIT
+#ifdef CONFIG_RISCV_ISA_SVPBMT
 			else if (pte_bits[i].mask == _PAGE_MTMASK_SVPBMT) {
 				if (val == _PAGE_NOCACHE_SVPBMT)
 					sprintf(s, pte_bits[i].set, "NC");
-- 
2.47.2


