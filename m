Return-Path: <devicetree+bounces-94970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D801595767F
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 23:26:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 933CB28655D
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 21:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA821DD392;
	Mon, 19 Aug 2024 21:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="IUxwwOtR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D100E1DC490
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 21:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724102782; cv=none; b=ViJopFV+J/gl/8zEnhcWgMY98luWBNJEYMpuFauV5/0gCB8oH1LySliX1r3HCfYTmAM/OCNWjcsEW/0lC4QzRXUe6nb5g+S8bnNaJunZTjVLUOCVizqVN/e2I7ir96CK4ZWw9i4SjjwHaWoGF5TIqVR8zRcc0karfAwwxibtnfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724102782; c=relaxed/simple;
	bh=ZjjXLL2h3nQa1iF2xCbCAo6XadTLhKILJHfe3z4Z3jU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rkOdcVx5MkiLuXGSbjnaKvza5nKwBIsfbGxpu8HdmM+p2LBwubu3qCKpXIk65Rk3ozlCp7tcGoxMKFxi8Cg9afBDCd61r4HPDmMrK/a6jdgYq+H/pLFyxTyvgRSeJmFQTqZcU38jmplt6RPX6vLlEVTTL7/QhU86AZz2p9/3GRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=IUxwwOtR; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3db504ab5f3so2585293b6e.0
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 14:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1724102780; x=1724707580; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TztiC5/1gr619POh5DAGrJTvEg+G+L5Qf1B2P2doR1Y=;
        b=IUxwwOtRzmcF3iixIJpOa529fyOMrhasr5/AgPVJZ4Cs0tE9Udo/n41qkVwm8bHw1g
         9E1zqPwxIWLv2rVHXNZslxTbBFn8kSUlWtUH+vGN4ZtZqx3WOW+0h2wIjUAKAVttyPMR
         YH1oGJdZ26jVRavMvWgd51fXxpqSxBSw+HNqAcgThqBLDc6OuLW1LAl/vavELi/Dqe9w
         uNJLxFQZbQNa4/akFClWmqdI0pXkprYUkLXqs6p7EDrhtuznIsOT2pi/pCIf+NkCVJvy
         hCeV3DNk5z1s07pwmHAfhJw5KYogJMuTmu5BwfkqP4G+hXn6UIJxwjhCrMZJ0OIDaC5L
         lcrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724102780; x=1724707580;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TztiC5/1gr619POh5DAGrJTvEg+G+L5Qf1B2P2doR1Y=;
        b=QGFoDWoWJyIecYufyvzxCFS1LGA5F8gYz0VyHIal4gRkh5QI0vTWBYrq1kBsSQqfl5
         6nmd9W7qkN+Eb8wl44xXDPZThrOfvXcy/kKUvuoUhAl8TTWCPvsaB9KHhrQGg75TZRz2
         nbZRvJxiGk45PNSWpY0jOvfUOsHAji8ddfrwypOHSLqdXLWx5ydsKTuPWcb41xXXaFme
         X13fWjhyaOhg/B0AfJJKVSIIlmIqlzBTG46RnySpH3PGHAR8q9AhYE3KPk6CuKDD9mIg
         08Pexlu2HGqJ1u8ZncTne6DYoTpC/ZqphP3iSYALyqXcPDGkQSagjUhZIB1jqjNpM9EX
         E0OQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPz9cQ0c2WbdI0m+tbHR6LhfcqAvjfNleqPwt5PS4OqV7aZFDlw1GvE/UdDe3Ckff0vhyrnPkDAFxaS6OvPtMvgFp6walvVqjdFQ==
X-Gm-Message-State: AOJu0YwF9scwrpLg1ZS/ngWuOywAgJTX8xwk8rV+drSwTomB4vLJ2GiJ
	V8w0zCGuhxca1quCzL0tCfUwwU33LvZK3K0RSRfHcwPD0v1DfxMDc1Z/DZIZetM=
X-Google-Smtp-Source: AGHT+IF5Ka5oo/Vsh95TOhJMsuxd1ErCS0kjAYsG9ayHXx5iEO+Eih/UfW0kpteVOEYBtV7XpNogrQ==
X-Received: by 2002:a05:6808:2e88:b0:3db:3102:adc6 with SMTP id 5614622812f47-3dd3ae1ec10mr15635770b6e.41.1724102779911;
        Mon, 19 Aug 2024 14:26:19 -0700 (PDT)
Received: from jesse-desktop.ba.rivosinc.com (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c6b61e7bd1sm7004694a12.53.2024.08.19.14.26.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 14:26:19 -0700 (PDT)
From: Jesse Taube <jesse@rivosinc.com>
To: linux-riscv@lists.infradead.org
Cc: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Evan Green <evan@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Jesse Taube <jesse@rivosinc.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Xiao Wang <xiao.w.wang@intel.com>,
	Andy Chiu <andy.chiu@sifive.com>,
	Eric Biggers <ebiggers@google.com>,
	Greentime Hu <greentime.hu@sifive.com>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@rivosinc.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Costa Shulyupin <costa.shul@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>,
	Anup Patel <apatel@ventanamicro.com>,
	Zong Li <zong.li@sifive.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ben Dooks <ben.dooks@codethink.co.uk>,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Erick Archer <erick.archer@gmx.com>,
	Joel Granados <j.granados@samsung.com>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH v8 2/6] RISC-V: Scalar unaligned access emulated on hotplug CPUs
Date: Mon, 19 Aug 2024 17:26:01 -0400
Message-ID: <20240819212605.1837175-3-jesse@rivosinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240819212605.1837175-1-jesse@rivosinc.com>
References: <20240819212605.1837175-1-jesse@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The check_unaligned_access_emulated() function should have been called
during CPU hotplug to ensure that if all CPUs had emulated unaligned
accesses, the new CPU also does.

This patch adds the call to check_unaligned_access_emulated() in
the hotplug path.

Fixes: 55e0bf49a0d0 ("RISC-V: Probe misaligned access speed in parallel")
Signed-off-by: Jesse Taube <jesse@rivosinc.com>
Reviewed-by: Evan Green <evan@rivosinc.com>
Cc: stable@vger.kernel.org
---
V5 -> V6:
 - New patch
V6 -> V7:
 - No changes
V7 -> V8:
 - Rebase onto fixes
---
 arch/riscv/kernel/unaligned_access_speed.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/kernel/unaligned_access_speed.c b/arch/riscv/kernel/unaligned_access_speed.c
index 160628a2116d..f3508cc54f91 100644
--- a/arch/riscv/kernel/unaligned_access_speed.c
+++ b/arch/riscv/kernel/unaligned_access_speed.c
@@ -191,6 +191,7 @@ static int riscv_online_cpu(unsigned int cpu)
 	if (per_cpu(misaligned_access_speed, cpu) != RISCV_HWPROBE_MISALIGNED_SCALAR_UNKNOWN)
 		goto exit;
 
+	check_unaligned_access_emulated(NULL);
 	buf = alloc_pages(GFP_KERNEL, MISALIGNED_BUFFER_ORDER);
 	if (!buf) {
 		pr_warn("Allocation failure, not measuring misaligned performance\n");
-- 
2.45.2


