Return-Path: <devicetree+bounces-77549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D578490F285
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 17:44:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1AC16B25C74
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 15:44:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB23B158DA9;
	Wed, 19 Jun 2024 15:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="z81WNGhk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586F51586FB
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 15:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718811676; cv=none; b=rMbql93ZxMM6PnI9ap4VzBR85to7My2g4Uw3GdtkbLlWNYQVw2SjfBvs4OqqT57gUhGJCXDUofat5YCU+K1UaxtGbxXBe2aLGZaD9pURstEVSGiqa04Thmr/MY0FB7aT+n3wJIiNFxA3yV6vxWIwERDW5gteaCLiMP+KAPs7v/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718811676; c=relaxed/simple;
	bh=sfkJQkB4VssH60z6VSpLP4aPbWO0sGtaDBnsCx5T9lg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=j1ACpLliKZLF4vqEfMEvFRTjVxdqZAqyJNtpeaJTBxuukkz/XCdZcmvzP4GHIboAmp8xzGUDWcl5NY1bw190QZ5mRxdk8OskpKD7iCqYuodYnqmBWje1lRYR2Ll98qo+lMlgqL+sKuDImMoYrVMCOMCq+0/TlXkuuFzX9Q6B244=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=z81WNGhk; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-364068c0ec5so76624f8f.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 08:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718811673; x=1719416473; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XxBaoVReHjYi8LCIKzJk71raI5rhLtFKE/0A3hAurqc=;
        b=z81WNGhkI84iY0WnzpmrgF4HdBr+LvCzTYAwjD4CfyOKybB4CwljGthxzznsku0rH7
         OIZx39Agdz2TfWKJM6esk4s8kxB0xZNtt8hteCs6OubznDVGefwgPd9h5omLoc1UZzUD
         XjIvLc+0lI7ReBi+JKCq74TGN7k+/6GletIQdrX/WWZAARdLL4NqW9ZnCGkXu0CxmL2/
         G9FUbxAGe6t3/i1/7HZxet/vH5Ierj4sI1OurYAL7Hcfx9Y8S37ws2jneSVUxMtWlodi
         gsTllTnWI8pi7VPxLhy4yExRROthsVJNaQPX9dWn4un4Tl7MCndcqj2KA3Bncp03ktwW
         6yCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718811673; x=1719416473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XxBaoVReHjYi8LCIKzJk71raI5rhLtFKE/0A3hAurqc=;
        b=hUR5TVHN8Q+lJukl8jDL/EUxY8yU8BVJ7pROvTTbYXmjGLUXqqNzf5Gsuy5vdKb6Ic
         Ov+0OS9tOuVkegMCALh3cYdZqwZWzQSfEZ2sqJs3o5sFJU960dmloQIeYxjXVmpxJsTf
         j7qb1BAGjFObzABhHgqQ7RUeFowl5b/c05NEPARW6cPAz6ZQcxkD1dBybHzyViyY7w5j
         60lstQQJeaDKUm622J5eGT7F2A1xbGPFiizJAo/HVe1151dNgpSrjEUdAp2S72Ff/lFW
         sgHz63Q7UVe/eonrU/pWb3TW1bLmXfgkbBgdX0xq8ahQTtSPXS782onJs6J91tB1fn45
         a3CA==
X-Forwarded-Encrypted: i=1; AJvYcCWFh711FRjYR6Bd11RxuKoFzbGu5Onw/73jVArhiD7X8d0avWhOOx5nC16k5j3B/uyIYFeZvv2onUiyRhIdeJudRDNuT3raj8vINA==
X-Gm-Message-State: AOJu0YzRiHXsKsxytxshncFH+vIKySMZXNjvlQYLdQsFKLyTQT1e/DCO
	kpK6/HeIT1TUtw7mJNVAl7Bq7ycupce62rgTGPxm/yeEPi8ZcAc8LrMnIyZuu9A=
