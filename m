Return-Path: <devicetree+bounces-72230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2CD8FB296
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71946B2650F
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E81A146D77;
	Tue,  4 Jun 2024 12:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="LRQ6IZzk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BD51465BF
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717505196; cv=none; b=KK5BcKe/5di72P5AuB98KMRZP5mkvenYxe5OIiapoWVx0fET6XAWJuOLbSjCelJJ+A7ltGNRzWw2zr1jd5DVudF+s04CBBDQCUL0bKSA6v5HkD8GXwJT6rjo6DQg1GN7FtjASiDhqVNkr9d+mn8t/Sks1nQSOQIrhrn/WVlMqO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717505196; c=relaxed/simple;
	bh=VTiruecrUkveLlCZAhzKcZMvMHqPYnsZCej7f/kDh9g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Exf/voqEzxa4lgu44wrCm3PbmfLZDjkASb0xsdN445PtR8FJxdrU9S6T+EZuIHBwZzKbBZK3gCcreuy1nKIFN2mP/+99aWvZdMux7I40msDKQzLB+g071kTzR3YLZbGJGim0Y/nRhK+EayFAiRnrXYTZeJCIAhTux3cTfnDIDcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=LRQ6IZzk; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-6d125d826f4so202568a12.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 05:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1717505193; x=1718109993; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FH0bMsHD4vaf3RN6eECK/cSeWYzW9s54IHrYdJwEDyo=;
        b=LRQ6IZzkRioJWdpzQTuhurKboK5aC5VonqNPRZyoKWGzY8s4YOwwtYVHXa5plrA6FH
         NkhIZk61v1iQbULszMgcEr0E5UJf8hr/gRWq1S4TCD/NVaAol2D0OhWYAZwaq9EUd887
         f04uj7Yxb1zP5pN6GbxZNzqPrn2BYpoaCnxVPx8CwwFN/E89hJN8RDITjxyMJ3B5L1aH
         lVZaCBe4O8DHaIwQNZgms3Nma/2AO/wnL0fb63N69ylorzvxwVJCoF1dSwgbo2bOOCd8
         TWlYBU4d6PaUVqKAh8Y3lfT/HTRVDS0qrWzibXrVf+1+LK9BydId1tjDCmQv9njfy7KU
         wYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717505193; x=1718109993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FH0bMsHD4vaf3RN6eECK/cSeWYzW9s54IHrYdJwEDyo=;
        b=HIPITaqHZXRVC4mdBnpEjwqaNuU/4wCCOjSny8Zh3jSiA4W6jqk21NIJKJi/UwZBI6
         hn8kPPM8KO3amlN0M3dzTygCk1CZwCX94Y/O/EZE4yKKSp2noAPQqAzY/J0IGtD1+DJb
         /h+ewP+AFe4y7ME4b+3RWVEtqCW9V6zJ5k/Ez9BSs4K2UHLzibeDyexNkU0lIhiiYJEt
         yYHQ0+0ONbdIZJc/9epf5ajL9/1O8oTcHH5PaMp5bFqWaKCh8VV9jgOiixlMfZ3K8pkK
         vQJZwYjo4AycerIN0W1ywXOmULoSRmb4yq2MmedGv1gQ2mQcrW2eHKtVWjSio70EYtb4
         tQ1g==
X-Forwarded-Encrypted: i=1; AJvYcCXYxVkAVI09yBFXdVHFlvQ7T9QXz6IXGf+exfjgChDt3OJdo8R9mkS3TYXga6wTOCMTsxRXqWNexG2zkx66xl22aPfYVLfOEVZfxQ==
X-Gm-Message-State: AOJu0YxBHtZ6xfULPJHMDZLWjEh6SVQMy3vZkB+ikCMkVGLBlg+2KYbG
	ndWM6jUc1m523dqSjZaYw8v32LhWaAxE3Fb+E2VMVGWBWK+21DBDozf2dBGzUB8=
X-Google-Smtp-Source: AGHT+IEcDwjJyY3zBUf22+Q+de7qq4n7Qn6IlYomnDRBzOkE4B5z+4AhELmoSGtibPGFsq4xo3mqwQ==
X-Received: by 2002:a17:902:e5d2:b0:1f4:962f:e006 with SMTP id d9443c01a7336-1f693dd486bmr22891645ad.1.1717505193034;
        Tue, 04 Jun 2024 05:46:33 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:327b:5ba3:8154:37ed])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6323ebc69sm83042885ad.211.2024.06.04.05.46.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 05:46:32 -0700 (PDT)
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
	linux-kselftest@vger.kernel.org,
	Charlie Jenkins <charlie@rivosinc.com>
Subject: [PATCH v6 02/16] riscv: add ISA extension parsing for Zimop
Date: Tue,  4 Jun 2024 14:45:34 +0200
Message-ID: <20240604124550.3214710-3-cleger@rivosinc.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240604124550.3214710-1-cleger@rivosinc.com>
References: <20240604124550.3214710-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add parsing for Zimop ISA extension which was ratified in commit
58220614a5f of the riscv-isa-manual.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index e17d0078a651..543e3ea2da0e 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -81,6 +81,7 @@
 #define RISCV_ISA_EXT_ZTSO		72
 #define RISCV_ISA_EXT_ZACAS		73
 #define RISCV_ISA_EXT_XANDESPMU		74
+#define RISCV_ISA_EXT_ZIMOP		75
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 5ef48cb20ee1..bd1597578fbc 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -256,6 +256,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zihintntl, RISCV_ISA_EXT_ZIHINTNTL),
 	__RISCV_ISA_EXT_DATA(zihintpause, RISCV_ISA_EXT_ZIHINTPAUSE),
 	__RISCV_ISA_EXT_DATA(zihpm, RISCV_ISA_EXT_ZIHPM),
+	__RISCV_ISA_EXT_DATA(zimop, RISCV_ISA_EXT_ZIMOP),
 	__RISCV_ISA_EXT_DATA(zacas, RISCV_ISA_EXT_ZACAS),
 	__RISCV_ISA_EXT_DATA(zfa, RISCV_ISA_EXT_ZFA),
 	__RISCV_ISA_EXT_DATA(zfh, RISCV_ISA_EXT_ZFH),
-- 
2.45.1


