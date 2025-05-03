Return-Path: <devicetree+bounces-173219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 97048AA7CDB
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 01:33:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 662EF1C03E17
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 23:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88C4A259493;
	Fri,  2 May 2025 23:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Wf0EyWyf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DA1257AD3
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 23:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746228664; cv=none; b=QTp5suqtg1ygJ7Mx5+g4Tbk3lbvMYphcuMx7/TKMtAaC9Dpv5xPxHfcOn50vg9Y2KqYqFV38fh3eTAPjN6odVNLKvAc3Eq+qQH9yHKx1tXK7jzL1TjGYFhLEdWH7Fe5vBCB5V1bbgcNHmVQuXUd0QvK1djvE6nqk4lO88544gDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746228664; c=relaxed/simple;
	bh=5l4eYXK/UGIl+TXQnZwANU66ClnBTNssKdiHYV/yMZ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cQXco/0uJJCtDWtOu8tSvpJ6KlmosqKkUZdl1AmGRm7zbOeg5unt/46Oti0fQteEkmucYoxpKesfXogD23mylIqsjhunvnCDP7r7NFiRLGnjI+yp6rPzLxPx0rZ/tqNsVIGa7QDObfly6VOznIkYXWeab/kEeOC8IOXrtrAnreQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Wf0EyWyf; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-227b828de00so28424245ad.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 16:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1746228662; x=1746833462; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2tvKQDIIBJb26wPDVIJoD2xzubcY8uay1NjKLxC4PFw=;
        b=Wf0EyWyf1Fn7Y0Uf7NLeEKp1aBlks4lCVlJb9HPyiOHJY0j3XB8jM8y3PcES3E3obe
         r5nHu3jIeMtcQ1+kIV4XKzx9h4MLbJdf8jYyNl9q0v9Z5rdWQi7VXnuP4MlhKm7q3LU/
         LXCSj1CptkglpvHEIPJHxlH7gp1L6sDUwGtX58GpUac5kMHaHC7djvnvIg3MCJx6Cq+M
         nihO2M8rXOLJGthlYKGk7XtYBMbT/MW9cBBhqyjezskQ3QFP1QmTrLVgRnMep708/60E
         zQyYiQ1yXr9UZMX5En8FhTRS7jwiSOVnmro31aDmXBIYf4BOBpnemlF7dJMrRfu1JmAA
         +omw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746228662; x=1746833462;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2tvKQDIIBJb26wPDVIJoD2xzubcY8uay1NjKLxC4PFw=;
        b=Ax2ITN9wkLQIbiHMNH5U2bcAFLGsIy/ODO7APHze7GM+qMWp3jL8h1Vs3GUMxOcyY1
         xeeXM3p4LjDHZTWNQMIMBbNeEH7gUbdeLonTT7OQ2okVvbObZ2jB3Fxp4YvMGrRbosSU
         z9sXxf6f2LOWm4/EmIRCZzy9PWf4FsDIFTSxc3EX3KrTrDcd46easlp9hrgnpvapbzpa
         AqspZCNKv37IZJ217Gt9yFFTS1bNQUNPyaQRzVpi/WhAHaGewx+A0RbsfgW7Fw/6B6D/
         T0ftADun2A6yvG+Ecnk0c6w774Cxss2BzqbmZXnEbrEfgBOo8hk6KT1ifKHI662IinR+
         Elgg==
X-Forwarded-Encrypted: i=1; AJvYcCU/qCN9ShToeIp03hE1Z+UxsIRRLr0MFQVcyW1HefW+BV3N13wjn36y1w29TmbV2Rc9qoGAY5cZ34j6@vger.kernel.org
X-Gm-Message-State: AOJu0YyqBDHjennz4vAgQcB4ON8UbYUuJP7RJLYn4o68GGv5L2bes2xW
	cnaIL6ekOsMFnAhlYqj6GLoERpq/ptt57Tw9UjwwRJ30toMedHTfsq4am2BwvyY=
X-Gm-Gg: ASbGncvq0hTDGNBJL6v9bBkykgY4vSDaH92wwCPFEEk0WKDsuaZLeKD/zLbrR34wlHe
	P7i9ClJ78h6nTijX5QL33dB3+TmkRd1XasDWr6DtcKIhz4BJjPxUzCn2uYMzCc93LvdXRMI0RRt
	gCUissg6XyT9gpwo/vOsfJcHb2Muf9w/YRV9cE7uVvifm2YPuSetDE3K8UmMZMNclsEn8jQ6jy7
	VCSgtT97FXhozRGVOE5tZOzFiV8wLACgGt7pNv6z4hWvPMRpkvgs2y7WfvGbc6/IrBAdHeb/NjH
	Akoq3qAN4YgzwWZQ9vxnZ9/fwgI2G5+5I68MtIphajv6s0Vqr8E=
X-Google-Smtp-Source: AGHT+IEqfuzCTZSx+a5brjvbGf/prFmN0Rz54YtVMXc6bjau1+RYBCzUvKjlC1VPrFR1GkYq3IBw7w==
X-Received: by 2002:a17:902:d2c3:b0:216:393b:23d4 with SMTP id d9443c01a7336-22e18b864e6mr13931375ad.11.1746228661987;
        Fri, 02 May 2025 16:31:01 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22e15228ff2sm13367055ad.180.2025.05.02.16.30.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 16:31:01 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 02 May 2025 16:30:38 -0700
Subject: [PATCH v15 07/27] riscv mm: manufacture shadow stack pte
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250502-v5_user_cfi_series-v15-7-914966471885@rivosinc.com>
References: <20250502-v5_user_cfi_series-v15-0-914966471885@rivosinc.com>
In-Reply-To: <20250502-v5_user_cfi_series-v15-0-914966471885@rivosinc.com>
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
 Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>, 
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Benno Lossin <benno.lossin@proton.me>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, rust-for-linux@vger.kernel.org, 
 Zong Li <zong.li@sifive.com>, Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0

This patch implements creating shadow stack pte (on riscv). Creating
shadow stack PTE on riscv means that clearing RWX and then setting W=1.

Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Reviewed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/asm/pgtable.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index dba257cc4e2d..f21c888f59eb 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -433,6 +433,11 @@ static inline pte_t pte_mkwrite_novma(pte_t pte)
 	return __pte(pte_val(pte) | _PAGE_WRITE);
 }
 
+static inline pte_t pte_mkwrite_shstk(pte_t pte)
+{
+	return __pte((pte_val(pte) & ~(_PAGE_LEAF)) | _PAGE_WRITE);
+}
+
 /* static inline pte_t pte_mkexec(pte_t pte) */
 
 static inline pte_t pte_mkdirty(pte_t pte)
@@ -778,6 +783,11 @@ static inline pmd_t pmd_mkwrite_novma(pmd_t pmd)
 	return pte_pmd(pte_mkwrite_novma(pmd_pte(pmd)));
 }
 
+static inline pmd_t pmd_mkwrite_shstk(pmd_t pte)
+{
+	return __pmd((pmd_val(pte) & ~(_PAGE_LEAF)) | _PAGE_WRITE);
+}
+
 static inline pmd_t pmd_wrprotect(pmd_t pmd)
 {
 	return pte_pmd(pte_wrprotect(pmd_pte(pmd)));

-- 
2.43.0


