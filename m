Return-Path: <devicetree+bounces-58492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69ECC8A24B6
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 06:11:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D3BB1C2108E
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 04:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C4B918AF9;
	Fri, 12 Apr 2024 04:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="bklgnJRD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B3618021
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 04:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712895097; cv=none; b=LdjDsVcDqlqgXemEG9R4WiDLx4w70QrjUTiolVhcZ0EAHdJCy3BKQ4XkTUxw0uFlG9+cvj7HfxC7xS2N+qee1QyQMnWJpMLFN1KzIOboACdeBF6X0MhEm89Ba+sEvmFU23eeqIuFhEiHJ2oz+WgnLTrBBo00XTN8maxavqYUkcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712895097; c=relaxed/simple;
	bh=aeD7kpIXCYXPUehTkm7IjjI1zeG+m9VrzZ6zXfF/zjg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UWn6Bei+kVbUJ2IxwgU1znHEKWnHwaKo4eMEDLzL6lz7+SGm+8/2fBBbyvYWvIQCGO6ED7WO0ZeEi97aP4yCmZF499r1ptGj3pBxYE3IrmHUpq/WWK2AKau9HNhICTKoKuGxZUzCR6GeDLn78qHxJ2uRdAUMo7FRpW2r4ndG150=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=bklgnJRD; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6ed01c63657so505586b3a.2
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 21:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712895095; x=1713499895; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CvKWdpWCLanAFVX5zPtD2b3biice8x1/52aRbRjA/1Y=;
        b=bklgnJRDvcG3j4QnnlMpqNheKHlTV7L59nfYoryfLAR8vNt1jZXmW8mAPfcTlJIcui
         kP5vV8YzFDwcD4D3hgwC5Xbjnmag9KLgcNQJniO3eGN5K9Vr5KX5SXQm9jy8hHw2ZHIB
         bIcpvaWTK7aMKCGg3q2aVYVWAIkYx1vv8nQp+XrkTLyIApyJyPGXbkwDpOccxfEoR5c9
         P57jGBjKqRfM61++xUkCv/gZvGEqUNPtc1fsZOs4ya1BYkGE7cR7c2ZLtC4pXjSSLs9n
         haqbkHWKrBqNI7HWRwrGT+kxlhwuDNlptMq+PCxYPm8ReCnMepkkS4plRDlyh/kveYZm
         ZQtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712895095; x=1713499895;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CvKWdpWCLanAFVX5zPtD2b3biice8x1/52aRbRjA/1Y=;
        b=tiircfEHItwHbuAjyB7HUeB/GI1hKQQoLBmbH+wmr3+PvMS09GzWgpdf7FTUgceg+4
         nLlGm6187sO0qlSZ+8C0mYAQdIXrQezg30ab0C93LwEx+R6r6ix0uXnCvnlI6vY1GPm8
         ZB30gbAe3AENQk4aY9Sfkp7V5MMh1cbxi4y6nWn097NtMtaehP+HGINwslG4zATL908S
         v86nfIk46keAUWDRrRDMJhcN0kD1mA9b5cS+aVGuIyMSw0AMkV+fbYGLYH9X2m6JcGW7
         +N9KNYbLrxHPYiFNKec7FeA3gnEHnOnuAcwyE28ShCOgGXt9Mok+TKbePcio5/+iaQ0O
         4XYw==
X-Forwarded-Encrypted: i=1; AJvYcCXpSRFOtsRK0pLrcOcl89NVSvnEIJ/NoITNBxlE4WoKU3YaAV7NqAPQWaRDW2mEdw+zN60/x4nBejui26liMI4H7Mr0bbR+gXR8Qg==
X-Gm-Message-State: AOJu0YxWZrc5DX/hRAnIlh2m8apGjEaDwJxTMLQ2HgnQ0pqAtJ7wCMnQ
	1Og+8DR2hfHAhWufEuHu33ackCjEVP8sN76UEeEma0HpbXg0/ljNiifRGH9GoTg=
X-Google-Smtp-Source: AGHT+IGEzhFDfz+tEhZaJYNr7eckM5oEi1A9mXDPnazuRSbWbM8XnHfKloHOzQmsXo7SSe+IWRZJtA==
X-Received: by 2002:a05:6a00:cd3:b0:6ed:2f52:9acd with SMTP id b19-20020a056a000cd300b006ed2f529acdmr2081497pfv.24.1712895095597;
        Thu, 11 Apr 2024 21:11:35 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id ka13-20020a056a00938d00b006e57247f4e5sm1949712pfb.8.2024.04.11.21.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Apr 2024 21:11:34 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Thu, 11 Apr 2024 21:11:07 -0700
Subject: [PATCH 01/19] dt-bindings: riscv: Add vendorid and archid
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240411-dev-charlie-support_thead_vector_6_9-v1-1-4af9815ec746@rivosinc.com>
References: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
In-Reply-To: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Conor Dooley <conor.dooley@microchip.com>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712895091; l=1246;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=aeD7kpIXCYXPUehTkm7IjjI1zeG+m9VrzZ6zXfF/zjg=;
 b=gyzpquIQ9EZPFl6tdB4X44dN/ns59zY4ew9u14pmot3GwLVRAjLHanoVkOR4IpnFrYW6m6+IQ
 FGixAlkBa5oBmgLlwpqraJRGcsWGjHUOq+pqsZuW+UYTSJ6pTTDEzAR
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

vendorid and marchid are required during devicetree parsing to determine
known hardware capabilities. This parsing happens before the whole
system has booted, so only the boot hart is online and able to report
the value of its vendorid and archid.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index d87dd50f1a4b..c21d7374636c 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -94,6 +94,17 @@ properties:
     description:
       The blocksize in bytes for the Zicboz cache operations.
 
+  riscv,vendorid:
+    $ref: /schemas/types.yaml#/definitions/uint64
+    description:
+      Same value as the mvendorid CSR.
+
+  riscv,archid:
+    $ref: /schemas/types.yaml#/definitions/uint64
+    description:
+      Same value as the marchid CSR.
+
+
   # RISC-V has multiple properties for cache op block sizes as the sizes
   # differ between individual CBO extensions
   cache-op-block-size: false

-- 
2.44.0


