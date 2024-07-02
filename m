Return-Path: <devicetree+bounces-82225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B78799238DC
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 10:52:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB78D1C20B42
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 08:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0192A14883E;
	Tue,  2 Jul 2024 08:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="nZTrDZVi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D09284D39
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 08:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719910318; cv=none; b=XM0B1fZRugiOG4/MvuYSlhhCqR2LdEeOAONg7FA4VC7MiHa3AtqN8slc5ybmDaNtlpAsGrKCXA/QOu5UDsozKQVYF24DF2CsztGtWUyEOXKPpt3viveRkMCAA3GJrqZrRdhIlj0ytx96lWG4cwLIUOHVwl/tPCDPuz+Ri0muavQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719910318; c=relaxed/simple;
	bh=IwgFq/u1LiwR2cTcDGlaRvzAUTc8kMJC+X6jojjTc2o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UlpJy8pobWGoC9k8R+pwWjZW/TaXx0OK8njTxSlpPY/XnzgvjKjCEDOUicmgEpb3iXp7zHqDjoaseOs8wBR738kURTH5ugUePiTXZwDBqemcx9fJKa5t1vf3Y4AcCbcQSGOj4FManDWU6UE43ML+53Duz3neRVZUcxHeONqzL30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=nZTrDZVi; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4256f102e89so26263595e9.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 01:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719910316; x=1720515116; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WccEx9NvT13PoluUayFyEXUnGwkOt/S9EsiCAQXUb8Q=;
        b=nZTrDZViQoQIrn+id76IWxkBfgM86Kgj5LHIBYBvUVlelydbdDNDKWWYxmS1DjCqaR
         fqmKhBhnbHExDsCjzPnjbiyudY0U8pq9KjUc8VFA6pAzO5N2rRtVWzffrzzzx+oyq+tx
         mdN81JypxWe5o2/1XHlj5GgVpUBGSuxG69nPgOwYnH1AGcK6fki48vajEUdNrceAJGE9
         zMwRXKbT32+YCwfuXRIOp3FLi5vJc5y0gUQQuo6cw8U0pLbVBFaBK+61M1WFwJsPEFjK
         NTy/IIJqGmdC4HI9KXLOq3dNGg6sjzq20i/6gWKZaHvH6ScOjF8+U1Z6sHlq3TwScB2U
         QBtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719910316; x=1720515116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WccEx9NvT13PoluUayFyEXUnGwkOt/S9EsiCAQXUb8Q=;
        b=wJ5hM202JXfMYHTBr8NJUp0W8Bw4zI/wcCfu+wcHIWn+geDf+dZoXXWA8vtGRX+2Jm
         3chqkSFi1gmXcxth6XytlsPGep8Y6SaP615C0wNf/1D+FI/u/Oj4g4z0ppNwKarKoa+j
         DaUKvjKEk4TWjO5t5CTrtt4iFld5qbuRHweuOk51jfHw3NorzIyw9rAdXLSmeKnQOltb
         od+EO0lz9I+TL4pKNnhCMLSotkL98+gHGPaONwTT4RuSXhyIW3yzFKpX0aBglRgIjXNq
         cqu4meXye6LqBTMj3K8Ed0fGDuaSgbwUR92rmspL675PMWOIArZ5i39uQZ25t4MTfu5c
         qvmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJhYWvfbAEKKQkJLpRYXRsTJYAtWHC/xU1ZRREdTGrGRlIwbi9tIcH/CATrhzkFXIEUA6HqKQKoqZ2s7LYViTnBcEu0EmnK2xfEw==
X-Gm-Message-State: AOJu0YzNTi5xsppmMmhtsvZ7fuZGlkLAiz/VQAE/7sAOasyonbB4amT+
	sb4U+wnRwX+CDYbEd1IP9sMmFcg9HEGJk6UD4hjei3C1qDW8kyDsuj/N2Hmdo58=
X-Google-Smtp-Source: AGHT+IGZdzo6PfO/YolAKKEnDj53HZfW2Z0PUTp4sefGD+K9Hrlj3OMHAw8JbSHy8BPMS8+pXPqrkQ==
X-Received: by 2002:a05:600c:19cb:b0:425:6f96:8bcd with SMTP id 5b1f17b1804b1-42579fd0d25mr65418135e9.0.1719910315708;
        Tue, 02 Jul 2024 01:51:55 -0700 (PDT)
Received: from alex-rivos.ba.rivosinc.com (amontpellier-656-1-456-62.w92-145.abo.wanadoo.fr. [92.145.124.62])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0e16b3sm12491191f8f.61.2024.07.02.01.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 01:51:55 -0700 (PDT)
From: Alexandre Ghiti <alexghiti@rivosinc.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Ved Shanbhogue <ved@rivosinc.com>,
	Matt Evans <mev@rivosinc.com>,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: [PATCH v3 1/4] riscv: Add ISA extension parsing for Svvptc
Date: Tue,  2 Jul 2024 10:50:31 +0200
Message-Id: <20240702085034.48395-2-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240702085034.48395-1-alexghiti@rivosinc.com>
References: <20240702085034.48395-1-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support to parse the Svvptc string in the riscv,isa string.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index e17d0078a651..6dd0dd8beb30 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -81,6 +81,7 @@
 #define RISCV_ISA_EXT_ZTSO		72
 #define RISCV_ISA_EXT_ZACAS		73
 #define RISCV_ISA_EXT_XANDESPMU		74
+#define RISCV_ISA_EXT_SVVPTC		75
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 5ef48cb20ee1..60780d246743 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -305,6 +305,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(svnapot, RISCV_ISA_EXT_SVNAPOT),
 	__RISCV_ISA_EXT_DATA(svpbmt, RISCV_ISA_EXT_SVPBMT),
 	__RISCV_ISA_EXT_DATA(xandespmu, RISCV_ISA_EXT_XANDESPMU),
+	__RISCV_ISA_EXT_DATA(svvptc, RISCV_ISA_EXT_SVVPTC),
 };
 
 const size_t riscv_isa_ext_count = ARRAY_SIZE(riscv_isa_ext);
-- 
2.39.2


