Return-Path: <devicetree+bounces-14334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 55ECC7E3A79
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 11:56:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C267AB20E74
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 10:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 797EC2C874;
	Tue,  7 Nov 2023 10:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="FDUXT/sZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F962C872
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 10:56:15 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31899101
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 02:56:13 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2c519eab81fso10207881fa.1
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 02:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699354571; x=1699959371; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+VmOC9mW+tWP1B7Ug7oPglT1GAFiZ9zi/wMFmqi0HIg=;
        b=FDUXT/sZ4OnfTRuoz+N+KEyTCDbWOMmNFmk1fJwaJHioQUuBmJ6u9FepFdjH/EbAjY
         uMZmyuQGNpjoMyD5c62sO3vtZXcyzjRHkrjbGwyQyafEupvnVuG2G9ofF3EY7AprVFti
         dHZm4w6lJGWB4Vvto3D9gqpwj0LaFFbsL6DH3oEaWbM0H3RXPVsaho/zNTj1B18rploH
         dIMaFVBM1/+tZbf2UuEoyf1p4VVYS1gDh2ilCjGGTntUc2Pr2SwNpUu1kErCyZ6rLbzl
         LODbQr/AHmBtqwbPc3rk0Ob7j8LeCexjJbVjiUhYaPZChXPJ9nsZS+Qp063qciEBvbAU
         iWRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699354571; x=1699959371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+VmOC9mW+tWP1B7Ug7oPglT1GAFiZ9zi/wMFmqi0HIg=;
        b=VHyl20VlENXGvE2snzoRSkbTLwfJHwRWufJxsxrfETBoo5BWbP9BAsxuktY7ojSbr5
         +d2YQCgWA1BbZLqG+iKB4qhPPusz+gzyKJRyJJWF5rMCo6Ca3A5dtSeEfgKPiDwgHteq
         FGXh6Fd7XbVw8VEd2E54jBE0+tYrj7fDIjcC2nAF9WnsulIM2B71KZCzXij5SevWN/DX
         nQTyWUIIT/Qco38EcSWwILuXD6fRJgGOg7GEee2MUsv1AZSboof/ua3hYo9CkPLyny6v
         DtcF6PV0Lnql8iKZRXqFYiNYFhKP/8w7Gc8aOhnBLUvjcVWIBsidBtAxki96ciPv6oyG
         qTiw==
X-Gm-Message-State: AOJu0YxnhYQDdDOXl8t5RQjFTOZFaBDKUlvQxerTeuSh3k7Vhhh7XZi7
	qL6StOt7jaOuPucvhnFChdnZAg==
X-Google-Smtp-Source: AGHT+IFp+PQUOKEcVqhD5XemOxadAfc64JRTQk5yBVjO/4RkMQWsKCxkkjglvJOkecV+XYWET7qC7A==
X-Received: by 2002:a2e:9695:0:b0:2c4:ff24:b02e with SMTP id q21-20020a2e9695000000b002c4ff24b02emr24737599lji.3.1699354570780;
        Tue, 07 Nov 2023 02:56:10 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:7db3:bdd9:4cab:2ee3])
        by smtp.gmail.com with ESMTPSA id n30-20020a05600c501e00b00405442edc69sm15396853wmr.14.2023.11.07.02.56.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 02:56:09 -0800 (PST)
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
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 08/20] dt-bindings: riscv: add vector crypto ISA extensions description
Date: Tue,  7 Nov 2023 11:55:44 +0100
Message-ID: <20231107105556.517187-9-cleger@rivosinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107105556.517187-1-cleger@rivosinc.com>
References: <20231107105556.517187-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add Zv* vector crypto extensions that were added in "RISC-V Cryptography
Extensions Volume II" specificationi[1]:

