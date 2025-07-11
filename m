Return-Path: <devicetree+bounces-195336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CECECB014A9
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 09:29:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A646E189713C
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 07:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B46C81F3B83;
	Fri, 11 Jul 2025 07:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="u5+ZKON1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 955FF1EEA28
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 07:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752218934; cv=none; b=Jdm+AJneRafbGfE7xGXYUYQA+BQc8YGvOWKoRblmR7vGP/EA0SGD1EC1sH6V+vkW+wVm1CoNLBMtpcQFAOPR2ID2XH+eTwvoh0Zt6mxFEGrjX5HvoCjtqhqvJ5kU9envK+Zoq7u+fMQqbDqnBR5F2Ii2TR1M+4s2zNta7pcy61U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752218934; c=relaxed/simple;
	bh=s99vjdSD8JKSjBLwhXF+K3c2uNXOfM1+ToBvlhwy8Eo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bSVBpzQrnurl17tz80dDthY9DN4sSqacwOVilhFFMwTult+4oj4JLou+EK2lJNE3js5XVBpHc4Cs3g5KjMn2HvLK+G8B1RDt+DfRT4QVDa0wfiyce1E7LHOgPdkM6y74VsbmrapW4fsh8PUX/8hyhk+j6UmY2c3wGQTuppEs+hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=u5+ZKON1; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ae3a604b43bso303513266b.0
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 00:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752218931; x=1752823731; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Guyg3Dku6gSOGJIk1yNtwz5/QvV/EdMIq4xoMzAjx+4=;
        b=u5+ZKON1xP8ejd1FHPk171F/iFmDKGlN1figQuH+ebPPRiPKLQgSPakyqWnNPpl2HX
         zCvYmWeFnUbQN/f5wzr3hrQZRTNMmQMsfo17KhWoq45dznGo1osPINalrgf/+kkj9lxN
         fuGLiqKLG+cAccZ9k/6lSazZsNeISfVwL6ju46FqtTutwrsrfU63soo0oaHPqfb9WzKx
         GgfQmwTHf6XGNL9eLJ3Qqb2q7StBzDarBjKB9a2USt/qfOUN2DjoX1bGX0o9FRoDJM+B
         lzjQXzz7jtC76+TjuJUJ3QYtHCSvegG0NL5DmNAul4xECR2MZlE4/5URorSS0yLfUkNW
         /42A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752218931; x=1752823731;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Guyg3Dku6gSOGJIk1yNtwz5/QvV/EdMIq4xoMzAjx+4=;
        b=HFHBfIOB18lhLz6jBZEmQgjD3ZRC4lpMpfIgVIINhUFgiYAVJKwBbjkppsAxdwRmxr
         V75dS70f1gPzsdqkeKxDMMLNKvl4ghhhDp0AIytRLLgvG/1dNBc3gmiegGjHedKsJoxZ
         ymhZc8oFwDnqX6Kbb6Bi9MI600IVjXID6Mo+TUDkZwXnZvhYWhVnUDNmxHw8vseEA05J
         qRM64ZbGDrAh/cm7sJ3f6sVBEvuJEyJOUZqlKeLMZIPjuaM/rQ7LuXMQHfhY/hPFCctQ
         LhfqdskSLfXdPp1T53biKD2zYq2Gra/2e8EluYUuP5J7CyPvh0gh7kw24UpNxsWv2ygd
         PXRw==
X-Forwarded-Encrypted: i=1; AJvYcCXsbYfCpHdN61zy6g1Sh3RbcBomgHSPEBSaj0D2RU+4PStN0VvZmiVfWO4DF6pWc6dlRcAAWGz8pcsM@vger.kernel.org
X-Gm-Message-State: AOJu0YwwQeOCfoWrHb8RFyCwzbLLqvn/gNZU7eeNEEvI5COpsEHGnm3V
	eaATtPXqzAVWeLJ0PkKS7w7jjI0KDh9LEt/oXZjaP+RxUXXzP0HC983sgu5DuyXYGuk=
