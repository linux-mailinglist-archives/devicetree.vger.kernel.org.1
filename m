Return-Path: <devicetree+bounces-86844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D91937AD2
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 18:21:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5358283DD0
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 16:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA72E1494D8;
	Fri, 19 Jul 2024 16:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="vLfgT5W3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D9C1494C2
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 16:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721405967; cv=none; b=Cu4/9WV5wmRoJ29igzdFlm+jEswNi1pP4jEgOCcwoYIHguzySl47q+iORobFvuiyZqqbQdLow+Aae2Bo4odM1KNblM9A8fhnGhAU5P1LrCK/KJCOapa41WiN5YzQT6SBO9Y0U65Hopv1kOVWtOU9vgsfRSTXBwP6q5iKMm+lFsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721405967; c=relaxed/simple;
	bh=2W48pS8YjVGGuKgFcdTY4JQ+czvhIHjQutLR0sMQn0M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bpKyXCa4ezTrRK0DSSckJ2DmZ8xqAIzE3A+Q/wsATsBn58VhHdUndk/777czPkvYUmmPxRv1p3jyWCy7FGtom9XQr2BAyTfNThyPD56Juc8KeZ/O1nlxC/Q0uDLNzhxCTbD4H3zK1qJUZvecc07P5xAdZh3qHxwuIVQFbwrJp5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=vLfgT5W3; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-7611b6a617cso1236503a12.3
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 09:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721405965; x=1722010765; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RFlUlKNClOcGHl95zNXTKC1SKxBdILei2erBqjtymyU=;
        b=vLfgT5W3x5RbXUQARm0SjSj9UKSYFLZmC45NKxvt5gQ/WkqkF4+JpZrXVzyGWQwHZ2
         GL8X1+HEDREXcsde0gw0zHJchR8zmeQVdVxrKjjVuea71UoFtf4SVXhhIEKW6e+L8C+Z
         eYsQ+XUMye+1x2u7NixnytpZu5v/b04QuebyTI31PmVjiu5/zpOAzeTxtOh4k64h+lz9
         JplGT6Gc3/AWO4YQ3bfj6DuK9pQLEn6DUz/IaHcaQm1zV5+BFZir4IzQQ3JdPYCWjzjS
         BxAYRaV4dnJyQvFOH+5+jKr/9nuGAnqIxZo3a6oTG29hzwTYeI8pbw3ZOt1A9vRizGIg
         EucA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721405965; x=1722010765;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RFlUlKNClOcGHl95zNXTKC1SKxBdILei2erBqjtymyU=;
        b=KPlgvGWUUDWqIk4PScfqSLS46ujPWnb1yS8HiCz7lfytfJxaPqX29xADa/4NpQbcyl
         IDSOmhhntcFGEj0xeZliuL4LwwAHmBld8rAw8FVIjaNYvjedwlZAB2KaqOcAQ31NresT
         umoA0VyGnSTXxiiNzOkX0aRXoX0NK4443AFWBSiDtFZeCqLYcZxbxQfmynt8F+4hzo4b
         chNzE+sYg6vat9rKUOnpmulA+SnTQScw5qkjuv3OJus/D5v6k7i3k+BkDEbfN7tLB/Nw
         UUcuFlNFNm9PRpZSjfXRGbCPxmSv+KyaZvCu2tu4LXqm9dMSZzwV90cMBMvslMG/ApgW
         KeWA==
X-Forwarded-Encrypted: i=1; AJvYcCW3V0w/Rk/Rk/o6QVFsknl83KtqHVmbc4I3vATUuqiw1hvMIobeK9seFq2UXRkcSA5cbAlS2iBlMGeoFyVtNaKn6mZ5sa5Lzi9pmQ==
X-Gm-Message-State: AOJu0Yzxi2biO/+KPAVD1iZsyk3yduymICPPGCb+qEK0+k5rT/nr/47V
	F5nfPJ3aJ1MLlidYPKbUbBGYB9GZJqwHQ4UrP7s/E9UB4ZHAuuUiuaDkFjfJ/dM=
X-Google-Smtp-Source: AGHT+IG+HB2jI/StGSr1RNoXn3VLStcFpRF57Fl88HYhdj4U0L5ilYL3NbTS5IfVnDvuqFD3dzZ+cg==
X-Received: by 2002:a05:6a21:99a0:b0:1c4:17e1:14df with SMTP id adf61e73a8af0-1c417e116f0mr3471831637.48.1721405965448;
        Fri, 19 Jul 2024 09:19:25 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fd6f490dcbsm6461435ad.297.2024.07.19.09.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jul 2024 09:19:24 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Fri, 19 Jul 2024 09:19:06 -0700
Subject: [PATCH v5 11/13] riscv: hwprobe: Document thead vendor extensions
 and xtheadvector extension
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240719-xtheadvector-v5-11-4b485fc7d55f@rivosinc.com>
References: <20240719-xtheadvector-v5-0-4b485fc7d55f@rivosinc.com>
In-Reply-To: <20240719-xtheadvector-v5-0-4b485fc7d55f@rivosinc.com>
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
 Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1721405940; l=1260;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=2W48pS8YjVGGuKgFcdTY4JQ+czvhIHjQutLR0sMQn0M=;
 b=b83pN5cReLz65nLlW1uCxPTq92FYXBW2GeKe7Fpuvsl6LxGyKXlFlAxAXBwI4XgnBGKqCgHTD
 rGs33ThNbkIBx9DcZJKtD9WQGIoUh6HL3J3yb5Xn9Bv0sGlcUfNgfXU
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


