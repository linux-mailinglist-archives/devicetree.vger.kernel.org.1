Return-Path: <devicetree+bounces-67534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1130E8C88BE
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 16:57:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41C7A1C2460E
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 14:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DB0B7E574;
	Fri, 17 May 2024 14:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="sIkXvz5e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C8B7B3C1
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 14:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715957615; cv=none; b=Jp9EY83J835dpQxGSlspqwUkRUVfsK94G5ueGMqCwsoUhS76bAAL1dIP4tf1YPQn9G+jt3Vguxmvxpt+4pOVElaT6pZ7RcsvirKnwzo/TRTeJZJtEEy/9tpgwQHO687hIRvy/XgjBucJ1rg/rC45SReCLrbs48cSmekxea3e9zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715957615; c=relaxed/simple;
	bh=C9vzT2vCbUbGsLodiBKngW59Ng7yI/EkxSzw5LE66mw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lColjedk4zFFzqyKLMvbbq3rRCRGO4TkNyKXqyetYN4r1I0mXXih7u1M85L0hi1Ausu1/Ntws4gy2KyxP/wOB44cze5m0cRDsOJ4nSOcGAW5AzP07TJu4cyyoG66AncugZVuHUfjdSTBzs24Oo58AEptLN9gaVCWuhVcv/Pbk6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=sIkXvz5e; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e2554b8cdfso717141fa.0
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 07:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715957611; x=1716562411; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6gKduH3vm4bA8ayteF62cYLjH3IlcFCjaIqG2zMpUYA=;
        b=sIkXvz5eK/YQvVo3BZT2MEA3u2wHyX/qt5kNedkFdvktJXxyuqE0AcrEdwXLe9GjzO
         pTnjwXcrSBw6q6S/13ZAznk/uw5FS3m+ug+ZNKbmT8hk/dcTJ7g8vCPNXx8+GfM9OOSM
         MUUczNc+m8MEckkEZ9YPByQdADj5H83g3zzCztsoUsR/MhAcjOrWagRN7ZIn4VXh1C8c
         PQXpJCWAW4m5hrMiLCZWymK84ethTmp4HtmfvgcZusKIXArsyx5pekMDwNIL5ZwPOPDS
         a7dRtKdf8oV4OgjltAaMVVwTK3zT7NzyoY7hHviADrIzOXodUyJ/lqLNbaNpZ3B4XiEd
         +qWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715957611; x=1716562411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6gKduH3vm4bA8ayteF62cYLjH3IlcFCjaIqG2zMpUYA=;
        b=FYDHN1Gif1jXjvmXkwv0vadmAoHXCFg03QfRzxElSiz0EHTtHCUj4G6xNsJmI1+wuu
         rgcnb9ACG21wun7AK0PN1oHviniljvF0Gp2U8nmOcMuM67OzQwrQbVskVqNb9WtobU79
         S2bARLRpmjzejSDyWkCrK5l6rlpgIMxf4s5lxSzbSjX2C9UzCiJyU1eLZtK0iksqo1NZ
         sZRMZR+aGEPIsvatJXJigrwVs5NkCkdVZ5BYu0SFiPFWZbMZlYrpxNJDC0OavhMVe9bv
         pA7+ufiw2My1xrUWL9UsexKpsZQlkMSlpeqEbJvfwfXdZajFDoJ/2oGq6SMVASxXPuWw
         cbAg==
X-Forwarded-Encrypted: i=1; AJvYcCWHnh+zxKwGdPzIdyS/bq9yM4jv00HPQ9nNl7M0ngKOnjuA4tz4HajV8yG6K8Pza0mgw6stA1CgrlPkoFuay4jIyTq6/8oBtBskPA==
X-Gm-Message-State: AOJu0Yw+uVh2kKjLaOAESg9DR0EPnjgy6GNIgiyURE7jqvP1bLZSWD3P
	gOqLLGZMzw321xJ3E1ZquX8b5KhOxTl91JXdYInOjL8XCEPMOnziYLt7FMEmWbU=
X-Google-Smtp-Source: AGHT+IEoTnwmla6Aw69ILKU9EfBqXp43B9e88SNG9U5yWPM6gqE1tM5+qUVkKG7xDY04SlNYRjnGNA==
X-Received: by 2002:a05:651c:19ac:b0:2e2:18c2:9c8b with SMTP id 38308e7fff4ca-2e51f262c65mr155101901fa.0.1715957611714;
        Fri, 17 May 2024 07:53:31 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:46f0:3724:aa77:c1f8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce9431sm301723695e9.28.2024.05.17.07.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 07:53:31 -0700 (PDT)
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
Subject: [PATCH v5 12/16] dt-bindings: riscv: add Zcmop ISA extension description
Date: Fri, 17 May 2024 16:52:52 +0200
Message-ID: <20240517145302.971019-13-cleger@rivosinc.com>
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

Add description for the Zcmop (Compressed May-Be-Operations) ISA
extension which was ratified in commit c732a4f39a4 ("Zcmop is
ratified/1.0") of the riscv-isa-manual.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/riscv/extensions.yaml        | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 39084c58d4e4..acad4d9d96ab 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -252,6 +252,11 @@ properties:
             merged in the riscv-isa-manual by commit dbc79cf28a2 ("Initial seed
             of zc.adoc to src tree.").
 
+        - const: zcmop
+          description:
+            The standard Zcmop extension version 1.0, as ratified in commit
+            c732a4f39a4 ("Zcmop is ratified/1.0") of the riscv-isa-manual.
+
         - const: zfa
           description:
             The standard Zfa extension for additional floating point
@@ -559,6 +564,13 @@ properties:
                 const: zca
             - contains:
                 const: f
+      # Zcmop depends on Zca
+      - if:
+          contains:
+            const: zcmop
+        then:
+          contains:
+            const: zca
 
 allOf:
   # Zcf extension does not exist on rv64
-- 
2.43.0


