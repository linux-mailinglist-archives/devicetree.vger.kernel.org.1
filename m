Return-Path: <devicetree+bounces-255273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6612CD21BEB
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 00:20:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EDB48301BB37
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E08202FC006;
	Wed, 14 Jan 2026 23:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="0GlbqU3i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D107A392C3A
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768432803; cv=none; b=UedjXXWzmtZ6JZkwgYF40u7BpJTyBMq6ye4X/iSJ9/zkKaHv9rMkvey33MNWjoucrQFqDpLetp6FVUYId+BbzcW+uExTNo65pC+yw9oZmUGYN4yPd1DZV59Y9usYCNmV9SJArtg3llu1fhujr4CQ6m6RYOsNNpmDlH7/b77giew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768432803; c=relaxed/simple;
	bh=ZZM1QP+Et5t76bj+vYFHGRMpEEDgGnkMgqGYAJgMERs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YQ6iThiJXvmmDrDr+ekFnyqEl0bO0o/yMy0RkUR2v3ee8POfjhoykMwxl0InnbhpxFirG523Mqm/pxCk8YAP2U+FZBipVUZIPnCTDGjKhTCayaDO16352mMdfg+HBelI0Kjk9yssFwFmqeTysDiDmSqdSE+67bF7ToYB3neHxew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=0GlbqU3i; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-29f102b013fso3660155ad.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768432776; x=1769037576; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hH2fdyuJzA/r4nCwD9bqyqAYCMVx76+tEK4L4ktZ6KE=;
        b=0GlbqU3i6/urYfEOtAhVXRZSG1HtAXRzxpksTdwURxoJ4KLuf3RTB4UURLYACAJRDv
         HFslMtkTnx669+J9EViKBMyYLnCYNwOvqiOcbyXkB2Gz+RPZlzuXUs/aO10CDoVHLUxe
         UOHzNXk8Dkg/bLmoxkFh0amLsQEz4icnGQlJCt01GVgkP3EDDqUSqhqUCvqPCwPIT6pZ
         NLa7HnilDknD3BEkxVOWWsB3BQN2A8M0XGuEAtvkiAavClFyiN70k2G3Kdpp3lSDZHi/
         B1FjeLxAdsSYqV3Nn6t79cMAQVu6X9wilJPme8YTTPKMVLuwoDStOijlcEJxYDFUGTgo
         J1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768432776; x=1769037576;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hH2fdyuJzA/r4nCwD9bqyqAYCMVx76+tEK4L4ktZ6KE=;
        b=HLZ8SkbKdZQ58UPud3S1RWGDG8QFDeQqQQVpmyl+HDE87Dji01kX3c5cSrRRUsvZAS
         wzV8cS506lDTG2vIoq6pRcr70k1PARb0MwGUfuR/S51vnXHmYEiiokirmcbLoHYlR+LM
         bSK8PhUKyyFNoA1nxe3oeNMvIzlGvIcBkMcHXFcb94VapUm4TCU6xZCIdSS8QdJxLJke
         VAe2ZfVap6i1YTXBgfGd6wTyEy5qvlqc90zHD50R+HyBPqWJkC0ftWEoeEaGqTm9Czx3
         ptYtJS9IL/JsYjc7VJ8KxvL88EbG+YiArsPfupgTMCHG52JuJuh04PEpWCJ3RPUIX+wu
         AuaQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0BpGZTMkwOIQEa5lhBXvx6URwJcZkDUX7i3AiS08K0EsDy4NY5gv68vD6/GbuaCN+kmlqMGAjiOU7@vger.kernel.org
X-Gm-Message-State: AOJu0YxHLkgvSEe5h8t7o05XabEUOtOacOKv6OslfU5qQhzvEHA21mnD
	g8E+dPysN4VOLHCmYRUxWkom4yRzr3KVCC0rqatWhI4yLnDtPZ+NevyoP6tJzTQ4VMI=
