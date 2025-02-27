Return-Path: <devicetree+bounces-151979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDF7A47AB3
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 11:47:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38B5318906CC
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 10:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E045D22B5AA;
	Thu, 27 Feb 2025 10:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z5LfcoJn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A6A22A4D5
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 10:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740653202; cv=none; b=TBKHeRF/D/SzM6gHlAc4hDzY1yCzSjGljRpV7b1uXyyG+lbb5QlL3m/y2+/FtxSbkEWAgyjF9vy/hmSx2aVDY420ZnLzAVfZiJkkCI9V55JjxFoLl0d9QKbNmlbOWb1xOYDGLV0MARiKkOb+Y9zqLl/SGCmVY/qbnQL+Ml77be0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740653202; c=relaxed/simple;
	bh=Fv+Vqu4aLmTdNPILdT13ma7EJcUK4NwGz9D26gQo45Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oTSwnJQ2Kt/nOQ16VPlUC11ARZ8yjsf86t/BZo3xVnH4vgGVgei3h57pZX7lV70UOJTCwWmO6E1pn2WcMMdMovDROpP/jprIXNsVy9bvV4H/PETZv9NcSml4FFViXLBDk9+y/pr3SZtjDoZaojlDQm+1TJsnbAME7WoWEv5athY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z5LfcoJn; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5ded46f323fso980778a12.1
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 02:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740653198; x=1741257998; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8k4UeAxgXPxbM8uTLcaaHeF7Iy7tq78qIdeyogxmduc=;
        b=z5LfcoJnf7eQcCuUhLj8zVyU28bV1z4K1zRdG4ZGt9h05sJvq26TBBZiL68WFFkT5X
         G+ZAQW+jiXqswyDQwi6AGPJc4ILM11gdPvh+FsDbBSnwhXMQZymoUhe2IIu4InqIij8+
         34fVLJoLhYgcKoz9CJj4JkDbS5akLHrZF9NDRz/d0CWVxK+dwQ5HIK81upuwOkz3RsrR
         /nKQ5Ud4iAImQIRUnqzjtxL5hmKD53JPydm4POLyye7u5/Y3zZWxx76cUuYBuv+NwcNM
         tEXzxusepb7Upqu0vSq6vXwBflNQ2FzthjPBV/97NoN1ngscKi6HHWl55/Qb/qB77enG
         ldRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740653198; x=1741257998;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8k4UeAxgXPxbM8uTLcaaHeF7Iy7tq78qIdeyogxmduc=;
        b=n5cm96FFUaTXauHHXM/O+gGyvG6t2z53S8SeSje/ZMf7cVDzld2wPuTBuCX6rORSa+
         7oEXU4joMwcaAc8jsdR0UASddEoVdFAKKnx9d8RNl7/mjMurzLJ5EARziWLppilX87g+
         iyXvwDbyA2+9vVSTAnj2OM4EDYSQz7mgCn9Tlt0yMEMneQWg2EUi8vUegBo8R/mmEaoZ
         HUtnNoa53kjwsyoDY2sRopc2DB/lSVG/6ouAOJwSPSRg4RIEnByhbE0hjSNGStWKnRz2
         8z7PCYtXPayLpHWoyWijEt2W2Tt0GeSqQyUV8XEynnwFrz4sUxeirS7g3id4ZBrK8XYr
         B7GQ==
X-Forwarded-Encrypted: i=1; AJvYcCVMvH4a0GhAnqnOuTqeB4Xic5NY2t+2lBWkuCaWt8b4bcgUlbiSQTFGND/ibZa7HIKboiC4CcSa60pL@vger.kernel.org
X-Gm-Message-State: AOJu0YxlOJbqT1Ewma3ASt7xwmxSkR4bvMQqWDgQXzE0Z0GVxU681ljB
	2sToW1oXjXahS3bY3xf9xO8KfXoYX8H+zudZRfPgRRYcfsj54fv8xcUz22tXl+0=
X-Gm-Gg: ASbGncs9CQWHsWvTDTxIAd4EK9/qKFqBClE1iiBg7KmGWi7LOmSjx8/EOXfHcvUrXiS
	FdmNGg4mj2zs84jbOFUSwkQ/fPq/Cqwq7zzEyJGYN95B5ZR/D9RLohTsKZZaXU2eVvYVxVWueZ6
	HhmJxQHEVY/cQaDPhsQ2YEVYnwOatwCOGbk3Pd1W88AeSDzBnuD5WyzKQVInnO8b4+aq5+k+2Wk
	RqhlQh/uSXWjE/Vod+uLCCRSWTNZcQUyleq/IIdgubo+ckS9YNFfn9BpwYAXJNjur+ecG401+uy
	j7XTsDVsfILRhbb6npB0WoKrvFbsyrVdvz+vzlPD9Zs49NVbYBVTAsmxkJ4T6XTgyQPpPWgDgrb
	9vMSr33xoVA==
