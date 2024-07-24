Return-Path: <devicetree+bounces-87916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5617093B747
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 21:14:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE0D31F2494C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 19:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0193416C694;
	Wed, 24 Jul 2024 19:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="H2gfhNVl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0A716A95F
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 19:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721848444; cv=none; b=WAKLUNdm5t7qBTkDZIF4PzxCjH9aLuugEAKMHIYSOVSsL9Guf6FWnjgy9d9zwPoQCXY9CAnbSi0lTEVPe5SPszveSQ7piSXslRJ02AA1qQekBe5xu0IIiWELPaYZCwwsfPOy3phkGHIkaRNxGHJqtsjDQjts38E43jWhi41r8dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721848444; c=relaxed/simple;
	bh=ZzH0VgSdYutk/uKY2omj651o9v+E5HP1BijtgXJzAp0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=haz4e7OZuY2WV5skFPU68Qf6liHABWpzrnlRCCwIIDfcJYndfm6w0Mt2jaxfR2+Lk/UxxAh8UgmVLPthTtGh66dTsK6P9DvjDHznu0QFaTmDKWyAl/NX/PIjf9oFTEGrvj5MrSgKi6YPQ+ySxnzpRRPZ04wT/k6d4vG9uGJEPoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=H2gfhNVl; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-7515437ff16so107482a12.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 12:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721848442; x=1722453242; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GWtR9ZjYZiSKNZtqnpkUxp+qNZzbKrCzo+6HVfyCbsc=;
        b=H2gfhNVlpbAaV8mOJEZV7f+7IMe5dkiyHDYU7E31o89N0IlilwBmsZPuiwQl83+p22
         g1r8YdFG0iUaODLcTgelBZSn/BrLPUKe+/JjQiMZ9dIAlp1tqTG+vxfDDD37xk2JuL5I
         wualBBUxmecV9p7PT0uozqLR28ERTRKkYDrOYMEIx4UkxnTQxyxoygVhrR5oXGXKqqFd
         C+1OFA+iJfKngzqY4bIyIwtqHImOfTbylySxn2weYNLwrbMMX5aRS+wEAmXbt3KGRF1a
         vdWZbU1iDF0n3J2eM4ulme3wxlx+ZJLEW1TYfW6FSrccoGeeMNSjSX1/T3n24skFSwAe
         X0SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721848443; x=1722453243;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GWtR9ZjYZiSKNZtqnpkUxp+qNZzbKrCzo+6HVfyCbsc=;
        b=RyeS9UEKLwpUvB56CGIt/QR0l7OAnnKsrmLrmcyfv9e5taAPTsoS7/jhwykYcd1osF
         F2GXyV3I5MQydDTQJ/vZsMSnM4VxGLxfP1wQihSB+EDiYMrYxL+wZKPfq4p425b2Tm8/
         0oGQtyrsEFuf9s0mFw6aE8sVt1uQisNPr7lntFvSUlBl5lFPiFHCRrBtLNzAhlD5sxCf
         9jo5WCtzWFCSW3Pfji8iRp1BmuRSE/2/ngoLQ4Q6dwERsaVhKvaBrSi9RkKkKKftf6Fd
         4UM/idmnP4kYM6WvHHiVjdV4z1Fm8vSGbzo/EaXDK/rSIcnaRMhQrDyUT9EtNtSis+9i
         /rcw==
X-Forwarded-Encrypted: i=1; AJvYcCXfzlFyoxehsUGNBBydVnji792t0gFvJgCdGT/cOYzhnIJqNVD6k2KIew5yOpuuGW1u0nROdnS+I7ZNfladooNNbm99bVaJ/wM0uw==
X-Gm-Message-State: AOJu0YztS67m2Ui4W443bp3EAsHTd6K0hdun54fqu1DdhB0lyViUyRgY
	MY27zSYmWj4F3YBSHoKAKBTHx/uot4ycUENyAs/Bcn8pUQqGfQrD+jV6mDY5kEU=
X-Google-Smtp-Source: AGHT+IH05meby4+2EXjFgjam7LAliTRmTubnFATA6oDUhsso55xLxKhzyGK68nAM9BHIX9A04skdVA==
X-Received: by 2002:a05:6a20:72ac:b0:1c3:b0d4:3e8f with SMTP id adf61e73a8af0-1c472fb13d8mr1037520637.14.1721848442605;
        Wed, 24 Jul 2024 12:14:02 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cdb73edecesm2022359a91.32.2024.07.24.12.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jul 2024 12:14:01 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 24 Jul 2024 12:13:52 -0700
Subject: [PATCH v7 01/13] dt-bindings: riscv: Add xtheadvector ISA
 extension description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240724-xtheadvector-v7-1-b741910ada3e@rivosinc.com>
References: <20240724-xtheadvector-v7-0-b741910ada3e@rivosinc.com>
In-Reply-To: <20240724-xtheadvector-v7-0-b741910ada3e@rivosinc.com>
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
 Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>, 
 Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1721848437; l=1788;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=ZzH0VgSdYutk/uKY2omj651o9v+E5HP1BijtgXJzAp0=;
 b=dR5c7ckZTs1cKin6Lbis5zjwQCaBrNTRDODqsLLnFPnwcJ2p+c7cE5w58tm9O4LgIawNkO0cT
 pquX6jLm+C4AKGK5w/+LXn1eHmAkdm1FU3PKqEqJgnv3qi//AIF3pgV
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
index a06dbc6b4928..1a3d01aedde6 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -556,6 +556,10 @@ properties:
             latency, as ratified in commit 56ed795 ("Update
             riscv-crypto-spec-vector.adoc") of riscv-crypto.
 
+        # vendor extensions, each extension sorted alphanumerically under the
+        # vendor they belong to. Vendors are sorted alphanumerically as well.
+
+        # Andes
         - const: xandespmu
           description:
             The Andes Technology performance monitor extension for counter overflow
@@ -563,6 +567,12 @@ properties:
             Registers in the AX45MP datasheet.
             https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
 
+        # T-HEAD
+        - const: xtheadvector
+          description:
+            The T-HEAD specific 0.7.1 vector implementation as written in
+            https://github.com/T-head-Semi/thead-extension-spec/blob/95358cb2cca9489361c61d335e03d3134b14133f/xtheadvector.adoc.
+
     allOf:
       # Zcb depends on Zca
       - if:

-- 
2.44.0


