Return-Path: <devicetree+bounces-87390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DC1939603
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 00:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8B781C21872
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 22:01:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6E212FF8C;
	Mon, 22 Jul 2024 21:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="IVj5AfRZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CCA481DD
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721685516; cv=none; b=utzY/kkJCX3Cz8/n9OIq3N1/x60DkM+Apf3Ukmro0AbrIDBTw7FHHOjFYgfE4pwWLlKejR48lHaBCZFOEX69rP7ZojcIpf3O0yZn73sKqqhLKlV9byr226N+2PFP0oqQmFL9wYZh8OAqR6BPYHuw3syJelOslj9FoEwUqK8Qqtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721685516; c=relaxed/simple;
	bh=2W48pS8YjVGGuKgFcdTY4JQ+czvhIHjQutLR0sMQn0M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MTFCsz/U1FI6fHulzbwMc7/UwlEs/+mPRpjVJS7JIPWDjHm5iQvJEa8LxykTvM4kqLncvyLXSgLqB3KPuc4btO6OOZT7J+cNzy9L1j5ZD9KfZOtaL6v9ED/Zbc0aZjPz5eLN+o/VcYJPvI+/3jVwCEsfdYB+KOAgO0Bt2gjusgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=IVj5AfRZ; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1fd66cddd07so1005545ad.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 14:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721685514; x=1722290314; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RFlUlKNClOcGHl95zNXTKC1SKxBdILei2erBqjtymyU=;
        b=IVj5AfRZu/xl7bgcSOgxCbzP1gLxKk5b1Stz6U14Ov9GJkA2eKb8ORYQzrQlsenJsc
         xXmrtGKbwrpo51Iz7RctzKJki//rYI4XbDnOkwq0/EU2AXcKko1yl4A0e6oP24NPXgow
         Ec6wU1OM7RHABUGBrOE0wp56nBAKHr4P7SsFHyOGG0EOd64N9S9FhFOPD6rZ3DPZLujB
         KrbuzqfTeXN3hT5vqUk63iarSs4n+7QADow70cdXjGdTmvhMkxUYpsS0RfmgZyw2+xsK
         247eH9wtfJFtnOQshzx0cjxxqhVP1jOopnwIgYcDVVqUAykFIVwG7hhtwjHDHlfuIA7n
         lG5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721685514; x=1722290314;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RFlUlKNClOcGHl95zNXTKC1SKxBdILei2erBqjtymyU=;
        b=PITBxUGHghauyEs/4R5aC0lthHC8UP6yCLM+z2JOUDc1W9WHjJzdQhADq/CxOQf4F3
         RYFcUpKIjN/3iYJ0ZPhIrZomw6NMdAAHyoLtUUfPo0JA/MT3ge5RQIKKZ+uaAajl+wwn
         Ux6FoFdFKBjxTHxECa9Q+LUPwOJZpiwhi+n5zoeneKdwCik4iCZCbJsdP+ZW3eAEBfBM
         kApFidRHCT1rSBXHWM5JKqBGD7Aht8Q8UuixyPSVa4ZVJtNFyu1Tulc+XIwjYRbjyEYU
         zXrSeDTlkQ46GGNlpSoffs9+dL7uKeM0/iHpZB2Vj2wIfMDgFg0XobyJU5Y6Atj9KRxV
         uaZg==
X-Forwarded-Encrypted: i=1; AJvYcCULFpgdeIYwyDzWTUAIJcE4SnpkhkpudvpnHmd/gwlXwcoEYFfrqY6iooVjxZ5bwWv4C5O24BsH8TSrX7v2U1+U+AURHxgRb+D5nw==
X-Gm-Message-State: AOJu0YyE8sw7KcgzvLDXVHgPOSBvAHmxVVBrrnJ24kYC3+S3XHAhXQEO
	58u8ENyn9Vrl52oJzvQPNVzigZ17nxZRqBFdclXOvv0BLE8dXm2SoxNGDX+5eNE=
X-Google-Smtp-Source: AGHT+IFmou8rSkO/pXeWqn5Y08peXHpQQZJpzoyKzV+g8WtXw8VSsTRAbxkcuTo+xUK5I20cnMuzOQ==
X-Received: by 2002:a17:902:ec83:b0:1fc:2e38:d3de with SMTP id d9443c01a7336-1fdb5eb14a7mr13001095ad.7.1721685514562;
        Mon, 22 Jul 2024 14:58:34 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fd6f44f0d4sm59997775ad.219.2024.07.22.14.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 14:58:33 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Mon, 22 Jul 2024 14:58:15 -0700
Subject: [PATCH v6 11/13] riscv: hwprobe: Document thead vendor extensions
 and xtheadvector extension
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240722-xtheadvector-v6-11-c9af0130fa00@rivosinc.com>
References: <20240722-xtheadvector-v6-0-c9af0130fa00@rivosinc.com>
In-Reply-To: <20240722-xtheadvector-v6-0-c9af0130fa00@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>, 
 Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>, 
 Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1721685488; l=1260;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=2W48pS8YjVGGuKgFcdTY4JQ+czvhIHjQutLR0sMQn0M=;
 b=RiMnA1+g5SPgw4LGch5qdpL5lwgJZjDhU+TTicDgiDFxBQRLn7rxsOmNZM3sDkGgoWCnfcU5S
 OXvLmirQIGQCTiByNpwWBWeN+HWIBf63huJ7QRj0Q5MhE6xaF+q7Esq
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

Document support for thead vendor extensions using the key
RISCV_HWPROBE_KEY_VENDOR_EXT_THEAD_0 and xtheadvector extension using
the key RISCV_HWPROBE_VENDOR_EXT_XTHEADVECTOR.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Reviewed-by: Evan Green <evan@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 02eb4d98b7de..b48a06ef80e0 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -264,3 +264,13 @@ The following keys are defined:
 
 * :c:macro:`RISCV_HWPROBE_KEY_HIGHEST_VIRT_ADDRESS`: An unsigned long which
   represent the highest userspace virtual address usable.
+
+* :c:macro:`RISCV_HWPROBE_KEY_VENDOR_EXT_THEAD_0`: A bitmask containing the
+  thead vendor extensions that are compatible with the
+  :c:macro:`RISCV_HWPROBE_BASE_BEHAVIOR_IMA`: base system behavior.
+
+  * T-HEAD
+
+    * :c:macro:`RISCV_HWPROBE_VENDOR_EXT_XTHEADVECTOR`: The xtheadvector vendor
+        extension is supported in the T-Head ISA extensions spec starting from
+	commit a18c801634 ("Add T-Head VECTOR vendor extension. ").

-- 
2.44.0


