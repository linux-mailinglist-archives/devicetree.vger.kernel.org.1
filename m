Return-Path: <devicetree+bounces-63663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF6D8B5D20
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 17:16:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C30F1C217DB
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 15:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9625130A49;
	Mon, 29 Apr 2024 15:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="S528nEJJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E5D130A44
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 15:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714403205; cv=none; b=IksKXQn+/k3cUNb13we1rSL7Rb5ZQE6+Jp1Yyh0thr8QGM/t7cZR47RgBMNLg7091R8XzINVIkz6hSxxUG6VgNGye4sWwod36GHO5t2lYNwC3ZeYhAIGoYfqY3cSN4MsoExw+UHWRWDxdie+5ZP8jPYmCygHWMOVy+gvGi1hfnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714403205; c=relaxed/simple;
	bh=awZzvOfeihP/zQBwulZo2fkHpvheuFzo9+sGOB1HlhQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ce7mT6RjuxVEBOgxMLwsG9ZO3NokFzKpEQS/3UhR5U6SW5EnPw4SnrsGC5QRNEsNdWZfLRfZrcRNdEMVmgv5rJiRfRJVbhTQjRGaO2AO4794Zgel54gdKq/161KhvwwdeGQEhDWzd8cL9vaBI8iW8b7LXWywnMgWSaKBjkcoSfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=S528nEJJ; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2de14227d91so507831fa.2
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 08:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714403202; x=1715008002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cQHXVYsUJGkXAyoSx2aDU2oA4c+tlzZFdLvDimlX5cw=;
        b=S528nEJJuVc/ifgNZ4CM3gYn0p5kQA7gZNENBrsSghE92Sj26A/1SSBJBqVhtZNeh/
         J9lEvaCTBbiXiGF4DxPLgU6bCabt/3ngfL7EJ2oAvRgMEEjulbAnuFvkVXtM3e3H1yAr
         gGMPtgjlfzCmST+gYzBzL7rGQQEj3KhLzLKpX60bQnC7XeK3SOQm4KKxIsSz0XckQd1K
         YZ4CFJvwik/xtvoz73aMdsEtUgljll5/qA95DYD+y/9ObG2GufT7Awxbi3S6/2cUR5ey
         tV6hfECq9+cEUGBo8QnNQyMGssrqnITCBFuVI0F69YZdsFFqwsQW+fc19lMke4SQdTB7
         XcHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714403202; x=1715008002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cQHXVYsUJGkXAyoSx2aDU2oA4c+tlzZFdLvDimlX5cw=;
        b=cRrR2JkvzIN7MvaBKTUzOygN1xppPQ2yUOhQYmREA0eUnEHfhKFkmXVuVlVzz1fgX4
         vYGWz4yVRrjwAaC4oPNx3IRxKwRBmAYMa6BUd7uqeRzmQPIkwq97D1BqMhpfQ1koW1fa
         P/8BOzujtKat5vAnzf1TCHFG5u8VI0QSRNsQeBR3WZjZSzyhwpcznL7blb4HKm4++zza
         yscWPwnUb90EMwt74aaIBoPssmMBWkRoodU8KZLgEy8b2QB9JzuadjDPQ21c2Qf8iQYk
         +8xmOmDd+oeMtBkdN0vFBBFV3JlikcDPocMfeWA78giFMNj67PzLxHojMFw5cmvJLhlb
         lGmA==
X-Forwarded-Encrypted: i=1; AJvYcCUVuWELjouzhs0tLUIuq0BqEQt3oE1R/rTa+2MiT6mU1nm5KAx7n13rjY6+7ZYvgzxs3WmMtmTQBFPaC8zU7wWFuYl15u5UhFrh3w==
X-Gm-Message-State: AOJu0YzRlI0/D9GSooscIuZil8S3gYuMUsuTL5x3YRMAUnnUgHEuBiXc
	YgltzBdoZcZC0a1m0jkvxj0ygyDl5pr+HeE+PTpuUiSBTTQv00yWPIewgEdxYZ0=
X-Google-Smtp-Source: AGHT+IF5Vs0aqFA3oJjuIMNqrstrULWJr97uvIHCvJJ63TtvRmaJzQ2/6ase4AtbajSIDHGGP4F5Fw==
X-Received: by 2002:a2e:9ad4:0:b0:2de:1457:9d22 with SMTP id p20-20020a2e9ad4000000b002de14579d22mr7307292ljj.0.1714403200338;
        Mon, 29 Apr 2024 08:06:40 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:2fec:d20:2b60:e334])
        by smtp.gmail.com with ESMTPSA id l23-20020a05600c1d1700b00418f99170f2sm39646638wms.32.2024.04.29.08.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 08:06:40 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Shuah Khan <shuah@kernel.org>
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Atish Patra <atishp@atishpatra.org>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org
Subject: [PATCH v4 08/11] riscv: add ISA extension parsing for Zcmop
Date: Mon, 29 Apr 2024 17:05:01 +0200
Message-ID: <20240429150553.625165-9-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240429150553.625165-1-cleger@rivosinc.com>
References: <20240429150553.625165-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add parsing for Zcmop ISA extension which was ratified in commit
b854a709c00 ("Zcmop is ratified/1.0") of the riscv-isa-manual.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index b7551bad341b..cff7660de268 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -86,6 +86,7 @@
 #define RISCV_ISA_EXT_ZCB		77
 #define RISCV_ISA_EXT_ZCD		78
 #define RISCV_ISA_EXT_ZCF		79
+#define RISCV_ISA_EXT_ZCMOP		80
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index c74bdb9c0a9f..acd745bbf41f 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -315,6 +315,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA_VALIDATE(zcb, RISCV_ISA_EXT_ZCB, riscv_ext_zca_depends),
 	__RISCV_ISA_EXT_DATA_VALIDATE(zcd, RISCV_ISA_EXT_ZCD, riscv_ext_zcd_validate),
 	__RISCV_ISA_EXT_DATA_VALIDATE(zcf, RISCV_ISA_EXT_ZCF, riscv_ext_zcf_validate),
+	__RISCV_ISA_EXT_DATA_VALIDATE(zcmop, RISCV_ISA_EXT_ZCMOP, riscv_ext_zca_depends),
 	__RISCV_ISA_EXT_DATA(zba, RISCV_ISA_EXT_ZBA),
 	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
 	__RISCV_ISA_EXT_DATA(zbc, RISCV_ISA_EXT_ZBC),
-- 
2.43.0


