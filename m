Return-Path: <devicetree+bounces-224706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD66BC7295
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 04:01:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D4D33E58B9
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 01:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC75A1F37D4;
	Thu,  9 Oct 2025 01:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="deAG9kK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258121A9FB9
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975143; cv=none; b=uqMRwdKBR8SfkFKOXdIhdnDMVAtsfgKZMk3ZtzVh5D/Y1eMf6CVC+atLWwRDxfq6YdgFY+5g1iGBphjQ6MYYOnzxmefY6uRDRhlRKMSygzrwzPgfCiPupMTXOohf3xUgWJXmuND3Id6xiRSdS4Rwhn94D+IFG+w4MXL1g6xribw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975143; c=relaxed/simple;
	bh=nqwNh3nnTtk9A1dpvSfEdd/CGEz4hqCQbGmjswi6eSY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kd/Xr7hPgJeqUu5+VC7NPGXXjqNP+G/qRfaSvOSkLnBM7s6VISAnuYcjM62eiTOJI3T+LnMI2Tb0Rjk0hzAamdTih4Rx87h6MeFPfYPB+h7T/BUKpLrLWjESKXZoCwhhb+DSdNkm0dEA5scN1I4bk0qL3rS3nYkx/BkYcBvX5hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=deAG9kK/; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b556284db11so360312a12.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1759975137; x=1760579937; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IhRrU7vktZrNl/RvMhvzrzBaAz+rEcTgEU1eyRQaB6M=;
        b=deAG9kK/X9BtD/NiU2PD6wJKlX9pd/aeiqQWSORnK+az9VA9csix3Rc6WLIEdBti2r
         Fi3ucO4DQ6oRCavmdAHwmQ8J3XdAYxRQ26X7hZ1ZCTlc7nKBB3Svgw3ihrWAhW2kkWiG
         geS7PN5y8NXJ5V1Q6znt8m2/TjN2UqwMhEsSMDMy0b/YZC4bUeI8L4awwIEMRxXsClot
         0y3+fDpNBc35Nae4ia4kdmllUKaZeCr5e8oSDM8iyAWYrKwb/Tq2TN7UDlJ6S1rG2xjO
         IeohyjxGKhkFot+AZ9Qmq5DJnf9gCP0NlF/AgHXvIrlYFDwUgw0OCsnig/1SkOAKxQJf
         paJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975137; x=1760579937;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IhRrU7vktZrNl/RvMhvzrzBaAz+rEcTgEU1eyRQaB6M=;
        b=tPmF2kQtEMAOh9QMPCbDhIbTjL7qXSCDQ3rlkOTb2kb+t0NChubt4AGVNUGVmZYotO
         iu9yrgu4iKROG7e9mkbIqH7V2T5p6krLf+19eapJYHkfEz3+/EoYzTCqa9BYibygN1Uw
         0b6ti8jAGaejeeaXSjAzylTqA+XxQv4pHZhUUVHHb25B7GjgJ1nm98+ByTlN/eInAEQ0
         DMIMOH6TLalTEiWZbIBJsxfkaEATqalFJ/2NVb7G7iKwrCfctvsMbsi+8IWUiDocrdVr
         habvCkPFkzPOViXHzwPjoAMPUKZXuyNeQaKXQFD6JKAQr5SpK9+++2eALX2zGW/FzLbE
         BCDg==
X-Gm-Message-State: AOJu0YzbaKENVfe3uBT++D3DyPE77iX1tJSGJyhr5eTVhsKbPuOyDbyx
	//hAGKy7WFW+SmTXz7d+mZqY+slwkVRjv6czcrl49G6EhIsyij+Gj6X+t5C8LN0yb1g=
