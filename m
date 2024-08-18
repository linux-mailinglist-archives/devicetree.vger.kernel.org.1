Return-Path: <devicetree+bounces-94503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67739955B90
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 08:47:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D954AB20BC8
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 06:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DA1011CBD;
	Sun, 18 Aug 2024 06:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="nes0/oKc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98031101DE
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 06:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723963622; cv=none; b=A+zuflGAtZD6dHC5CAsqhWHjZ2FwNnHXqwIRNylSJgm1VidxPAlZoIRA0iuFAeP8R6dOPqVguck1WRPIY3EygHjQtJqmh5F6VkGi5dY9eo5fepfh6DIQ+Zefuu3TFJwSP+yqApR9XE13/Vl1QH/L38SMnS9VKFFi5Xq0TIwXcB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723963622; c=relaxed/simple;
	bh=65N1YDYmlpEvDTK31Deo5Fyg9F/mpaT1yLpXU+1oUBM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Mpsf0h1rxQYznK4FSDSu34r19KN+Ls/LoYIFJU6lfwnj8PgBxwcXJdsyithfAfbMcrKQowMz14gnQVKEQvJi4OjN24eeLzeMWaohok94y064Gj5OAzyStr29FviECndW09Fm4t4hF9/8PDUKuZsGXsIaYWERZ/sUDKVD8DBx2qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=nes0/oKc; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-371b098e699so686913f8f.2
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 23:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1723963619; x=1724568419; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vlqxfa1Dgyr/RCZKCOdmB4jO+WlSQVOulpijR1tIjck=;
        b=nes0/oKcOBBBsfpaVKOoE3KX0Ydi2gRP19gxbtxc03GUOF5MUdL94i+J2+A26H0fHK
         t7ESmr9UpHJrrJO2REL9xtdCKGfLd8BW2VzBolDQuf1uoR+/DbqqlccDtagvLtTzqz20
         Me/MIk9hE0pfGj8d61jPnQqJOMPrbkwq10g4dwBx2fwnsxSU3lpX0HWfbfwbnhmIe1ns
         kNv8+WbLwI4K2TIJK2RQBZbIjuJFfklA8ILGCaSuy0gxjZKhTOWooHbT28Ged9jhB30W
         8tlqWV/lrmI+ni/+gTFqhgRL0cFNs2bC0T0wKJD0HiS6n34jr7151Taw47yyiwp0M8Oy
         3VFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723963619; x=1724568419;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vlqxfa1Dgyr/RCZKCOdmB4jO+WlSQVOulpijR1tIjck=;
        b=wwa9pXB1XFW2tBmQ3WslZxE/l4Afb49tSmUnxTOH/cwWUDANNXriE8ZnKkcv0qeynE
         lgcpI2Gxwl8xJT4H9nLetU6Mgx1Ttb809Fp9UcAPGGbJGLWnkXSmkOgKJBr6pjGmWgCs
         5C/1t0QvTVLvlbscdrQi2tgWMYxO1/0BdQVeePRj0p7op6LQDA/gqjrd6XPardPfBUgh
         BxfMD6N2zo7eHrzogrrzCuxvQJ1roJ6s0PcZsz3TDAh/zKp9shvZAwELtIa/BQq9WWyV
         rz0HZFw78Ez4hPM0GuRrUCy3FWtbxsNQCa5NTgzz/Ftq/3vO38mFllELgTJHJh0UVTdX
         hZhA==
X-Forwarded-Encrypted: i=1; AJvYcCUcBq2YgpBU7Kl2AV50jTCiUyvGs3KwQ7eDboyp9/bniCJQ5NlCEYDClBkCLA4/XRu3YG1Z5xPKbSsTTCmZPllYK/Vm7Mxix0k4bw==
X-Gm-Message-State: AOJu0YydpJwUAl3UNZOGh3AFp2M9yNSo+WNA83bKjqBbyeEM9UeVjHMK
	XY4Sqm/k0EMd5FG5xRIt4M/2vZWj8/iNgZmLzzy3tUax8Y7nGipxeiNLPy+B9xA=
X-Google-Smtp-Source: AGHT+IFwS3MzzU8TURVJ4Ap0a8/3o7r3oh1yyMOzNik5dKrEar+UZ6Tut2SPaHafSLHiL9m2WkM9gg==
X-Received: by 2002:a5d:694a:0:b0:367:dc45:55ab with SMTP id ffacd0b85a97d-371944561f9mr6249467f8f.25.1723963618917;
        Sat, 17 Aug 2024 23:46:58 -0700 (PDT)
Received: from alex-rivos.guest.squarehotel.net ([130.93.157.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-371898b89bdsm7269358f8f.112.2024.08.17.23.46.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2024 23:46:58 -0700 (PDT)
From: Alexandre Ghiti <alexghiti@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andrea Parri <parri.andrea@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Will Deacon <will@kernel.org>,
	Waiman Long <longman@redhat.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Leonardo Bras <leobras@redhat.com>,
	Guo Ren <guoren@kernel.org>,
	linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-arch@vger.kernel.org
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: [PATCH v5 11/13] riscv: Add ISA extension parsing for Ziccrse
Date: Sun, 18 Aug 2024 08:35:36 +0200
Message-Id: <20240818063538.6651-12-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240818063538.6651-1-alexghiti@rivosinc.com>
References: <20240818063538.6651-1-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support to parse the Ziccrse string in the riscv,isa string.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index f5d53251c947..9e228b079a6d 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -93,6 +93,7 @@
 #define RISCV_ISA_EXT_ZCMOP		84
 #define RISCV_ISA_EXT_ZAWRS		85
 #define RISCV_ISA_EXT_ZABHA		86
+#define RISCV_ISA_EXT_ZICCRSE		87
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 67ebcc4c9424..ea9c255bbe3d 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -314,6 +314,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 					  riscv_ext_zicbom_validate),
 	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zicboz, RISCV_ISA_EXT_ZICBOZ, riscv_xlinuxenvcfg_exts,
 					  riscv_ext_zicboz_validate),
+	__RISCV_ISA_EXT_DATA(ziccrse, RISCV_ISA_EXT_ZICCRSE),
 	__RISCV_ISA_EXT_DATA(zicntr, RISCV_ISA_EXT_ZICNTR),
 	__RISCV_ISA_EXT_DATA(zicond, RISCV_ISA_EXT_ZICOND),
 	__RISCV_ISA_EXT_DATA(zicsr, RISCV_ISA_EXT_ZICSR),
-- 
2.39.2


