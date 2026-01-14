Return-Path: <devicetree+bounces-255272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 130FBD21BEE
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 00:20:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A36BB3051F96
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45FBF392C47;
	Wed, 14 Jan 2026 23:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="tJklGa3D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F6C38170C
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768432791; cv=none; b=VtjcMLcqrl692996AvgEw9bRbxo7bg1sPIEp4on2w9Avo8Qv/R5XsW2cB027X9Zc/l8UUvb/6m/u5gkpD4Y/pCYOP0ZePou9+rnyPGrslZlIfey7BGmsUnWBaUooCLHh5NrE4F8X0De41rANnlnIkVyK2a2rsU/Ok6XMx4G64Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768432791; c=relaxed/simple;
	bh=GRHGbaEYkH2p07zeMPE0HCGLxwMkACKAV9BrwqSf0AQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oRNdq9zQekSFOeoa5IbLt1yBu28SjhILDxiopbmy9Q8zB/BewiwhYsrUbySg96d7H3k3gzdaLgFL+NEHiKtu5QPKJ1X8tgVVUh9Mm3z8WZIWslLSj50xW3hKAH+ohn6saX/t3E81xcXdcgk5QzeB6REaVeEy9UAo3pJt7LsyOYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=tJklGa3D; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a0d6f647e2so3656275ad.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:19:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768432770; x=1769037570; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fBQmYJu+bnNuEEfQl+C2DO8NqnbkFmiGMm0xwrIIJJA=;
        b=tJklGa3DbHNMQ567kdiRDa7ClAjbKsio4/H77J5vIdjqmYTj0j0MhV0OlEsOWhIrfe
         +HdOncNfCojF5pJPN+Uh9denUrUMfwUvb6PDhgM20tnRVZMCb9IlDIUKvgA0CGSVm4zd
         dIvQFxzB34HTEqW5X1QsA/P3zs4CFaHm+yhOA7sv89uPeIu6oA3mt/1WbCc6x3XoezD7
         5w2mTSWHHyzytFIXiL99qxuVeBF2WCI1CWTpI1bJ25CYQY/NnJmSpmRSmvZrbHCdvMJQ
         bKJcTNH2Ck/acdT5Hu60g0ahKlKC0NMNBqZ484E0z3V4zJJLKVaBbt6AaKiACBDPT4DK
         xiPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768432770; x=1769037570;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fBQmYJu+bnNuEEfQl+C2DO8NqnbkFmiGMm0xwrIIJJA=;
        b=HpaWnWUfE4Dmhxum8Nh0X1CyNpmt+e+T7ebTj6XwwuTrWnde6LaGcZ1VFLGKAOhexd
         OZ7CTg8n1CCeP2WQWFFR634/aNI1tJWd6H2w+h1uSpJnS/Hbw060O+24gOqrJmMVo1/g
         ZVOZQ2FfUaTjr8wvG67dqWZr320BKXyNLSLZc/cx0es2b9r3iBMvG7keKSAyu2I1lMVE
         pFGMvZutzgLVytfxXPf6axVRQ8y5OPtUopgQTQELyyXIzNU3kfSgFQMFJMMY6X3p57Qj
         m0s0zF825DbeZvi1jCcYZDK3fKT8SIKRoqq6/ethUJgxFN9ooMURZhu6K/rsHui0pvnL
         EyUQ==
X-Forwarded-Encrypted: i=1; AJvYcCU16nnRvmM6/Wx0faqkPwSwdV77G76jyYymEAFjjAvhBF74LN0IOk0LEJnUBMmKLmYjsxpsmnmBbdNz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7iJjpE/aqeWJk91WdoWxlRRZ2wyYmr8PGEkuqmacRgyWJc3Lh
	SMqgb2TUiQyl3Pk7DipbfAGoWf1HM2MLrBThi4zFDiXNcmzF0L8Pu/gTSFhXl6GoVtk=
