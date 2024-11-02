Return-Path: <devicetree+bounces-118288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C31749B9B78
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 01:11:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2EB29281301
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 00:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85651155336;
	Sat,  2 Nov 2024 00:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="K3hhChhD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E726F14F9EE
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 00:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730506139; cv=none; b=D2rvKEVRccYvUcAYw0TymFMvgCT4Rw9Rz0/eBGHz/fT6C+oDwDtiMLs4lLjnKgWXroPBTgjWb+8ZIVqC8tH0MGTGY0IE6FpL/MsH9pW4QTU9NaOQxZVt92B2d/VRojN3uup0SXML31QbO/hWbl6w7EgjHBKZXet6fpA/pn0+TOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730506139; c=relaxed/simple;
	bh=PQnqV1hGsNhjcKsurb91KBTrAEvLnuyqxiVQthbvEKE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K2MlRjOYezkeUiE2ORLtuqlB9gvLcDpGbYcSNNGRmv/uhntmQN3GpBzX2ZjGCOu51+3Fq+2VT/hy1CqubVGQuypYY6ClW8O3jscY3MSbFgPimulRLG36wFwpZLy5B4HXy6sCQoV1jrqa5Psb01WICrSVYEpVJS48C6JxVSEPD0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=K3hhChhD; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2e2e6a1042dso1871757a91.2
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 17:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1730506137; x=1731110937; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JRtASMxkZ2ldGOvfeerHbEGvM2z0DU3xjXzdLsuPJUE=;
        b=K3hhChhDgaLvTN5aIrfV15liwXUI7Us5diNVu1cBQd8hVx3gdNdb6pW1IgnUfKho4r
         8J2YP9yoQZcKjvgyAdUcPlYFe54bJH2QHKHEXBXH1PI7Ac/u+fg/QobG6KttQQwmrqhs
         c52l2RyvQvsrKwPuXjJSHzmkHxup1nNUidT9gzkWz2wX7VcEI9TKX1lPWihV0xGT96q8
         UHDTjIPX/C9NAJxpfr7ChhtB9jv1b1pFUks5bMFjV2LnnpyAD63uUhpLm2BJNyiQQ/9e
         4b6E5W4DRwHk71DsIyfXHol7wx/xzPLmhSVnPjMSa/GhGFTC8LBYlSt0ZVhVGAMrNfB9
         4TMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730506137; x=1731110937;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JRtASMxkZ2ldGOvfeerHbEGvM2z0DU3xjXzdLsuPJUE=;
        b=E0KzP4jIrVsD2Ky31Fn4dNwoiNzLtdB+dw4B17PDbK8ZD8dgkriVWFAgNRi1RiqjuR
         3t0rxthxjFKhMW2323NcaFELma6UW2anwEXrvDJ3PJMc63txE9XCJs815oq6hJcRl9Hi
         mjtrlOPpxo9AWRTPLXMWS78cFXtxZqf8Txyqau3ruKj3Ij1CMRL9xAQtvccDdYzNl0wB
         +1TKPV54qfFfitpahaF2OGsbFGrItyQiBE1mzYEtwnEDZlI4bGlKx1O7qniTGGqW0zk6
         FiHtmQZA/w2Q8l/3OHGfsHQtvbo/fFPhN16Rf2qkgUDrkYHwgz/bfaht3F4FXWl0Cylw
         tdgw==
X-Gm-Message-State: AOJu0YyYXAH91WLaIqmdi96PI1+FMmVNsTfig2vfUkoQI4zK3JiDCCmW
	hysvpbv0dKqN5yboPYMdYU05M72+crwkLebVdTXbjE9/Xb02Ng971v0FtbcKfW4=
X-Google-Smtp-Source: AGHT+IH5KcByeEBw2OOY5V7H9n30x3o1ATzmOMlVsm210lwm8Cl0yUhEsGHB9DB3VS3H/jnYnQ0xAQ==
X-Received: by 2002:a17:90b:4c11:b0:2e2:e6bf:cd64 with SMTP id 98e67ed59e1d1-2e94c2a15e2mr7677527a91.5.1730506137321;
        Fri, 01 Nov 2024 17:08:57 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e92fc00856sm5505749a91.54.2024.11.01.17.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 17:08:56 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org,
	Conor Dooley <conor@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH 08/11] riscv: alternative: Add an ALTERNATIVE_3 macro
Date: Fri,  1 Nov 2024 17:08:02 -0700
Message-ID: <20241102000843.1301099-9-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20241102000843.1301099-1-samuel.holland@sifive.com>
References: <20241102000843.1301099-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

ALT_FIXUP_PMA() is already using ALTERNATIVE_2(), but needs to be
extended to handle a fourth case. Add ALTERNATIVE_3(), which extends
ALTERNATIVE_2() with another block of new content.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

 arch/riscv/include/asm/alternative-macros.h | 45 ++++++++++++++++++---
 1 file changed, 40 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/include/asm/alternative-macros.h b/arch/riscv/include/asm/alternative-macros.h
index 721ec275ce57..b6027a8b6b50 100644
--- a/arch/riscv/include/asm/alternative-macros.h
+++ b/arch/riscv/include/asm/alternative-macros.h
@@ -50,8 +50,17 @@
 	ALT_NEW_CONTENT \vendor_id_2, \patch_id_2, \enable_2, "\new_c_2"
 .endm
 
+.macro ALTERNATIVE_CFG_3 old_c, new_c_1, vendor_id_1, patch_id_1, enable_1,	\
+				new_c_2, vendor_id_2, patch_id_2, enable_2,	\
+				new_c_3, vendor_id_3, patch_id_3, enable_3
+	ALTERNATIVE_CFG_2 "\old_c", "\new_c_1", \vendor_id_1, \patch_id_1, \enable_1 \
+				    "\new_c_2", \vendor_id_2, \patch_id_2, \enable_2 \
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
 
@@ -121,6 +144,9 @@
 #define _ALTERNATIVE_CFG_2(old_c, ...)	\
 	ALTERNATIVE_CFG old_c
 
+#define _ALTERNATIVE_CFG_3(old_c, ...)	\
+	ALTERNATIVE_CFG old_c
+
 #else /* !__ASSEMBLY__ */
 
 #define __ALTERNATIVE_CFG(old_c)	\
@@ -132,6 +158,9 @@
 #define _ALTERNATIVE_CFG_2(old_c, ...)	\
 	__ALTERNATIVE_CFG(old_c)
 
+#define _ALTERNATIVE_CFG_3(old_c, ...)	\
+	__ALTERNATIVE_CFG(old_c)
+
 #endif /* __ASSEMBLY__ */
 #endif /* CONFIG_RISCV_ALTERNATIVE */
 
@@ -152,15 +181,21 @@
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
2.45.1


