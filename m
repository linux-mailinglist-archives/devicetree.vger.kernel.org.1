Return-Path: <devicetree+bounces-94495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B90955B6D
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 08:39:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5B541C20D36
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 06:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 227C9DDD2;
	Sun, 18 Aug 2024 06:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="0kmnSv2S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E89168B8
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 06:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723963191; cv=none; b=nnzu6pwluwh2CGrp+2vUY5fphXh/+/1iKLqRnQLvjxugXq68tFDzUzhXGKKIzQlEVoQRLY+ndCzFLMuDcvkfEFXod7x8OL4ouloZAMbClFYeicmUg77ERk5IMrTnIIia40ugDXh9LoAyg1Y7MME+cqF++nHhoqNYdtEWrlj6tvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723963191; c=relaxed/simple;
	bh=tnccALh8+1g50zeQtOru1Sy59cZzidIrCrT5x9+SPLo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tqMYxENN6veE08OVtdYjy4GWNCGjlyaWB7rTlkTfhi4FIWCOoWt8G1ZJsPv+LnO8iRm7XmKTi1h693zwYaTOAss7IqWDlEUfhyac47I07tyo2AUjocLM/WDvcCh6J2K2EsArMkzNJ0lDOWKdUvZAZNhI+D099lVjbIdZ4jxLQ74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=0kmnSv2S; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-429c4a4c6a8so25614905e9.0
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 23:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1723963188; x=1724567988; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5sYtVuKxVaNEjuRyviwIAJgcsawGj7aKXy8R1Bii4eU=;
        b=0kmnSv2SZcmYF2iOoSRbkaouWHjGCeErm5JXreyGbLty424rwqoLGX3pBvygilnniT
         IAmg6ClUZqGDF48BEkBxPSipnoSmKGXTt1ILJnZdqgeqdc7sC27etLnA7pMjd947O0FL
         1Tan+08wLS9mif7Oj+y/hnvbjm5jShSJFsGzkk8WW9uKSX4TVPpPh8rZdBdYUnNWaH41
         25o6/1g5BQv5hkTE/KBsIL1eFEXEQvYgS3yFjmtgyN4tXIHGG8ljcuhsrVlpu4GE6ieg
         iwM6FLTSZyPwdy3SCE1HAv6iM62FFpyCvrC6bi3Zuql7/z1JAi4DM6ggrqoEaNw3vHsr
         LPmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723963188; x=1724567988;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5sYtVuKxVaNEjuRyviwIAJgcsawGj7aKXy8R1Bii4eU=;
        b=O/c/YhqR8n2TCsQadFBv58Imj76A2CRrJt/th8alHZ/EIasTliYE50N1bXa8tC1m2u
         8Kw21Pd5m9f7a2GuLStNApdNNE8OO8nd6lO61ViuHLgB+3P4ETZzNtvKN9AO1KnA9Bsn
         pHB30nm3eywe3ID5jiJzQAt7iAIKQFkDyHakLapxY/V3JevJNU3rodhRqJSued0f9n8P
         E41roPQDeDO4wsY1SNkp1g+JQhRs1dGv4/qWOcIEoDwPeKYVQsz6eErXU9HhXufPGBGL
         9JRtdMX0KrVQ7suNkkQkhtxXlu7pBvUJS4dYVmaT2zJQlEoNhD9pTdxvKbuSWo3syqgN
         7CpQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0bjrirUShR2pN3kJre0MVIvJlWPZ44NkPwJi8x8aLnY/DN4vX//fMHUBqetzdjGGTv5NgRGjKlG6RqdhKmPbV9s1FqYzvJZ31JQ==
X-Gm-Message-State: AOJu0YxAl1nUCnCL0vrcZ8idzoR3Sf4kiZle2+NNHuk+eyq7rktrvCXh
	2pxhHms5ijI4HBx0sp6mGw+5Oo1Fnz9jy9YHRhbmGpjlE6p1RHiQ1EAEU/VxwC2uwZ1sdeeZZJU
	i
X-Google-Smtp-Source: AGHT+IGGAMdr2P1EdP5GWl4akDsUdOuePbLIYOG470k8Ym7dIUmRU5AiPcQ2o3G7Nw7Sy6NLXGgTQw==
X-Received: by 2002:a05:600c:3c9e:b0:427:98b4:624b with SMTP id 5b1f17b1804b1-429ed7e4314mr53197535e9.24.1723963187547;
        Sat, 17 Aug 2024 23:39:47 -0700 (PDT)
Received: from alex-rivos.guest.squarehotel.net ([130.93.157.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ed658e9esm66744295e9.27.2024.08.17.23.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2024 23:39:47 -0700 (PDT)
From: Alexandre Ghiti <alexghiti@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andrea Parri <parri.andrea@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Will Deacon <will@kernel.org>,
	Waiman Long <longman@redhat.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Leonardo Bras <leobras@redhat.com>,
	Guo Ren <guoren@kernel.org>,
	linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-arch@vger.kernel.org
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 04/13] dt-bindings: riscv: Add Zabha ISA extension description
Date: Sun, 18 Aug 2024 08:35:29 +0200
Message-Id: <20240818063538.6651-5-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240818063538.6651-1-alexghiti@rivosinc.com>
References: <20240818063538.6651-1-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add description for the Zabha ISA extension which was ratified in April
2024.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Reviewed-by: Guo Ren <guoren@kernel.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index a06dbc6b4928..a63578b95c4a 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -171,6 +171,12 @@ properties:
             memory types as ratified in the 20191213 version of the privileged
             ISA specification.
 
+        - const: zabha
+          description: |
+            The Zabha extension for Byte and Halfword Atomic Memory Operations
+            as ratified at commit 49f49c842ff9 ("Update to Rafified state") of
+            riscv-zabha.
+
         - const: zacas
           description: |
             The Zacas extension for Atomic Compare-and-Swap (CAS) instructions
-- 
2.39.2


