Return-Path: <devicetree+bounces-15666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 646087EB1D7
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:14:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 04DCBB20A83
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 14:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E394A41222;
	Tue, 14 Nov 2023 14:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="GUbaUU6S"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458C64121D
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:14:08 +0000 (UTC)
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E92261BC8
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:56 -0800 (PST)
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-779f81223ebso9063585a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699971234; x=1700576034; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XoTFo90940vK77kTlCvHvrvp3qqCfWhzk2ZkyIVF9ns=;
        b=GUbaUU6Samn1yyulWPTYQwi9e2erNmDwXfkPyAwopdbM/x4Kyy1BkL9Fhp3m9sW4H2
         sGR/dQk6+64bURNcnMFWDrDoWDs9+1PgUkxV2toMU9HDjceHb3V1G+foANlVFhn56RVk
         p9fzw6H0S8mGcfd+fHbJX03t16QIUfhMqx25ExJ7v5kR9hxhuTWi/kowl/4cGfIZmvDB
         1XfuEuUpbrHQymePeBn60CIPA2qquqPvOgoJMwzllyo1aPGL0G4WeaGjhzkCiJgk6gW4
         SFTYhzYt2Eaz6jvVZQe8hs4s9ib6GuE2/3pi/Itr6RHxsIDfJvOak+PD+Lq8iR5MylH/
         2qdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699971234; x=1700576034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XoTFo90940vK77kTlCvHvrvp3qqCfWhzk2ZkyIVF9ns=;
        b=SMgPZXsOr5vTEAClG3xudjoyd6lc9J1YuX7FHoT/yFqLleoyyNu6GLCxxZ4x1ns5+j
         DgrVd87DXmxWIPQ9CoVb6CSDm2lz4rn5MVqVxe2Vt0DamnnxGpNOlHolp70cOWhhprXs
         BRqPm3/5ZxY/OScM0zwum45gaaQC4JM/tmHMi/DIkUeyVgxpShoUzaeed7bvdPSEMx9M
         IsQFa+qXnvRQ3TBJ4OkQCsWPJMjmx3tLAi77irwJctkSC0T3Pv4mEwWrVnAkJGsKfPjG
         dgnLJHvielowzc2u+q1CwGM+dpsKhQzmPXRnvUEa4SpczJHPtvX0n8ZcyeVXLRng6BCe
         L6Hw==
X-Gm-Message-State: AOJu0YzRctumX6ON4Y899akQ+cnJS0SoHkFmmEVak7u+QxJykX3RyZwF
	dX6PPAnSGDcpF9pqff/VsF8HvQ==
X-Google-Smtp-Source: AGHT+IFNCPX21/Ri63YAzgADy+EVaz2PJ/ebWolRkZq99YoI+InQVMnXeGM6ah9IB3zm0CykKOxaXw==
X-Received: by 2002:a05:620a:bd3:b0:772:5300:1c3d with SMTP id s19-20020a05620a0bd300b0077253001c3dmr2154010qki.0.1699971234326;
        Tue, 14 Nov 2023 06:13:54 -0800 (PST)
Received: from carbon-x1.. ([12.186.190.2])
        by smtp.gmail.com with ESMTPSA id m2-20020a05620a220200b00777611164c5sm2701263qkh.106.2023.11.14.06.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 06:13:53 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Palmer Dabbelt <palmer@rivosinc.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jonathan Corbet <corbet@lwn.net>,
	Andrew Jones <ajones@ventanamicro.com>,
	Evan Green <evan@rivosinc.com>,
	Conor Dooley <conor@kernel.org>,
	Samuel Ortiz <sameo@rivosinc.com>,
	Jerry Shih <jerry.shih@sifive.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 17/20] dt-bindings: riscv: add Zvfh[min] ISA extension description
Date: Tue, 14 Nov 2023 09:12:53 -0500
Message-ID: <20231114141256.126749-18-cleger@rivosinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231114141256.126749-1-cleger@rivosinc.com>
References: <20231114141256.126749-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add description for Zvfh[min] ISA extension[1].

Link: https://drive.google.com/file/d/1_Yt60HGAf1r1hx7JnsIptw0sqkBd9BQ8/view [1]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/riscv/extensions.yaml        | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index f953c49be90d..b91d49b7c3a0 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -369,6 +369,18 @@ properties:
             instructions, as ratified in commit 56ed795 ("Update
             riscv-crypto-spec-vector.adoc") of riscv-crypto.
 
+        - const: zvfh
+          description:
+            The standard Zvfh extension for vectored half-precision
+            floating-point instructions, as ratified in commit e2ccd05
+            ("Remove draft warnings from Zvfh[min]") of riscv-v-spec.
+
+        - const: zvfhmin
+          description:
+            The standard Zvfhmin extension for vectored minimal half-precision
+            floating-point instructions, as ratified in commit e2ccd05
+            ("Remove draft warnings from Zvfh[min]") of riscv-v-spec.
+
         - const: zvkb
           description:
             The standard Zvkb extension for vector cryptography bit-manipulation
-- 
2.42.0


