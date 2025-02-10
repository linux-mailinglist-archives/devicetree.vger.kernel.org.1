Return-Path: <devicetree+bounces-144884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9927AA2FA05
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 21:27:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 081A47A30D3
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 20:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ABA82505C3;
	Mon, 10 Feb 2025 20:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="iC7pYDk8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB752505A2
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 20:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739219207; cv=none; b=krMfMAgUgF4l6L3pj//7HjxUYT89Vbbxv3vr5EyZZaT6Jjul2BUQwV0EqVsUWb9GBKHOfPjJ+73pkGVYa5mIqOPXZg9jZfLiLTE2iztTK70nVRyfhKfXw5susGMyduirr/GaG1nBmh3eEZ4gCvU9p3yx39RILOcJ9GrR9lnL9ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739219207; c=relaxed/simple;
	bh=fvZEXse498MAei+juRUqd4/R9FeoMw38NPBzNnBXz58=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b30DAeeyAwgqol1YykXWgYuJ/4NQiGJ7WskywVh75mbLrsNVcL80IiKcnuR1fYnvb+LMD+QEh+kZW3MFZjtgVkqWWGWBQPxWGv6P6QMo6Z5u1TNOY/E+qT0sYHOPDeaS71EmNTXDDj+rl42gor1QMr++0uFyBAO3SLKuPNIBueI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=iC7pYDk8; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21c2f1b610dso117752745ad.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 12:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1739219204; x=1739824004; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ADFXc53D/cc0VutYfr8tgUjvI5cmEZUhOUtSZhfaHM=;
        b=iC7pYDk8OzVxQx34StINsJPUvclETZ51O3nqxZcnMRSSI0pS8YDMF0tl8RACTkwQG1
         EIIJa2hvUhAVSC+NK6x6cB/zpc5BIggq+ffK/Ym2uhs4ypf0q2MlPhm5MFXn7yA/Gf6F
         VdOjpYaR05YpLdXjNcCB2S9lj2E7PfIhoCe1iV2Y5NiD8xM3gPoCtzDvZUuQNKTqaDam
         5jUhVk6vThDz40Xv0p6Y+HrPqiqmlrwqbV+py7GwueSfLxT16kT77zCvYQ3bOcgXpGbL
         QvNH7BGhaCPklt4xoP9kS/jPJ3JIlgqTeRw9uXFt1GvOJXmOqXtXeDycjD8c4kPaNlhL
         HhyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739219204; x=1739824004;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ADFXc53D/cc0VutYfr8tgUjvI5cmEZUhOUtSZhfaHM=;
        b=NoDe27r3TlVkM9nmJSgzm5SCEKNjHPYJEYQ/gVu4/x2V0mYQTaqwaJaO1DUZN6bxGR
         R1doQjO/eIpAwuzlab3fx9rgk+AIly95zTDnfouEmpRHzdAewMeyH19vVzI0shNgtOPv
         dGqq7v2/Y9ue1BsU2HgvC4pohbrYsddtWejHP8tXhr1+Q3QVgyx+ZlzAXF27G18kwk1z
         pNxNXgiqJDcSCXMLnLQ2imr11v8RKwgeUNmyktMpGfejfeB9+cPujAWuNr6SgU9QvSON
         f0kkKYn4Y17v2MkcuV/2LJzewCY8Ga+uU2sZ83myiCIw4TFlzM+DqRP4xDlCU2TJ0uNH
         ce2w==
X-Forwarded-Encrypted: i=1; AJvYcCVZ/eGLp0vln8DM9sHMeHMpoij3agRBnye0qRCirUSLma0HDIblTYJjPfNtl8My7mFdJ7I3QlL7KhS8@vger.kernel.org
X-Gm-Message-State: AOJu0YxYu+lkn3q/zdGRvwsWqc/lSMNTL57NOHiM+lVBrXMDsPqVD75N
	NTlklXTt28f9X/JYB555nb0SvbEcpt8qaaIf2v+K9v0QF39Vg7E9TmE8LwvmuPs=
X-Gm-Gg: ASbGncvQpWYbiBrgGd/Ur+mpPh7pDEVFQX4eNBvvQMfF/b2eXChp6bEpp7x7flS4tF1
	RM8Ejzb2hGX6GTTLri3s00FMUQOE4ak4uDHz+8KsMy41KvfqXCVDjXLSduUGJTtHYesZfhzXYXt
	wypnPQluKF1NTrLcHNzqAm5XghPgJWtqroDgouAY4TV0RHrOgA1OS1aSXcyDnoPNFga0jrJ3VnK
	IbzRwDyYJrP5vOEr82B9aVMzrWP388gIVpKSNV0BocJvV+i/zZi7elNc1ouAkdapGeCByglnjZS
	EnCdqo9LBbcI9duK9aaOwOgPZg==
X-Google-Smtp-Source: AGHT+IFznxG4IUsH1vtGUm0FvXVBvTHvmf0eQhdxQZjLsHpvXLSfCmOiU5USFlGIslppLz4th5AW+A==
X-Received: by 2002:a17:902:f114:b0:21f:75c:f7d3 with SMTP id d9443c01a7336-21f4e798104mr179051845ad.38.1739219204274;
        Mon, 10 Feb 2025 12:26:44 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3687c187sm83711555ad.168.2025.02.10.12.26.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 12:26:43 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 10 Feb 2025 12:26:34 -0800
Subject: [PATCH v10 01/27] mm: VM_SHADOW_STACK definition for riscv
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-v5_user_cfi_series-v10-1-163dcfa31c60@rivosinc.com>
References: <20250210-v5_user_cfi_series-v10-0-163dcfa31c60@rivosinc.com>
In-Reply-To: <20250210-v5_user_cfi_series-v10-0-163dcfa31c60@rivosinc.com>
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
 rick.p.edgecombe@intel.com, Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.14.0

VM_HIGH_ARCH_5 is used for riscv

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


