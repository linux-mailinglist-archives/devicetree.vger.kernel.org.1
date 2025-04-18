Return-Path: <devicetree+bounces-168433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07244A93180
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 07:34:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66C677B1989
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 05:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 879792690D6;
	Fri, 18 Apr 2025 05:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="iPBVwgMG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02E62248AE
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 05:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744954460; cv=none; b=mEoTToKN+ztmMOycNEeUMBWco9YH+4DNpXTLkveG1GqTPhanPkum/5X3BnSVixQH3b1YfcNR/EoF3za0C5qQoU6MS4B+ENUb7mayY32Z9Hn3iq4S9UBxYNskI+saissuTDYuWjKn34oj1+9a6k0Q3JPHeSxKjUUjXWFDnN7jpCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744954460; c=relaxed/simple;
	bh=AEjGsf4B7fjXDcOTA4JyH56TH+aa+OsicIkOUFMxAgw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Rlu915uABoshmpoH3IX3e9fibwHmsoSRHoFIjp1NrJu1ANKrzTu4Alj28jb4fm9J2FDUoaZfXBr9L450Zd1lE4acjoD9zJ7xO84wkuDwrqPMiTYOaSfRM9LcQ6/UKEpdDApPmlShvmb6POsUHxISlWvj6PJziEpgojdibs9z6G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=iPBVwgMG; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7376e311086so2079869b3a.3
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 22:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1744954458; x=1745559258; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5S7MyiF2v0D0T6HQzf2B/6wNFEauO5Mud7nBe7aMlvo=;
        b=iPBVwgMGNRPGYZ3b62JPBckr43qDUX6XRqu4J6IQwwkEeGXk0i1EZV3i8pP5AeHVFo
         Cy/FcBat5NrfdhlLN5J8q/cDaPtBKqV9ZCdlTsKNHk6vmeIfJ3g5mOM/rJGrOJ+Ag3yX
         izdTmohpj/s1BFmPbq6YPO/wjU1hOuDRepB68wJg1UYkvVWwJLvKu8C9BpsMyN/sx3Vl
         cBSM/oNeTDEuAgSCxfKBo5ObHvV3WVWVA5ANwOh39Vkl086pe80/gIHJ7yVjkY+tAfAZ
         7u5KX4YGaW5GCjy/mMAaQksmCSn471G/40OhmUEhkdQvspF3cEQBfcKeVWsgWp+6825p
         XTqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744954458; x=1745559258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5S7MyiF2v0D0T6HQzf2B/6wNFEauO5Mud7nBe7aMlvo=;
        b=fqsrhV/AbAHAyq+qKK2U3n7lcKxonp3kaY2WhNW6RsIU4jBXRS9pnibOZFNNf4aewi
         6W6roYba2VMFRN9/j9SiBf7HATuZCkhrMr9jDaho++xQ2Ya1XgTUIRMekmJg9emtUm0K
         pnEcY5mTwOyMh70cAQ0U2RkDbb3RxP4UId5/SkdltYW/lOD7gOOQL6R615kIR5XWbYo+
         zD5x1ezJuUxk3d9nUCXjWB7qCxRprWHe+q3UZCUn5GLOUL9+IjM4IiEvxoswxpjpeyxN
         s9Q1TVQiFhI4hplAvVyJHrYtj2XbHJy8Nhs1u/AbF+WeZ1l4titsc7Jj6UjXFaPyPl9b
         xv5A==
X-Forwarded-Encrypted: i=1; AJvYcCUh1t2lUQLHXwScNouDOZKIuIy8qdVOTFhheIHuDr1wBdHfjTNwtubNaQusDCfAy+FTtGSUVXgKutUt@vger.kernel.org
X-Gm-Message-State: AOJu0YxGCWovbsSxLCMHgfwWd/mu04srfai9jlputz/0Ta7UfehxXYaC
	dzM6CfpXZzxXia5wV9Wbv45hV2u0lu9xlE4mYj61bg6wvzh+Hv42+feLcEpN0GU=
X-Gm-Gg: ASbGnctt/DYubvwH9fawTXFEbyBIw6azTTP+CKr04wi0AkCCYkxsY7w9giiOTLC+Uim
	wbV0nCjKx6vaePJyXDux2FM/N4uuVpOb1w+71PW3jor4q32sbYOM4qtmX+oYDXHbzVkB6gTHiDP
	zTA9p8LswA5MqxwSHXy5ivqGMAYs7/ssszKldl1Iqhxxp/c5zfrRMkXUV2C2R6FmdweSV7fPsbL
	YJKTo+DJ8tDoVioB/Vz1nKZlyTF+7wVmSQnCBy1J7PwshX4d/9yUyzwZQVeFC7AGUS4Qbdpmox2
	zOb8CIg/591mshQkz+I4qkSNRFUSgoqcTq4T+cui9MvXl4X2CwqZNZcunDVs1W+5jlMrZNPOUF0
	6
