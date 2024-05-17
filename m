Return-Path: <devicetree+bounces-67527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEF28C889B
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 16:55:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0E7CFB247E1
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 14:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADBD771B4C;
	Fri, 17 May 2024 14:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Qrawe+/6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FA771754
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 14:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715957606; cv=none; b=BR8BkevQIutFy6cs3z05pe0BvousqsJsTcO+WWcKUni+NLX/VSPVGf0EUZYHWTYRTbRjZgQpHrxizot2bHrc0HzocjidhFEOAvhd0m36rVdTgp9Uy2SZFXhGxOAlJP7nXPcUej5V8+RmrMC52BWOqRG7ugTPNj68iz96mNroAC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715957606; c=relaxed/simple;
	bh=Pm3PTmjoqA7Tnqx632wXkGWqZM/Iv8ukmTO2nSQRuVo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VO7mV7oUXE28CZYxJegP5iqTsg+A0z8oMDqM5OrDKauTVgukf5g7ajUtBnsGMA7HfWKFCLsfASIpHhBUFtT95ASwadybRdc6MAW2Q0lZ+YMuN1Cj/xYfrHl44Gw01LOG/1RhqF2abcV7TETPP8goNWvaswVqY1Jb+seeuwQzXP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Qrawe+/6; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-34cb2bf85easo22355f8f.3
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 07:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715957603; x=1716562403; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bxwJ7AJVWOOJH5g1C7ONAzDxOLE31aJ/GSXI4iM+BBI=;
        b=Qrawe+/66RoxEDSzHWhvJrp8Bp6u1wDod3M4n5h8DILb0p3fdGaP5ttf+hUHr18IXC
         VdP2Yk9b3SFycogAt4Bs8mLhWBNGHYhDEdl7KYWoCypC2RYIp3q63UIvad6WCURLUiuQ
         lf0of2cLU+wMFoPSRlD7qRYex23bGFJ3dwp9F82tW5gFCEdgrVkwj1sqck+p0S6LoOz6
         UcRb1nePvXNf+vbc1tVq/pDGnw8mHK+MdlGsMaB0VWvCrCAmieoJ1phKmcgrB53nuUBv
         VZt3pLkDZDN+UXHblULircaGolGEcJMtJldjLhGlJ5Vsk9eI9D/pKAReySpqjPPQ3dVw
         uo8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715957603; x=1716562403;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bxwJ7AJVWOOJH5g1C7ONAzDxOLE31aJ/GSXI4iM+BBI=;
        b=q9cQe9Gbn5bW0i1gwq3xRql3X6KueUxkQeeqS3Jc433wnmVgmpx23ileVzopamSQjQ
         LvfjpqPMF7iw2i+e1jpELsjm54iTZMyiLcDgdbI4a04fNiEb+QP4C5P1tEzJefm3xEQ4
         Qj3en7kbviW/H79l403U1gjbtRr4pJC/gjq9Xv4MdrHig4QZrWuWAnXkR5TNOzA+ixCz
         rBa9B0T4+Z6AyQc/wcqb4ra2hsO7nilhwEkqb9ahKbUq0GcjuzN22Rfr+8nAe/o/9oGS
         QsGZfbt1em4Wr7sEDXjI9dtq4tKywgiOA3WWpx64/rx45f4ha13eHgGN03zazAureowQ
         kDCg==
X-Forwarded-Encrypted: i=1; AJvYcCWKT6790b8IGY1Io2F4skll8e3VVE7enTDXIzr486ox8Ar8MW2UR5tt+8VtHLYzQMgAnetEirfcdBfNxMwklYo3VHHZlhH/P4CDww==
X-Gm-Message-State: AOJu0YyFe1BS6tO7rN7kVhKwdqqUyJ3GkRZujTKpN9Jd4nKj0yXkJDSD
	9RF+ACo70kGhkniVemCdiW9HCOkyWV9dSs4lGIHLjweEceP9S7/gzckzp/EI2CM=
X-Google-Smtp-Source: AGHT+IGYOWCyC3A9pZiSse41lg4ejcf2nxXc2Br4ue+JRbxFNqo/gdNFsWJwlvjbngH00Jlcy96tzw==
X-Received: by 2002:a05:600c:511c:b0:420:29dd:84e2 with SMTP id 5b1f17b1804b1-42029dd87camr37914505e9.2.1715957603384;
        Fri, 17 May 2024 07:53:23 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:46f0:3724:aa77:c1f8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce9431sm301723695e9.28.2024.05.17.07.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 07:53:22 -0700 (PDT)
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
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 06/16] dt-bindings: riscv: add Zca, Zcf, Zcd and Zcb ISA extension description
Date: Fri, 17 May 2024 16:52:46 +0200
Message-ID: <20240517145302.971019-7-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240517145302.971019-1-cleger@rivosinc.com>
References: <20240517145302.971019-1-cleger@rivosinc.com>
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
---
 .../devicetree/bindings/riscv/extensions.yaml | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index b9100addeb90..39084c58d4e4 100644
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
@@ -499,5 +531,51 @@ properties:
             The T-HEAD specific 0.7.1 vector implementation as written in
             https://github.com/T-head-Semi/thead-extension-spec/blob/95358cb2cca9489361c61d335e03d3134b14133f/xtheadvector.adoc.
 
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
2.43.0


