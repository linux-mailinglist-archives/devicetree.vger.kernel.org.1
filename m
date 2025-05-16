Return-Path: <devicetree+bounces-177818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9FEAB9460
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 05:08:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E18C51BC5E6E
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 03:08:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD7A25949A;
	Fri, 16 May 2025 03:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="A1u6hJRG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27280257AFE
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747364747; cv=none; b=sX+WxwIldUEJQ+yyqnNawVlfh5TDHkm/H2+xEQ+Onu4A5NM54aWRu7vrl9UGNmes0LjwxZneC2l/nj/pt9Xx7tFAkF7s4MsX0YWaT1go9WI6HLgTs3m/U9RH9PfVHLdqOTqZ2CgrymdG+3rJVKJ3M69wcyIaBIUMXIwgNVFGMo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747364747; c=relaxed/simple;
	bh=AEjGsf4B7fjXDcOTA4JyH56TH+aa+OsicIkOUFMxAgw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=D+GU2S2lvViA4IKRNut+b+P2zHnxWpDoLLogm5B47p3Zxqlo34XRLrtvrg05xxuIP5e6P9qdKBxPWpD+FVc9gXoBjHYqk1+ZxsExG9HfbFQdmPRWEk9jIp8Hv7IqzMPAlnYate9EtuCI3WYa9VgnuN8LoP8aw7D/nuzaCza/BUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=A1u6hJRG; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-879d2e419b9so1526831a12.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 20:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1747364745; x=1747969545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5S7MyiF2v0D0T6HQzf2B/6wNFEauO5Mud7nBe7aMlvo=;
        b=A1u6hJRGLnbnlzJT4i28ASMuHo6C3QUuiLu22maEctseSf9XJgj5tuDsmaYpk+xXJI
         FNioFsYk4Wq02jfCJf12SCysUMUzpIVcc9ShN/VzP6xVegGBNfFs1A78Pol1xZ9ZNMtz
         26R0IMlcVc2VIlBU/oAPs+z54Tgx4Hx9nptuB0j6Prc/pYiBfEbVgpfqdIOuAB8+TrGU
         a4iwW4SWj8IsDVpciR7LNGftQ8teGWWvqKTarGjow6A0O1HeJ8ol0czn+qfdBt1X9vrE
         C4ez9PVfDtyZd1gIczckjAls7ydtvymdLDl+eDHnCO5Xw46OMdfdgO8m79VDy/PlPSsK
         rwNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747364745; x=1747969545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5S7MyiF2v0D0T6HQzf2B/6wNFEauO5Mud7nBe7aMlvo=;
        b=TgFT4LxcWUcI/poERpiOeCeyMMnmQ38SgPkc84BwA1fSLNMWDqJgfJU8q3JJyTc0iO
         oHUqRjDYdoxPWhjtuEXcKChxrDUBDReFmSYEczcROwfz/9nBNH9d9EUraNblm5lOYykL
         Lw/lW5XGxU2qnUBav7YOTsqDChmgrPhaWkEZ81/YFM9oe8BUj+TF1jVHlXhp2Sdde9d6
         mMlOIGhDYrdsvSDk5k6SGpLd2jk93bx8UYbAdumRMRERKtiwo4cetCSa4ZLPNEfZQeFU
         cKjwM1qkwCPfNXDZIiWg6rzJUkh8ul6SnhL3l+N5lhIfbDNtmwfC3u6B/ptsZZZrK9gA
         KT8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXvCoUDI3UBJrvzRvrDlIb9A8/g9BBOArw+r26aPbShqDIpQefll4DxSWV3VhRD0z8DRpb8QkOJEt9F@vger.kernel.org
X-Gm-Message-State: AOJu0YyKPFIHUyeKrddaOlelD8HzI2uhNoxUhRiEbJjTFEvUUkjRIhm1
	mASdwO4BNrgBtA/VE7qIcevKBOR2Fh56fvBUZgptetw6JU6HweWTvzX0SturJQnuPMM=
X-Gm-Gg: ASbGncuVd3bOxjLJJOvdxBD0GliwlnZm2GPFjPnomFaGhe6QpmjBdrHQklpsI3fxWqO
	b0SyE52mY6fGvEMmH5kEwKzWIVWLhj13lnu+vwH5JS23aLUkroxPEfs3qpTjb6Un3X7EPIunhwU
	KmWB7PXBtMPD1wWwNBD3YPFVE/+hEgoY/qTtYO799/JCVDKzRqiohDP8PHM6+8XiUkEAo9WyGvh
	iUBEa8YbEnYkwzkqEri1MO3dWeaTItPV1JE8XJVeRnPajBg6R/96ziMfaLScZ7BIai0XtdflGWJ
	RFaWDsyZB8Ja5oDpM+2oxL/LlvKL2u1iO+3dZICSaW4v+IGPVtx6T1AgzNj/4llhmNPqdH1U3g/
	88wtXZjd1A5E=
X-Google-Smtp-Source: AGHT+IGpLyKhdiQHbli57kVjo2ODSM/nuovDrJ88iNtBt5/DVi4ZJQUA/A+wNoA+ASM4Bu56mwj2dQ==
X-Received: by 2002:a17:902:d4c9:b0:223:3396:15e8 with SMTP id d9443c01a7336-231d4516a66mr24944235ad.22.1747364745377;
        Thu, 15 May 2025 20:05:45 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ebb084sm4804405ad.201.2025.05.15.20.05.42
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 15 May 2025 20:05:44 -0700 (PDT)
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
Subject: [PATCH v2 03/12] riscv: hwprobe: Document SiFive xsfvqmaccdod and xsfvqmaccqoq vendor extensions
Date: Fri, 16 May 2025 11:03:01 +0800
Message-Id: <20250516030310.16950-4-cyan.yang@sifive.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250516030310.16950-1-cyan.yang@sifive.com>
References: <20250516030310.16950-1-cyan.yang@sifive.com>
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