X-Gm-Gg: AY/fxX6Xfc61C3RrtOGr2PrniChsESHU0P0gh1tV3XI/XjsieYkTkMgUYXzIgWl9lj9
	uwOFoLyD4bAjThYSbshpmZpFCh2LQFpylC4Mlogh92ZGJJzePpfLuPtTO+oqHaiAJMTuDvFyJCJ
	IWY8UTDTdFFfJNBztmysyBrRMC+PKHJGUzBsHWEA82cvgbWXRprhp6M4fxrr37XilryVeXrsX72
	iBC/I1dqOwcgx0cKblFYcFPqM3gnsEkto9+B/Rr0eSadM8cbt1b7cHVkHqHxMShD44eCAU20vkH
	+HhigXl6Yl8tk2b6V89cZkWj7GPA+gOFUYk3B/fD4lmz+Elr5G5NT1HKzFrgwH7gJl24XLpROaL
	O2qJxENrBEfnUBLG9fR/t07OICsLff5XyAfs+yuXTAWeQtitJAZSQ2/GwckE/GA8mBwoH9lMzQ9
	WnK7/9jaUXDvMt32i40TI066qltH0jVuHesNth37hjy/kP+ysP9A/hbg==
X-Received: by 2002:a17:902:ea08:b0:298:344:1229 with SMTP id d9443c01a7336-2a599e75d6dmr42928975ad.55.1768432769725;
        Wed, 14 Jan 2026 15:19:29 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2d6csm238591755ad.64.2026.01.14.15.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 15:19:29 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 15 Jan 2026 07:18:59 +0800
Subject: [PATCH v2 3/4] riscv: dts: sophgo: sg2044: Add "b" ISA extension
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-adding-b-dtsi-v2-3-254dd61cf947@riscstar.com>
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

Update sg2044-cpus.dtsi to conform to this rule.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: New patch, a split from the Patch 2 in v1. This patch is for
    Sophgo sg2044.
---
 arch/riscv/boot/dts/sophgo/sg2044-cpus.dtsi | 256 ++++++++++++++--------------
 1 file changed, 128 insertions(+), 128 deletions(-)

