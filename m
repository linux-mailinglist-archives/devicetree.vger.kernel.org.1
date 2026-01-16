Return-Path: <devicetree+bounces-255823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 91861D29F72
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:14:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0C7CE300C9B9
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 02:11:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51F5A33891D;
	Fri, 16 Jan 2026 02:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="mNIXGAlb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5CA3385B8
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768529459; cv=none; b=lF2TH0QFS1m2m7kZ45m3UXP1s0fkKmWyXFz0+fsmEadRltuhv6I47ZW80Anqlba5G1GtD39imF9mNVIyyHA4rUY7YENtSbD244zqwzd7WacgSzrwHFBIFu5Ngl5tw7sa9zwXZ3UEWYmZcIr27g7cpG1vBRAScVJVsQRqUPJ3t58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768529459; c=relaxed/simple;
	bh=N8syuPJHM/RDgseVkBo3sE15yFV/OMCXP+RAlXifSjU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Mxdzu6+iR1QXkC5pHjBt5/CgoL8rpaBpDdnXmSATxVfRBe7foDvNeVje5mDUrOniADNE7/68tmPaLnNeBTShA5jpN7yIz3Db3E5wyRx6pa4ddH1lJ/7SaKZNGhH6+YGnup+rJz9o2grs+/b7dL35btt5E6IYAsc2cuw05JVBapo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=mNIXGAlb; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-bbf2c3eccc9so1039875a12.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768529457; x=1769134257; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3qBoetBmeJm3JJ7+522wExgCek3WhGfFdkGVZeCPvt8=;
        b=mNIXGAlbWn6ek9ZItxk1eNHXQ6AhLoiQKWV3bSEKMqG5njQqFnbRrSHHjiq5uubehq
         E6/UNBuF6YyUk/gShSa/Zt5g0XVD6XjYC9ZKEDXxE0y/72WglTdGd4iUZa8ak+h9LaSD
         M4sL2gV2bD8iG7SHRx4AQDBXNTbN7r/yqmaEJqfZ7l/JLV05mChw//YnwD+MXyxcQF0Q
         fVC38N5i9pzJzwfWz3rYcK9/QM3wcnvYb9isOT8ovZF+igeMJoKPH19SeaQiCgdvi5fG
         CzvR2QE9aqhMAGwjFG09DhO7wfIkHECtOZyPZYGpakWGPSgR3ZgXPWxA0Xh10Jjg2+yS
         hvNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768529457; x=1769134257;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3qBoetBmeJm3JJ7+522wExgCek3WhGfFdkGVZeCPvt8=;
        b=otgqS5NZhAmAoxKt2FPG1AurpITZMIX/Hbkb6fu6ST5d8rXUGsYSEa9/8lZSkQrNtm
         z4Pk2EeKILO1dmtmf9a+R+FpTfNWy3ojFmmMSbxpSLQcuVe2St1uj+iB0cQxMqM6pkio
         3eaFFsqMfco86FdNHjG8ZbxZblq/eE3HYObjmeVQN2sC47X8IOdhVM91suPY+EsV7+KW
         cNpNx02Xkj77d8oOKVFGtO9ASyBkZkphHE3cEKzzWKtKDgWxX+IIUtCaAVcpzHZAysen
         yMmKBYhtEtlzFAZcvDi/+yC2S+Izv9RwXLX9CzUjv+5Vg7imqIzuSe6crVzwMRa0FNpz
         CBtg==
X-Forwarded-Encrypted: i=1; AJvYcCV96Lmp3blURPpgpjVsLwpoB2CWGPWJCkWMmY+P3IXtDbJXsZ/AyEECFtTWTx5LMA2/FpQIeq93u7wL@vger.kernel.org
X-Gm-Message-State: AOJu0Yz89bA8h1aEJoCV4clGEENxsS07n5C4BSfPpWdHruDoa5YKygzq
	SV0+R43GfPTIgP2IFZrO6+yEPD9+VRGIKlg9PPMiK5cwuwAJMi4/YQmyAPsRjLgwrLk=
X-Gm-Gg: AY/fxX5Z4mztT+OeK6s8UZCBUmobGcgeHiafPEhOSbAxjOi2O41/Yw7dDcsVoDU8Av+
	JA/PDUBUPjAFwBukocPbmX4/wF8t3nZw1Z7VlTj7gGjFUzW5addP8h8mlg9RNbMhEy3LEufiRRJ
	WDD0tHY+bQXjP9AcUq+Oo6jhOXvg3LyPf7HRMtng6ASloageetuwPyAep2n/MiPtubjH69tgi8t
	rCVcY4TMocnhRzU3JPrLGtsjNB1Poxtl0dJxQ33q0R+eVWPu2nI4+Xza1Dc78eeStgIumRQtSzv
	iVVNqxoK21UVIRjNNAs+L8fSACdEhwd+Fx2HfBfsAoMNg0se6frajHZ8fkzaJmcxyP6eDaxHB1c
	OUNtgVeNP1c5bjerxvCjpa4lHJJsEtqF9uhqqTxb0iQ/aISdcHBBDm2euaDe8ONVg6YCxzwYIYl
	o4rS9SIf3MEBxmjikFtZPEkj80Zf5M+JTYviASxcFso5Rk2xBjV1BNdg==
X-Received: by 2002:a17:90b:58ec:b0:340:8d99:49d4 with SMTP id 98e67ed59e1d1-352677ed61bmr4296095a91.1.1768529457188;
        Thu, 15 Jan 2026 18:10:57 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35273298968sm364317a91.0.2026.01.15.18.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 18:10:56 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 16 Jan 2026 10:10:31 +0800
Subject: [PATCH 1/3] dt-bindings: riscv: Add Supm extension description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-supm-ext-id-v1-1-5fcf778ba4a6@riscstar.com>
References: <20260116-supm-ext-id-v1-0-5fcf778ba4a6@riscstar.com>
In-Reply-To: <20260116-supm-ext-id-v1-0-5fcf778ba4a6@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Evan Green <evan@rivosinc.com>, Andrew Jones <ajones@ventanamicro.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3

Add description for the Supm extension. Supm indicates support for pointer
masking in user mode. Supm is mandatory for RVA23S64.

The Supm extension is ratified in commit d70011dde6c2 ("Update to ratified
state") of riscv-j-extension.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 4ffd61926505..1922dff03787 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -262,6 +262,23 @@ properties:
             ratified in RISC-V Profiles Version 1.0, with commit b1d806605f87
             ("Updated to ratified state.")
 
+        - const: supm
+          description: |
+            The standard Supm extension for pointer masking support in user
+            mode (U-mode) as ratified at commit d70011dde6c2 ("Update to
+            ratified state") of riscv-j-extension.
+
+            Supm represents a combination of underlying hardware capability
+            (Smnpm or Ssnpm), U-mode consumer privilege level, and M/S-mode
+            software configuration that enables pointer masking for U-mode.
+
+            DO NOT include this property in device trees targeting privileged
+            system software (S-mode or M-mode).
+
+            This property is only appropriate in device trees provided to
+            U-mode software where the next-higher-privilege-mode supports
+            Smnpm or Ssnpm and enables it for U-mode.
+
         - const: svade
           description: |
             The standard Svade supervisor-level extension for SW-managed PTE A/D

-- 
2.43.0