- Zvbb: Vector Basic Bit-manipulation
- Zvbc: Vector Carryless Multiplication
- Zvkb: Vector Cryptography Bit-manipulation
- Zvkg: Vector GCM/GMAC.
- Zvkned: NIST Suite: Vector AES Block Cipher
- Zvknh[ab]: NIST Suite: Vector SHA-2 Secure Hash
- Zvksed: ShangMi Suite: SM4 Block Cipher
- Zvksh: ShangMi Suite: SM3 Secure Hash
- Zvkn: NIST Algorithm Suite
- Zvknc: NIST Algorithm Suite with carryless multiply
- Zvkng: NIST Algorithm Suite with GCM.
- Zvks: ShangMi Algorithm Suite
- Zvksc: ShangMi Algorithm Suite with carryless multiplication
- Zvksg: ShangMi Algorithm Suite with GCM.
- Zvkt: Vector Data-Independent Execution Latency.

Link: https://drive.google.com/file/d/1gb9OLH-DhbCgWp7VwpPOVrrY6f3oSJLL/view [1]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/riscv/extensions.yaml | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index a89363ad653a..b68edfd1fb43 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -335,5 +335,101 @@ properties:
             in commit 2e5236 ("Ztso is now ratified.") of the
             riscv-isa-manual.
 
+        - const: zvbb
+          description:
+            The standard Zvbb extension for vectored basic bit-manipulation
+            instructions, as ratified in commit 56ed795 ("Update
+            riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
+        - const: zvbc
+          description:
+            The standard Zvbc extension for vectored carryless multiplication
+            instructions, as ratified in commit 56ed795 ("Update
+            riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
+        - const: zvkb
+          description:
+            The standard Zvkb extension for vector cryptography bit-manipulation
+            instructions, as ratified in commit 56ed795 ("Update
+            riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
+        - const: zvkg
+          description:
+            The standard Zvkg extension for vector GCM/GMAC instructions, as
+            ratified in commit 56ed795 ("Update riscv-crypto-spec-vector.adoc")
+            of riscv-crypto.
+
+        - const: zvkn
+          description:
+            The standard Zvkn extension for NIST algorithm suite instructions, as
+            ratified in commit 56ed795 ("Update riscv-crypto-spec-vector.adoc")
+            of riscv-crypto.
+
+        - const: zvknc
+          description:
+            The standard Zvknc extension for NIST algorithm suite with carryless
+            multiply instructions, as ratified in commit 56ed795 ("Update
+            riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
+        - const: zvkned
+          description:
+            The standard Zvkned extension for Vector AES block cipher
+            instructions, as ratified in commit 56ed795 ("Update
+            riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
+        - const: zvkng
+          description:
+            The standard Zvkng extension for NIST algorithm suite with GCM
+            instructions, as ratified in commit 56ed795 ("Update
+            riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
+        - const: zvknha
+          description: |
+            The standard Zvknha extension for NIST suite: vector SHA-2 secure,
+            hash (SHA-256 only) instructions, as ratified in commit
+            56ed795 ("Update riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
+        - const: zvknhb
+          description: |
+            The standard Zvknhb extension for NIST suite: vector SHA-2 secure,
+            hash (SHA-256 and SHA-512) instructions, as ratified in commit
+            56ed795 ("Update riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
+        - const: zvks
+          description:
+            The standard Zvks extension for ShangMi algorithm suite
+            instructions, as ratified in commit 56ed795 ("Update
+            riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
+        - const: zvksc
+          description:
+            The standard Zvksc extension for ShangMi algorithm suite with
+            carryless multiplication instructions, as ratified in commit 56ed795
+            ("Update riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
+        - const: zvksed
+          description: |
+            The standard Zvksed extension for ShangMi suite: SM4 block cipher
+            instructions, as ratified in commit 56ed795 ("Update
+            riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
+        - const: zvksh
+          description: |
+            The standard Zvksh extension for ShangMi suite: SM3 secure hash
+            instructions, as ratified in commit 56ed795 ("Update
+            riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
+        - const: zvksg
+          description:
+            The standard Zvksg extension for ShangMi algorithm suite with GCM
+            instructions, as ratified in commit 56ed795 ("Update
+            riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
+        - const: zvkt
+          description:
+            The standard Zvkt extension for vector data-independent execution
+            latency, as ratified in commit 56ed795 ("Update
+            riscv-crypto-spec-vector.adoc") of riscv-crypto.
+
 additionalProperties: true
 ...
-- 
2.42.0


