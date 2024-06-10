Return-Path: <devicetree+bounces-74341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5CE902C0A
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 00:58:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C51EE1F22605
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 22:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74B1E1553A1;
	Mon, 10 Jun 2024 22:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="QLbzE9IJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0920F1534EB
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 22:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718060223; cv=none; b=HE+zM4XxNtMzxTvTaiB4C0buh0VEZVbIjF/GzuVvkJxAKkSP0L+j/RFz1O0dz2SaiJwiiy31lAAE6SzSGfPPBk2M7ivr+0bDR5wllUlYbMeatVLkRKGRjaCcbzbyCfeR2a0hF8t//gU4rdNik6X1NRP5cv/qS6Xx8lVhry+U5hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718060223; c=relaxed/simple;
	bh=YRbwjAEMooOC1Wqfne0YGBAOlvdWm2exzND7IqGSDDM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FLnHeJGlX3B3RVF4jguFIa/KVwYROdYawSfKzJw9jPfji7n2FwZEz2wshaboEEZqnPwxhshdtAaHG0Q/2VwD+wKn8MtyINNebwaMYBAQJvUK0G5WuIFA6OFce83HAO81tw35n4u8loeLeFDk8I1Y2GyWlj4r6vgd0kOhU76ElMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=QLbzE9IJ; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-702555eb23bso3854974b3a.1
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 15:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718060221; x=1718665021; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7HBSOfNpcERRo+IfFfSUzbZmQ8OANKCSab29OA8NgQg=;
        b=QLbzE9IJ7OiNESxkyeN1jywesSy/24mBAcn/dMJm5hjMlCQrj2whZAXQMAJPXcgVsa
         /SQiPwbNkE8nrGXKwph/gRfUAnZ/GaHCasjqZqBXald9FcFRYWT2375bMbI04oe9Vw83
         pw9gFjxyMjyqdbPPxYK77e1j0hQderLwYXUNaTqY1ySapba15lnjwomBh/etwMcfUnQy
         FBuFzNC8G5sekaAl4tw+v8DRK/DC7DFLtmscMwP8wMEjNn4dHxqjh7zBoczo+rjuh7/T
         0Zr4zsbTxDJTJOaCECWEw2oiqxSh+uYNDsjYT2FtMkqagohWhmbqlpVUZMr8anM46DJ3
         Znfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718060221; x=1718665021;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7HBSOfNpcERRo+IfFfSUzbZmQ8OANKCSab29OA8NgQg=;
        b=r/3VjboM1S55jF6RC9cNSBjllRMwGnQ7F0Jc5VecKnyQkX+sVHKRQEaZFAaIN6J1NT
         CT80ZFnmbkMOwsL5+irMF8rNXodw6AhUi4WANXyd7NP9xPpQYSZLV1gLMHaFlpCBAnvD
         wR2nPwEaZSNnPYJdnwtt3I17EjuErkJXsprGE344Oj2LlJDYRcHksZVzZzRjTJdZ8WWW
         9tuiZOjiVq17wdu4NKJG/3cNFxyjybIhpOZ3p7E9ph1GKE1nf+Ghrq5hA7kncFTyMUUS
         q/oS1i/hL5OGY/fFi7sOUePMY8FmQpiaPSGmgoYHLRjl/BNBYNo2xBbD5MEcch8E7YD+
         FDLg==
X-Forwarded-Encrypted: i=1; AJvYcCUH9OeLrDkZgzGpylz6yuc73tx8gpOySfZIieNL599UFUUnMGzyz5SlyvJBj9i0NNuQbmnQ5hkMHJGffLJ+S0ikTWTRtv2H8rf9tA==
X-Gm-Message-State: AOJu0YzJjCWFptITAZeLojvEz6qZt2jxLLeKbYrymddL0Eleh3ZffZ/f
	ND5iuuknGnZBV89EdLF7bwjKCertLYs8OuCuOrO7QZHUqft93tLPU2h/zkGUs1g=
X-Google-Smtp-Source: AGHT+IGIZbpFLMHE/lJ5GbefKME8Gn68phzhUe0FaeJN8+1dFczSl0GMa6MPZKO47tw63mwCQaqOEg==
X-Received: by 2002:a05:6a21:9991:b0:1b4:772d:2885 with SMTP id adf61e73a8af0-1b4772d29d3mr9114268637.3.1718060221031;
        Mon, 10 Jun 2024 15:57:01 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f71b597072sm18355865ad.99.2024.06.10.15.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 15:56:59 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Mon, 10 Jun 2024 15:56:44 -0700
Subject: [PATCH v2 07/13] riscv: csr: Add CSR encodings for
 VCSR_VXRM/VCSR_VXSAT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240610-xtheadvector-v2-7-97a48613ad64@rivosinc.com>
References: <20240610-xtheadvector-v2-0-97a48613ad64@rivosinc.com>
In-Reply-To: <20240610-xtheadvector-v2-0-97a48613ad64@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <shuah@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Evan Green <evan@rivosinc.com>, Andy Chiu <andy.chiu@sifive.com>, 
 Jessica Clarke <jrtc27@jrtc27.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718060203; l=706;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=YRbwjAEMooOC1Wqfne0YGBAOlvdWm2exzND7IqGSDDM=;
 b=BM5m5V/nQRNhZjvOPuMabe0KTvggdAN05fZDbXe+2vVdatDi9tChErTOUmlzrP1AEH9N7fbby
 PcLGUrn7jT5APulSOlHctEyjRk1D0HhX5Gm8tzJtZGG2+4QDc9oh7fv
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The VXRM vector csr for xtheadvector has an encoding of 0xa and VXSAT
has an encoding of 0x9.

Co-developed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 18e178d83401..9086639a3dde 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -220,6 +220,8 @@
 #define VCSR_VXRM_MASK			3
 #define VCSR_VXRM_SHIFT			1
 #define VCSR_VXSAT_MASK			1
+#define VCSR_VXSAT			0x9
+#define VCSR_VXRM			0xa
 
 /* symbolic CSR names: */
 #define CSR_CYCLE		0xc00

-- 
2.44.0


