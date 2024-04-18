Return-Path: <devicetree+bounces-60550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 124648A9A31
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:46:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F7081F2134D
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CABA168B10;
	Thu, 18 Apr 2024 12:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="glD/VJY3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1D11635DD
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713444248; cv=none; b=ehIRkQp4z5ye75CUDYGM4s9qR+MRrzo6fnAza9jCsl+vn6Wbow0O+w6Iy3TWrEhfEut1uCl0X1Zc2lxfU3hXGinQfcodDlKZQWSKup/iE9B0CXu7X6WeC1MvPDJW3LU95HzYfSQX8D4d7oR+OhCaEcVS9jWfUtEUkZf2jjNXWo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713444248; c=relaxed/simple;
	bh=J+bCEvF4XFdAFPpf0c/hVBuXUmoAvTnoas5SbNaML1w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=vGrJdNJj8qmf/7//AxqWZuqxr5T1RLhP6tbtm0cBpFAIsxZ1maFBfB1/jOhDari4stbcqxJ5/qoIuWO9aA6HBqFLV3jzQbNHIcYGHqnlM64RAZ/tcYr1VGTZt64y2AoOsZu3OaYRBiy1NNilg0UwbEs4C1N0EjiXQGFgYpp7P/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=glD/VJY3; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-349bd110614so143279f8f.3
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 05:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713444244; x=1714049044; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HCF5E0lf403bRxRvK1+a63xMUHlXis3iiu/dcBPgPms=;
        b=glD/VJY34TARB8xfgGOO4Hip5ayivSYist1quqST1mUcOAZe4Id1KlxtlOYwcgvzE2
         svwdA3b74QA8mac7yCTYzIrJ6DMUgKaxPybrz6JIMJeRHszzh/QhBiap58pYTCNtd+nu
         0J6VZFWa3jQ3dxvVI2bwYqDSweHI3tvkawAg9uFg5XSJz8MF53EX901ZrV7uq6bcMPWx
         g7VHbkVakpmoqXUoQi5f5RvQfEfTCpYVdjNkE08HTqJG9PtQ48hmLfWLOkJuQyqpbKzD
         sE3/jPDX8ZAyl7Ag1EKCmL3Bdeoqv4Vyy2Kly62a63DC+GMF3p74WLoQhcqXoEz041Xd
         w3SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713444244; x=1714049044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HCF5E0lf403bRxRvK1+a63xMUHlXis3iiu/dcBPgPms=;
        b=vqJxzr+VuctzJW3yyD3Dw2PekqIG18AXBUNzqT8e/40RyRVTxSxrq8c1fhYowgxqXT
         fVJjgNppLhw185dHsq+zJoJFAMpEb0DJsAvDgh4/9XENsO2hjh13eFivOIPDQsg3R7O+
         6tDVHTvLTuyKZ6A80tB9ZeAFbqKOEEfZmHC9uePd6lzwICs7xxTMMsATmTTKAoYZXrHH
         RHnWaFgwtrA4tR22egPxHP1MwZeEBr/zZ7zqtfx1bMDw9EObFom6ujAR5REJtzmOdt1G
         KUZvlM8fpqUlaa2wXJiiMDbKj1Oognc4hW9YMqyDF1ubMeskaVFL3ug/hxvS+zcfoPcc
         efsw==
X-Forwarded-Encrypted: i=1; AJvYcCWgWEmozC9afaNiBBHMF8TpLL9emIdmVChDcUix0KM4jGb4AJCQCnQZFyfe6+COXrQmM2khhMGLYqvKg7rsH4fv7ke3LxrLvGHS6Q==
X-Gm-Message-State: AOJu0YwvDs3i5vOBk3VQ6HDrqBFGN8mKe5KH24HvQfy99hpGHa2ogOQK
	ok9TYMtFPKDvE9kWk/HtvqR4RK5xAP+cYlQjpEnKmPQgpMEafwi5yHn3EqVzUt2MDd4Fe0rkUza
	+ZbU=
X-Google-Smtp-Source: AGHT+IHf5iuv0LIJwrYLLs/M29+a7bnqtqrULSppwC9XA+JzBmE6As/f1Ah2mDNqzxt/R7Bqm6p1VA==
X-Received: by 2002:a5d:5046:0:b0:349:eb59:c185 with SMTP id h6-20020a5d5046000000b00349eb59c185mr1524481wrt.1.1713444244182;
        Thu, 18 Apr 2024 05:44:04 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:7b64:4d1d:16d8:e38b])
        by smtp.gmail.com with ESMTPSA id bi18-20020a05600c3d9200b00418d5b16fa2sm3373412wmb.30.2024.04.18.05.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 05:44:03 -0700 (PDT)
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
Subject: [PATCH v2 08/12] dt-bindings: riscv: add Zcmop ISA extension description
Date: Thu, 18 Apr 2024 14:42:31 +0200
Message-ID: <20240418124300.1387978-9-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418124300.1387978-1-cleger@rivosinc.com>
References: <20240418124300.1387978-1-cleger@rivosinc.com>
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
---
 .../devicetree/bindings/riscv/extensions.yaml        | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 0172cbaa13ca..a0113cb46893 100644
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
@@ -566,6 +571,13 @@ properties:
         then:
           contains:
             const: zcd
+      # Zcmop depends on Zca
+      - if:
+          contains:
+            const: zcmop
+        then:
+          contains:
+            const: zca
 
 allOf:
   # Zcf extension does not exists on rv64
-- 
2.43.0


