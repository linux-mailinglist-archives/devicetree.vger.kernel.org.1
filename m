Return-Path: <devicetree+bounces-244474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC21CA54D5
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 21:28:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2AF5130B778F
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 20:27:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8224E350A2A;
	Thu,  4 Dec 2025 20:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="LL9lhDPE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F6B34EEF5
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 20:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764878680; cv=none; b=Aq/eMn4worzznByqPboO9r2dkyvrxwOSrpAhm6YXxb3uuQNPpbzs5JKwvT6PC5qbaBS12DKGRzN1Xk4mJR+22WTUAA4aKDvrwc8bBog+sCC6DM8rt+cMGCC8noNSXJrSKA50Q4fKMaK5Ai4ylDdod5k4Xcjpc8zLoutGvYNghUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764878680; c=relaxed/simple;
	bh=5pCsCIMJf4iBOvf300q6+KPihTaIQ8ZBfY4WmoGUnLE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y9vwV7Vt5j3lXrBzTzD1Ua7TyUPIDCuee8ZUYd/cdMRiYMwr3Bj3MIkD/OGFxv6Di/cRwSA7nr837AdIcZoYgQJhsifR50MdJ76NjhxkTYEXYtr56tNcaS9Ddw/D3H6izArREyyRxeO86bI+7vBM/E/zuk/N/H4juiwmagJ3dRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=LL9lhDPE; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7a9c64dfa8aso1146301b3a.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 12:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1764878675; x=1765483475; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y7cVA4V+tsTGYh8faQvOG85ZxC8pPRVoW62aZwUk0L0=;
        b=LL9lhDPE7KKQfMlEY58K7DFk2zBKGmI4yZ3vx/tQDy0Ccf/7WRooebvulhaOejlTII
         A/+UJKzebAuGn7yUGaOtQ8h0s0WaW7SutSopAqOlr7KDOs3J1iLtxoCfjyIjndjGurag
         DAtH967EWHHWcdewaZuUB/VWYBlU6Aerf2UbYIcgXS9EYNR7ckCTZnQTJGKOVRbEn+AT
         mfuL7pweJHQK1xvS0e76PDb6IJvr1fanzYgY1nZo4GnLrGvTsdzM/jN3gW+KWY7CbcBH
         PcrC25B+ygg+hWvmAK/Pos9bDGd6HTt6QasEuhzeUKmHn6s6qI72tzI7IIayk+V2PGmy
         JJLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764878675; x=1765483475;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=y7cVA4V+tsTGYh8faQvOG85ZxC8pPRVoW62aZwUk0L0=;
        b=AmTeAQ0j9bQtjhVsxtKwLU5iaUaMNwbf+Pa7+XHSMYWjWEh0zoGl9zjEhT+GEsW7z8
         hs58lq1c0/jp9cmbk5h57YiCq7xVg2X2OJGU3NOd/6Lw7k87N/Q6CvxlN0+0y9NtPmia
         0BA8USTOsbUA5CnqbQ+c1q8dCCGkuxw6Fb50OxmY0ZPHyJSR5HgjH/zHa2NI10Pzi1QR
         0m1VGldPH7uyfE6HwYg78HzvH7IJ0X/j7PNAgPqlKm2Yf01UdBFVNRkmsy+Mb90heESP
         WLPEdaJRKk5t2vMijM6EF5bZ9Id0RO06h1M8dKdpQbxdZfjWgz1T1cYi9qbG1gpASOvz
         cjog==
X-Forwarded-Encrypted: i=1; AJvYcCUymBYHyzJyjlhRynN0TcGaziynk1/gA0ImdJvx/iBFM6qR72BB5iMkBWWD9ghBWF5E5teahqijbd3c@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7j8S2bV2XNoYppK3cz+XcFHArNNMms6vqyeRQhdbF19pxW4r3
	vp0L7ZRueMYxljgLhsN5Pv/AaPlV6QY7GFeipZyRsS2ICE2QBBkNDTz8c/xeoqT2tE5QNnR2bxX
	dK1K+
