Return-Path: <devicetree+bounces-77671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2226A90FA11
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 02:00:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8962E286CC5
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 00:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A083416B3B4;
	Wed, 19 Jun 2024 23:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="LQgTb9o0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2666516B39D
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 23:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718841472; cv=none; b=kNaN1+EjEMYeCZmMhbxQjlCXF+vnrO7Yjs3GVMEas3EgxicieNQ6dejHJXoKDZ3Ew9O0RqW8XIsWpeCQHA7TfO53gaSU6qyb1E+OqdITocLH2QhEx99P5rKLgq3XsY/gCLsETM1c3pa6bYQ6grqGfoUBq2i0NN+NX47JX27ANYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718841472; c=relaxed/simple;
	bh=yTwaY8S9oNhGM05ZV5FG2RHddIKcxh8pG0u3E+TyBmY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y/W6UOY3riiM2tMMmEJmrRa/2kNRk6alHg0+TqJP/9BhTzhESHB+fmvAUPPwd7znlh15sh5nKDbaGQRqxzaC6fMOl2mCvE2I6V25cOwMl/Y4eXf0QvjOsV0vTs5R94nZN1hRP6PKGVL6DTc+Nq+uU9UibL1yQnjROeiUelezHNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=LQgTb9o0; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1f4c7b022f8so2677595ad.1
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 16:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718841470; x=1719446270; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NAXQqHWj6RC6jFR+ueMfrd0PI1JIhem7QFbAuTK3mUI=;
        b=LQgTb9o0dp5TjwZnMPdqsu7ihigOk1KTadl28SuuwzrMgK1uTVl6L4XPA/1DK9Ujc4
         OgjnP6F6UbAM/wEN/cjHKYhAYy7lFUCgmeI1ePCrVca4Gbg9ofhbtvrPCQgZ5XJon/dL
         nJi7TW8EBE460+Jex8WJqI+7Dg4Y4tCIWH+KuDNcDYbIKXoTxbh7wwXHW935uq5JWB/V
         ydHrm8wFV2o1MIiFqyJP9REB88PF8mXaxtFlAQ/4DMciyigTTWoJuFml8T3eTDtzOmB4
         1m6RzHGu2uYKts0iKcpIPuYVHT2R9/IocKPMRwlySU5RneWIWXm0+mccHvebedh1xppR
         6QWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718841470; x=1719446270;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NAXQqHWj6RC6jFR+ueMfrd0PI1JIhem7QFbAuTK3mUI=;
        b=rP7oYVKkI64Dicwt5yEDomf+R5N8vcdaBDZ6btPSj4nnGyYhpbKqqxG36l5gU3Uy1w
         fxVRKdiCRBUSIUhhkUb7up+Kqiv3ROdZuXN7LJMYk0xaDpLkwu0l6fgl/wpKvUXOiUbM
         9/AR8Nx5T7/lNFk1Jd5UZx6yOOUCulW9Xf+4XoYxaZ14+WBtlziRBLqm8nY7YoXqNain
         mFnEEPUR/+qMoWZ/i1ryirXQyXfBCW3jMA/KICyYnpMQmt113JNqlVa6ViFBbwXtHt0D
         MJyNMvtInPOQ/KGigoqd7mRd35kAm7oo26Yw/nMWwmJGZ5AYgN3/aT6QzHguEMajZb9e
         beTA==
X-Forwarded-Encrypted: i=1; AJvYcCUFyghLZxuQa/ikxNM0jiNIK/+tjROMTokZzgX7T8FWjg7JV2lYu7nQSnslwCxnL1X+lUr/9FhKgtQB2UQKf6nehxyTojWe1gUQAg==
X-Gm-Message-State: AOJu0YwjI2kAdGSHXWQp5eu0fI5tFXXcruZAfsaEkssxOLyCj3mT9dCH
	MnS/eAGyiHbgbYJCfjX5pblbPNDAxAx1o62swZIki3/L2EaRaWeXs8u9k8iiYC4=
X-Google-Smtp-Source: AGHT+IFVRPz7YNRWNVDYSqgeHtz7ULVWaI0ft4SwOZeHcOSts5XdoPM+w3zKpio5hZE5D2KZsy2okg==
X-Received: by 2002:a17:903:230e:b0:1f7:6ed:737a with SMTP id d9443c01a7336-1f9aa4748d3mr42510675ad.66.1718841470314;
        Wed, 19 Jun 2024 16:57:50 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855e70ae6sm123620745ad.71.2024.06.19.16.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 16:57:49 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 19 Jun 2024 16:57:24 -0700
Subject: [PATCH v3 11/13] riscv: hwprobe: Document thead vendor extensions
 and xtheadvector extension
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240619-xtheadvector-v3-11-bff39eb9668e@rivosinc.com>
References: <20240619-xtheadvector-v3-0-bff39eb9668e@rivosinc.com>
In-Reply-To: <20240619-xtheadvector-v3-0-bff39eb9668e@rivosinc.com>
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
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718841444; l=1250;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=yTwaY8S9oNhGM05ZV5FG2RHddIKcxh8pG0u3E+TyBmY=;
 b=RMZXjD5+a211S1corOkUM74VVlyWtn6BgDltv56wmhFjf6CDeu+LV6gT8Cz6RtzXPhq4l3Kxw
 mEEg4FqMqaQBI30XGenqGukGLDqhx98zFheM1VqXvR1dpQWeGdCv6KP
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
index 204cd4433af5..9c0ef8c57228 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -214,3 +214,13 @@ The following keys are defined:
 
 * :c:macro:`RISCV_HWPROBE_KEY_ZICBOZ_BLOCK_SIZE`: An unsigned int which
   represents the size of the Zicboz block in bytes.
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
2.34.1