diff --git a/arch/riscv/boot/dts/sophgo/sg2044-cpus.dtsi b/arch/riscv/boot/dts/sophgo/sg2044-cpus.dtsi
index 523799a1a8b8..3135409c2149 100644
--- a/arch/riscv/boot/dts/sophgo/sg2044-cpus.dtsi
+++ b/arch/riscv/boot/dts/sophgo/sg2044-cpus.dtsi
@@ -24,10 +24,10 @@ cpu0: cpu@0 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache0>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -60,10 +60,10 @@ cpu1: cpu@1 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache0>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -96,10 +96,10 @@ cpu2: cpu@2 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache0>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -132,10 +132,10 @@ cpu3: cpu@3 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache0>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -168,10 +168,10 @@ cpu4: cpu@4 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache1>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -204,10 +204,10 @@ cpu5: cpu@5 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache1>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -240,10 +240,10 @@ cpu6: cpu@6 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache1>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -276,10 +276,10 @@ cpu7: cpu@7 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache1>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -312,10 +312,10 @@ cpu8: cpu@8 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache2>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -348,10 +348,10 @@ cpu9: cpu@9 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache2>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -384,10 +384,10 @@ cpu10: cpu@10 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache2>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -420,10 +420,10 @@ cpu11: cpu@11 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache2>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -456,10 +456,10 @@ cpu12: cpu@12 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache3>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -492,10 +492,10 @@ cpu13: cpu@13 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache3>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -528,10 +528,10 @@ cpu14: cpu@14 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache3>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -564,10 +564,10 @@ cpu15: cpu@15 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache3>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -600,10 +600,10 @@ cpu16: cpu@16 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache4>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -636,10 +636,10 @@ cpu17: cpu@17 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache4>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -672,10 +672,10 @@ cpu18: cpu@18 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache4>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -708,10 +708,10 @@ cpu19: cpu@19 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache4>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -744,10 +744,10 @@ cpu20: cpu@20 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache5>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -780,10 +780,10 @@ cpu21: cpu@21 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache5>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -816,10 +816,10 @@ cpu22: cpu@22 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache5>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -852,10 +852,10 @@ cpu23: cpu@23 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache5>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -888,10 +888,10 @@ cpu24: cpu@24 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache6>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -924,10 +924,10 @@ cpu25: cpu@25 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache6>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -960,10 +960,10 @@ cpu26: cpu@26 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache6>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -996,10 +996,10 @@ cpu27: cpu@27 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache6>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1032,10 +1032,10 @@ cpu28: cpu@28 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache7>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1068,10 +1068,10 @@ cpu29: cpu@29 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache7>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1104,10 +1104,10 @@ cpu30: cpu@30 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache7>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1140,10 +1140,10 @@ cpu31: cpu@31 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache7>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1176,10 +1176,10 @@ cpu32: cpu@32 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache8>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1212,10 +1212,10 @@ cpu33: cpu@33 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache8>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1248,10 +1248,10 @@ cpu34: cpu@34 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache8>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1284,10 +1284,10 @@ cpu35: cpu@35 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache8>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1320,10 +1320,10 @@ cpu36: cpu@36 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache9>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1356,10 +1356,10 @@ cpu37: cpu@37 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache9>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1392,10 +1392,10 @@ cpu38: cpu@38 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache9>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1428,10 +1428,10 @@ cpu39: cpu@39 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache9>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1464,10 +1464,10 @@ cpu40: cpu@40 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache10>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1500,10 +1500,10 @@ cpu41: cpu@41 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache10>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1536,10 +1536,10 @@ cpu42: cpu@42 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache10>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1572,10 +1572,10 @@ cpu43: cpu@43 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache10>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1608,10 +1608,10 @@ cpu44: cpu@44 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache11>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1644,10 +1644,10 @@ cpu45: cpu@45 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache11>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1680,10 +1680,10 @@ cpu46: cpu@46 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache11>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1716,10 +1716,10 @@ cpu47: cpu@47 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache11>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1752,10 +1752,10 @@ cpu48: cpu@48 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache12>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1788,10 +1788,10 @@ cpu49: cpu@49 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache12>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1824,10 +1824,10 @@ cpu50: cpu@50 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache12>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1860,10 +1860,10 @@ cpu51: cpu@51 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache12>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1896,10 +1896,10 @@ cpu52: cpu@52 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache13>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1932,10 +1932,10 @@ cpu53: cpu@53 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache13>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -1968,10 +1968,10 @@ cpu54: cpu@54 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache13>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -2004,10 +2004,10 @@ cpu55: cpu@55 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache13>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -2040,10 +2040,10 @@ cpu56: cpu@56 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache14>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -2076,10 +2076,10 @@ cpu57: cpu@57 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache14>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -2112,10 +2112,10 @@ cpu58: cpu@58 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache14>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -2148,10 +2148,10 @@ cpu59: cpu@59 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache14>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -2184,10 +2184,10 @@ cpu60: cpu@60 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache15>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -2220,10 +2220,10 @@ cpu61: cpu@61 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache15>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -2256,10 +2256,10 @@ cpu62: cpu@62 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache15>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",
@@ -2292,10 +2292,10 @@ cpu63: cpu@63 {
 			device_type = "cpu";
 			mmu-type = "riscv,sv48";
 			next-level-cache = <&l2_cache15>;
-			riscv,isa = "rv64imafdcv";
+			riscv,isa = "rv64imafdcbv";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "v", "sscofpmf", "sstc",
+					       "b", "v", "sscofpmf", "sstc",
 					       "svinval", "svnapot", "svpbmt",
 					       "zawrs", "zba", "zbb", "zbc",
 					       "zbs", "zca", "zcb", "zcd",

-- 
2.43.0


