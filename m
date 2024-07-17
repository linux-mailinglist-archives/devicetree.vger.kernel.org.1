Return-Path: <devicetree+bounces-86263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 874A8933693
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 08:03:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 428D4284A99
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 06:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CC8B11712;
	Wed, 17 Jul 2024 06:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="AGLklqya"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA29E574
	for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 06:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721196219; cv=none; b=tJG6PNFcwyD+mPwfhUVcxbR6IOz33FOS9Wz+n0IxoFC0ciw4F6YrtnhsSEQnXGpQ+WfAb0PxuG6DyplCvrUloFk2hzoznNyoxWywCOJ9mHY3uwXGU6yhjNpp371HQXGshLxwwrUda41AokuSAFzKdDXBECqZXyGNKd3kGeHoTo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721196219; c=relaxed/simple;
	bh=ASIZxkswmDtZ+ZGB+DAdAIDL+TY12awedCwg0AK29lc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iNnQ/CpX3NRSjSJ2Dv6CG3pGIlJt9KuMtMsoZCyxO1GRlPyRe2neQHu0z8IX3JpXzMhFWKRildTrQWk/OLbogbZHftBd1j36y1tM1KkkybZXAOgDT5uo+g+Z65qtXenFFXKWFJ5g6+8QpvxTTjGUPEkjZKNj3c7w5iz5kVjjglc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=AGLklqya; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4266fcb311cso45222025e9.1
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 23:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721196216; x=1721801016; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ArkPBFGt6K1MFhrYQ24ruK4j4xzpePBZL9fawM1R2H4=;
        b=AGLklqyaVbodhgMwRwXc2aa/0ZC0UDJoHkQqHptxZmpMCxa6MSe+IJ/XY1E/P3t2gd
         6lGjJKtpTNpfqnf2ugbnD5UDAb+kBBjfevLuJlIXf/rIuwxMhSzSXKlTr8dQohv4lt80
         dj6A78nDVcXRUCwot+v2UmClJkw6ZLOyD7MF9/jfaynQqi4FmpVY6CcUyCZWtAo/ZqgI
         zKVNl4uPEFcBvYZCKDY61t3LZl/2E4XaYg7mfCkPExhIJLH9X1ewraDwy4+yRC8K4qTk
         dv+CZ1D3MrudHD8a31jCXw7hIY+Xqr0Vu8731D/gaHJcDoFFVML3iQ9/Gs/wqTN8hG7n
         yKMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721196216; x=1721801016;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ArkPBFGt6K1MFhrYQ24ruK4j4xzpePBZL9fawM1R2H4=;
        b=heFdnWEdjxDL3wCi2rzGQqT3v4b40oCAkmDz9Fzj3G/ZhB/Yx0xCHxrQtl+dkG7/3L
         OPoQxdU3I8/wRIs26PMqAU5kUgDgZV1ttHHIKJrKLoHCRNGVrPaQ7bBQis0t7eslAu/0
         p4Toczc3wPD59pvh/tktG/DxfSN4WoNZruPASvc/oz04g8MGE7h3VRu805puXOdv9ywo
         hzGsjAA3N4kuQ9Ab2hrrsTBX3BNd8X7Wbmyft6RNGQ2LHcrLH4HArWTJY+Q2r6UkAyRe
         Lhilk0yxJErNsqfVh5a7zUdY9GSlORQ195r91B3Ypxa5ivlQPexT6AGbCxQcJEvrgUUG
         NMtg==
X-Forwarded-Encrypted: i=1; AJvYcCXxR5DTHY3TmQz81Ee5cMWj3SnQCjx3Q0CQS4OaYlkUbXvnXjrdq37S9fCRnUEFloUMYkZ59mdqbqGiTr8I6sIHIhHkYpvH+4/+VA==
X-Gm-Message-State: AOJu0Yx3gi0fs41ppRpcfifcxWaVYnd6mCKgfgKx+FNDAsy6Zvhc9ewi
	Xr7nz9gSLVfVO2nWx/C+ctYbDClC1lkMmT3eHoYM7WJuTHY9r6Ttpsjme3baMJ8=
X-Google-Smtp-Source: AGHT+IEGysgZPMM4acl6H0WMyDhumNTRPZzYYEvhuxVrBFVR//wZJdXVjhzyWhOID+qrmJtwitm53g==
X-Received: by 2002:a05:600c:4e94:b0:426:6f0e:a60 with SMTP id 5b1f17b1804b1-427c2ce4a57mr4782015e9.17.1721196215982;
        Tue, 16 Jul 2024 23:03:35 -0700 (PDT)
Received: from alex-rivos.home (amontpellier-656-1-456-62.w92-145.abo.wanadoo.fr. [92.145.124.62])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427a5e8387fsm154887365e9.20.2024.07.16.23.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 23:03:35 -0700 (PDT)
From: Alexandre Ghiti <alexghiti@rivosinc.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Ved Shanbhogue <ved@rivosinc.com>,
	Matt Evans <mev@rivosinc.com>,
	yunhui cui <cuiyunhui@bytedance.com>,
	Anup Patel <anup@brainfault.org>,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 2/4] dt-bindings: riscv: Add Svvptc ISA extension description
Date: Wed, 17 Jul 2024 08:01:23 +0200
Message-Id: <20240717060125.139416-3-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240717060125.139416-1-alexghiti@rivosinc.com>
References: <20240717060125.139416-1-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add description for the Svvptc ISA extension which was ratified recently.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 468c646247aa..b52375bea512 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -171,6 +171,13 @@ properties:
             memory types as ratified in the 20191213 version of the privileged
             ISA specification.
 
+        - const: svvptc
+          description:
+            The standard Svvptc supervisor-level extension for
+            address-translation cache behaviour with respect to invalid entries
+            as ratified at commit 4a69197e5617 ("Update to ratified state") of
+            riscv-svvptc.
+
         - const: zacas
           description: |
             The Zacas extension for Atomic Compare-and-Swap (CAS) instructions
-- 
2.39.2


