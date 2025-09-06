Return-Path: <devicetree+bounces-213935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE89B47848
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 01:19:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A17F17C379F
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 23:19:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCE2922129B;
	Sat,  6 Sep 2025 23:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SKpr6v0f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402741C8621
	for <devicetree@vger.kernel.org>; Sat,  6 Sep 2025 23:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757200781; cv=none; b=KJ9x55y1iJnVCifbAqw6az+v2X884t5c8AfnRbbNx9tOafz7HyIQJwrPUd+w+0UkZW/wx+UR2K+RHjeI3XSoP9Y5g3GC98+X4zkpu+CzcCmCYvy3Zki2DSnTY46zJ2nOI5CGHKzICQwQmfXPXbWiUjS4MN/Bp3iTwi0uGDmt0xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757200781; c=relaxed/simple;
	bh=usFDzAsbA7pJrrVlhaubMSQuRpEeXL1KzkSOuCgeLb4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=lUlkAG9gHrhvOoes9ZnJ0z3H+eNmwQd7b6bAyywlYogrf7+BNvNDlIpdh7OBO6BSTG2JbORXasv7eIVXKcpyjPEagZwELdDpKVflJgV+JZ+IIZfNp73oW1IPXn27l3TPZTBs/4+LbrU5ANyEobHioYlv6uCUzFjSxrJqHgShq/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SKpr6v0f; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-8a00c77a62dso1794636241.1
        for <devicetree@vger.kernel.org>; Sat, 06 Sep 2025 16:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757200779; x=1757805579; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DDHtQUHkDguT1mSPNZtowN3REp6atvF5L9fi1PZaOTI=;
        b=SKpr6v0fbw3Hvhvo/u24St/380aKPsPztvaf9khsCNMMTYrGPvG/93aUpHCAFozSEo
         2A2uRXaqBykvcpzEPry5MRd1BOVdB2DJ44Az5n4xnZ4VeAh45kInUlfoHkm8JxF6BwZy
         EOcIi+H3t6zFMyxqv1LIQdYJUNPoatUQB7MlL5+mJAFhxVVnPxFVjywdKXynL2oBJ96q
         L2cysI2IvpRZfSS3basaihEC67aZrjtgmWTuIIaYKPQADBwqCyy6QcYwn53hjJWoy/V1
         S0mK3O4dHUBKpUwe7BVV1lNapBsdU3hrsJ1Y+Fp5BNU6hs98953QOz5ZRVtgrEGwPC8E
         nAkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757200779; x=1757805579;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DDHtQUHkDguT1mSPNZtowN3REp6atvF5L9fi1PZaOTI=;
        b=MwNTeKfbEzRycu80JU5zjpf/3xiTaqOi2BOce1XxQ3foOQPnOugW3DvcoAIhYuw1Er
         OddqHFX8azRmvqL7KokOV3+FQLTwZ7mOIbkRp2fMet4d8EIdJa43xeLXSxRiLXsZwE4i
         BO/wrnAMspP9LDZOWAQKTRnvx5eXpFJjGXdlyHDqnsliKSokWynjgAxjZbB3gflX+QpV
         zKDeungYhAMCsw0XlWtHo2TBrEcp0jCRuGjEs6OblJJg8ghoC+TSnNqQa3oh3kLGr3gJ
         5u9A/Usj07ssiV+lVBSX+oYhIUqHduy3yoMlJ6c6W1JGM2IIpW/b2/w8EfgwuLkQwcsi
         kwIA==
X-Forwarded-Encrypted: i=1; AJvYcCX+Hm7VYJVa/RejTfX0bLZbSraQEgEVr+5RCriZI8YGgl5YDrJk1uNn1GGyC8TXS6QUFcwOWiCkWGi3@vger.kernel.org
X-Gm-Message-State: AOJu0YytfQi75jZ25jDCi5pGRVO22T+beSrBQCU8buQPdBklmntAqYqT
	lqI/+u5qTpzuNp7IvscvzfcaLhUJzQegPpP2HOkJkrSLF3rIwRsymNkK
X-Gm-Gg: ASbGncu6YlKxwxn+H+vRfI4koBkDh44s6y+k8sR63PFcNxlA29Nl8q4pxTvH++2+hts
	gY0/zRsmvP8sCtSpeIzNBdnlRUsrZJ1dDZG9db3Gj0YNiZSmMS29ASN9t5khevJ9I07IEhPbsVG
	Kmoe8y8ivEWWBST0NqL+dQyeY9L8D5EhIg/c/rlYf1y3RkoK4VwQXt56VnL1Pv7JHWWwxAM/8Tt
	R+H740hbD+86WwBkEa71IImw7zmfMycF34He1CACLO1+OzvIC79sOm94H09Itzo261ShcMpzgVW
	eONuIObEwpVoDq3LPdkSBfBeBfrm2tAUaMrhg6+zyNNqrLgrO4q1XbbyqaU6dRFPD7XitbiR+Yo
	ZIAwklG/5OUUkUSMiHgS9CufGYeABjzRgi2xT
X-Google-Smtp-Source: AGHT+IH8aSIyaV4pCJ64LskUEQitilIGLc/E5LZvICGR5IJ25C1c3+xT1A50bxAomcFVW0rUAmw1tQ==
X-Received: by 2002:a05:6102:dcd:b0:523:e010:df0f with SMTP id ada2fe7eead31-53d0f9be80dmr1119870137.0.1757200779002;
        Sat, 06 Sep 2025 16:19:39 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:39bb:346f:503a:4669])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-52af1915741sm9349943137.10.2025.09.06.16.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Sep 2025 16:19:37 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Frank.Li@nxp.com,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] dt-bindings: arm: cpus: Document pu-supply
Date: Sat,  6 Sep 2025 20:19:30 -0300
Message-Id: <20250906231930.461022-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The i.MX6Q/DL/SL devicetrees use the 'pu-supply' property to describe the
regulator connected to the PU domain.

Document the 'pu-supply' property and set it to deprecated.
    
This fixes the following dt-schema warning:
 
cpu@1 (arm,cortex-a9): Unevaluated properties are not allowed ('pu-supply' was unexpected)

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 Documentation/devicetree/bindings/arm/cpus.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 4f1906d9fa68..c8a72fd02530 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -350,6 +350,10 @@ properties:
     deprecated: true
     description: Use 'cpu-supply' instead
 
+  pu-supply:
+    deprecated: true
+    description: Only for i.MX6Q/DL/SL SoCs.
+
   soc-supply:
     deprecated: true
     description: Only for i.MX6/7 Soc.
-- 
2.34.1


