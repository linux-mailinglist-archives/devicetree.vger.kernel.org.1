Return-Path: <devicetree+bounces-51787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D59698806FF
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 22:59:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 128F71C21EAB
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 21:59:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58CF74F214;
	Tue, 19 Mar 2024 21:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="h4ElhIxx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47BC42AA2
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 21:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710885560; cv=none; b=aRadEemXSMPvps8jwntVydkeFtGjV0ZEr2kmxzkuBsDd6+usLFTLP5Z41cwo4jlD/dHv3Q+bbI62qEAQQB26mP8QI/RLkg0t9hXOAtgXXFG6sbHq/AVxuhbFHfSWWWoLMp3GD6qW7TWKQORbAiqAKAeWDbdrNUjGs4xO+VLAslE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710885560; c=relaxed/simple;
	bh=FmlnN/GKOAOCg5UbOr9A5w45WtgIdMY5JUe3z3aaSTs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bRqEVmOKJER195G+OvdvQbBYSQSMbu+EJM2Qyq9cDn9K/pmVieKBaoIWCfpGJbEFjEtkvoRh5LBlAzwaL3vCm2wEhl5Xv6YSy3uIFDjiEF9rKLwVW/dHktjejIlXKQ5Xh7Rw52zzjgm+RWlVvP27DXnZKUfGAKIJfeEpM0Xt6VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=h4ElhIxx; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6e73e8bdea2so1554162b3a.0
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 14:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1710885558; x=1711490358; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mf8TbChjgkUHpdp7I/ykwc/bJc9eIQRGH4wGpVTxw4U=;
        b=h4ElhIxxgcBFKJpDrNLqiOlMU8/BnoaTPFp5Q8tDZXfePRxS2oo66AK2KCRHk3uso4
         Eqh9MSwDoGtjERIVfVDeBuy7ZsT+RsTn56n7y0P3WAvI61GSI1MOuNxVRz2KE6hTe5HM
         c8GWRQCiOU2A5ppIXlRkVEu4c9yiQLbolZ9VWdKVoIU4bCIn+KbCeU6X3hZCDxG7ff7S
         xMcF8sKdaiT1F+0ug/rRyRKaNY7hm6ml1OaxAdjRSqdPN6bMDkXgBaejzA9ShK42XnLn
         iEFTxRNu/s1NDWOOEvIuGm7Cahfeb/QR9MVM7ceRejGHSBb7aqMiqWVQoeg6AOHYVuF/
         5GsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710885558; x=1711490358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mf8TbChjgkUHpdp7I/ykwc/bJc9eIQRGH4wGpVTxw4U=;
        b=nXwRh/t5nXqlAdLp8NdHCXHLShlWyuf3XunHTNGxz7eCHSzv4R9IqeoBZv29T0bTBn
         ShhFfao7CYy8x+knP8ZkNOfRu9T0FyIbytHTGbJnwhNQu0pZkVOQ/OIN2HTwqFR7uTO0
         kQ0tADPLQ/aArpt3j6VOBQ1abBNW1RpOmhYFUQu2pfEGJelDsEepCpodHivvXYcyPLOj
         JDTLWIeTDSGNSTmdWW+hWLyRcM4XpszqAvD+D/A6uc4xunx+eG/wTvF+HDUvAJaWy3UW
         P4PRu/7F8ScXzoZJLdfNZ6QaB3fHAl5s+kYkEZ9/tPS/QCfh+yFsLM4VxTctGksGz6tH
         O2sA==
X-Gm-Message-State: AOJu0YzIJqKXnU8xo+wXdHeRoCrTP9rIl4KbIJ3NcIatZGvd1w94hIAB
	GQg8ITjf06FMaC3U045GpXYtPKwm1Wymyyu2TWVuzgYeos3G+6bKR8pz4S80ll4=
X-Google-Smtp-Source: AGHT+IHxqp3vSJIj8u1FQnLhGGhgkkZd9sPyRN/6PCbIT9hhDxZABaPjD8SNbLUKLifMerMmPS4+xQ==
X-Received: by 2002:a05:6a00:cd5:b0:6e6:9ac4:d501 with SMTP id b21-20020a056a000cd500b006e69ac4d501mr443835pfv.25.1710885558184;
        Tue, 19 Mar 2024 14:59:18 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id z25-20020aa785d9000000b006e6c61b264bsm10273892pfn.32.2024.03.19.14.59.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 14:59:17 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org,
	tech-j-ext@lists.risc-v.org,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Paul Walmsley <paul.walmsley@sifive.com>
Subject: [RFC PATCH 1/9] dt-bindings: riscv: Add pointer masking ISA extensions
Date: Tue, 19 Mar 2024 14:58:27 -0700
Message-ID: <20240319215915.832127-2-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240319215915.832127-1-samuel.holland@sifive.com>
References: <20240319215915.832127-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RISC-V Pointer Masking specification defines three extensions:
Smmpm, Smnpm, and Ssnpm. Document the behavior as of the current draft
of the specification, which is version 0.8.4.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

 .../devicetree/bindings/riscv/extensions.yaml  | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 63d81dc895e5..bb7d5d84f31f 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -128,6 +128,18 @@ properties:
             changes to interrupts as frozen at commit ccbddab ("Merge pull
             request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
 
+        - const: smmpm
+          description: |
+            The standard Smmpm extension for M-mode pointer masking as defined
+            at commit a1e68469c60 ("Minor correction to pointer masking spec.")
+            of riscv-j-extension.
+
+        - const: smnpm
+          description: |
+            The standard Smnpm extension for next-mode pointer masking as defined
+            at commit a1e68469c60 ("Minor correction to pointer masking spec.")
+            of riscv-j-extension.
+
         - const: smstateen
           description: |
             The standard Smstateen extension for controlling access to CSRs
@@ -147,6 +159,12 @@ properties:
             and mode-based filtering as ratified at commit 01d1df0 ("Add ability
             to manually trigger workflow. (#2)") of riscv-count-overflow.
 
+        - const: ssnpm
+          description: |
+            The standard Ssnpm extension for next-mode pointer masking as defined
+            at commit a1e68469c60 ("Minor correction to pointer masking spec.")
+            of riscv-j-extension.
+
         - const: sstc
           description: |
             The standard Sstc supervisor-level extension for time compare as
-- 
2.43.1