X-Google-Smtp-Source: AGHT+IFzBMKUz83vOCswwis98Y2gJZDeCmgG70swUr/qCZuSWaYO74i1Y9Ohxb7CG+IkshNDInqiMg==
X-Received: by 2002:a05:6a00:e14:b0:731:737c:3224 with SMTP id d2e1a72fcca58-73dc14a56dbmr1687999b3a.10.1744954457781;
        Thu, 17 Apr 2025 22:34:17 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbfaed86csm834555b3a.180.2025.04.17.22.34.14
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 17 Apr 2025 22:34:16 -0700 (PDT)
From: Cyan Yang <cyan.yang@sifive.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	samuel.holland@sifive.com
Cc: linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Cyan Yang <cyan.yang@sifive.com>
Subject: [PATCH 03/12] riscv: hwprobe: Document SiFive xsfvqmaccdod and xsfvqmaccqoq vendor extensions
Date: Fri, 18 Apr 2025 13:32:30 +0800
Message-Id: <20250418053239.4351-4-cyan.yang@sifive.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250418053239.4351-1-cyan.yang@sifive.com>
References: <20250418053239.4351-1-cyan.yang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the support for sifive vendor extensions using the key
RISCV_HWPROBE_KEY_VENDOR_EXT_SIFIVE_0 and two vendor extensions for SiFive
Int8 Matrix Multiplication Instructions using
RISCV_HWPROBE_VENDOR_EXT_XSFVQMACCDOD and
RISCV_HWPROBE_VENDOR_EXT_XSFVQMACCQOQ.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 14 ++++++++++++++
 arch/riscv/include/asm/hwprobe.h      |  2 +-
 arch/riscv/include/uapi/asm/hwprobe.h |  1 +
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 53607d962653..16085b2ee64e 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -335,3 +335,17 @@ The following keys are defined:
 
 * :c:macro:`RISCV_HWPROBE_KEY_ZICBOM_BLOCK_SIZE`: An unsigned int which
   represents the size of the Zicbom block in bytes.
+
+* :c:macro:`RISCV_HWPROBE_KEY_VENDOR_EXT_SIFIVE_0`: A bitmask containing the
+  sifive vendor extensions that are compatible with the
+  :c:macro:`RISCV_HWPROBE_BASE_BEHAVIOR_IMA`: base system behavior.
+
+  * SIFIVE
+
+    * :c:macro:`RISCV_HWPROBE_VENDOR_EXT_XSFVQMACCDOD`: The Xsfqmaccdod vendor
+        extension is supported in version 1.1 of SiFive Int8 Matrix Multiplication
+	Extensions Specification.
+
+    * :c:macro:`RISCV_HWPROBE_VENDOR_EXT_XSFVQMACCQOQ`: The Xsfqmaccqoq vendor
+        extension is supported in version 1.1 of SiFive Int8 Matrix Multiplication
+	Instruction Extensions Specification.
diff --git a/arch/riscv/include/asm/hwprobe.h b/arch/riscv/include/asm/hwprobe.h
index 1f690fea0e03..1c6977305776 100644
--- a/arch/riscv/include/asm/hwprobe.h
+++ b/arch/riscv/include/asm/hwprobe.h
@@ -8,7 +8,7 @@
 
 #include <uapi/asm/hwprobe.h>
 
-#define RISCV_HWPROBE_MAX_KEY 12
+#define RISCV_HWPROBE_MAX_KEY 13
 
 static inline bool riscv_hwprobe_key_is_valid(__s64 key)
 {
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 3c2fce939673..9c70101f021b 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -104,6 +104,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_MISALIGNED_VECTOR_UNSUPPORTED	4
 #define RISCV_HWPROBE_KEY_VENDOR_EXT_THEAD_0	11
 #define RISCV_HWPROBE_KEY_ZICBOM_BLOCK_SIZE	12
+#define RISCV_HWPROBE_KEY_VENDOR_EXT_SIFIVE_0	13
 /* Increase RISCV_HWPROBE_MAX_KEY when adding items. */
 
 /* Flags */
-- 
2.39.5 (Apple Git-154)


