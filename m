Return-Path: <devicetree+bounces-79877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F86B91730F
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 23:11:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39F6A2848DD
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 21:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D766181BBF;
	Tue, 25 Jun 2024 21:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="JWbV4MEQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D6017E451
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 21:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719349791; cv=none; b=eZlQP4iA1eMihM1eEWRtn6cp/LAMLPqe4D9wxr3GoBvp6cMIPZjSRoh74vi7C67RtkPL+3wJFPQ4cuP+HX8Q3utRi9sa4ej5ZNc1/v0+ksNx1mGO9mYjjUSYM1tmPUpzE2pOCdHHr/i+wTsoQSDNQx2KsNtZCY0icBzz3i0VGxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719349791; c=relaxed/simple;
	bh=TXLyzC0+V8RJB2xHJ6LNBHt7N3KLU50FXp7SipRdFQk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HEsciBsZuBROhlujpyLuzHaRxCBpMTl+fjtTdhVo9PEbGSANC8vZrwe104rTs6KIPkIsDygxtsJrdhYU99pXKuWHwQaW2nPp1xfugMdwASBnStSvDxmSohXm9mKL37e9zE34l/bwOC1YgB6WNlpczkzhV1y6qXav+yWv+fS2rEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=JWbV4MEQ; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1f9aeb96b93so42238015ad.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1719349790; x=1719954590; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XfPM04Pyb/lGY9Q7saAL52HDlLyxzOizf7aq1c4K5eE=;
        b=JWbV4MEQtPTQ03u9VAp1J7oHbfnfYDAA50Tv9xKFT4B5AGqQpEHt0G1P4iNIKC63Aa
         wYjL5Z/FXgjj4xFjB8r4TToHYI+kZhYd65whlMKMf4b3LmmnT78UBtHcEhPHrJRcaDiT
         VE9LlqQ1vTT4cqi8pwDZWMm0SmdMyQnQvrUAjER/B3fISs7y3zAM8wrdwbB7cbwiPY6v
         Cj/7BI7D9uqxxYNqucsT2fOnJ0JUPyba6PY9jYWTzS/JIp8EfEeHmtp5KxuAWEmLxwqm
         vwwPdd4mR6My3wfSwhuEcrnqL2WtGZyZx9RZZN8E0x88u1e2bfDeuyNlWCZwFtIWxNSS
         RfDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719349790; x=1719954590;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XfPM04Pyb/lGY9Q7saAL52HDlLyxzOizf7aq1c4K5eE=;
        b=MMqE3Sc2wqGvHeRCwl+ECBks74ktFa8zaR+8KGlBWB/J02H9bqdugg12R2rvMoVAfB
         ABkjPpICWk99rhygjqb2WXoX9YuyaBvGSuCJgAmnZm/5D1lhcYx7MjPiR0aiGrThYono
         fJzbuvrLooD7XPyeWaCE3y3Zgnk0m7SLZyb1UX/sQHCyK0sDXZH7o8v45x+Xeh2GYdCN
         obff4jRjyB3TcqQDvE2tTwUok8Pe/KxrIP6mHqQcGFwAbA0iVuvN3PDPc7oZcmiYQkjv
         td5i4/ke1Xq0ht0iRIsBAFF6+1VbV7gCqQ6FOxMXN05tJpoSS0AaX5eX2qFzuRmbE2LR
         iOag==
X-Gm-Message-State: AOJu0YzKeQj35BcOj6+3Vj2G5uJ5aantYRthtKCeJTvGOCLPBnyk4qep
	Iiy50t/KSWJ7SzTA0UA5u7VE5QiNn74EpbP7MOOiWZiX5u1iQglKf3ypAKL+sjI=
X-Google-Smtp-Source: AGHT+IGeWKqd97hO0c2XIDZhD2hlaWhB/xhaoVBtqBOKtiSu9iE5NhFqVkg/azBhVzCaS3o6lABNTw==
X-Received: by 2002:a17:902:e5d2:b0:1f9:c8cc:9df4 with SMTP id d9443c01a7336-1fa23ef7f7emr98497255ad.45.1719349789879;
        Tue, 25 Jun 2024 14:09:49 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb328f57sm85873455ad.110.2024.06.25.14.09.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 14:09:49 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org,
	Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	Atish Patra <atishp@atishpatra.org>,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v2 08/10] riscv: hwprobe: Export the Supm ISA extension
Date: Tue, 25 Jun 2024 14:09:19 -0700
Message-ID: <20240625210933.1620802-9-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240625210933.1620802-1-samuel.holland@sifive.com>
References: <20240625210933.1620802-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Supm is a virtual ISA extension defined in the RISC-V Pointer Masking
specification, which indicates that pointer masking is available in
U-mode. It can be provided by either Smnpm or Ssnpm, depending on which
mode the kernel runs in. Userspace should not care about this
distinction, so export Supm instead of either underlying extension.

Hide the extension if the kernel was compiled without support for
pointer masking.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v2:
 - New patch for v2

 Documentation/arch/riscv/hwprobe.rst  | 3 +++
 arch/riscv/include/uapi/asm/hwprobe.h | 1 +
 arch/riscv/kernel/sys_hwprobe.c       | 3 +++
 3 files changed, 7 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index fc015b452ebf..75fbefa0af26 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -207,6 +207,9 @@ The following keys are defined:
   * :c:macro:`RISCV_HWPROBE_EXT_ZVE64D`: The Vector sub-extension Zve64d is
     supported, as defined by version 1.0 of the RISC-V Vector extension manual.
 
+  * :c:macro:`RISCV_HWPROBE_EXT_SUPM`: The Supm extension is supported as
+       defined in version 1.0.0-rc2 of the RISC-V Pointer Masking manual.
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 7b95fadbea2a..abb7725fd71b 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -65,6 +65,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZVE64X	(1ULL << 39)
 #define		RISCV_HWPROBE_EXT_ZVE64F	(1ULL << 40)
 #define		RISCV_HWPROBE_EXT_ZVE64D	(1ULL << 41)
+#define		RISCV_HWPROBE_EXT_SUPM		(1ULL << 42)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index 83fcc939df67..b4f4b6d93c00 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -142,6 +142,9 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 			EXT_KEY(ZFHMIN);
 			EXT_KEY(ZFA);
 		}
+
+		if (IS_ENABLED(CONFIG_RISCV_ISA_POINTER_MASKING))
+			EXT_KEY(SUPM);
 #undef EXT_KEY
 	}
 
-- 
2.44.1