X-Gm-Gg: ASbGncs/C4QQtTDPV6pbkuH9vULXFhNIHgTtktIhAoPpt6hhRyXFughJQ0EwlbiMOSS
	qqwUZ+EQ2p1UDJoma1daAT9jVCPTQ3/kbyKUNJkozJYEgIrsStG3s1tXw5ixVv2UTbPMA3dzfF7
	D+2G51P2NIlbclkPdtFjOIclRrf0aK0d8G2m3CGY7x+K9YPr64Anv0fv/oKB4g2rRXRRmz2yBpx
	BimNspvuJf9UqCJbbEAcXnjt+JLbMyb99IZcq0X1GX65eUJhH+/dOyhwkHv54jmTa13oGN3CkvS
	Qa2RTHIRt51IAwU0+NKvlKB1n2hdb85i4ColGdm0482luunDNNtJLdZvk9wCnOgpX1MKcmQF4et
	TlC/HDgjZkBTLW4kX69rAjenH3cP4vhC5s71jz0XAybYYEBdphElSRruGggZDW/Zj9lfr9/UmFa
	ZbeZQ=
X-Google-Smtp-Source: AGHT+IF4/p9h31NSUo1ZrLpsC4/HMuMrEtQruEgKyI7OaJlvUq2z/r/6N19/PUGAwAUvJ1fjHTYvrw==
X-Received: by 2002:a17:903:a8b:b0:265:89c:251b with SMTP id d9443c01a7336-290273ef081mr70781625ad.29.1759975137149;
        Wed, 08 Oct 2025 18:58:57 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de53f9sm11033585ad.14.2025.10.08.18.58.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:58:56 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	Conor Dooley <conor@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Andrew Jones <ajones@ventanamicro.com>
Subject: [PATCH v2 13/18] riscv: alternative: Add an ALTERNATIVE_3 macro
Date: Wed,  8 Oct 2025 18:57:49 -0700
Message-ID: <20251009015839.3460231-14-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251009015839.3460231-1-samuel.holland@sifive.com>
References: <20251009015839.3460231-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

ALT_FIXUP_MT() is already using ALTERNATIVE_2(), but it needs to be
extended to handle a fourth case. Add ALTERNATIVE_3(), which extends
ALTERNATIVE_2() with another block of new content.

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v2:
 - Fix erroneously-escaped newline in assembly ALTERNATIVE_CFG_3 macro

 arch/riscv/include/asm/alternative-macros.h | 45 ++++++++++++++++++---
 1 file changed, 40 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/include/asm/alternative-macros.h b/arch/riscv/include/asm/alternative-macros.h
index 231d777d936c2..2d79abecf9a87 100644
--- a/arch/riscv/include/asm/alternative-macros.h
+++ b/arch/riscv/include/asm/alternative-macros.h
@@ -50,8 +50,17 @@
 	ALT_NEW_CONTENT \vendor_id_2, \patch_id_2, \enable_2, "\new_c_2"
 .endm
 
+.macro ALTERNATIVE_CFG_3 old_c, new_c_1, vendor_id_1, patch_id_1, enable_1,	\
+				new_c_2, vendor_id_2, patch_id_2, enable_2,	\
+				new_c_3, vendor_id_3, patch_id_3, enable_3
+	ALTERNATIVE_CFG_2 "\old_c", "\new_c_1", \vendor_id_1, \patch_id_1, \enable_1 \
+				    "\new_c_2", \vendor_id_2, \patch_id_2, \enable_2
+	ALT_NEW_CONTENT \vendor_id_3, \patch_id_3, \enable_3, "\new_c_3"
+.endm
+
 #define __ALTERNATIVE_CFG(...)		ALTERNATIVE_CFG __VA_ARGS__
 #define __ALTERNATIVE_CFG_2(...)	ALTERNATIVE_CFG_2 __VA_ARGS__
+#define __ALTERNATIVE_CFG_3(...)	ALTERNATIVE_CFG_3 __VA_ARGS__
 
 #else /* !__ASSEMBLY__ */
 
@@ -98,6 +107,13 @@
 	__ALTERNATIVE_CFG(old_c, new_c_1, vendor_id_1, patch_id_1, enable_1)	\
 	ALT_NEW_CONTENT(vendor_id_2, patch_id_2, enable_2, new_c_2)
 
+#define __ALTERNATIVE_CFG_3(old_c, new_c_1, vendor_id_1, patch_id_1, enable_1,	\
+				   new_c_2, vendor_id_2, patch_id_2, enable_2,	\
+				   new_c_3, vendor_id_3, patch_id_3, enable_3)	\
+	__ALTERNATIVE_CFG_2(old_c, new_c_1, vendor_id_1, patch_id_1, enable_1,	\
+				   new_c_2, vendor_id_2, patch_id_2, enable_2)	\
+	ALT_NEW_CONTENT(vendor_id_3, patch_id_3, enable_3, new_c_3)
+
 #endif /* __ASSEMBLY__ */
 
 #define _ALTERNATIVE_CFG(old_c, new_c, vendor_id, patch_id, CONFIG_k)	\
