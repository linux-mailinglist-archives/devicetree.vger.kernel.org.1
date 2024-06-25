Return-Path: <devicetree+bounces-79535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BBF915B2C
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 02:51:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB2891C21673
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 00:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50230D2FF;
	Tue, 25 Jun 2024 00:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RyEDMFlM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E741E1C6A8
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 00:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719276680; cv=none; b=hUwbFMU4RkxYg5Q8IJap/H4iDTYmg0NuQ7Vyi3I0UZCv53EonVxbWmGy6/3sfWv79zTfXuOtIyJCzp4Sg0/uCo6IV6/NdexsWuLewWa4uwbY5uiox072cwPMVGjyI2mQt3xMWmRmkW97uQJRzhz+jj6DBol5jte7yNYHULTzP2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719276680; c=relaxed/simple;
	bh=uDhoVZY0kYHVfH/6AeTUsFqVgvZHokebCnMm0q5MfbA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a5bOumwKTx2iGg+Y3w6iIXzOfrrpyl8hiAIWLf4qNpzCmg5BsTOw3H0IYmnB28pdHGXgUcvFpXLtKg+SW4wGT1vIedSRrBInRKSX6r98CtuekOX02a2Y8SF2CHAF1+v9ig4B/PvbR37NV3sIo0V5NX/AhOK7Im/EXWhqwy94eu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=RyEDMFlM; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1f9ffd24262so22663355ad.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 17:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719276678; x=1719881478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vbZ5afsJ9snzdZoHI92IYxp4PE+4CuBIhAjqET55SFU=;
        b=RyEDMFlM5KeFD1ntsoIqeGRrRKZiCO6JvsDZ0FSUf/2C0BYmKQ1TnWG2MVwQHU2ohJ
         RNrMaffofrc2gI1/el8mmUwMkkFcGnm8A53UHaYsfedkF++UNesauV2P1r/ajgc7FHVH
         ADgQWQ0N+Nd2N1ccroroQn19MDYGyXWiA6qZ4fyCCfsmxq3gkZayTbBn2eB/mta+i/v2
         fbNCY1AYWB3j4ULi2A5GHbH2zkbBCJvsDQUjnM/0s/BQn24ncueCVgglIw6DXPsa0Pqc
         LxjV3JQhFr6GzN4kpDYOIU94tVxa9/TzaithyY5xJLVnmePeUpdmpE1BcIJoSrc8okLd
         zRxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719276678; x=1719881478;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vbZ5afsJ9snzdZoHI92IYxp4PE+4CuBIhAjqET55SFU=;
        b=kP5bmInl2iKRd6CkGR22Ze016qhRlk2u3WGKY2pJW53AyrtTABP14oY0B/T/OqPoMz
         uBnFqCrqq0q3TEmxgrNz2e5GP0//RNUezLItSViWVaeyWM/mBKGdS3UpMg8yx66pHbh+
         JaX3zVDC3Iq3vLr6G/+fa8zMgOebwxkYygE3bbKxRKCmPMwETvT3GcSDxIMQt8Y9Q8l2
         fXjikoWH6USO5uwnvkWErNqbNQdjPDDnS4fDwSd7ZRUsnEOyaI7MJRxOscIlJ1WKsg04
         NVECrhSUIpKnlGlemNNong6PvCWv4oqlVIp4XQZxInkL4TPbyZTIa0BIM+yEnTgf8PRh
         J4ag==
X-Forwarded-Encrypted: i=1; AJvYcCX4ONGnUwb1TiRG4EbnugTW77G9RTAZr5FrxhZ7CwwiF+SxyYVajT+OUPBwnpxHoxXhF/AUvZMkS1KBOXhgSqzyCv5WwhTXzweytg==
X-Gm-Message-State: AOJu0Yzh7c4YWfH5t6y5SYup1o/rbI1QM0ENWQdzeEcud8XtyXnRn+uf
	cPsRoQvM/ohCHMuoUrNL6Wgl6pTqw8d8U89NvQ8aFCHP1lVkNtPX8ke/qWlNDQg=
X-Google-Smtp-Source: AGHT+IFrptaOTah+yZVkTRLhwy8L5y0nIsOmh0E3MizJhpkRcr8WQrdivG0Q840vHNP+HRAolE2fNA==
X-Received: by 2002:a17:902:cecc:b0:1f8:67e4:397f with SMTP id d9443c01a7336-1fa23f227b5mr66212145ad.7.1719276678136;
        Mon, 24 Jun 2024 17:51:18 -0700 (PDT)
Received: from jesse-desktop.. (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9ebbb2a7csm68150235ad.256.2024.06.24.17.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 17:51:17 -0700 (PDT)
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
	devicetree@vger.kernel.org
Subject: [PATCH v3 4/8] RISC-V: Check Zicclsm to set unaligned access speed
Date: Mon, 24 Jun 2024 20:49:57 -0400
Message-ID: <20240625005001.37901-5-jesse@rivosinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240625005001.37901-1-jesse@rivosinc.com>
References: <20240625005001.37901-1-jesse@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Check for Zicclsm before checking for unaligned access speed. This will
greatly reduce the boot up time as finding the access speed is no longer
necessary.

Signed-off-by: Jesse Taube <jesse@rivosinc.com>
---
V2 -> V3:
 - New patch split from previous patch
---
 arch/riscv/kernel/unaligned_access_speed.c | 26 ++++++++++++++--------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/kernel/unaligned_access_speed.c b/arch/riscv/kernel/unaligned_access_speed.c
index a9a6bcb02acf..329fd289b5c8 100644
--- a/arch/riscv/kernel/unaligned_access_speed.c
+++ b/arch/riscv/kernel/unaligned_access_speed.c
@@ -259,23 +259,31 @@ static int check_unaligned_access_speed_all_cpus(void)
 	kfree(bufs);
 	return 0;
 }
+#else /* CONFIG_RISCV_PROBE_UNALIGNED_ACCESS */
+static int check_unaligned_access_speed_all_cpus(void)
+{
+	return 0;
+}
+#endif
 
 static int check_unaligned_access_all_cpus(void)
 {
-	bool all_cpus_emulated = check_unaligned_access_emulated_all_cpus();
+	bool all_cpus_emulated;
+	int cpu;
+
+	if (riscv_has_extension_unlikely(RISCV_ISA_EXT_ZICCLSM)) {
+		for_each_online_cpu(cpu) {
+			per_cpu(misaligned_access_speed, cpu) = RISCV_HWPROBE_MISALIGNED_FAST;
+		}
+		return 0;
+	}
+
+	all_cpus_emulated = check_unaligned_access_emulated_all_cpus();
 
 	if (!all_cpus_emulated)
 		return check_unaligned_access_speed_all_cpus();
 
 	return 0;
 }
-#else /* CONFIG_RISCV_PROBE_UNALIGNED_ACCESS */
-static int check_unaligned_access_all_cpus(void)
-{
-	check_unaligned_access_emulated_all_cpus();
-
-	return 0;
-}
-#endif
 
 arch_initcall(check_unaligned_access_all_cpus);
-- 
2.45.2


