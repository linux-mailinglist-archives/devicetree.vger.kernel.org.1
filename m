Return-Path: <devicetree+bounces-27422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A86581A353
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 16:57:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9EAD51F22EA1
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 15:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6892F40C1E;
	Wed, 20 Dec 2023 15:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="bnh21xvF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F1641235
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40d19930f03so6650405e9.0
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 07:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1703087861; x=1703692661; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EdmTrlQiysEJ9gRiozTT9JeMo8PxECkQ3IPcbyVimLw=;
        b=bnh21xvFaTDdR/Fj6UiC+r+Uuaj++HtPKNXaCpId5gSU9PeO08ZUKcfCitiMGLPxGX
         YnqMCoc9r8TEtRebEu/aPcs5ivmv5RWbiHqb7E56AwxWCbI9GteqtsfzxQ1u54DIRV1f
         60Gd4gYWxTBpVYXdj2HhfLWCy472/BsuD3d5wdyZfYFDTkTPmzkVhtIJx05MmECj0do0
         qAVKNi7jtLUCtcHaLN4R1yQ97vGNKWzoJUW49prgEvpqXI4mhBmNypITuCDEJEZrWkD1
         cTZO3KG5hMYHUcRxmcm8l/dVpDG6l8eA4TCxcLurRRpaz0pMRtHayHQVdnHxxfXirFdo
         7J0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703087861; x=1703692661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EdmTrlQiysEJ9gRiozTT9JeMo8PxECkQ3IPcbyVimLw=;
        b=YPHcWj+FPLU3Fq77maRENGOagZ3MaKEI1Rdv9J/tnSBVjuRVqtv/jDq4wDc6XvVFEY
         7i0N3/jr2xFmfDh6QQjVKidII7BSVv6W4CXg/v8pkcQVzlBSUEHs7Z5mLmknRA/1fqqJ
         l8BhqfATCk5A/geoP4jM7E1nSO9pONA9IkConWttJuWvXdNDw6krYqgfCTWleKWNavJo
         6QvDRvmfZJPkTlrLUfLOYtBt1rfWMUEua/3zgG1VATCHd54GZwiwlKGZ6gG2bBpX9i7g
         4TUT04nl5g5eFVJaFKHMfjHY7oaFCfGFuYI6/7YX+KEEMdb2GvISTzGa3pN86OlhJEds
         P90w==
X-Gm-Message-State: AOJu0YzMJYUhb76vTopPhi/1akX1X6BobatjZyA+AbLA13c07y4ChHAd
	DmfvcMkUh/SVqjC3lY7O8aq3yA==
X-Google-Smtp-Source: AGHT+IGomYXGZKW9fTAlUtiRU6C8bTb/3tOYsfSXVcqSVYVqyFBHuEtMtuZ51G/bO3fbDc3LJu//dA==
X-Received: by 2002:a05:600c:81b:b0:40d:2cb9:42f6 with SMTP id k27-20020a05600c081b00b0040d2cb942f6mr3120863wmp.2.1703087861074;
        Wed, 20 Dec 2023 07:57:41 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:3eae:b70:f27f:7aa1])
        by smtp.gmail.com with ESMTPSA id h18-20020adffd52000000b003366af9d611sm7279693wrs.22.2023.12.20.07.57.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 07:57:40 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Robbin Ehn <rehn@rivosinc.com>,
	Gianluca Guida <gianluca@rivosinc.com>
Subject: [PATCH v2 1/6] riscv: add ISA extension parsing for Ztso
Date: Wed, 20 Dec 2023 16:57:17 +0100
Message-ID: <20231220155723.684081-2-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231220155723.684081-1-cleger@rivosinc.com>
References: <20231220155723.684081-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add support to parse the Ztso string in the riscv,isa string. The
bindings already supports it but not the ISA parsing code.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 2438d4685da6..3b31efe2f716 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -84,6 +84,7 @@
 #define RISCV_ISA_EXT_ZVFH		69
 #define RISCV_ISA_EXT_ZVFHMIN		70
 #define RISCV_ISA_EXT_ZFA		71
+#define RISCV_ISA_EXT_ZTSO		72
 
 #define RISCV_ISA_EXT_MAX		128
 #define RISCV_ISA_EXT_INVALID		U32_MAX
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index dc0ab3e97cd2..3eb48a0eecb3 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -279,6 +279,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zkt, RISCV_ISA_EXT_ZKT),
 	__RISCV_ISA_EXT_DATA(zksed, RISCV_ISA_EXT_ZKSED),
 	__RISCV_ISA_EXT_DATA(zksh, RISCV_ISA_EXT_ZKSH),
+	__RISCV_ISA_EXT_DATA(ztso, RISCV_ISA_EXT_ZTSO),
 	__RISCV_ISA_EXT_SUPERSET(zvbb, RISCV_ISA_EXT_ZVBB, riscv_zvbb_exts),
 	__RISCV_ISA_EXT_DATA(zvbc, RISCV_ISA_EXT_ZVBC),
 	__RISCV_ISA_EXT_DATA(zvfh, RISCV_ISA_EXT_ZVFH),
-- 
2.43.0