X-Google-Smtp-Source: AGHT+IFo+oKuun2HuLc+8veX5xMjZbpzxtHRPbWgeY3acHUg0egOWClYav/m4dncD6RgXkaOD/3PgQ==
X-Received: by 2002:a05:6402:5208:b0:5da:105b:86c1 with SMTP id 4fb4d7f45d1cf-5e4a0e01567mr8727100a12.23.1740653198027;
        Thu, 27 Feb 2025 02:46:38 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e4c3bb5ad8sm901032a12.34.2025.02.27.02.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 02:46:37 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 27 Feb 2025 10:46:13 +0000
Subject: [PATCH v3 1/2] dt-bindings: reset: syscon-reboot: support reset
 modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250227-syscon-reboot-reset-mode-v3-1-959ac53c338a@linaro.org>
References: <20250227-syscon-reboot-reset-mode-v3-0-959ac53c338a@linaro.org>
In-Reply-To: <20250227-syscon-reboot-reset-mode-v3-0-959ac53c338a@linaro.org>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Add support for specifying different register/mask/value combinations
for different types of reset.

In particular, update the binding to allow platforms to specify the
following reset modes: soft, warm, cold, hard.

Linux can perform different types of reset using its reboot= kernel
command line argument, and some platforms also wish to reset
differently based on whether or not e.g. contents of RAM should be
retained across the reboot.

The new properties match the existing properties, just prefixed with
one of the reset modes mentioned above.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../bindings/power/reset/syscon-reboot.yaml        | 74 ++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml b/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
index 19d3093e6cd2f7e39d94c56636dc202a4427ffc3..1bd821877a16b274ac78a80017d003f1aa9fd471 100644
--- a/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
+++ b/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
@@ -18,6 +18,11 @@ description: |+
   parental dt-node. So the SYSCON reboot node should be represented as a
   sub-node of a "syscon", "simple-mfd" node. Though the regmap property
   pointing to the system controller node is also supported.
+  This also supports specification of separate sets of register/mask/value
+  pairs for different types of reset: cold, hard, soft and warm, using
+  the respective properties with the respective reset type prefix. If prefixed
+  properties are not specified for a reset type, the non-prefixed properties
+  will be used for that reset type.
 
 properties:
   compatible:
@@ -49,12 +54,41 @@ properties:
   priority:
     default: 192
 
+patternProperties:
+  "^(cold|hard|soft|warm)-(mask|offset|value)$":
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Optional alternative offset / mask / value combinations for specific
+      reboot modes. The mask is optional.
+
+  "^(cold|hard|soft|warm)-reg$":
+    description:
+      Optional alternative base address and size for the reboot register for
+      specific reboot modes.
+
 oneOf:
   - required:
       - offset
   - required:
       - reg
 
+dependencies:
+  cold-mask: [ cold-value ]
+  cold-offset: [ cold-value ]
+  cold-reg: [ cold-value ]
+
+  hard-mask: [ hard-value ]
+  hard-offset: [ hard-value ]
+  hard-reg: [ hard-value ]
+
+  soft-mask: [ soft-value ]
+  soft-offset: [ soft-value ]
+  soft-reg: [ soft-value ]
+
+  warm-mask: [ warm-value ]
+  warm-offset: [ warm-value ]
+  warm-reg: [ warm-value ]
+
 required:
   - compatible
 
@@ -70,6 +104,46 @@ allOf:
       required:
         - value
 
+  - if:
+      required:
+        - cold-value
+    then:
+      oneOf:
+        - required:
+            - cold-offset
+        - required:
+            - cold-reg
+
+  - if:
+      required:
+        - hard-value
+    then:
+      oneOf:
+        - required:
+            - hard-offset
+        - required:
+            - hard-reg
+
+  - if:
+      required:
+        - soft-value
+    then:
+      oneOf:
+        - required:
+            - soft-offset
+        - required:
+            - soft-reg
+
+  - if:
+      required:
+        - warm-value
+    then:
+      oneOf:
+        - required:
+            - warm-offset
+        - required:
+            - warm-reg
+
 examples:
   - |
     reboot {

-- 
2.48.1.711.g2feabab25a-goog


