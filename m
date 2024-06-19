Return-Path: <devicetree+bounces-77431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2990190E9A9
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 13:37:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B072B28393B
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 11:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DFAD149C43;
	Wed, 19 Jun 2024 11:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="YXzLN0BV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD51213DDC9
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 11:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718796946; cv=none; b=NIguh8Wt/D2RSqck9jrNqXxFC/woYmBto98an9hbFwgZio+TLT93xx9V61CkKl/DO2V5jFr0Uxq7DnV9ujDL7y5iRgJEueN+yXPN/0w1w8vfWiL7T91mZzvYYLTn0pqGHZsdklmrRvZF1yHKNtUe4Yke5b7aSkm3ZPxmk2YeddY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718796946; c=relaxed/simple;
	bh=/2zQbPSECDFOfl4fwFLs4swVfe3kGmvLglHfqNktoGY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iAG6TNAGtBqJbXTIKaqAHcJUrTqRye/ERxQqhvwmdToPRR4SMTsawP+uZCx+LmWXgS/1UrrbUfxrBx/w2+qU3BkgSUewPKW7xNXetdey3mltBS0HpTRp7w6jUs7UZqLLih+Tvqp/fbDFrOfGs/87difSkoh7qaQeNTLkhKlYH7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=YXzLN0BV; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a6f0eeb54dcso71289466b.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 04:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718796943; x=1719401743; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3zBoSU0Yq+Ugqb2C3LqSBfjcHhvTu3SXd5PthuDFsoQ=;
        b=YXzLN0BVCfIgaH99Xo7CbhB5kAIX1wRaY0sZDgJC4V4fK+7fjuj9+6Mia68z7po1Tj
         Cduna8zY9F8Ed5qHtfJFdUH9IxdCdWYz3oDIzgSxyf0UKWYVvEG8yUWaaLkwZqH3I2DM
         zZQftsiqMRfU5aFFn2x1BMT1IAQwMD0nZEWQX+zyleoGEwOxaZ/QyRkebOVWR7NRH+0d
         n1FslouOd0pZgPK7x3Ye8yajFcIULvaokkSXOj2nKdTFInweY7a+ecPAuXYbIk4xKUnE
         +VUqIXvCqeamTy6vJux6bfWDqiN0b4q/COnSLmrkYjFGhW1MnMDtj3Jjqa3xlHdyjP9+
         /UDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718796943; x=1719401743;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3zBoSU0Yq+Ugqb2C3LqSBfjcHhvTu3SXd5PthuDFsoQ=;
        b=KY2akfxlOWZTHGa3U/+SSCK9SeEAqUHf+c38lkh9gu0JtYczKvJ7EIfDik3hPSUgsW
         0qzZzMIYit/QpMAmdk/GC1irssw1kcxJkEFpmtMKeC9hEA+I06G1iBMbbRFPaGKGIAhm
         lT1/7zEJgOZ84J+4/mBp7HJ+esxlWSyzKFkYeP4/G5/TuI7e4gRW2SLsaDAe6H//t1sT
         UNzcYssFwAuKd4FReoDkLFHn7G52XPFKSjXTUriJZVmv1HEEU3s/2cAxPIIvyoFSe5BX
         SdToH585WQHQYh53q9w/g/09Elmaf0Epxj3qQ6WmudJL8jBUTOol/dL1Q6lXh568p0jA
         Zn4g==
X-Forwarded-Encrypted: i=1; AJvYcCUR1BnwlB7MOc1q2fHK14LEZ2VZZGkxVTuW4/QdtmwaSkyX8O4OUP8SBC26dc7NFJdW4lDK1X1/mDTjEaLIKvVEyQho3bNNjmp36w==
X-Gm-Message-State: AOJu0YwXpvISGc3gxYp7EMaDlsQotTaYG/HaJ+OZ5uk3p3x1fJLQp5Tc
	jOBvAET6TwzEqht9cq8/lRrtbI4CU5JJPBrsCTpp+sV9Q9SyGOcrZFRs7iDvt9Q=
