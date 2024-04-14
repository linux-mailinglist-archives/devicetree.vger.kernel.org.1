Return-Path: <devicetree+bounces-58509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7613F8A24F7
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 06:15:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E6C0283F56
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 04:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 894FF51C42;
	Fri, 12 Apr 2024 04:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ZISooI+9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2123C50A87
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 04:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712895125; cv=none; b=QjMtsLu1JhZ48jR/+I9pOWGYaA/zvYpp5E6D3OV1eiZPRKW1z/XOX5tOf4y3PcZcyup+L2kDw1WJjTJfVFrBJWsXR8wM8TIuhAVXPgWbYBts9diEPXcW5JQfqiexYRiKzVhUiIcHcBV8DaOE25QJmATzfmHi3ZgB+aeFxE/yeEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712895125; c=relaxed/simple;
	bh=t4tv2YhM1MolJnYPmx3+B/R7xn5gYh3VtunEyUIwVAA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jmp1Qx6QkGHgBtHEGiXZokesrX/Md0+oNNwpquE8b+dwkMdDInp63ZFivME4sEo8miuOpRAgfh02aROKVtQ+mChcXMXx1dJdBVobEKAJGK7xh/c7J0FcmDYAwy+O/RL7LUOcHhGNJ5BEzKyXBENIuOnqxK7OY5ocl1pit+DwwcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ZISooI+9; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-22ed72b0082so338282fac.3
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 21:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712895123; x=1713499923; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sCqKMMvpjdMx8mqL5GwN/rt+g7kii5wG+xB+75rraRY=;
        b=ZISooI+9H3XrQMnSFsNGyYxCYwkyHqWLSlKk0inJw5dg4gmgFGeFLalMiuN4kFtzuW
         0zpnEjBp+rXABbPI68S8b+ZMRFWP17wUKkSFBTTy4Dcdr1mW6j8kNu/jn/t7hHmsuThI
         Vnf2lBd+zG8iT7ad1limGzBu1TF3UJGX7miH7aB5uyoQsFxf28uYWa5t6MGMz3Mo8wOm
         OEfACBtjuw6H+Y4TQYpjPt+FnGye99NY460M+yowa/HbIGnHq6KKdyrJhXYwKEqzB9Sq
         9X+mV+YgLPAjeKVir9foBsUskr/Oow3fzgFbosjkiCF5zWVAMUDulB5Ub7g5c4V3Yb0R
         nEUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712895123; x=1713499923;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sCqKMMvpjdMx8mqL5GwN/rt+g7kii5wG+xB+75rraRY=;
        b=e1xx8Sbz6Oa7s2PHm+S/pNz/Si6JsVvtByEhSp47sa0/N8AyNlJ+0thuNjM5jcrKPt
         exYpS9Xw9/W2y3pBfEVF0mMafbJTRIn25Az4C/FV7O3oPcmy7JploT2b6DeE40C43qPf
         nX8tCRTKXDUyeyc5kNjyyaTVqqmgoFgU5DUyhLQsv/G75dX7+tRm0q8NW6UhcEiZyK9c
         n9HTuwMx6iZ1UKgujqo8XlUHHFRVXmiC6dUYMMOiCc47p3TCqCorRQ7g/7QXBxfMTsA9
         lyXXwSNgmplBdFZWLP65Bl22HJBgGlAeJwffGRzgRvoeFQTh8/5Gaf9ROx9itt+VoGN9
         d1SA==
X-Forwarded-Encrypted: i=1; AJvYcCVTZOc0QsAtjLa3uxmsGVc4mXY2hCARJm+ibzheIi/5VdAv5htPYB677EFStKAv/gKClXO2/tNx1s7oJNnOLqUVy/gsYzFTR2B+ag==
X-Gm-Message-State: AOJu0Yxnn29rmNAWbeAH4a8/a2LvQOYSqfMtv4PLKt9CJm3dF7Dy2upV
	3fI33Zp1rJ8HUOo0nBFb2yV+tdWJbzmFRuYDa91Zz8YmSePfjwnXjjFXk9bRUTzZq4QSZZfv+jb
	i
X-Google-Smtp-Source: AGHT+IHY3yirk4jX9cMXtaF98jtTfUbpKOv+CODCxv0iWIStL6fUZfoLpzSjdgQJtBdDqv3RCGYZ3Q==
X-Received: by 2002:a05:6871:5314:b0:221:8a03:6de7 with SMTP id hx20-20020a056871531400b002218a036de7mr1825489oac.32.1712895123342;
        Thu, 11 Apr 2024 21:12:03 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id ka13-20020a056a00938d00b006e57247f4e5sm1949712pfb.8.2024.04.11.21.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Apr 2024 21:12:02 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Thu, 11 Apr 2024 21:11:23 -0700
Subject: [PATCH 17/19] riscv: hwprobe: Document vendor extensions and
 xtheadvector extension
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240411-dev-charlie-support_thead_vector_6_9-v1-17-4af9815ec746@rivosinc.com>
References: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
In-Reply-To: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Conor Dooley <conor.dooley@microchip.com>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712895091; l=1314;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=t4tv2YhM1MolJnYPmx3+B/R7xn5gYh3VtunEyUIwVAA=;
 b=Z4LgpsK6Y6OJvIVl61GAR3j9FIxHWvGkBhRPZ4DETyx4FdNnrNJAGGqYj86rnsakgjClK/luR
 oXhBD/8IaVzDn2iAyaUVP0kpGgWHWoI+hy4jtykxh3ZbjrZ13vpa8kd
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

Document support for vendor extensions using the key
RISCV_HWPROBE_KEY_VENDOR_EXT_0 and xtheadvector extension using the key
RISCV_ISA_VENDOR_EXT_XTHEADVECTOR.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index b2bcc9eed9aa..38e1b0c7c38c 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -210,3 +210,15 @@ The following keys are defined:
 
 * :c:macro:`RISCV_HWPROBE_KEY_ZICBOZ_BLOCK_SIZE`: An unsigned int which
   represents the size of the Zicboz block in bytes.
+
+* :c:macro:`RISCV_HWPROBE_KEY_VENDOR_EXT_0`: A bitmask containing the vendor
+  extensions that are compatible with the
+  :c:macro:`RISCV_HWPROBE_BASE_BEHAVIOR_IMA`: base system behavior. A set of
+  CPUs is only compatible with a vendor extension if all CPUs in the set have
+  the same mvendorid and support the extension.
+
+  * T-HEAD
+
+    * :c:macro:`RISCV_ISA_VENDOR_EXT_XTHEADVECTOR`: The xtheadvector vendor
+        extension is supported in the T-Head ISA extensions spec starting from
+	commit a18c801634 ("Add T-Head VECTOR vendor extension. ").

-- 
2.44.0