@@ -108,6 +124,13 @@
 	__ALTERNATIVE_CFG_2(old_c, new_c_1, vendor_id_1, patch_id_1, IS_ENABLED(CONFIG_k_1),	\
 				   new_c_2, vendor_id_2, patch_id_2, IS_ENABLED(CONFIG_k_2))
 
+#define _ALTERNATIVE_CFG_3(old_c, new_c_1, vendor_id_1, patch_id_1, CONFIG_k_1,		\
+				  new_c_2, vendor_id_2, patch_id_2, CONFIG_k_2,		\
+				  new_c_3, vendor_id_3, patch_id_3, CONFIG_k_3)		\
+	__ALTERNATIVE_CFG_3(old_c, new_c_1, vendor_id_1, patch_id_1, IS_ENABLED(CONFIG_k_1),	\
+				   new_c_2, vendor_id_2, patch_id_2, IS_ENABLED(CONFIG_k_2),	\
+				   new_c_3, vendor_id_3, patch_id_3, IS_ENABLED(CONFIG_k_3))
+
 #else /* CONFIG_RISCV_ALTERNATIVE */
 #ifdef __ASSEMBLY__
 
@@ -118,11 +141,17 @@
 #define __ALTERNATIVE_CFG(old_c, ...)		ALTERNATIVE_CFG old_c
 #define __ALTERNATIVE_CFG_2(old_c, ...)		ALTERNATIVE_CFG old_c
 
+#define _ALTERNATIVE_CFG_3(old_c, ...)	\
+	ALTERNATIVE_CFG old_c
+
 #else /* !__ASSEMBLY__ */
 
 #define __ALTERNATIVE_CFG(old_c, ...)		old_c "\n"
 #define __ALTERNATIVE_CFG_2(old_c, ...)		old_c "\n"
 
+#define _ALTERNATIVE_CFG_3(old_c, ...)	\
+	__ALTERNATIVE_CFG(old_c)
+
 #endif /* __ASSEMBLY__ */
 
 #define _ALTERNATIVE_CFG(old_c, ...)		__ALTERNATIVE_CFG(old_c)
@@ -147,15 +176,21 @@
 	_ALTERNATIVE_CFG(old_content, new_content, vendor_id, patch_id, CONFIG_k)
 
 /*
- * A vendor wants to replace an old_content, but another vendor has used
- * ALTERNATIVE() to patch its customized content at the same location. In
- * this case, this vendor can create a new macro ALTERNATIVE_2() based
- * on the following sample code and then replace ALTERNATIVE() with
- * ALTERNATIVE_2() to append its customized content.
+ * Variant of ALTERNATIVE() that supports two sets of replacement content.
  */
 #define ALTERNATIVE_2(old_content, new_content_1, vendor_id_1, patch_id_1, CONFIG_k_1,		\
 				   new_content_2, vendor_id_2, patch_id_2, CONFIG_k_2)		\
 	_ALTERNATIVE_CFG_2(old_content, new_content_1, vendor_id_1, patch_id_1, CONFIG_k_1,	\
 					new_content_2, vendor_id_2, patch_id_2, CONFIG_k_2)
 
+/*
+ * Variant of ALTERNATIVE() that supports three sets of replacement content.
+ */
+#define ALTERNATIVE_3(old_content, new_content_1, vendor_id_1, patch_id_1, CONFIG_k_1,		\
+				   new_content_2, vendor_id_2, patch_id_2, CONFIG_k_2,		\
+				   new_content_3, vendor_id_3, patch_id_3, CONFIG_k_3)		\
+	_ALTERNATIVE_CFG_3(old_content, new_content_1, vendor_id_1, patch_id_1, CONFIG_k_1,	\
+					new_content_2, vendor_id_2, patch_id_2, CONFIG_k_2,	\
+					new_content_3, vendor_id_3, patch_id_3, CONFIG_k_3)
+
 #endif
-- 
2.47.2


