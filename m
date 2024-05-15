Return-Path: <devicetree+bounces-67183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2FA8C6DFD
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 23:50:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 653D3B22943
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 21:50:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FFBA15B57C;
	Wed, 15 May 2024 21:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="GPcmlKDn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC5715B56A
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 21:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715809823; cv=none; b=g7l94Zput//QaFVgQSFIwdXEcec6u64lMKsMM2cMcMyfLcH/K4hDV3+0g2MnN4XqcdDtxyebYQH9PEhsb0XmH3WR0/0ClUZyqUX6SCm1miyG1QbfZgc9gW++71CWl14CnHjwz/Ylpov5mCW+NafbaW12zN8x6ue5JSi+WMxh00Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715809823; c=relaxed/simple;
	bh=PDP+pfWfSCvmvZn17Dj5qqvNgRLWprJakVgT4fj7WMs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GSUXbI0nvgg3VgjQEQxiy/7zt35LO5kmp7wBJwh+zwP9FfTal7G9oNLQJXOfBI5GLyqKYgAiivOUr/0enG3Bu0Wrlzb3mbwAnushvNu7mhGNgApD9OZJDrEO7m2tw+0YEhkJeYuBVJWMkXPtCHeCl9SU+wjqpFI6WamcVLRzym8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=GPcmlKDn; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-6f4d6b7168eso4254858b3a.2
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 14:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715809821; x=1716414621; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+VjeHR1eFFL9Gvz01+9XywijwOrTXSU/mr8HqBxiNzQ=;
        b=GPcmlKDnM6ZLlTshrz4DoLUD216wAHokLwKjadnd0chOFFJV0uZTwJzLcokAog/hMS
         fN9MrewRvG85i1/RIfIyFh0c34i1GdgY7iJ9g4VL3gTlauLZnxWZ1KDq5csH12SSb1UM
         jG0ttHyXQFgc1cX8O8Q1ica0GySfNqymRaE+qR4ynhnQzAc26VkAFqpG1166yCNTqMck
         YjfwfArZY5ELjbgFFQANipEKH9DMSYM41hhPX7gUnYxAhI1APq2690g2zwNYuPrJLT3E
         UkQjGiQtoPQFw7czYdIHh88elIVziOoDJP9NrhPrbA1mgYWkzumTUavZNXCsO58q3uqf
         NLUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715809821; x=1716414621;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+VjeHR1eFFL9Gvz01+9XywijwOrTXSU/mr8HqBxiNzQ=;
        b=hnMoERIaJ6EDaVOh0NmdZ35fho8ikhkAZtM05p4lEZz98r8z4Q3MKlCVA0a79fTZM+
         QMT0JBhrsGjAKFRqvzvRK+Jx2/G2hjMpr1kdkOOg1vObkPREtlFRKvF/vrl6dokqg7sd
         4lBtPUtFoqdohfRKdPt/hyxGo2f6bJVJ5YTsYV8ZIenScCzHhqEDQ+gx8CBMf9k0tuiJ
         cz9f4i3fpgD63hKPjgf9cWMFJTtrjrkoWxzGcMqClYaqufvLqhByrOE+B5gf3PDbTRzQ
         Jm3Di/QX8NNKXiKxgNFWufdbfmtBzW8fKCiGpumFGowvolMvT9WOW0aWGoYCUlehyN1N
         n+8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWQ3NqW00Nls6fV14gYhusuqOiQtBJjxtSsaSSkwZcL4BCAamRSHE7VuE/RcolWXpNVN12vL8nTOzRl1yjOunVaCzHSaYv4jmwZLg==
X-Gm-Message-State: AOJu0Yyc5/7fpDXNYaBVuK1pInvaX9cmDWiU1gBJkkd1gDZWd7M2Ssh/
	AO/k1a+1wW4xOQgLZMDLXPv1fs/6eZNIwokS6KNB1qzsZ7pR68FJBJ5ymhUIlDo=
X-Google-Smtp-Source: AGHT+IFsZDH3c2GXDRmHQLCIoSiEcZ0a5ddtSOWNg9FgZfKDHYSHsFO/0FQn2GUTuXxIMbxBQu2wOQ==
X-Received: by 2002:a05:6a20:1592:b0:1af:db2d:d36b with SMTP id adf61e73a8af0-1afde0dc165mr18300987637.15.1715809820987;
        Wed, 15 May 2024 14:50:20 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a827fdsm11638629b3a.60.2024.05.15.14.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 14:50:18 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 15 May 2024 14:50:14 -0700
Subject: [PATCH 1/2] dt-bindings: riscv: cpus: add a vlen register length
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240515-add_vlenb_to_dt-v1-1-4ebd7cba0aa1@rivosinc.com>
References: <20240515-add_vlenb_to_dt-v1-0-4ebd7cba0aa1@rivosinc.com>
In-Reply-To: <20240515-add_vlenb_to_dt-v1-0-4ebd7cba0aa1@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715809814; l=1443;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=heJ5mXr7Tx2wdFjG631ibJba5Q6SNbmXVyEpdKm9JEg=;
 b=OabNk8cbio1djlt/U5FF9VWWX6n6P5WbWbhRJmAG1nfw3J1jyCrjDDkdq2E8KtaKRT0aNk1NT
 j36KygdeOEsCz/srxtO56/4zFPug+AAO7ZrlDW7IcH1IxdkviKKs/Xk
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

From: Conor Dooley <conor.dooley@microchip.com>

Add a property analogous to the vlenb CSR so that software can detect
the vector length of each CPU prior to it being brought online.
Currently software has to assume that the vector length read from the
boot CPU applies to all possible CPUs. On T-Head CPUs implementing
pre-ratification vector, reading the th.vlenb CSR may produce an illegal
instruction trap, so this property is required on such systems.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index d87dd50f1a4b..edcb6a7d9319 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -94,6 +94,12 @@ properties:
     description:
       The blocksize in bytes for the Zicboz cache operations.
 
+  riscv,vlenb:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      VLEN/8, the vector register length in bytes. This property is required in
+      systems where the vector register length is not identical on all harts.
+
   # RISC-V has multiple properties for cache op block sizes as the sizes
   # differ between individual CBO extensions
   cache-op-block-size: false

-- 
2.44.0


