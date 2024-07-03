Return-Path: <devicetree+bounces-82640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A26925337
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 07:57:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1984D1C24BF2
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 05:57:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6212312F5A5;
	Wed,  3 Jul 2024 05:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="3CI3rzVN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF10679B6F
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 05:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719986220; cv=none; b=Q+gNhKyELjDELMUWfwwkifiE5qb+qh2sJ/NOwoDxOG80YCDO8/mgg0Bvd/Cw/DMre1gVv/lLIOKtbVuCnXpmMkstv6pI5Qt6ctjEwzzUUx8/Kgy1EsqdxF2A3SNuHmP0quFRtUhBeUdIktSpOj+8bvLMvXo/knLJoIWC3WW5fCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719986220; c=relaxed/simple;
	bh=BFeF/rMqjmAL/T3qO395y21tghoeF4vuGyaBxCV02tk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gyyOEKnpAR0i53ujEPyP+taF9/zBQQXJLTDgrbNaUnVQKYbaBn+XxeZpGj2X3Xe6uMWp9wZbnqfyp4uGIhEyZyEl5xZI9Uj7Ef+3ZFo/iqAE4c4QfPCL+d3Jjr1rz8MbYOJWHkHf/dsz8jxlEbG/YOvKN2w6Iyoy8digGVQMd0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=3CI3rzVN; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-70af0684c2bso42683b3a.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 22:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719986218; x=1720591018; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0gP3BTCO/eMabIcPEHZlkkrT/LBtjjbwR/exXvwDsR0=;
        b=3CI3rzVNo0o/iCn4fESl327dia/gJObf/ZLE7I+4MyzFO7zKP80ZvCWVABVZ81vtDW
         EQRhES/5uXpyvBrUt6d7wYood2kdpZpk+FpV7xZxyhEJzg0Db1M8fNDkixRLRWPjxOqL
         i6KJr2+DGaNkKQBc7nAsC6tzi7BXI3Syw1pCW3FakRwrVBFPM7nb9AdkW+FISrNr0tMe
         D2StOrcKjtluSvxtcZ3gX6UUruqB2J+uF42SW37R+LgNB1P5WAI0UDlEVcozYtvkmonY
         yzkoyhrFv9fA6GfsrWh3pZKe7z5ser/5/Q3hE95c28SuRLdMhmyyg2Q/BxNEF63yqk+U
         fGYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719986218; x=1720591018;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0gP3BTCO/eMabIcPEHZlkkrT/LBtjjbwR/exXvwDsR0=;
        b=aJkC8NTIj/ek4P+l7HzIfDnUV6fy6AW6BBoPPeAvrMkcaJfL2MfRuMAWhYE5H95qgE
         mtokLkMU6dFA6lOszqDtj5biSyZRyggo861Z3s8L7UocGzwvv8EXn3j/OX1bYeEEvKze
         ouBk7UxRFdYMoIxlESzCKiGinfG0l8d0OxgLKYR94/DGafiL1ey8MXsfajFZ6j9c7JGb
         EbyBN7N4wf5blwcZ+sRXgwb+ih1aZS7h/ShXuFM+9+wb/jhm/LKvHut94AN9fmJEUZv5
         ZOE6f4LVMqE8oi9+3U6Rnprda1y+pNaVrQfR2yhtKOVk+GiVzZljDign0OGtnjOXEsIp
         bycg==
X-Forwarded-Encrypted: i=1; AJvYcCWdDqSjU/gmiUmglG6VGeMdLhrBK1YMQyHG5o5+XbMcaevWhzD7lp4kDKwV9cDFnYIL48auwY7dI0vo9IAI+KpR9Bo/0qZgUaDi6A==
X-Gm-Message-State: AOJu0YwHbUwNpAhZ6GnO/DvPclghdD7IM5YICpeCUr4ld3SS9KfAGO8N
	CO2eLUcPbRc+ny1AMqOrfYNG0L34j9HCIobn+TOkCFfOCKu6UnfiHR7C2k22SS0=
X-Google-Smtp-Source: AGHT+IFPk8bGhxxDiE9oF64qKKmdU13pr+uT6OiupoAHAaV7v4GIvDN9xb5Nma3yWPTn3YYLr0hhkQ==
X-Received: by 2002:a05:6a00:1d02:b0:705:cade:1f50 with SMTP id d2e1a72fcca58-70aaaf3b8c7mr9285409b3a.34.1719986218135;
        Tue, 02 Jul 2024 22:56:58 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70804a89fc9sm9514103b3a.212.2024.07.02.22.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 22:56:57 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Tue, 02 Jul 2024 22:56:21 -0700
Subject: [PATCH v4 01/13] dt-bindings: riscv: Add xtheadvector ISA
 extension description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240702-xtheadvector-v4-1-2bad6820db11@rivosinc.com>
References: <20240702-xtheadvector-v4-0-2bad6820db11@rivosinc.com>
In-Reply-To: <20240702-xtheadvector-v4-0-2bad6820db11@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>, 
 Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1719986213; l=1767;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=BFeF/rMqjmAL/T3qO395y21tghoeF4vuGyaBxCV02tk=;
 b=fjkJVEjEBLAONoqiHUcNpBFefDHSX2nBp5VtKJ5OXWsis/l0j13kilKZo1JDNR6OZx3nchXrc
 DUHnx4vUzbPANcO+FajO56TrbkiU7rKqHSQIij8AF4+2aTbvHjpuDP0
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The xtheadvector ISA extension is described on the T-Head extension spec
Github page [1] at commit 95358cb2cca9.

Link: https://github.com/T-head-Semi/thead-extension-spec/blob/95358cb2cca9489361c61d335e03d3134b14133f/xtheadvector.adoc [1]

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 468c646247aa..99d2a9e8c52d 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -477,6 +477,10 @@ properties:
             latency, as ratified in commit 56ed795 ("Update
             riscv-crypto-spec-vector.adoc") of riscv-crypto.
 
+        # vendor extensions, each extension sorted alphanumerically under the
+        # vendor they belong to. Vendors are sorted alphanumerically as well.
+
+        # Andes
         - const: xandespmu
           description:
             The Andes Technology performance monitor extension for counter overflow
@@ -484,5 +488,11 @@ properties:
             Registers in the AX45MP datasheet.
             https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
 
+        # T-HEAD
+        - const: xtheadvector
+          description:
+            The T-HEAD specific 0.7.1 vector implementation as written in
+            https://github.com/T-head-Semi/thead-extension-spec/blob/95358cb2cca9489361c61d335e03d3134b14133f/xtheadvector.adoc.
+
 additionalProperties: true
 ...

-- 
2.44.0


