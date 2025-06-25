Return-Path: <devicetree+bounces-189433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 96925AE7CC3
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:28:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5449C163ABF
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F26D2EAD12;
	Wed, 25 Jun 2025 09:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="EFdLpWdc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286002E7637
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750843150; cv=none; b=ln5m21OjyFbDffT+J6EDIueDgrdazlF9fTlFQ14F2mCaCfpjIASdf9X0x5WmN2YlqVGUNh3gMUSfa/Jj+Vgn0MFxds+XGI6ZUa9YiZRPcKPDe1/eiYuh6I5vytMQCGMEMFc9V1zCcyVn4RBQbcHfTdiRDTNxGzpTGvO+30Vkzkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750843150; c=relaxed/simple;
	bh=LRhM5EQe/E8dZLiWtrnYUcrxAzx0edYLOp2wjvSBccs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mZ4eVYDoeLgbt9ZCYm02tLrNDCANKWMeUwOftrY4bWMQdy5p5G/4TgWbv0vkr1PMMeaoeRW/QuXbRvDZaG4g70KphsISt+7teAiuQJiOf+dMoDVp1mMw3w7pGm7xEH9jj5R7Kt21fA53vKQObmJt4kwwCYH/XTwDX31RoprJFlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=EFdLpWdc; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-601dfef6a8dso9912276a12.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750843146; x=1751447946; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6XuaCq04YCRg7wjyDUukj74YYgdGBG6ruc7T9PeJYas=;
        b=EFdLpWdcjkS9sXj9WlVFkplYvAoKmn/0ut9M5AtGR8uT9e3jnCLHR91QPrfmlEkA5Z
         mXr3eyHJEIS7vqoRabMsDs9OvYY4K4068hWilz/AnBf9ZwxT5gGR+KEJtrtGTuCMvEj3
         55o6cJ9Rrqe2iBvdjNLfvJNPdZDJWKDt+0reHMh+pwne0Qvyd2aV+Uww97E4utbhZXht
         MHtPtcuZP4hDezWkYhV1Z/QEyhfsDoAx817KT6J+F1OuEcSvJck0x6zSftbYorP2MxSy
         ozp4L5sEp2jFafs0ohUMAn+bMT20MRO0XW3dUszKWO9W32jikbbMY0ftxM5bpGjJObQn
         I2gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750843146; x=1751447946;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6XuaCq04YCRg7wjyDUukj74YYgdGBG6ruc7T9PeJYas=;
        b=F2NkUzAJane3YWLY8WKaceTIiQo7ITZ/JfLvgOM0qdNUpxi1b1zJ8sjupDCRVC5G6P
         1NNeIsMBZ4f7QHImRnhfHEWL1S9wU+vh33gcdokaZzAj1XsBHjwHTLIN/wr9WC5HMS9p
         BwTE2YTEJetOZVIY1A8E89q1zJPNYme8MTaF+R30p2rffYfapdUqiz8PKp5II10xgyHQ
         ATGYCwnUyqrE2wjnwtj0i0BIuKmSqZ9QPc/zgw8TpDdwQq26duxe3hZsQdMWA8oYlwA0
         dNiUdAGRva+365LMHaZ3Rbij7m4FcjQ78+A1eJAjxcfazDbMz2hEeY/RhEnCjhV2Lewl
         SuJw==
X-Forwarded-Encrypted: i=1; AJvYcCW7r0dIzDMr4ltDxvfUsygs6jXodXx6sSC/vlK+TtUbmBo1yA1PlceGrsnvSgPUK4oKEUgl/wopCiwn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0JRJCrpF9g4+J6DWrtpn+njJcSGvtwa5p1j9uOgbVsPaeRIfG
	TnSQi/SUqfsKgtkpu64apMPnYmqocXYgZfP5HvyVkdLB9RTq+aYfNQ+TclS5BdIl84cnf5rgoDy
	tEs0R
X-Gm-Gg: ASbGnctVZS6RswJGzhLcCuTympz/MybKtJXENRR8F4PAFjsirFbQSdQ3BtU9dQkUI+x
	pACVvgM+z5LKzm+U30g065ro8PbVvjMmdggEX+7Gm97ceQGQhAI/wb4o55KzTq61yHWUupkhOu8
	8cIpPbTRI5jtJjer1LZArYKwhm5mIcUGlSIbtEGb6qkGmSU3NPl4k96Swn/cou7dcsb+OdwHVXu
	7oUrRo5E9h/M4PQByUa7aWGQ6s6dNl1bt2qM9snG/EsBY/rXtmB5yLJFzFmZutcxDwVN++I1Xs3
	jZP5jVhQndN3CBvIQrDiB84v6hOcaiYV6Uc9bsnVbA4wGQQC/OqX9XHllxzacq3mjvz9cqDEINi
	QerJCb1p/QKuLWoVXA+ktruQyciTtuYO2
X-Google-Smtp-Source: AGHT+IERhYechcJvF+Dtv7X6Aq+Z+zOtEoXFGIE0yuBjIdgHsZfdoDBQmurBw1t4QoxOXWDqVUWvmA==
X-Received: by 2002:a05:6402:5113:b0:609:b476:4d95 with SMTP id 4fb4d7f45d1cf-60c4dbb777amr1362134a12.15.1750843146418;
        Wed, 25 Jun 2025 02:19:06 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f196f84sm2194802a12.14.2025.06.25.02.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:19:05 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:18:57 +0200
Subject: [PATCH 2/4] regulator: dt-bindings: qcom,rpmh: Add PMR735B
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-pm7550-pmr735b-rpmh-regs-v1-2-cab8ef2e5c92@fairphone.com>
References: <20250625-pm7550-pmr735b-rpmh-regs-v1-0-cab8ef2e5c92@fairphone.com>
In-Reply-To: <20250625-pm7550-pmr735b-rpmh-regs-v1-0-cab8ef2e5c92@fairphone.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750843144; l=1759;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=LRhM5EQe/E8dZLiWtrnYUcrxAzx0edYLOp2wjvSBccs=;
 b=T2Cmu1rQmNai2kvf9Wexy8yxt+NdIB2/JptwBzJUgrUFzMh+lMU3PXkc1dQkXO6/+plndKa8R
 fU5rQREmE0BD0clUOSCdMIZdEC4uUIBzNje/q3oRWogqE1v5vxcChGL
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the PMR735B compatible for the regulators in the PMIC found with the
SM7635 SoC.

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
2.50.0


