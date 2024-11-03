Return-Path: <devicetree+bounces-118486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A19399BA606
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 15:54:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62B58281B61
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 14:54:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6947170A16;
	Sun,  3 Nov 2024 14:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="IwLOAFDm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FE7BE6C
	for <devicetree@vger.kernel.org>; Sun,  3 Nov 2024 14:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730645641; cv=none; b=Ar0LfJf1QRwe+yhKZJAZ3aySrTfBdNar4yH8rOqiUxzy80p6E2VI+VSUy4VvhmBioIDWurpbC1vbtZ5RtliUKkI+sX6j6xBLnMB2UGoEA85lFPTQ8StWX9Y7VlXVAwcKs89FsKch1n7/TzokeWeGS86mOBM/FlmYM1xkE4Vs5tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730645641; c=relaxed/simple;
	bh=I9YIkC+Jr1vfCxbUp9hWddXX3XizMNgS5ezZYWoSkNs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Xu6wLZdK7kfiu2ZIv4wCJI8AmypchwZIf8PxC2Vqd+BQQ4/g8jeYRvDRs5liCzQsFYsKvh1GIe18V/bWpwXPMSqFED6Vv3icBWADsIk6uBP1cKUwNWVC0BaLwLgHuO1aF42fI0u8P2zZ3QLUL4esDKpY7BoMvMPJM9qJP0adplU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=IwLOAFDm; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-37f52925fc8so2088021f8f.1
        for <devicetree@vger.kernel.org>; Sun, 03 Nov 2024 06:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1730645638; x=1731250438; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nql3DD9359qdXdLLpVtxL8oa+5wIDas5DqswNkA3KmI=;
        b=IwLOAFDmmiiHzdE9o+zlyEuI1eZQCoqkvnE2g1WFiI5dQwK2UL80wONjuRQdrnbZoa
         iGXKkYHh+fRmiDei6b3ZIzGouZBWYphaxq5QteihSa0kZEcqUTsUHVBK0eZJaMZa0D2S
         pMRIZ917kFyxtBtJS49NORVCRFbo42TNBDCQbOh4PvZLrJC2YwMy8c2/3PuD+kLfSxlH
         Q/u1FFWbRWnOz+UkOrYpLjXroFVbmUHNW7D0mOcW69X86dTJZDDAXwR/N0DFkhNQaQtv
         hRrDvqMEM6yid6ieQg/EKs4L5t5FdNmbHiNQv/v9ehNcvjBMo9p2ZPI2zYI/uIQgO7cD
         S75g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730645638; x=1731250438;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nql3DD9359qdXdLLpVtxL8oa+5wIDas5DqswNkA3KmI=;
        b=oE2qSDQEXSZaLevo29N5t9JkVu04GIHxCb1kVW2/EKPSoCLUsx9icaE8+KEjoowJup
         bGjOLfvC/jZxSnWb02/LWMkw/DlWAzIaMh/ofQwjmbhydIG8XeYV9rZpuIxF36SRVgw1
         LXrlTge/9YvzJ9sMILlnAk2kBbQdUxaFVEhDZSQ22oIn3CFjGbzdi6ywFDyDSyUPvNyi
         dA3rtKbKT2OxF2ztMNmYQZMs6N3BF987ElKvsIWoRWzDc0Otunw8TZXrodTDaS/hRaky
         zXPSFhLVGrnmYB+AKuzBg558/ysrGuPT2TrCzl8wg4ZN/Upp4XcoP3G4hmUQGe+KXS6m
         n8ng==
X-Forwarded-Encrypted: i=1; AJvYcCVCFjYD6Gr2crF+p8H1VNCa4M4DZxMx5+wPmVNKw+87iUNrM5E+Qo4xc06HfA9zxCxQEABYUIkIii+X@vger.kernel.org
X-Gm-Message-State: AOJu0YyCNvQ8SwGyKW49/bYhPrGEDo13jSdvCirNaaTV6kmG5wbxWPOr
	XZdHjCUb/NE7mm/ZnEtisrYbNRWeD/SsgnHCTauZGnJWa5MaTl7wMzBk7e2Fs7c=
X-Google-Smtp-Source: AGHT+IEzqXU+n6yFRFqvDrou02tN/4/eCcsT/sjowi0L/ehc2kcbHr+rCGMDYfv6CZMwRO5vLoFRDw==
X-Received: by 2002:a5d:47ac:0:b0:371:9360:c4a8 with SMTP id ffacd0b85a97d-381c7a472ecmr8333590f8f.6.1730645638302;
        Sun, 03 Nov 2024 06:53:58 -0800 (PST)
Received: from alex-rivos.ba.rivosinc.com (lfbn-lyo-1-472-36.w2-7.abo.wanadoo.fr. [2.7.62.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10d7e0fsm10710932f8f.47.2024.11.03.06.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2024 06:53:57 -0800 (PST)
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
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>
Subject: [PATCH v6 02/13] riscv: Do not fail to build on byte/halfword operations with Zawrs
Date: Sun,  3 Nov 2024 15:51:42 +0100
Message-Id: <20241103145153.105097-3-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241103145153.105097-1-alexghiti@rivosinc.com>
References: <20241103145153.105097-1-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

riscv does not have lr instructions on byte and halfword but the
qspinlock implementation actually uses such atomics provided by the
Zabha extension, so those sizes are legitimate.

Then instead of failing to build, just fallback to the !Zawrs path.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/cmpxchg.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
index ebbce134917c..ac1d7df898ef 100644
--- a/arch/riscv/include/asm/cmpxchg.h
+++ b/arch/riscv/include/asm/cmpxchg.h
@@ -245,6 +245,11 @@ static __always_inline void __cmpwait(volatile void *ptr,
 		 : : : : no_zawrs);
 
 	switch (size) {
+	case 1:
+		fallthrough;
+	case 2:
+		/* RISC-V doesn't have lr instructions on byte and half-word. */
+		goto no_zawrs;
 	case 4:
 		asm volatile(
 		"	lr.w	%0, %1\n"
-- 
2.39.2


