Return-Path: <devicetree+bounces-89707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEA69427E5
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 09:28:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50D6228932F
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 07:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FDEF1A7211;
	Wed, 31 Jul 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ZcfM32kq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024F31A76B9
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 07:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722410896; cv=none; b=SYffoQphBxtAd3jaP0yFTjmKhycmhS2I4HZLgRcSRYJkKi1TmXc4+uxgUrREGYc5CHruoTcFR/aXYQTNCgz7k9qH0ZUxonppwOoAptZm7KJ82l/3vcs2gnFkfdxr/jJn57OwrpSAyQevotZymUAoT4du7seCR2WO1u3NEWo6fho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722410896; c=relaxed/simple;
	bh=CmTtLX5RKwq4LF8rnnTG1fDkLvs6br7ryZDyRU7huqg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tFfNpra7ugoZNIeCDJcJvwLGXKDicMZFJBtD45ugKmBVUTeIVsnSs5ugp+ml0bfB5fZpHQ/igXzX5vKjtbzp8nH+X01hfvdpRaPG2SaxDOBJVYuyOoW5tftfrMooR6gpx2NUoXScbFIfFiL2n1I/8nvv7ruq+UtorEgUq4tIPwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ZcfM32kq; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2f035ae0fd1so64752861fa.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 00:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1722410893; x=1723015693; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ttjywx6Mo1/3X2D9jge6HvTlgUDsJ3yzsugn6JInGgA=;
        b=ZcfM32kqfqq3puQI2vnxu6q1EZ0wDSDuHIWKlnZI1HRnKOeTq9f6YXEf+vBrPw1gb2
         laKur3vznCeRwfX8Sa5U+uR5GK5smS0YfmgxWtCvpk10uLEJKw5yJe9JlTApg9OMb80t
         CtdeYwbeTHUYHoecBQ5jZzJEfNlFgfLG6/L+fAly7sGZG8gkKPhakkIYrZQZBVIwx9x8
         k26YyVumDYtJInhq9LCcjC7q+y+eAVz0VXhHWpBDPdlOi3l5pShNIgrC7SZpOgIj6pC1
         du2y/v0n1Zo7DeWw8nB3m4HxsLPSlteUMLVK0e8yu8TwmViRHwcHklwtLl/YlSADJ9qo
         KxHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722410893; x=1723015693;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ttjywx6Mo1/3X2D9jge6HvTlgUDsJ3yzsugn6JInGgA=;
        b=VQg7mVhVoxkehehey5HjLVbnSnDxQSgG/YwOPAc1DyZq7ZwkcxA8HQ3nlnOBpDBeSj
         cVSnyzcfykuPsjtkD0bBukqqkSm3xa+ipCr2NjPbiNvcrFnfEEJJc4ZjsW/6PnBjeBHD
         GumSBR9YWFwbUtLpdLU6m2UplPEdAk4I5yfhvo5Z1BaAUPNFlBYIMQH5n8Itjsh0AS0O
         l5D+O4hizYTrdJMPmIvPlQM/b0DPPtzi8PGibQBeg73obswpU5byWeSzOEE1yB1hJpn9
         01xtJYfmO86pfpAy3Nz/XroEfxhR5JWgoF4EjHFtqg5arzeRUoC5RO2XS3XpmcV8CGgO
         T3Eg==
X-Forwarded-Encrypted: i=1; AJvYcCWZjrNQ3+/APz0n2d9XzT+xXhBPreQTBbxhgXUHAweG8Zhb7VYVevt8AtWeu2DBYx+NNvyezTLzLZnAjw/6gglJTz6nWZHoIg92Vw==
X-Gm-Message-State: AOJu0YyVyninnaJzi9dBrMSWHmrmF+S3Xj7yLlKkS4ICLr6g5ULkgMNK
	hmqXp3cfxcfVxK86Rf7oqL9F7CD9Jiyyv9VjSqufBA88XDcG+pNuNQ4THBqtldU=
X-Google-Smtp-Source: AGHT+IGwuD5WOsjtT2bfQ2zXne4CrgHWP6AcnVi1hE62VKVHJr7T6wk/7agmQ1tHhyxNcI20/8ivqg==
X-Received: by 2002:ac2:5690:0:b0:52c:ebd0:609 with SMTP id 2adb3069b0e04-5309b259bb9mr12112105e87.7.1722410892990;
        Wed, 31 Jul 2024 00:28:12 -0700 (PDT)
Received: from alex-rivos.home (amontpellier-656-1-456-62.w92-145.abo.wanadoo.fr. [92.145.124.62])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4282babaab3sm10562035e9.28.2024.07.31.00.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 00:28:12 -0700 (PDT)
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
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: [PATCH v4 04/13] dt-bindings: riscv: Add Zabha ISA extension description
Date: Wed, 31 Jul 2024 09:23:56 +0200
Message-Id: <20240731072405.197046-5-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731072405.197046-1-alexghiti@rivosinc.com>
References: <20240731072405.197046-1-alexghiti@rivosinc.com>
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


