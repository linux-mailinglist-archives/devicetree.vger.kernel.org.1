Return-Path: <devicetree+bounces-72243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B29388FB2E2
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:52:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69F6A281FDD
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:52:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C15D3148315;
	Tue,  4 Jun 2024 12:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="cfUco6y9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6674A14659E
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717505336; cv=none; b=k+bjODef4OYLQsPcvTFpqojj8We9GgDU2b2XwQDwtxNBnllkTJ8//u26gQ9OsHcTKjRdVS7MpE45W6NIbJNfoSc5R5Bi1+1ZhBG0Zd3d65KQHFv2ojtFXLki+actyPbVGk52/s2KwindiUNPUVHc/fPL7nzqaoGP4KQOEt2E4k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717505336; c=relaxed/simple;
	bh=fbtxheV0cDi84/+JGvjHvPffIZlUo37W9TjstXw8xkA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=b6EMTnerByUT296iIsZtTJ6egCRPPVjI5+aXwgmhWZZMricAwtBdmq2IiLlwWHdKr6HlzuV3DIFi3W4res7xLGvyJnWu7M0+M5AESeqQjEy2Uiw9G3VAUX5cCjhVycROlmQXw6PzBVZ9AQYFKveLfkA8ldje5Tw6BopW4xIUbZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=cfUco6y9; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1f2e3249d5eso4369165ad.3
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 05:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1717505334; x=1718110134; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lMpkyLkaSRVaEO/feaH2dKMkG1i5I5KHxmVTKeHtvyc=;
        b=cfUco6y9OWXxEGnLr7UNtkjYotGqevLDImY54XXzjgXdRYl5f61FvAHVhVEle7Z7GP
         XeRlUz6g6m79CC0CPduS/KasyesQIaG6pK7Oc/RGe72h32gQBD6vzpwsNyqxgIkTng2t
         FnePmZPcuaavUIj8b+hwkvNOilpysz7FGXsr7Xj4UzF3QMiDMD753svK2bPIXxfAPZD1
         0hp8hyD/KIh00x+tr64dZOVenwDw8yo+ENnD93HVUSPycqwwlAs96mXZY2viXY28sDwl
         h+XZopHYde+sdL3SFRCgGPmes89yaTbR1PrQXsWjcUqhanc8wssjk403ardCnqh7RE+E
         cmhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717505334; x=1718110134;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lMpkyLkaSRVaEO/feaH2dKMkG1i5I5KHxmVTKeHtvyc=;
        b=urVA5U24FN6e3CUqo+QbAMgWrcECqwKZ7vCmke+SPUKS4+FT/cl0eZstoSiBLBefpr
         l+YkC+VQQm6MhhQSW9LE6YxTUMzXDi2j7yqIBAYkHluNsAaKU+9qee5zpbctDh906hnn
         WD+hgA0+FDAt9fz77G3AaNgvQPxROiddfAVbrgqam5dSIid51KYVAckYo0kTvj4FFnJS
         302agZ5+3bWNOkd3X07mzECI4vjQqK1lXsi9PNIVsyBtoO4EqZFWELG9zJtuK2DABL3Z
         AjGvMMTdMJmJicxZoPwD3wNcdr1b+BZYi/NhE4fZTKfjKaRcu8osAHSbHbw6ZZlt8QXy
         d2rw==
X-Forwarded-Encrypted: i=1; AJvYcCVrzZtj5xPHqumx55lf25GdPNpSCedkplBviiVKzGSXAmEPBbzJct2AEJEO7lzEN2qeWjIcZpRG9ocsuyzsy81F0Y1xFSM/hMyHzQ==
X-Gm-Message-State: AOJu0Yx+oSIvzKDuM3mrzKCCDZ7KQAHf3pMCUmzz4DgOciRQ1eudsCPt
	EDIvuR+IJDZ3Qb/OeY7xI+mPJ6/5IFiYzTWPqNIMGhvoqkrZl9Nrq/m+8QtEJ3s=
X-Google-Smtp-Source: AGHT+IEtbTTmo55M3xpRAMSX5FY5FOioHf0mp6/inxXLLycdHmKwuuvj+1pWBqBBB5zpqi2TeoLukg==
X-Received: by 2002:a17:902:ec8c:b0:1f2:ffbc:7156 with SMTP id d9443c01a7336-1f636fcf230mr130005385ad.1.1717505334634;
        Tue, 04 Jun 2024 05:48:54 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:327b:5ba3:8154:37ed])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6323ebc69sm83042885ad.211.2024.06.04.05.48.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 05:48:54 -0700 (PDT)
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
Subject: [PATCH v6 14/16] riscv: hwprobe: export Zcmop ISA extension
Date: Tue,  4 Jun 2024 14:45:46 +0200
Message-ID: <20240604124550.3214710-15-cleger@rivosinc.com>
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

Export Zcmop ISA extension through hwprobe.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 4 ++++
 arch/riscv/include/uapi/asm/hwprobe.h | 1 +
 arch/riscv/kernel/sys_hwprobe.c       | 1 +
 3 files changed, 6 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index cad84f51412d..9a77b7d14539 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -216,6 +216,10 @@ The following keys are defined:
        ("Zcf doesn't exist on RV64 as it contains no instructions") of
        riscv-code-size-reduction.
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZCMOP`: The Zcmop May-Be-Operations extension is
+       supported as defined in the RISC-V ISA manual starting from commit
+       c732a4f39a4 ("Zcmop is ratified/1.0").
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index fba3d74154b1..480d7bb01088 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -65,6 +65,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZCB		(1ULL << 39)
 #define		RISCV_HWPROBE_EXT_ZCD		(1ULL << 40)
 #define		RISCV_HWPROBE_EXT_ZCF		(1ULL << 41)
+#define		RISCV_HWPROBE_EXT_ZCMOP		(1ULL << 42)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index 11def345a42d..34c95eaf8cd1 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -115,6 +115,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZIMOP);
 		EXT_KEY(ZCA);
 		EXT_KEY(ZCB);
+		EXT_KEY(ZCMOP);
 
 		if (has_vector()) {
 			EXT_KEY(ZVBB);
-- 
2.45.1


