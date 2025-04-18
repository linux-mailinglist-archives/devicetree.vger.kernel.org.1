Return-Path: <devicetree+bounces-168437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3C7A9318B
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 07:35:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F0E41B64E8A
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 05:35:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A44CD269CF5;
	Fri, 18 Apr 2025 05:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="glSC3f+F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F99268C50
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 05:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744954473; cv=none; b=YMbMaWVRVaRENTxV8E/q3rey114cCCG7uF4wC53TjWR9+znhxnJ80D460dwqLlAlJJqDZUwR+ZvV5VRUChGSvMUN+aL8VpcJTgpqNlxDWkqOOyUaOVAi+uGiJMGcY9FZ2IDdD1ianBq2CxfpSsfT09VSDUBnBsi/W//ElGH0bic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744954473; c=relaxed/simple;
	bh=nsgtSaTn5UMmzY8W/ttdkLr3ZbgDZmLHCd+an0LcguI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=owuXjCGVK5FVkWdsvXy11SCvanIwZLjgTY4pNbzk7ijeOg5tgT2yHGsCUxVMK9xZA8NdHpIjtUZX9bjtC4R1GxdrUG7qMRfcT1ThG833TMHxxuwAR5iXZal7YLR/T7cUAcVxkDngmImVQPFYD5EswbbypYFxETsOlIwBVZpwfIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=glSC3f+F; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7399838db7fso1602833b3a.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 22:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1744954471; x=1745559271; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a5/PDhz3AlgX3PPZzfN/Kg9kUFezGYCGeqp5UVya4gU=;
        b=glSC3f+FXGGAEcfwu1cN6338oW48FWN9u8Im3Lxnr2CTzL9slfAZLo2vODc//eX5Eh
         JZ4ayhTNTJ+tf5FwgxFuUW+8D336GL0To/ZUZP8lu6GKH7xsg5LfNis9wwJOhU4XdNGu
         1XWZGVqbo1y22lWiNVNDJkSd5SKq++585Tpf3FU8w64L0r2YEXtOYml7MjzV6nPGjwsK
         nwwlmM+baQ+dmwKGzNa0Zdac+xIz4zspbc2FjEeWXQ6h2pFQUFhwVQVQbxSCMzpOgjnB
         VBpMgn+IAbaPW6IxnLnGlujoIXNl6h8Y48koy5f/TiG7blBxSR5XySwUP4/Mo57RAKP/
         eLdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744954471; x=1745559271;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a5/PDhz3AlgX3PPZzfN/Kg9kUFezGYCGeqp5UVya4gU=;
        b=BBzrNFB609GQYE8sGWH5MAUNSLGxLCNEdnSN7e95blEgs6TKHAh71ThN54rghv5mG8
         Mcjk7C4CkUXIILmTYSuHxQEmRZvIlqyBFQpvpscKmQUDaFJV9pPdxhoOgNzru8gtRpzt
         34zYCYPhE8t3h51hvrhRvazSLV8yygG+BeC+9pagvo8r2YarVhP9Df9mlwjgijPjjIdW
         ZHlD0dEDm57wTAM3w7jtO5SXIVjn0MrtUEwF1UPylxDqsPgiHmc6FB4Gmqp281Q9qreK
         4+YnpeXM3l9Dch2R46kPVDTEuV03fwy6F4Zyh/IJxjOTjQgGhnDB65bEFs8FQ80Hb+ir
         oNDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXH9MS2uyulBVPRU1HJvPlo9nHo2gZ9diwXPjYI4A8f4sx8f8HUN/THuve6WcUIWmHL2RRq4Pz//IlI@vger.kernel.org
X-Gm-Message-State: AOJu0YzsesR1mlYOr8rfDMlX8epmWIlI79d0A5bxCklnC4zr6hVW5h0x
	bEYdwEDXBB0Z1a2w1mOqXBiJbNVIvC7lXZ1AQ6KzLt5Xh/zEbmm7Y5ejj5yph+k=
X-Gm-Gg: ASbGncuLPPmLsngzuB2Sj8XN56JMTwms1THxOaASy+QyPxdKxbi/Tm5aw4VRCKEIv9V
	pIqvz6WFfT1h1lVuU/C/wi/AZQkh9BlU5mdKRhYoJG2KOMAIpDZr2imAxMrKW9a7OuGrLT2TAzd
	v4JqW0AEHPl79nTQLnJ6D4fxUJ1xzgvzEKfgNj0C9AduGI7+6yvw1dyCQRQt5av6bmVChQDvNf5
	BoJhf8K9HE4gxEscPNwnHUXWasQx0guG7LL6KwLKaM+VXCh7PyWWqMKMI5lJ0zKp5qSzLDBT0UK
	gREJMIL3fCN79r5xgmnAk9oXLW9thw5m5nD3izJt8bH+ptpwOvmL3XkRvlAwF9G77RLyuMxjiU6
	VcLAWwx9sSnw=
X-Google-Smtp-Source: AGHT+IEvgHp/iuM5AJD/5ZHF+wg4U+RuhgPDEKuSLIEcrDWYUKCuRuyXlRuVUFNg8sIvdQmur1T+cw==
X-Received: by 2002:a05:6a00:23c6:b0:734:26c6:26d3 with SMTP id d2e1a72fcca58-73dbe52053dmr4292403b3a.5.1744954471081;
        Thu, 17 Apr 2025 22:34:31 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbfaed86csm834555b3a.180.2025.04.17.22.34.28
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 17 Apr 2025 22:34:30 -0700 (PDT)
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
Subject: [PATCH 07/12] riscv: hwprobe: Document SiFive xsfvfnrclipxfqf vendor extension
Date: Fri, 18 Apr 2025 13:32:34 +0800
Message-Id: <20250418053239.4351-8-cyan.yang@sifive.com>
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

Document the support for SiFive vendor extensions for
FP32-to-int8 Ranged Clip Instructions using
RISCV_HWPROBE_VENDOR_EXT_XSFVFNRCLIPXFQF.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
---
 Documentation/arch/riscv/hwprobe.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 16085b2ee64e..e15405e12239 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -349,3 +349,7 @@ The following keys are defined:
     * :c:macro:`RISCV_HWPROBE_VENDOR_EXT_XSFVQMACCQOQ`: The Xsfqmaccqoq vendor
         extension is supported in version 1.1 of SiFive Int8 Matrix Multiplication
 	Instruction Extensions Specification.
+
+    * :c:macro:`RISCV_HWPROBE_VENDOR_EXT_XSFVFNRCLIPXFQF`: The Xsfvfnrclipxfqf
+        vendor extension is supported in version 1.0 of SiFive FP32-to-int8 Ranged
+	Clip Instructions Extensions Specification.
-- 
2.39.5 (Apple Git-154)