X-Google-Smtp-Source: AGHT+IFz7mNhNVrkeHHVYr8mBns/F7ItFsjrGXd+9ip+r+Vpj1iuLdfUz+P+4a8dyx9jXLcARTyeFg==
X-Received: by 2002:adf:cf02:0:b0:364:7a63:93c7 with SMTP id ffacd0b85a97d-3647a639555mr16771f8f.1.1718811672887;
        Wed, 19 Jun 2024 08:41:12 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:819d:b9d2:9c2:3b7a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3607509c785sm17392292f8f.34.2024.06.19.08.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 08:41:11 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Shuah Khan <shuah@kernel.org>,
	Atish Patra <atishp@atishpatra.org>
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org
Subject: [PATCH 2/5] riscv: add parsing for Zaamo and Zalrsc extensions
Date: Wed, 19 Jun 2024 17:39:09 +0200
Message-ID: <20240619153913.867263-3-cleger@rivosinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240619153913.867263-1-cleger@rivosinc.com>
References: <20240619153913.867263-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

These 2 new extensions are actually a subset of the A extension which
provides atomic memory operations and load-reserved/store-conditional
instructions.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 2 ++
 arch/riscv/kernel/cpufeature.c | 9 ++++++++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 4880324a1b29..69be244bce4b 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -92,6 +92,8 @@
 #define RISCV_ISA_EXT_ZCD		83
 #define RISCV_ISA_EXT_ZCF		84
 #define RISCV_ISA_EXT_ZCMOP		85
+#define RISCV_ISA_EXT_ZAAMO		86
+#define RISCV_ISA_EXT_ZALRSC		87
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index ec4bff7a827c..d71e5bd58acc 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -156,6 +156,11 @@ static int riscv_ext_zcf_validate(const struct riscv_isa_ext_data *data,
 	return -EPROBE_DEFER;
 }
 
+static const unsigned int riscv_a_exts[] = {
+	RISCV_ISA_EXT_ZAAMO,
+	RISCV_ISA_EXT_ZALRSC,
+};
+
 static const unsigned int riscv_zk_bundled_exts[] = {
 	RISCV_ISA_EXT_ZBKB,
 	RISCV_ISA_EXT_ZBKC,
@@ -327,7 +332,7 @@ static const unsigned int riscv_c_exts[] = {
 const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(i, RISCV_ISA_EXT_i),
 	__RISCV_ISA_EXT_DATA(m, RISCV_ISA_EXT_m),
-	__RISCV_ISA_EXT_DATA(a, RISCV_ISA_EXT_a),
+	__RISCV_ISA_EXT_SUPERSET(a, RISCV_ISA_EXT_a, riscv_a_exts),
 	__RISCV_ISA_EXT_DATA(f, RISCV_ISA_EXT_f),
 	__RISCV_ISA_EXT_DATA(d, RISCV_ISA_EXT_d),
 	__RISCV_ISA_EXT_DATA(q, RISCV_ISA_EXT_q),
@@ -346,7 +351,9 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zihintpause, RISCV_ISA_EXT_ZIHINTPAUSE),
 	__RISCV_ISA_EXT_DATA(zihpm, RISCV_ISA_EXT_ZIHPM),
 	__RISCV_ISA_EXT_DATA(zimop, RISCV_ISA_EXT_ZIMOP),
+	__RISCV_ISA_EXT_DATA(zaamo, RISCV_ISA_EXT_ZAAMO),
 	__RISCV_ISA_EXT_DATA(zacas, RISCV_ISA_EXT_ZACAS),
+	__RISCV_ISA_EXT_DATA(zalrsc, RISCV_ISA_EXT_ZALRSC),
 	__RISCV_ISA_EXT_DATA(zfa, RISCV_ISA_EXT_ZFA),
 	__RISCV_ISA_EXT_DATA(zfh, RISCV_ISA_EXT_ZFH),
 	__RISCV_ISA_EXT_DATA(zfhmin, RISCV_ISA_EXT_ZFHMIN),
-- 
2.45.2


