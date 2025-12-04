Return-Path: <devicetree+bounces-244456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CF0CA535D
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 21:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83D493179BF4
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 20:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26DD734B421;
	Thu,  4 Dec 2025 20:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="QVhJPuRJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025E134B1B6
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 20:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764878643; cv=none; b=YpFutLJwOEWPijFBuL2PNdEq4jM5JASwqyjvwkUf2qsp/hIkSjNEvo6kTOPsIyg8vPVTxeGb4kPGeuyQZbtVccxfvBF2uexHRPHP7jVebMNDX9g/5ToyvQ0fZdDOeWjXcx2TJza65eE9njLjF7B3hATeE1jxfjoXjpy87o6JiJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764878643; c=relaxed/simple;
	bh=BfqrkDAmEYT+r742gKB+SlFctae91M/veuPAGWY6Q04=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i9SgYcCKm/QDIOKu94g6ipU0uBoSe7iPzPtReAwl/Ty8Iyedmk8pel4arRGOFcS2jUH6SlFbJ0PBbt0rYPJ9Eqx5/8u/e1CxCQwTdUjF14I0dCo148uFo0G2dM4EQwfUL2bc887M7f/LMdJ0ZdmL7JCmb7aEFDipHyXwbG3n/vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=QVhJPuRJ; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7bc248dc16aso1037547b3a.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 12:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1764878641; x=1765483441; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZzDCu7IaTRxcq9mEPcCPJw7K7qmz1vUabcyA8OBdm1w=;
        b=QVhJPuRJw4ru6itiJ7mirR256wQL1Nwf7ZzEv8ynm53sTdG2LDVUYJbIlylkvuSge9
         l9tWrPUyJZWxDrK2ghm2+lYHwOa6458aXIp6osVS+Z8rfI337uL8Y7hOpdFB8p0WKok7
         WD8EfOKVFpzbSecFSaBvB2Ru5gktu0IEyvd3XD2+0N1RWcslOP9EeIi1tvKUmdk4LarK
         DolC7Mu0+csv0sy9RBYeZ3JxRd6TEHKa4up5wRFtzHfGvbb8NdiqNdomsl5xe86tpnmP
         PyLGuQZTy/KzUIADrY0koWLjZQNOaqnC1ZKr1Z/ew1csuzcJa7FiYsd2FtJuibz1i+ol
         uJ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764878641; x=1765483441;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZzDCu7IaTRxcq9mEPcCPJw7K7qmz1vUabcyA8OBdm1w=;
        b=nRX0pNRzU+IMDLpVEAwR3iZvtZ8YKZQp14Q9AkYrpk/9+eaEBeiU+R3n5u8vJzwaOa
         zSoNdgHFZgIBU1DDZxLfakYPXvFokO4eHOxb0jMxCyuXYa8rx8BEpPdClaJFlEhNIgAt
         tbGEIYsU9v0Gyxs6rPSkZBGGRurCxd76aJyziDCctojfKgFHDig7sS7rmoEV41UFnQl1
         WZ+KgEo2vWiXmhvlWHN4sI5a4uj37ArdoP0N9jFFXVGKb3VFA5t2I64fEih2pGcibr0p
         AAA5A3HUtyulLTz1tCI8zYV9D9a2eizlWo4tHOub6eLNBWaFgC87MqlSMQMrGZ4Pwseu
         9Q6g==
X-Forwarded-Encrypted: i=1; AJvYcCWdcVXq7ZUANuorBosU8uliLoMCTOnrmrrhYvEFQZIGtbH2G+KCIbYTSh6isiXBzs6HnzfeP4aGmeou@vger.kernel.org
X-Gm-Message-State: AOJu0YyK3Xxlw9My7lb0A7eajEj++E/96x6+DVAXfpm7v8jqlKkewj2v
	3LkKMEtGc1Pk5X7AzHjgAZfkHJUFWZl5zs5Knf22YobPmwc9f6aOUmhS0FQmUNm704Zuc3dX+95
	Wkyv4
X-Gm-Gg: ASbGncsyiQFYGpg06JzTLgK50/Imf268RfNYwpYkLrVNJs5RqrJEn1FNfuC0pXHrFfv
	wrgbjS9jJ7ztFGmLesLOwbYYC8BRq7mDsERvTVasGdgV7zAwdjndVsuG5rQElkyTLYJVXAbPkeb
	ghJEkRM6S15AftDPpHapjMkX6wdpz0MAM0VT0gsh/mzTOe29Jqc0Pyb59r+GfSCFtW6fFOd3AL1
	2Z90auT5RwjBwl5Mw/9+1AMFOgTgwx3dR3rtJDIKSx6Pk0rMyekgK/Ka84gr5xz+VqaLudJ2FZ0
	W+u7tRTiyFA3Q+AoYYW+oKnU3Gp/HpBvKXOlt3djMJXJZzGu+s5rLLnrF64iGkNOOryTzSQiWPu
	z8I1+7UYoIeYrQ0GvMf48MP53qwd3y079n9d9HBmCj3tvKtpWXmMYzC9uhKtpffUzdIZk+Xz7O8
	mJAfBRNk/lXn+l3zl+wi4u
X-Google-Smtp-Source: AGHT+IFS3/LyaA7r+iO4CE8PdPOdVvp7/Ont/dyD58FlxgFclLSqiPQIEE7yhvikN0vHy7ae7J+lfQ==
X-Received: by 2002:a05:7022:925:b0:119:e56b:98ac with SMTP id a92af1059eb24-11df646417cmr2797504c88.19.1764878640495;
        Thu, 04 Dec 2025 12:04:00 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df76e2eefsm10417454c88.6.2025.12.04.12.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 12:03:59 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 04 Dec 2025 12:03:50 -0800
Subject: [PATCH v24 01/28] mm: VM_SHADOW_STACK definition for riscv
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251204-v5_user_cfi_series-v24-1-ada7a3ba14dc@rivosinc.com>
References: <20251204-v5_user_cfi_series-v24-0-ada7a3ba14dc@rivosinc.com>
In-Reply-To: <20251204-v5_user_cfi_series-v24-0-ada7a3ba14dc@rivosinc.com>
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
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>, Benno Lossin <lossin@kernel.org>
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
 Andreas Korb <andreas.korb@aisec.fraunhofer.de>, 
 Valentin Haudiquet <valentin.haudiquet@canonical.com>, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764878635; l=941;
 i=debug@rivosinc.com; s=20251023; h=from:subject:message-id;
 bh=BfqrkDAmEYT+r742gKB+SlFctae91M/veuPAGWY6Q04=;
 b=rLyoDrCEHiggT9VGWh+AV59ny1tITwEdtsn6xQ7T68CawzBV32k8ccRrfNpmgg6pBQ3jSqH1t
 By7DryeDPH3CNPKMe3XDDQ4h9GMvBJsJm+XUidd42pvbJxj7L7UGjUE
X-Developer-Key: i=debug@rivosinc.com; a=ed25519;
 pk=O37GQv1thBhZToXyQKdecPDhtWVbEDRQ0RIndijvpjk=

VM_HIGH_ARCH_5 is used for riscv

Reviewed-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Acked-by: David Hildenbrand <david@redhat.com>
Tested-by: Andreas Korb <andreas.korb@aisec.fraunhofer.de>
Tested-by: Valentin Haudiquet <valentin.haudiquet@canonical.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 include/linux/mm.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index d16b33bacc32..2032d3f195f1 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -380,6 +380,13 @@ extern unsigned int kobjsize(const void *objp);
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
2.45.0


