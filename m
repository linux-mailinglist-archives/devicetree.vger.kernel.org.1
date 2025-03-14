Return-Path: <devicetree+bounces-157686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C281A61E6E
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 22:40:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB7BE462C85
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 21:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA9FF204F8A;
	Fri, 14 Mar 2025 21:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="m7KCyXD5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A77B8202F8D
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 21:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741988372; cv=none; b=WGArnRDm2ieElYTTc4XwOHf1dVQSECwkkkz12lc48fVx+SLLeq5wReN2TKYpOn6hqQ5URbyftkZAj64TG/QEsyhKbuKm0ump9meSbJ5FPo8nlGoGcpV51cCoy45HxjbaNqV1cwsWPY0cu3hVykzOBGH6AlO1IAMc3uMezp3Za5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741988372; c=relaxed/simple;
	bh=pbZsnVycfvlXR/jueZaepHgseReSQSx1x2o5rAzi9lQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=utBV6PLhb7GzsrTbuNPBGVE4kNItygCo8+5bij3kSjAtUfOF38k7HCtzwaAcQUTGrDvg5EGjSeMPFNx/+UKD1EsiAgctVq1OY0q3nyRrDw5VutLVqGDad3TBaSl/OZfT7ZEYRrpS1LxjVYVrCTuuqYen8Z4MbYB7zbBKOY50FJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=m7KCyXD5; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-22349bb8605so56803625ad.0
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 14:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1741988370; x=1742593170; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SDDw4jYk8ElhORayLnctVQ+77ceNByh8dqs8gmZ197w=;
        b=m7KCyXD5LnQkJc1z4hTDR+h/VGiM9ZJOvppzKGG89mi2z7hF997+HAp2iVNQvdG8gU
         Zv0IMTWNSNbV0PFimBwSB/VWO65+Py8SABFRH+hwGCAIkXUX189K/w+Jch8F4De4htFB
         L/ml8N0GPEI/0Tg63UW1AuemeMYmMbhk8RIbUkJ0lAIgphrfHA4y8agSB9cOZrdUQ0tm
         Cgst9vZr21qxvzsgRUiZYXVoL7i3iPwHOFk8ZX43QDBy/nsJVfoUvCFgBN72DuivKhp+
         d9q1u9Mu13Es5RX/iMYEoygtZTeQp8jF20lwvdgrnnsECasfo1mih6z4BLag2Ml7Kd8S
         jVFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741988370; x=1742593170;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SDDw4jYk8ElhORayLnctVQ+77ceNByh8dqs8gmZ197w=;
        b=JPvTbHllbq21HNLAAHYud4Ws5KCMtqp9ZYyAacnrkJI5/RoTGUFNVceqKimvyxmZHs
         d3N3K/evI3fvN9Mq8sG6DFMcOqIIBcsKXbXtCfpjsCgX2UWzr/udhMlFXaTZPJ2py9rn
         mQckQm2byH7pZtkb939QL7MFParNtLBodrq1YIr8fX6sjAU2A1bUuOo6Ho4XLfTjkfr6
         pwttajrCXi4fZqVcw+P/HfdNhCDcD9CBJ+mx/BP9dkt3NjWHI5opcwTcl6yW+4kIMwAw
         LMk6a9blz47Vda9zIik6BbW4utYZ7k6AnztFRWRxzk8GNjREV1oBsOXYVG2KUjUJEQbC
         ggnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMGPs+lSjUao6B8icfRrtzdnHKEzw7EsBrZHFHNuCrt+oy2KnW5pVBvtYeSZM6iQywowHfLzyB8LCw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1MF7YtByGXKLvexeE95QoXFTUODCI5vn2pYySLL1ddidbdXOL
	0luJvOSbDiUI3LMI/loflzCIo4O9Ya03mcuVh5gH1tWteWJc7ib1aoPQlWWj1OU=
X-Gm-Gg: ASbGncuo8LIDsm8+wJeGL8Alii95n0fZYOmlbCyABno2cvFgITbKlMGCw73GEm+UEOM
	XQF1S3Z/smJZKmttc/7QmIawMv/JTd54f8dhDx4B0cAy0j6etv3ks7qCjFvKCM8r2UjXbQ+WrQL
	hZHiGvOsyB5PjI1QUqbJqvqwOHQw1Ero/BYfTIfHb63AQIkDUfiUjtWgXX1CRKs/m7UUmlfy2aE
	5uX3Bp3tRIjo8VP+7RCbziRq19Oe0NtGjqN7Ab0stbR7CXi/4Ugsl1OR3GZp9ZGENjiDH8ZVoX3
	5HHRBftaz1ZHvsx0xpCBh2euwwmdGntWpXz1JXEGLSjKxCuczr67v/PFmcIKHyGcFQ==
X-Google-Smtp-Source: AGHT+IFpg7z+OE/2A1gqmKjw7jqoEU+X8gr8RuneE9Exr7j30nKzCtL2OnQx5eLIT+ktDst/E1FOnA==
X-Received: by 2002:a17:902:db04:b0:224:8bd:a482 with SMTP id d9443c01a7336-225e0aa7e06mr46126855ad.25.1741988369862;
        Fri, 14 Mar 2025 14:39:29 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c68a6e09sm33368855ad.55.2025.03.14.14.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 14:39:29 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 14 Mar 2025 14:39:20 -0700
Subject: [PATCH v12 01/28] mm: VM_SHADOW_STACK definition for riscv
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-v5_user_cfi_series-v12-1-e51202b53138@rivosinc.com>
References: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
In-Reply-To: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>, 
 x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, 
 Vlastimil Babka <vbabka@suse.cz>, 
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Christian Brauner <brauner@kernel.org>, 
 Peter Zijlstra <peterz@infradead.org>, Oleg Nesterov <oleg@redhat.com>, 
 Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, Zong Li <zong.li@sifive.com>, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.14.0

VM_HIGH_ARCH_5 is used for riscv

Reviewed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 include/linux/mm.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 7b1068ddcbb7..1ef231cbc8fe 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -378,6 +378,13 @@ extern unsigned int kobjsize(const void *objp);
 # define VM_SHADOW_STACK	VM_HIGH_ARCH_6
 #endif
 
+#if defined(CONFIG_RISCV_USER_CFI)
+/*
+ * Following x86 and picking up the same bitpos.
+ */
+# define VM_SHADOW_STACK	VM_HIGH_ARCH_5
+#endif
+
 #ifndef VM_SHADOW_STACK
 # define VM_SHADOW_STACK	VM_NONE
 #endif

-- 
2.34.1


