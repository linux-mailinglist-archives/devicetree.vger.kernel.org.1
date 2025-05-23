Return-Path: <devicetree+bounces-179789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB8BAC1BE4
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 07:31:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3470B1BA7897
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 05:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E06D822A1CA;
	Fri, 23 May 2025 05:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="0PabruU1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F353D224B03
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 05:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747978279; cv=none; b=QAjdE6sPhOm4K8N2+E3eHUrFOctmqkj6s1/fFqXARtNqeTrlJk9YxOb3ptKp9zvwDsvdPsnXsPyVtnvioMDK/dzwVvNEhEOv718tYtDsAE2vW09dSrICmX3I/a9AxQQR2UXzyOilym89VvR4edeufBbYa3b6qc/qk340CL2/e0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747978279; c=relaxed/simple;
	bh=uG4QPZVjl5gDK86VnIwXxVnXWRkca87HCRZHSL9+/F4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EqWwKaP2pmkxL2jQ9Tpmp9xjYQWd07HrUQITcaARcCTI/Aq6Ium8uPTZpi5aDpM6EqL8igG1TGljZef4Fk2gM+YCNsW8Y8oWI4QNSfZCBfSNhnoBQY7X9ikqnpXOG5zDmgrmmZt7kHduHNA4b8BxkX3iOJsTNKaj0GKdeAP0t/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=0PabruU1; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7399a2dc13fso10718485b3a.2
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 22:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1747978276; x=1748583076; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7X54j1g90psIDWU5pz15Bdf5E+ehG4+aRIqU9eaNKxE=;
        b=0PabruU1pEq63JcyrIU/ZBCMwBcbYt8MmoKoYLZphhFPYTPDBk6j4eHxvi3TNKs+yn
         YnqenTl43cPKcTAodEZLwKVoAUvBQDQE8TrOqmgpcpxttghREZV/5+k7wVyOTTrTR+mr
         Hg3Nw59+Crd3t+PV4dpgz49nsyld+axHAhrtwI7CcD4dOahegJzBaeIz+tyv+J+QbwRO
         9qYGjs9lI7Y4Hn02dUP6BpN8UnA0qdk8t3hC/UFWNMdu7LTBhxqoEhazGhc6fI8tyLec
         fE0AKWvc9pGtS1IinSnI7NfNhtOycwg5Nby35IPae1JpBTaN6JZsbJHneu7cdE/+Thm2
         9H/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747978276; x=1748583076;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7X54j1g90psIDWU5pz15Bdf5E+ehG4+aRIqU9eaNKxE=;
        b=hzq3puTPaVpB9glSAs9Oj7hQAq1ugNKhyANFIvGQ4zMo0leQ55tFk9aQ9gw8310vxi
         8aF18OLhZqy6NVZ3lww3v/s4xww7pprBZuPwn22OQRD0EO6sM6jejwhQdcvYgZ6x92uW
         1uG14m5vWYs47hJMkgJ2xMt6iYzIrkZiz9nEjzGSMQ4zynjk4cp+S3hVLxfiiN6Sol1T
         dqtqxnymwg0EpAmr/+zjFZD/X3Cx32Lz5WFxJjj91fwkeUOF5RyBY95K3gMPADzvDGJj
         9sOfVihAnLw7MILwdFVeCs+RE6GHeVEo1ZnuxafISvowUrcXl3Wdskr/mEZoL53pQjpP
         xnlg==
X-Forwarded-Encrypted: i=1; AJvYcCXRnmd+6tSuhlM2vecscih1Vqf4eRz6V6b2YZkUX3d5snIJ76TwDAlDuwRqS6ZRIFS57Pa2Uk5k4M59@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5XDgTNFGsZIaD8v9HYuk1OIX7LgBpdwJZBD2JACpQgaFYFmAF
	HpiP/Me/LqOBAgm53fvjECz/hkyA6nwfc6bsuFUnrcGVTtLX6mEDRs5zu7qpdCYhxj4=
X-Gm-Gg: ASbGncuEJoISi9foGabbGIAihA9tCMzwungx/J+TKPuz/QsmLKh4szw6qp9qGQzUcgU
	ti6iu8kGsJgaom0B8yybNkpFdfuR2VVT4WcAwbAcZiMFT/kat3Fz0jtvm3WxatHvnSpDx77dU2C
	uR6o6GXDBPoaIUUv6aq4ctLhi8TbgKckpmpxyk/xdSszkV+GEFBO6RU2tGDCNczFppZ2P0pP9rx
	Q3cnvSI7SoNbIhe4gFQ0xlkmEk98bYCMl5o6DH+mtrkQshBiUBO17/GS82qBPeYZ9PsotPQE6aw
	ypp1EbC4ah4udwB5hprkAWj42Q5UjFgQqxlHI/LowB1ZUSRPXN7CuRs1APpZxQ==
X-Google-Smtp-Source: AGHT+IHuvJwexFOpqMWZgmqCHklA7GJFd11ULqc5C7xPX4e1BtVUWPbvc7kB7Fax2t5Kt7WHcMzvcQ==
X-Received: by 2002:a05:6a00:3492:b0:742:9bd3:cd1f with SMTP id d2e1a72fcca58-742acd728eamr36423560b3a.23.1747978276169;
        Thu, 22 May 2025 22:31:16 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a982a0a4sm12474336b3a.101.2025.05.22.22.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 22:31:15 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 22 May 2025 22:31:04 -0700
Subject: [PATCH v16 01/27] mm: VM_SHADOW_STACK definition for riscv
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-v5_user_cfi_series-v16-1-64f61a35eee7@rivosinc.com>
References: <20250522-v5_user_cfi_series-v16-0-64f61a35eee7@rivosinc.com>
In-Reply-To: <20250522-v5_user_cfi_series-v16-0-64f61a35eee7@rivosinc.com>
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
 Zong Li <zong.li@sifive.com>, David Hildenbrand <david@redhat.com>, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0

VM_HIGH_ARCH_5 is used for riscv

Reviewed-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Acked-by: David Hildenbrand <david@redhat.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 include/linux/mm.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index b7f13f087954..3487f28fa0bf 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -352,6 +352,13 @@ extern unsigned int kobjsize(const void *objp);
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
2.43.0


