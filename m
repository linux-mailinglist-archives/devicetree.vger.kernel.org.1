Return-Path: <devicetree+bounces-255826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D5FD2A011
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:17:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A6A8730DD6CE
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 02:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 295463385BF;
	Fri, 16 Jan 2026 02:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="RQCiCy2Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F7A339B4F
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768529474; cv=none; b=hj8/JyNnLe9yrbzNjMybRQYLRFcfxN130ZH9VikB45LD4JIfKL1r7ZcRbU3d++V6+MPo7DWFQ+9ehURLp9vB/PHdlQqkyc3Kl18GblCESw8X2QhCizmLUjXCZUAcV45osp/pcYsxDRrMA94B1D4pUPCXwlFI1I4KkD2vtxCDFNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768529474; c=relaxed/simple;
	bh=mKysT8KHFLSQa82JbMTMgsFtGY4HtAheNrYCiZp6zik=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fEhALWeB4QlfuZmw021Fvj+jCL2r7a72Zpijj9gkdsQLj2YO1QHF93OV9lTCUBTK4gKLk5htvNKU3F1qzZGDXGVFD75og15yE5x0MrJWYtgtFvUoqbTppF1iEQOYZpPhf9erjJvIps+xzOVMWz+6t7m5cUxcOmIM0q7ut/9tnew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=RQCiCy2Z; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-34c708702dfso781972a91.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:11:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768529468; x=1769134268; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pwFSLskB5z1f9GmQNZjd3nH+m9L8SGHLoRABIaKF0a8=;
        b=RQCiCy2ZW/d54KZcP7nLFQeJ5e1juEKheOtQdNVSRQQKLUeSnwbPRsutE4HvGmOaT8
         sdVqm0LHwbANEQjKIMkiObRQEcN1TjifTv4h5/AzRD/WfgyPc9OmHRRJh3dNWQCkLBdM
         kxtG15hph9YKMb0NzjBchHYIpwEBLfIJ2eXWHakn9q28HUAGYmchY7zB/e/Z9T62SiUp
         jdXD8adR6B/WPC7XikLL1il4pk8J6SjBXfRabJGLuSzFkzMMxZrcHTwLHaQcTuLreDNb
         gcxF6OEsZa9eIXNPKAZPC9W6BxUN54vmn8v7/oNy657eGz+EP7Dmjb+vFgrlh6zDxAKt
         2C9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768529468; x=1769134268;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pwFSLskB5z1f9GmQNZjd3nH+m9L8SGHLoRABIaKF0a8=;
        b=cM1AvKTu3/lrUSQw+aUTFzqP9fC2FJzmWYJ0k3+PrMpOs7STJ9yZy3DPHBKPwSXQiE
         1XBuB1tMSFA3gHZivEb41QM0WTT6jG/4KgSu1APRV7xuZg9mThm411+ADHYyk3LZ2mnV
         HG6WFLAboF+tizERNtcJYD0ryx+upiQ6UYqE/jILH0TQBNE+efMifZwlVXTMMLvbdu6C
         +b4YmSoRMvP48ykgn6RM+P6dhAUP2CdXF0Paia9Dx5cAqXz5Agzc7yGHqgO201ynRPwg
         Mu5Nu9uW+FZIUFs2aKlLrWY9yKjt3410mebDK2lAsoANhzfNFwEIiFJvZIaAFNv0vZYQ
         sy9g==
X-Forwarded-Encrypted: i=1; AJvYcCUx1Mr5O6Cxne2bX0slzQNLYuI63DcqQxOVeM5aWor3Pi6+Z9qUx25oGdI9tEzmPBkorwy+KRFSn1NQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw3mROcps3B7WJo910MF5NaHyrZvJPZQyHS1StSUpIuyGLkP1f
	GqZS/qREqykQ9j0WdTQgSsQWh/A8o1hdiKdmjTYMXqqoVXl10vNjLE+UMgg1+z2pV8A=
X-Gm-Gg: AY/fxX5X9hWRTeSkfK7fjJHdEjteehbbIUpgVZ7STjBWY0cfQJ8OzhBJMrXuGHGvcLx
	PTmCIP64UoxhQUZJsJhlOBnhIFtzeFjrb3WXDXg8/4+kbIbS4UWaOc9T/+ynz/PJhbJwGeI+cGb
	pMS4TlU4DSv050hKfTZDCPZoRP7WxJmGyHIb7DGLSkmaOZ2Pyqv341qI6q0YNJglSi0cxKmIYvN
	2h2ViFWggT/fP6MqMraaASl8Q6SNXbCwpihRZM/WiEJpjsmuM2v18MeGEr2cu5HyrSAE4g6M2Da
	XHQ18dYXzHdhUb08xT2vUWHZFLC3ADMt1bmu55ufAVjZz9G1zbCUZUACAMVOBC+ptCJE22uj/ux
	db2q81QWmOorRvIKRcrdlLJ8ddB6PzRqWLsgyb6Ppxh6BTPXx4JDAfncxpWDBKnfVTo4RBA3vze
	VoRGg9CdxqJh4bEl6I7Or9ot7sOhisG/53n/WqR83l991EKGHzQKpDAw==
X-Received: by 2002:a17:90b:3d92:b0:34a:b4a2:f0bf with SMTP id 98e67ed59e1d1-35272f1a894mr1404668a91.16.1768529467866;
        Thu, 15 Jan 2026 18:11:07 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35273298968sm364317a91.0.2026.01.15.18.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 18:11:07 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 16 Jan 2026 10:10:33 +0800
Subject: [PATCH 3/3] riscv: cpufeature: Clarify ISA spec version for
 canonical order
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-supm-ext-id-v1-3-5fcf778ba4a6@riscstar.com>
References: <20260116-supm-ext-id-v1-0-5fcf778ba4a6@riscstar.com>
In-Reply-To: <20260116-supm-ext-id-v1-0-5fcf778ba4a6@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Evan Green <evan@rivosinc.com>, Andrew Jones <ajones@ventanamicro.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3

Specify that chapter 27 refers to version 20191213 of the RISC-V ISA
Unprivileged Architecture. The chapter numbering differs across
specification versions - for example, in version 20250508, the ISA
Extension Naming Conventions is chapter 36, not chapter 27.

Historical versions of the RISC-V specification can be found via Link [1].

Link: https://riscv.org/specifications/ratified/ [1]
Fixes: 8135ade32c0db ("RISC-V: shunt isa_ext_arr to cpufeature.c")
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 arch/riscv/kernel/cpufeature.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 39680280f858..629984df1e7b 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -461,7 +461,8 @@ static const unsigned int riscv_supm_exts[] = {
 
 /*
  * The canonical order of ISA extension names in the ISA string is defined in
- * chapter 27 of the unprivileged specification.
+ * Chapter 27 of the RISC-V Instruction Set Manual Volume I Unprivileged ISA
+ * (Document Version 20191213).
  *
  * Ordinarily, for in-kernel data structures, this order is unimportant but
  * isa_ext_arr defines the order of the ISA string in /proc/cpuinfo.

-- 
2.43.0


