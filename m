Return-Path: <devicetree+bounces-118497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C3E9BA640
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 16:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2109C1F211A4
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 15:04:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 271A8184522;
	Sun,  3 Nov 2024 15:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="vEo2u1/S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F03617B401
	for <devicetree@vger.kernel.org>; Sun,  3 Nov 2024 15:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730646255; cv=none; b=hJNPQXrIKIqJhtu5k5l0paYaGZx1OBim6AvvW2CF+nu2h1ocDAEfxhNiHradcpEr74xoZMfTL7DVH/aO3ke2GNqQ3Pi+at7ku9KBsbb+1a/iptQ89SrELjZ2v7OGlZ+QpHmV5jbw8zRC1qi+j/My3TUjrarFDcI5WBOEfaS6r34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730646255; c=relaxed/simple;
	bh=DDI2zIjw9AIG8rhpAgDtY+aKq0SOPiidb9JfsFGBdSY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UblJkY2Yk7oaOq3IIEoizxr08RoGGa4L/OPm/gZZ4bfI06+IihPWULsBZI2HOfS+rUycSX10KpHiAf4qIj/HxViudYQufn1BUkl3o8wg/0r3WeQJ/D3R/fXVoLveRZc2ldQjkUxu9Av9J1A1iBQiedgmUkbZ+nCwZaFbaD4QIg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=vEo2u1/S; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4319399a411so29606815e9.2
        for <devicetree@vger.kernel.org>; Sun, 03 Nov 2024 07:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1730646252; x=1731251052; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CYOR6ehP8ZUAtZy2SlX+P5w8jiHdus9J4uApBvZwtJU=;
        b=vEo2u1/SsXzwb6c1sxGlxeEGJO3XSMf6TUC4IpOAU6NTove6jX6XfgQ0DK3L7quoKc
         fVO4LdDRytFgoLxE2GgfJbUzaBmV4HLpsw0ZlstCZtxyA+xbvU80+nDqOg8HCnjEvjDC
         ujqbaROapfIS1DqDVvd9ZzRura7stsd86lVDomuRO6yMK3dXtAB/dNN8IzBW+u/bM95I
         ifTTEfRSjMCGxTC3h90sfXYeUJoDOaBDtGL48gMB4pdtjuQI29yc/OFE6k2PaaBXrOIQ
         kz4/bMwNFcP0oF+XF9BoiJKmRpO6C8Wuov9SEsjwgJ4PZHxWF2OjfFqX9Q6MZUvyJKb1
         GxfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730646252; x=1731251052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CYOR6ehP8ZUAtZy2SlX+P5w8jiHdus9J4uApBvZwtJU=;
        b=UiP20MfTfjF76BVpO57UoKOg+V41esD2fnMDye+hJdLOnBzG+m7jdw9CaYYsHtVSEx
         MFaiBX8PfNVMYCZft9YIhoDG7xpNdL+e6KY+8l9jwlSFn8LjD4alLxyNzVPPT4S59X5o
         Pzkww9ZUcFLm8dG2sAKE4qahR7tgd8EjwTA4687SUuWsk2Hca6guwe1bWdfYQmBBTyat
         dznXK2lYTlQMMet5SSDr9JOSMxCKiI/sHMsuD/cg9GYobKma4RFSNnSR4tDw6I4wZWgn
         EAXQwJtQbJ6PIRRstE2A8fUuVGjHtW6IgC7DgC4Ibz5dUNXzkCibYs/QJ+nhIIvIQk21
         Dl5g==
X-Forwarded-Encrypted: i=1; AJvYcCW4Zy2GoI44dKs0sYMGjE4Zx0b3lgF1gPol1B8CScNvqBuqg5vsJ27RTGQHkNvxP3qYLTFN1aCNBrff@vger.kernel.org
X-Gm-Message-State: AOJu0YxoR5XoR3EqYZjyfcCkQYtXER1MFMpF7escKAkS93OupoTO224Q
	hz/FR5dcMVhh246B3V5lY0/39Ud+etLLXRGVhsn8cKcCqQFjNUI2pjDthbdWPOs=
X-Google-Smtp-Source: AGHT+IHLb+bX4JOWUSFmTs6UYPJV8WTvK/tBJRvIgcA7ae04ZGiofBjbX29h/oO76eksCbmobaHszg==
X-Received: by 2002:a05:600c:4fcb:b0:426:5269:1a50 with SMTP id 5b1f17b1804b1-4319ac9c15fmr240004605e9.11.1730646251731;
        Sun, 03 Nov 2024 07:04:11 -0800 (PST)
Received: from alex-rivos.ba.rivosinc.com (lfbn-lyo-1-472-36.w2-7.abo.wanadoo.fr. [2.7.62.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10b7b32sm10858711f8f.18.2024.11.03.07.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2024 07:04:11 -0800 (PST)
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
	Conor Dooley <conor.dooley@microchip.com>,
	Andrew Jones <ajones@ventanamicro.com>
Subject: [PATCH v6 12/13] dt-bindings: riscv: Add Ziccrse ISA extension description
Date: Sun,  3 Nov 2024 15:51:52 +0100
Message-Id: <20241103145153.105097-13-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241103145153.105097-1-alexghiti@rivosinc.com>
References: <20241103145153.105097-1-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add description for the Ziccrse ISA extension which was ratified in
the riscv profiles specification v1.0.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Reviewed-by: Guo Ren <guoren@kernel.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index db062107823b..35a9ad1d7e63 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -296,6 +296,12 @@ properties:
             in commit 64074bc ("Update version numbers for Zfh/Zfinx") of
             riscv-isa-manual.
 
+        - const: ziccrse
+          description:
+            The standard Ziccrse extension which provides forward progress
+            guarantee on LR/SC sequences, as ratified in commit b1d806605f87
+            ("Updated to ratified state.") of the riscv profiles specification.
+
         - const: zk
           description:
             The standard Zk Standard Scalar cryptography extension as ratified
-- 
2.39.2