X-Gm-Gg: ASbGnctlnBuJbIVduI9XBu9SsB3f/XBYu2VTcZT99I+5vwVbjKkgxhLjWwQeM3R8e61
	6t/KNYubtciAcl06IvTTddR1ta4YpIExO96EMQnVq/lS0lQs1e+CIBUyQEAoaE1SFevDXFvmDn1
	bC+iiK7FoLycXRfZv4Hdww6YhUOcT7L2Y8CR/Kkik++ZvGB3KA7A2cyS6B37BmoKWu7hRwhkpwT
	unyyTmp6a7XD+pklKJ1GObyKKVMustguVpbjCTkueP1ojf0KB8hxiM9sRTVR5HEv7t95dJCnMFb
	Vw4Eygnzap+SOjromDBKKqn9uGtxRM7sOBKAx1ziuODEXSnBIHrB9/uJh16KpPCHbzfLlPXa0Pf
	vK0iqoP3RRFjAufTjoaYky2eajypscEcyL5EqZipkiKgZljGfzv8bGucBIz+wj7B0YG7p
X-Google-Smtp-Source: AGHT+IHp3s6DviSxN7N7I3wd0Qzn2Aj1Go37Mhm2IQsp0ta2KL9iVxYAHSfEDkuQksb0cQgcfTmgrQ==
X-Received: by 2002:a17:907:1c1f:b0:ae3:75e5:ff7a with SMTP id a640c23a62f3a-ae6fbc8a3dbmr233866066b.19.1752218930812;
        Fri, 11 Jul 2025 00:28:50 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e90c1dsm252600966b.4.2025.07.11.00.28.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 00:28:50 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 11 Jul 2025 09:28:40 +0200
Subject: [PATCH v2 2/4] regulator: dt-bindings: qcom,rpmh: Add PMR735B
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250711-pm7550-pmr735b-rpmh-regs-v2-2-bca8cc15c199@fairphone.com>
References: <20250711-pm7550-pmr735b-rpmh-regs-v2-0-bca8cc15c199@fairphone.com>
In-Reply-To: <20250711-pm7550-pmr735b-rpmh-regs-v2-0-bca8cc15c199@fairphone.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752218928; l=1825;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=s99vjdSD8JKSjBLwhXF+K3c2uNXOfM1+ToBvlhwy8Eo=;
 b=XEhLbu+scRD6Z80jYRQqaIzPK+6Qih+bpJLGgXCDOSrN6hMITrqYWWMIt4rHv+9mAk3QvOU2y
 x1HudWxFVSbBR+KAfik+T/K1IULnVNaxgIVnkg+taPLogQ+AUJODG3u
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the PMR735B compatible for the regulators in the PMIC found with the
Milos SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../devicetree/bindings/regulator/qcom,rpmh-regulator.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 3dd150e5dad897eeb46e13dce5bb2726fdb90627..4c5b0629aa3e622579b54a226785139a0b986079 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -54,6 +54,7 @@ description: |
       For PMI8998, bob
       For PMC8380, smps1 - smps8, ldo1 - lodo3
       For PMR735A, smps1 - smps3, ldo1 - ldo7
+      For PMR735B, ldo1 - ldo12
       For PMX55, smps1 - smps7, ldo1 - ldo16
       For PMX65, smps1 - smps8, ldo1 - ldo21
       For PMX75, smps1 - smps10, ldo1 - ldo21
@@ -89,6 +90,7 @@ properties:
       - qcom,pmm8155au-rpmh-regulators
       - qcom,pmm8654au-rpmh-regulators
       - qcom,pmr735a-rpmh-regulators
+      - qcom,pmr735b-rpmh-regulators
       - qcom,pmx55-rpmh-regulators
       - qcom,pmx65-rpmh-regulators
       - qcom,pmx75-rpmh-regulators
@@ -445,6 +447,18 @@ allOf:
       patternProperties:
         "^vdd-s[1-3]-supply$": true
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,pmr735b-rpmh-regulators
+    then:
+      properties:
+        vdd-l1-l2-supply: true
+        vdd-l7-l8-supply: true
+      patternProperties:
+        "^vdd-l([3-6]|9|1[0-2])-supply$": true
+
   - if:
       properties:
         compatible:

-- 
2.50.1


