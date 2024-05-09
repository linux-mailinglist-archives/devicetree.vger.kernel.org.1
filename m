Return-Path: <devicetree+bounces-66078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6000E8C12BC
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 18:28:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11F841F22309
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 16:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1437170891;
	Thu,  9 May 2024 16:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="GBmug3Rs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC1817085D
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 16:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715272056; cv=none; b=gM/xuAcBd+LRBbiym7okQW305osvL+CoBQHAax48AT0zSxrj8raUOiiNdRw/z35G+cO4Hu0Q0IyhKT6Ukagj6nEdQggJo+lJEIKnGWi3hV/4St8aJdQTSLkkPkKd4ZB0/O6CEpyco+aKNsp/Mpn0Gry5yKtSh0/5OWch1Y6TMRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715272056; c=relaxed/simple;
	bh=bRdldBcR63JhBiYgvb0j6aaFVJpCttTWpBzzpwiAVFE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EccjEUvfhtXgoXYBTdyr/vWMOIUAvK17FF4ewAhmImbpVcvueYILt9E1v4PO1+3tExdg7V+kOzspOaq3su0dqSBE+jHoK6CqdXzRLQPNBryy//jiFLm5StDhH4PfHjzCLc7JCGwQx2CXvcjV6SQN6Zzl212wp8J/5/aRtbDsVD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=GBmug3Rs; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1e4bf0b3e06so9147555ad.1
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 09:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1715272054; x=1715876854; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hrVtT3wUj2Ro2LlZ8rt/5kKYI6Cl/lb7mj3BLkp83qk=;
        b=GBmug3RsgN9C0pFjOHp1E1ldNsaVhtGlliA2BfHmjYkdiVq/lEEELtsvx5+iFKM+U/
         xeqJZ3oL2xd+VofCUTUUO5oodWTLppmjoGRHSiuyyLgtRfqXxxsmQXC8f1AQi7Pt+DEb
         TYaLDubHtT+qJmVmsnvtHKjpNJY//QAmcycSh3shA/rUXcQuO+fe0QPnIIA8oltesOjM
         FLVGikc8DCEBIDDtuYfwr4+b1VdnXih0X+JynU1JOBKZOZZrGDoAxCRrc5OGCqykj/ng
         c/rLlHkwDF9H34PzPAa0MP7Qmtmg+B5MLSRnZwGoAXHXdBgEg+Lp83+PGNpebDIGnOYW
         JiHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715272054; x=1715876854;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hrVtT3wUj2Ro2LlZ8rt/5kKYI6Cl/lb7mj3BLkp83qk=;
        b=c2fSMm9s4rxPkBENoqs2iaISrBapid4FnSDC4CANFA3w1YUhTje+9uAH5BB3+eQU3W
         NZUGX+y1LD4khk+ObufMTnfYzS2hG+0XL3kmDS96kKqIxIqSPuhzMDDXU3lQbLNJnuwo
         JRwaXah8rKeMN1BgaAmzt7QHJxiTcmv5hvCXrmWFtaqP046MLGlyv9plaXR73Uv3E3wo
         Tmt7iiSW8RrYD5CYEab+3+oUgunPgowcvWquj+gbpB8vh4m/9PQ/QKU14G9mUQOf2djx
         HFrGlWXt4IIME4dbLOGxdy4vkMj+d9ZX8H/LvmsT+RrqmfP6RaryvLq2OGliK5V5zvOF
         pEKg==
X-Forwarded-Encrypted: i=1; AJvYcCVJBerv4JtJyjIqSH/Zko4kBTWKpfOarwa1C0D/s3z+TNSUDsFfpXAz/TUSuW7s2wJvpA0JvpaoZotuN+YGN0nRk5J8U/GwNTCogg==
X-Gm-Message-State: AOJu0YzNU5aK8kanDRirBr24LD0mqiKFA/JI7m5q+JNel6XoMbVux0Ar
	I/lnbtPNgtmk1DDtqid4JTv/CygWhVOMcW9eUgZKxLqVHzDy7mW1onxhNFa9n0g=
X-Google-Smtp-Source: AGHT+IF8PgRVZZ0FHnW63FE7rtPOWp30TN+TCPvlMDVR+j+74ajw2NLtOZVqw2pXCxjO30nvabMrkw==
X-Received: by 2002:a17:902:c3c5:b0:1ec:e3c2:790e with SMTP id d9443c01a7336-1ef43d2967cmr1810595ad.19.1715272053741;
        Thu, 09 May 2024 09:27:33 -0700 (PDT)
Received: from [127.0.1.1] (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0c13805asm16210285ad.264.2024.05.09.09.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 09:27:33 -0700 (PDT)
From: Andy Chiu <andy.chiu@sifive.com>
Date: Fri, 10 May 2024 00:26:53 +0800
Subject: [PATCH v5 3/8] riscv: cpufeature: call match_isa_ext() for
 single-letter extensions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240510-zve-detection-v5-3-0711bdd26c12@sifive.com>
References: <20240510-zve-detection-v5-0-0711bdd26c12@sifive.com>
In-Reply-To: <20240510-zve-detection-v5-0-0711bdd26c12@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor.dooley@microchip.com>, Heiko Stuebner <heiko@sntech.de>, 
 Andy Chiu <andy.chiu@sifive.com>, Guo Ren <guoren@kernel.org>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Jonathan Corbet <corbet@lwn.net>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Palmer Dabbelt <palmer@rivosinc.com>, 
 Vincent Chen <vincent.chen@sifive.com>, 
 Greentime Hu <greentime.hu@sifive.com>, devicetree@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailer: b4 0.13-dev-a684c

Single-letter extensions may also imply multiple subextensions. For
example, Vector extension implies zve64d, and zve64d implies zve64f.

Extension parsing for "riscv,isa-extensions" has the ability to resolve
the dependency by calling match_isa_ext(). This patch makes deprecated
parser call the same function for single letter extensions.

Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
Changelog v3:
- Remove set_bit for single-letter extensions as they are all checked in
match_isa_ext. (Clément)
---
 arch/riscv/kernel/cpufeature.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 15ffda1968d8..4bfc13209938 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -468,16 +468,15 @@ static void __init riscv_parse_isa_string(unsigned long *this_hwcap, struct risc
 
 		if (unlikely(ext_err))
 			continue;
+
+		for (int i = 0; i < riscv_isa_ext_count; i++)
+			match_isa_ext(&riscv_isa_ext[i], ext, ext_end, isainfo);
+
 		if (!ext_long) {
 			int nr = tolower(*ext) - 'a';
 
-			if (riscv_isa_extension_check(nr)) {
+			if (riscv_isa_extension_check(nr))
 				*this_hwcap |= isa2hwcap[nr];
-				set_bit(nr, isainfo->isa);
-			}
-		} else {
-			for (int i = 0; i < riscv_isa_ext_count; i++)
-				match_isa_ext(&riscv_isa_ext[i], ext, ext_end, isainfo);
 		}
 	}
 }

-- 
2.44.0.rc2