X-Google-Smtp-Source: AGHT+IHoW1UfcptJKJbUfHf0FTH+sEhONquKrK5L/t4dwXUtj8o41zbe9SSO2B6QS2dtbEZsYiMHBg==
X-Received: by 2002:a17:906:4fcb:b0:a6e:f419:5456 with SMTP id a640c23a62f3a-a6fab7d04e0mr124124566b.6.1718796942951;
        Wed, 19 Jun 2024 04:35:42 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:e67b:7ea9:5658:701a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422870e9681sm266192075e9.28.2024.06.19.04.35.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 04:35:42 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Shuah Khan <shuah@kernel.org>
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Atish Patra <atishp@atishpatra.org>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Charlie Jenkins <charlie@rivosinc.com>
Subject: [PATCH v7 06/16] dt-bindings: riscv: add Zca, Zcf, Zcd and Zcb ISA extension description
Date: Wed, 19 Jun 2024 13:35:16 +0200
Message-ID: <20240619113529.676940-7-cleger@rivosinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240619113529.676940-1-cleger@rivosinc.com>
References: <20240619113529.676940-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add description for Zca, Zcf, Zcd and Zcb extensions which are part the
Zc* standard extensions for code size reduction. Additional validation
rules are added since Zcb depends on Zca, Zcf, depends on Zca and F, Zcd
depends on Zca and D and finally, Zcf can not be present on rv64.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>
---
 .../devicetree/bindings/riscv/extensions.yaml | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index e214679ab6da..e34d06633278 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -220,6 +220,38 @@ properties:
             instructions as ratified at commit 6d33919 ("Merge pull request #158
             from hirooih/clmul-fix-loop-end-condition") of riscv-bitmanip.
 
+        - const: zca
+          description: |
+            The Zca extension part of Zc* standard extensions for code size
+            reduction, as ratified in commit 8be3419c1c0 ("Zcf doesn't exist on
+            RV64 as it contains no instructions") of riscv-code-size-reduction,
+            merged in the riscv-isa-manual by commit dbc79cf28a2 ("Initial seed
+            of zc.adoc to src tree.").
+
+        - const: zcb
+          description: |
+            The Zcb extension part of Zc* standard extensions for code size
+            reduction, as ratified in commit 8be3419c1c0 ("Zcf doesn't exist on
+            RV64 as it contains no instructions") of riscv-code-size-reduction,
+            merged in the riscv-isa-manual by commit dbc79cf28a2 ("Initial seed
+            of zc.adoc to src tree.").
+
+        - const: zcd
+          description: |
+            The Zcd extension part of Zc* standard extensions for code size
+            reduction, as ratified in commit 8be3419c1c0 ("Zcf doesn't exist on
+            RV64 as it contains no instructions") of riscv-code-size-reduction,
+            merged in the riscv-isa-manual by commit dbc79cf28a2 ("Initial seed
+            of zc.adoc to src tree.").
+
+        - const: zcf
+          description: |
+            The Zcf extension part of Zc* standard extensions for code size
+            reduction, as ratified in commit 8be3419c1c0 ("Zcf doesn't exist on
+            RV64 as it contains no instructions") of riscv-code-size-reduction,
+            merged in the riscv-isa-manual by commit dbc79cf28a2 ("Initial seed
+            of zc.adoc to src tree.").
+
         - const: zfa
           description:
             The standard Zfa extension for additional floating point
@@ -519,5 +551,51 @@ properties:
             Registers in the AX45MP datasheet.
             https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
 
+    allOf:
+      # Zcb depends on Zca
+      - if:
+          contains:
+            const: zcb
+        then:
+          contains:
+            const: zca
+      # Zcd depends on Zca and D
+      - if:
+          contains:
+            const: zcd
+        then:
+          allOf:
+            - contains:
+                const: zca
+            - contains:
+                const: d
+      # Zcf depends on Zca and F
+      - if:
+          contains:
+            const: zcf
+        then:
+          allOf:
+            - contains:
+                const: zca
+            - contains:
+                const: f
+
+allOf:
+  # Zcf extension does not exist on rv64
+  - if:
+      properties:
+        riscv,isa-extensions:
+          contains:
+            const: zcf
+        riscv,isa-base:
+          contains:
+            const: rv64i
+    then:
+      properties:
+        riscv,isa-extensions:
+          not:
+            contains:
+              const: zcf
+
 additionalProperties: true
 ...
-- 
2.45.2