X-Gm-Gg: ASbGncvI5sAvUP9b2rjofOlcooFpKoWM9bJjsQSJZq3N9lshktK9YjxO69JO2bOLNc7
	Ss83CZKaDIb+RU6qcUVjQ2uq6dmElTCeNxKmjLaT79R9qoOH7+xld8ohzX1A7FlUx6eR+brMIIo
	v4vPlw2qIAuTT+wIlT3W8Ve3Hmet0DqwFPt6GExSSv4CbuS/eRUSMnplUYxmK4C3HH6VJ0oEbZf
	df+vmLRXmTnv5Rqg4LsWQqTJYnP1LKde4ed9jXTjvrYX3Gw4De4kF8tWpd0gHllvUn9N0V8vayy
	eYCcVCCAZA0aqlZO8wjl6sxiNER4p9wpS5lX8C79Iktc1rx2bzWNiP145HuYn6Pmnv/Z6p7UYjP
	COYDy+qfnOT75TTssnz+OB/CmaKkDdqJL/sisfWMgEjMepqDsQcN/RFcJ1UBXRXIPpXkBUOViI2
	H5gYDP3DgLfDBdiRcdnAmqJ7zfuZWZTYU=
X-Google-Smtp-Source: AGHT+IH3DRNGCvULusk0MSN0c34XACnhHDWSefcdBCkji/UkCW9Cgr1V8Io5HqSxhaCaIYKCC+gGlw==
X-Received: by 2002:a05:7022:5e0e:b0:11b:9386:a38d with SMTP id a92af1059eb24-11df64a5fe7mr2337882c88.48.1764878674645;
        Thu, 04 Dec 2025 12:04:34 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df76e2eefsm10417454c88.6.2025.12.04.12.04.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 12:04:34 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 04 Dec 2025 12:04:07 -0800
Subject: [PATCH v24 18/28] riscv/kernel: update __show_regs to print shadow
 stack register
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251204-v5_user_cfi_series-v24-18-ada7a3ba14dc@rivosinc.com>
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
 Andreas Korb <andreas.korb@aisec.fraunhofer.de>, 
 Valentin Haudiquet <valentin.haudiquet@canonical.com>, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764878636; l=1182;
 i=debug@rivosinc.com; s=20251023; h=from:subject:message-id;
 bh=5pCsCIMJf4iBOvf300q6+KPihTaIQ8ZBfY4WmoGUnLE=;
 b=gAgt0qiA01P7drDBMqFQXuoLVXR1r0qiMVxyXn0hwdIA1M7y9CqEeq19oXDcQmb0Z/54Aoug8
 68he+4K0zLTDttF3EANbQpNqxF1OUC/aAhnwKbqrODAAIjZ7IEJnRR9
X-Developer-Key: i=debug@rivosinc.com; a=ed25519;
 pk=O37GQv1thBhZToXyQKdecPDhtWVbEDRQ0RIndijvpjk=

Updating __show_regs to print captured shadow stack pointer as well.
On tasks where shadow stack is disabled, it'll simply print 0.

Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Tested-by: Andreas Korb <andreas.korb@aisec.fraunhofer.de>
Tested-by: Valentin Haudiquet <valentin.haudiquet@canonical.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/kernel/process.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 49f527e3acfd..aacb23978f93 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -93,8 +93,8 @@ void __show_regs(struct pt_regs *regs)
 		regs->s8, regs->s9, regs->s10);
 	pr_cont(" s11: " REG_FMT " t3 : " REG_FMT " t4 : " REG_FMT "\n",
 		regs->s11, regs->t3, regs->t4);
-	pr_cont(" t5 : " REG_FMT " t6 : " REG_FMT "\n",
-		regs->t5, regs->t6);
+	pr_cont(" t5 : " REG_FMT " t6 : " REG_FMT " ssp : " REG_FMT "\n",
+		regs->t5, regs->t6, get_active_shstk(current));
 
 	pr_cont("status: " REG_FMT " badaddr: " REG_FMT " cause: " REG_FMT "\n",
 		regs->status, regs->badaddr, regs->cause);

-- 
2.45.0


