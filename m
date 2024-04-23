Return-Path: <devicetree+bounces-61864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B50D8AE6C5
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:48:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBDFD2862AD
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A758386253;
	Tue, 23 Apr 2024 12:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Jo1dTDz3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADDC86AC2
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 12:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713876252; cv=none; b=oO4r2PazZxrRke43Nelbhn7X9LfjOZNE21nuEbWDkvfuYXfJ6/J9M9jJoPxXEVOL+X1DWJ8RcVvr8mtx0gz543LxssZOeZ091THYyo4yhDjitJbkf1y8DrFlHVFkVDtsY9HulpWWRcZcggMaAt5/exhqXk/meGdqypNkalljZDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713876252; c=relaxed/simple;
	bh=Vz0s8AKnndRQ8cJTZ/3LH6Q9O7ZuS04mMnmJYlpWcHA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AnkRm2me+bxVc5OOUC+e9G9T3gNSIR2Gt4p1PxjcUW+Q4eUNTKFmgRTS1d1FQQBbOKvrbzy2VIsi0cL3A7G46Uo7l26q3ePz3aCKPPn6b7xQsw2zwC/ihodUu6LY6NmrYC8+KIr6KKwGuvx10PF6te3Zw5fHW5TW1oIiQfpMffQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Jo1dTDz3; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a556334c556so110140066b.3
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 05:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713876249; x=1714481049; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SqUXz3P/ILbAY/obovxuw/ulwPrEeHHfsINnJJgombQ=;
        b=Jo1dTDz3oqPCQCyQg/Lt2wgsz4KFakpZXQ077zGwK59+kU25kEmiRoRvxMjGvxxIwA
         q/0uFCWy0HBKg2Yj5SnmiktSa22LnmrMKlE+a7e7Sole3Khn7LT0by/yL5kKdL5+3zNf
         KoxW2iLWe1EF1s59aJ/PJotcXk/+IFXQaC16NhWc8skxSd0oemPu3L7qqIJ18rSytTs3
         6smFyzLlxbG78qux8/jn3meV9ywRCIgbs/mownIaMDkQSbUvd248cPPVPqTkldkvhrZE
         AAT8veU49xaQmP6XMr5OVgOiAM7zvoIj24BkzmXA0+BbavXDC4j4OwCkp0ps5gMh2VVL
         AVzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713876249; x=1714481049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SqUXz3P/ILbAY/obovxuw/ulwPrEeHHfsINnJJgombQ=;
        b=OSk1veB4ehr7q0QVaVpGjoHTDgvQDEWnX/5zbnaA20AZxlshKMOZf90YL+tDiwF9RF
         oLf/+XAqIYDvKYQyA8NFBrZtiRj3utgb/3y17VFilgKY1PE3fEpUeNxEz/iX/v/dsvZj
         lTLffdqCq13u67LCLghvxp6wptCFqVKmsHXkgMRwi6GP72e36JufOtFQqU8slFmtqurM
         i7jy33g1cWdYHnWFXpALUvAu4GRfNvydSPft6mqIkncvmjtJQiHyE+wccmGR1CpifuQ+
         4efG3P6BIjCU/YoH+3vVpeAH1K4VFu3QsOuQszy1V2LQrbkvXRH26LCq/Q/VRmf4yILz
         vqkg==
X-Forwarded-Encrypted: i=1; AJvYcCUCSFtsgFU6y4Z5LixqaoPSozjeNNdwclBGEgo3g/NvvEZiWMAlsKqa81cCvgh3s7bCGxaFpJLBpNx+3EJKH6e/FurmZdpe+smkcA==
X-Gm-Message-State: AOJu0YwuO2yvqUS6OA16LhKGyBex0tqE2WVUHGhu+piMMwJA9TghnEvJ
	VLeYb9NOyHtitGc17LV9kJt8pt4USGYEOYmcjsYPvFq35QtyV989ZyqXvUX/SIM=
X-Google-Smtp-Source: AGHT+IGYD6R7lCuFXcFn1CiEepxwRzLgpJssX7t6iPTjHzI3S73/lLM0TpTesKJAZsPqOxcquQWylg==
X-Received: by 2002:a05:600c:1c27:b0:41a:c4fe:b0a6 with SMTP id j39-20020a05600c1c2700b0041ac4feb0a6mr1112456wms.4.1713876229210;
        Tue, 23 Apr 2024 05:43:49 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:71cb:1f75:7053:849c])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c470a00b00418a386c059sm19975709wmo.42.2024.04.23.05.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 05:43:48 -0700 (PDT)
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
Subject: [PATCH v3 07/11] dt-bindings: riscv: add Zcmop ISA extension description
Date: Tue, 23 Apr 2024 14:43:21 +0200
Message-ID: <20240423124326.2532796-8-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240423124326.2532796-1-cleger@rivosinc.com>
References: <20240423124326.2532796-1-cleger@rivosinc.com>
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
index 81bce4fa2424..1952d20b8996 100644
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
@@ -549,6 +554,13 @@ properties:
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


