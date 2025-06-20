Return-Path: <devicetree+bounces-187740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2D1AE137E
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 07:57:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 801DA19E1411
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 05:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BE221D3D1;
	Fri, 20 Jun 2025 05:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ewCLpM64"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 975C921C18E
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 05:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750399046; cv=none; b=XBXBkNxA8rcROBamItpENPye84IIFekvrnxAZDI3shddOsMSq15Jw3XDVQzwHfIj83GWoBsY14gK33mdMv8t6TOl8h2mt+V6TysuZ9fca4ttW6cXR2P0o8E8m1lkwPtrKRQFQC2yNd81p7WK2QmCuaASbm6lVPke++LIESpmPBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750399046; c=relaxed/simple;
	bh=cpJEroiiHu2iHscIFAmNE0fBEwKjC8QxSm48smAE+Rc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=tXTLwYLcsLEqKxpms07jf6gDwJWlFnwjisFMLzv/A4CFsgX9Ve6qNjsxSVxiA7MjxrCQcorhxdD9CuDMWBN7BVQPVN1k4Bvqa4iRnX2RyH6aMk09tyWia1ujmd8flz+OkVvnaxgoFSmF9AImKEHZ/Bs/uGAChxNtrqgbZ/FBBA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ewCLpM64; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-747abb3cd0bso968429b3a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 22:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750399044; x=1751003844; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K1da7fqchV8mO12ekhkgVFYDZ14f/G7ZKMsF+C6kGGg=;
        b=ewCLpM64IGzIl7Lkj8IqDG4zNIIVDpISG9sdLDu/TMWskit3H1tVBhrUR0eQnUHntV
         EXMTQQiHW9bUPsMP0fMhBFL/cF0DusxC/62T6YQmGO7v2jyqf/2bck7H7Ltz7JKjv8q3
         ztQ8fNfmq61mfLQYbbPUCsHKvkkX3WkjPsM/9iySOjDOr1zA9MQPvob8ZtPJXxlmt5zE
         7KQ4fuQ6alYFR2lebLC54VWDJOejzoswnBfXpHMhHyzGTIIj0loyD4ELh9nWMJiBV7Jv
         Q96TWsNiPnAIdt6eho68KxgzUsftNcdNiUv/8ngozc9Yh84149XdzPsxVcnX14viaW1J
         b3wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750399044; x=1751003844;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K1da7fqchV8mO12ekhkgVFYDZ14f/G7ZKMsF+C6kGGg=;
        b=Mn+zSwPNbZBZc4AyjAuogJje4ez2xUMONBJKnaDhUsj7eCpG/mAnFc/Qp9kFE4aygm
         a4M3iVQHNQiIBLYT0bnw4xFxgI/Afs8Jw4txrZDUogHtggCUvvM4li2rz5dY6y4TuAS1
         YN33nN9VESurwUWtQ0qc0s7nI0dvKQ/8JA6rnqyj6kywyYEKoUaiDzk4c+Hlw94TEAHJ
         Z3K1iP0akOu5Pvs8mYU1y3s6Sn9/eiDfolhDAearw6ugSq7cg1C1z7BBO9BxNoQdNes5
         ZQ8eI4oJsFUhQB8unJyoD2ztvsoYLDZymAEBM8g6yof+CWbmFfDLXE8pAcaTa/DhytgV
         cSxQ==
X-Gm-Message-State: AOJu0Yx1sQbxPrR4bDFpZqDD1uFVQinuK6mrUqAjL8iy+DW5xIXtRx04
	HIA9+Xedcz8AiO/IdTkyEtPX5hAwnQbF/Xcf+k87LpM0LfO5vgwGeUeUw3W1tbeY
X-Gm-Gg: ASbGnctFtXFXH1D4ISFwVIFKlwJyi09TTlbmrrLu8oICbptQ0NeD3+/ZXcub8CYTztJ
	cxunNNc+9BkAit+kwzg3Se1N2rKGBTVdzzWlmDIPPjxunhLaAWKNaXpYf9pVbnnohEPt+E0C2QW
	8WRh8Bac/hgiz2vS0M6Lf8swTtjhuVj5+mkxI35re1ssbDTBgL8DK/YjXnviHJ5XWaqh5RefKk2
	P5GH82Zk9Plvtl6gG9a/6Aviz13p8UJ7LOvyV1nMwSkV8wP/U0o7xUzjcPJ8NtJD8yOHSpimZQ5
	h2oTqI/VaUnjHa/6mwmY2Jo25gJtDWSkFPaDrnXYGaHNZiKFFUafav1j9ExTsOuih7eqBORw+pu
	73yUnh92H0J5OT4dB
X-Google-Smtp-Source: AGHT+IFHoWmkxlH4fYPdnRBfCLqzkjohTXSqk4hN4BXlE7g/sKFBcHK/71a7vcmMsJR5bi0AqKayHg==
X-Received: by 2002:a05:6a21:7a4c:b0:215:d64d:412e with SMTP id adf61e73a8af0-22029410bd1mr2116243637.20.1750399043546;
        Thu, 19 Jun 2025 22:57:23 -0700 (PDT)
Received: from shankari-IdeaPad.. ([2409:4080:e3d:e62b:4376:e838:1d14:fa34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7490a46acf4sm1241380b3a.11.2025.06.19.22.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 22:57:23 -0700 (PDT)
From: Shankari Anand <shankari.ak0208@gmail.com>
To: devicetree@vger.kernel.org
Cc: herbert@gondor.apana.org.au,
	davem@davemloft.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrew@lunn.ch,
	bbrezillon@kernel.org,
	Shankari Anand <shankari.ak0208@gmail.com>
Subject: [PATCH] dt-bindings: crypto: Fix schema violation in marvell,orion-crypto.yaml
Date: Fri, 20 Jun 2025 11:27:08 +0530
Message-Id: <20250620055708.214343-1-shankari.ak0208@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The 'reg-names' schema in marvell,orion-crypto.yaml uses 'deprecated: true'
within 'items' array, which is not valid per the string-array meta-schema.
This breaks 'make dt_binding_check' with:

'deprecated' is not ['const', 'description', 'enum', 'not', 'pattern']

Remove the invalid use of 'deprecated' and replace it with
a comment-style description noting that "sram" is deprecated.

Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
---
 .../devicetree/bindings/crypto/marvell,orion-crypto.yaml       | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/crypto/marvell,orion-crypto.yaml b/Documentation/devicetree/bindings/crypto/marvell,orion-crypto.yaml
index b44d36c50ec4..b006fe8fee60 100644
--- a/Documentation/devicetree/bindings/crypto/marvell,orion-crypto.yaml
+++ b/Documentation/devicetree/bindings/crypto/marvell,orion-crypto.yaml
@@ -32,11 +32,12 @@ properties:
         deprecated: true
 
   reg-names:
+    description: |
+      Names for register regions. "sram" is deprecated.
     minItems: 1
     items:
       - const: regs
       - const: sram
-        deprecated: true
 
   interrupts:
     description: One interrupt for each CESA engine
-- 
2.34.1