X-Gm-Gg: AY/fxX6nkL9eKwP5Fb/3qwUseze335KSjYxJInaS3dD9yGpReURSqYXzoIZfbPEfIfc
	rOPZ+iCcDnZdPTQr3pTcn03Vj38SE6SR7U58uX5pj06/4BFU17dLgi1jr9aK/bBLwqXULhdS3kR
	g5T58c+99Q2Z4jYL+9TNahFBdQFiobzfCgEObMlT/Nsq9TiueTwVE2Go//SlK0+tGcmSEp32+Y9
	PLwaOv+Z08eNDitIwu6p1iZOMcmlY+DxL87mlayPcebLdx56yEx0obDXkkpf28+hNAfL3+cPYXG
	HQ9aggavljjrjjdtvjkrOVsqLA4FdcZMnRYg9R2ASeXnj28oKzT0f/94rh6Wiw2UZGeZ2gPK2Zj
	zdZEbRkzicXGyREMETDFnkQ7OnLFyj/sbPLA2HfAmkgzJaibl5EVXD/oCKf5vIEQGTPzq7SLp/9
	OJp7S8/wkNwp1SIJYtcTtQ8sQRilGorOvaMoJZ1ZQFlq7z2d7jK+ZA8Q==
X-Received: by 2002:a17:902:f68e:b0:295:543a:f7e3 with SMTP id d9443c01a7336-2a599dbf680mr41755545ad.27.1768432776367;
        Wed, 14 Jan 2026 15:19:36 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2d6csm238591755ad.64.2026.01.14.15.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 15:19:36 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 15 Jan 2026 07:19:00 +0800
Subject: [PATCH v2 4/4] riscv: dts: spacemit: k1: Add "b" ISA extension
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-adding-b-dtsi-v2-4-254dd61cf947@riscstar.com>
References: <20260115-adding-b-dtsi-v2-0-254dd61cf947@riscstar.com>
In-Reply-To: <20260115-adding-b-dtsi-v2-0-254dd61cf947@riscstar.com>
To: Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Conor Dooley <conor.dooley@microchip.com>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
 Yixun Lan <dlan@gentoo.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Junhui Liu <junhui.liu@pigmoral.tech>, linux-doc@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3

"b" is ratified (Apr/2024) much later than its components zba/zbb/zbs
(Jun/2021). With "b" added into riscv/extensions.yaml, a dependency
checking rule is now enforced, which requires that when zba, zbb, and zbs
are all specified, "b" must be added as well. Failing to do this will
cause dtbs_check schema check warnings.

According to uabi.rst, as a single-letter extension, "b" should be added
after "c" in canonical order.

