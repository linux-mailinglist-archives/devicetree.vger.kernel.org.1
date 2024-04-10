Return-Path: <devicetree+bounces-57809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6DA89EE4C
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 11:14:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EEEEBB2262A
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 09:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D45C15B10B;
	Wed, 10 Apr 2024 09:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="h6HGpF5x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B04AB1552FB
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 09:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712740277; cv=none; b=h4eDJQBBYAFCoOczAZZG84akgV1d+vO2NqQexX+SrmDCo+e6Q1Has1NmmLjBBj5PfA/MIn5nQUiaiE5c+eQuAXlY0gr0If8YpO6CryTbUpzkJzUPN1NYmZj8tna/xxeGo0KimiHo4jozk7Jr41sPx2xz97a2p1cmXEgTvnzqBF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712740277; c=relaxed/simple;
	bh=Sq/YgFLF0vizQ6xS0hnRpwO6s5EiAcRiT8BZGOJrZyM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OhsX+akioGsp4Ndgbra7uDSWpiY+/h/zjbsrwcMToQ2XkZBXiBBmN/TXwtSh1oItiJ4Jqvs2C9zeifxvbXHHqMV0OFeVf9lYIykBvbPJeNOxY4oqAMqdef7l+23/pG4yT1EJbE3/hfVLF7/elSxgAM68/G/GD2kNVIlxp7xbwUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=h6HGpF5x; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-346407b8c9aso516528f8f.0
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 02:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712740272; x=1713345072; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c7nj0hrAb/ZTca31LKYsuyiwQEp4tEr8mY0ChFA9P/c=;
        b=h6HGpF5x46FdmW6HkWhwfDdwdLSRF7Edv6bcO3AsJlVSGwOx/YlPFrNyMOVPkVjBA+
         +ZkEje3raXv2oEWEkHr2qcsLCxZmi0FsZULZsMiMNwMXFA/Q7Eku/zQ82B+re4DWMGpz
         VFlxRtyYDHYd5/ZK1Vt6n5H9AnIgjjtsuoyleO60gSj82b7d5K4940LIFiNUPFFzuycW
         n/bdXvpRfS+GNfmt0im+Bmi4jUAKM6gT5qlhFna7UO3mug7HNcAAqmjx3O5qi6NIC23H
         hxpfQaBrtb3PpjjyIKY7ENj3YzIDlrHx1i/A8mf89CK4sKXIRCf9gZ+AgZHXdvdtbKpi
         AU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712740272; x=1713345072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c7nj0hrAb/ZTca31LKYsuyiwQEp4tEr8mY0ChFA9P/c=;
        b=rwQL2Rnkk4Vpd+FeffDi/5Ry/meW2mq8SQ+a1g1iSNNBoQ9FxDP2/9BP0YZgs1u5Pp
         7mMBkRb4cB2spXIu8CXBUQ6x/EmBRZGOSK2SoD7rxjVsoQzkyXfOtIPEWMaUCc1XcRnm
         QeOw42VyhUrp41hkoWgBrpkwu+OlcEBYApk53xArCoKbT5/C6TXNW74s1/FYGNP2CA5n
         Iwd9ZlWKmKalDA+AOgSbcD+a93+tlKgi3T627zTs4LtTp3n91EdAYl1jQn9v4XBOPfm3
         703vekKP3zmWfIm05o+5jv5wCh5pIuy+wIH+Br8t9ta/q9ghKhYnlOIyAAIhnCyTvaF7
         x2uA==
X-Forwarded-Encrypted: i=1; AJvYcCUH2ymIEbR1EYuJXSkO/PvoYspxDN4DdwQC5mBq+a7iFMd+/hSMAz/6oe5i8mZbtC8Nm50fPT1/lj1Uo9gA+X25hNrGITV3b/mfPw==
X-Gm-Message-State: AOJu0YylWYiq4jeQVR8Y1Gk+A62+1es7NCZFcUG4HRePk1mR628lgFjY
	ltpiAEj6+Iv4O1THIa6U/Ir1JK/GGewjGP2hb6thL8zJW1vFXpoT95kbkYY4vOY=
X-Google-Smtp-Source: AGHT+IEC8u4594PjRvl4MC3WnGzfb1LV/AIXMlfgTp70rfcnNUzoxfb7eYEGhKXPjIrc4Pbt7pSXrA==
X-Received: by 2002:a5d:4a4e:0:b0:343:c3b0:ee39 with SMTP id v14-20020a5d4a4e000000b00343c3b0ee39mr1259238wrs.5.1712740272056;
        Wed, 10 Apr 2024 02:11:12 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:d4a6:5856:3e6c:3dff])
        by smtp.gmail.com with ESMTPSA id d6-20020a056000114600b003456c693fa4sm9079086wrx.93.2024.04.10.02.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 02:11:11 -0700 (PDT)
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
	linux-kselftest@vger.kernel.org
Subject: [PATCH 01/10] dt-bindings: riscv: add Zca, Zcf, Zcd and Zcb ISA extension description
Date: Wed, 10 Apr 2024 11:10:54 +0200
Message-ID: <20240410091106.749233-2-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240410091106.749233-1-cleger@rivosinc.com>
References: <20240410091106.749233-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add description for Zca, Zcf, Zcd and Zcb extensions which are part the
Zc* standard extensions for code size reduction.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 .../devicetree/bindings/riscv/extensions.yaml | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 616370318a66..516f57bdfeeb 100644
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
-- 
2.43.0