Update k1.dtsi to conform to this rule.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: New patch, a split from the Patch 2 in v1. This patch is for
    Spacemit K1.
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 4c045da95d72..2917b315728f 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -54,9 +54,9 @@ cpu_0: cpu@0 {
 			compatible = "spacemit,x60", "riscv";
 			device_type = "cpu";
 			reg = <0>;
-			riscv,isa = "rv64imafdcv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
+			riscv,isa = "rv64imafdcbv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "v", "zicbom",
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "b", "v", "zicbom",
 					       "zicbop", "zicboz", "zicntr", "zicond", "zicsr",
 					       "zifencei", "zihintpause", "zihpm", "zfh", "zba",
 					       "zbb", "zbc", "zbs", "zkt", "zvfh", "zvkt",
@@ -84,9 +84,9 @@ cpu_1: cpu@1 {
 			compatible = "spacemit,x60", "riscv";
 			device_type = "cpu";
 			reg = <1>;
-			riscv,isa = "rv64imafdcv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
+			riscv,isa = "rv64imafdcbv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "v", "zicbom",
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "b", "v", "zicbom",
 					       "zicbop", "zicboz", "zicntr", "zicond", "zicsr",
 					       "zifencei", "zihintpause", "zihpm", "zfh", "zba",
 					       "zbb", "zbc", "zbs", "zkt", "zvfh", "zvkt",
@@ -114,9 +114,9 @@ cpu_2: cpu@2 {
 			compatible = "spacemit,x60", "riscv";
 			device_type = "cpu";
 			reg = <2>;
-			riscv,isa = "rv64imafdcv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
+			riscv,isa = "rv64imafdcbv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "v", "zicbom",
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "b", "v", "zicbom",
 					       "zicbop", "zicboz", "zicntr", "zicond", "zicsr",
 					       "zifencei", "zihintpause", "zihpm", "zfh", "zba",
 					       "zbb", "zbc", "zbs", "zkt", "zvfh", "zvkt",
@@ -144,9 +144,9 @@ cpu_3: cpu@3 {
 			compatible = "spacemit,x60", "riscv";
 			device_type = "cpu";
 			reg = <3>;
-			riscv,isa = "rv64imafdcv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
+			riscv,isa = "rv64imafdcbv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "v", "zicbom",
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "b", "v", "zicbom",
 					       "zicbop", "zicboz", "zicntr", "zicond", "zicsr",
 					       "zifencei", "zihintpause", "zihpm", "zfh", "zba",
 					       "zbb", "zbc", "zbs", "zkt", "zvfh", "zvkt",
@@ -174,9 +174,9 @@ cpu_4: cpu@4 {
 			compatible = "spacemit,x60", "riscv";
 			device_type = "cpu";
 			reg = <4>;
-			riscv,isa = "rv64imafdcv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
+			riscv,isa = "rv64imafdcbv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "v", "zicbom",
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "b", "v", "zicbom",
 					       "zicbop", "zicboz", "zicntr", "zicond", "zicsr",
 					       "zifencei", "zihintpause", "zihpm", "zfh", "zba",
 					       "zbb", "zbc", "zbs", "zkt", "zvfh", "zvkt",
@@ -204,9 +204,9 @@ cpu_5: cpu@5 {
 			compatible = "spacemit,x60", "riscv";
 			device_type = "cpu";
 			reg = <5>;
-			riscv,isa = "rv64imafdcv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
+			riscv,isa = "rv64imafdcbv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "v", "zicbom",
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "b", "v", "zicbom",
 					       "zicbop", "zicboz", "zicntr", "zicond", "zicsr",
 					       "zifencei", "zihintpause", "zihpm", "zfh", "zba",
 					       "zbb", "zbc", "zbs", "zkt", "zvfh", "zvkt",
@@ -234,9 +234,9 @@ cpu_6: cpu@6 {
 			compatible = "spacemit,x60", "riscv";
 			device_type = "cpu";
 			reg = <6>;
-			riscv,isa = "rv64imafdcv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
+			riscv,isa = "rv64imafdcbv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "v", "zicbom",
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "b", "v", "zicbom",
 					       "zicbop", "zicboz", "zicntr", "zicond", "zicsr",
 					       "zifencei", "zihintpause", "zihpm", "zfh", "zba",
 					       "zbb", "zbc", "zbs", "zkt", "zvfh", "zvkt",
@@ -264,9 +264,9 @@ cpu_7: cpu@7 {
 			compatible = "spacemit,x60", "riscv";
 			device_type = "cpu";
 			reg = <7>;
-			riscv,isa = "rv64imafdcv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
+			riscv,isa = "rv64imafdcbv_zicbom_zicbop_zicboz_zicntr_zicond_zicsr_zifencei_zihintpause_zihpm_zfh_zba_zbb_zbc_zbs_zkt_zvfh_zvkt_sscofpmf_sstc_svinval_svnapot_svpbmt";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "v", "zicbom",
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "b", "v", "zicbom",
 					       "zicbop", "zicboz", "zicntr", "zicond", "zicsr",
 					       "zifencei", "zihintpause", "zihpm", "zfh", "zba",
 					       "zbb", "zbc", "zbs", "zkt", "zvfh", "zvkt",

-- 
2.43.0


