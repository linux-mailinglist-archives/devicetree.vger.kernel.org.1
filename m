Return-Path: <devicetree+bounces-256102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BC1D31F66
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:39:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2C7BA3014D05
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A57A42848B2;
	Fri, 16 Jan 2026 13:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="whdr5xjG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com [209.85.208.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FF428468E
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768570745; cv=none; b=PVvgDciw0DfWTVG1BAoAvHuPkaXTCH9y+Z4pcAbJBWUsE/cXDb0YaTQgtrfygy/rWK0wMGj/lGYuyck25p06BObJg9ZoIj/6CX6Sr2wbRraV1Bkd7wRxDXWCpZiGNLN6Lp5qypxDtAU7sro3O9AEmHFMfY8wNitHJBsIAPNj47c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768570745; c=relaxed/simple;
	bh=74xQUaywxzeebI3p/AKN6vOvKb6pTQmwzWbQ8IBCY4s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JAVuOVyOvz8C4RZJ+g9kRXiIxTUAhj8piqcHvzWcskg+buSeBROC/LqyiSOr4fF1bbrLGJEXzGtS8/MRBZ0KT2IhL3osBNUcCogHBOG6zitY2A/u82ldhKGtaghahFaq+2rT/SC4r2FWTyMVFA7xcawdBlZryGKpxrhWhDTeoP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=whdr5xjG; arc=none smtp.client-ip=209.85.208.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f66.google.com with SMTP id 4fb4d7f45d1cf-6505d141d02so3374291a12.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 05:39:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768570742; x=1769175542; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z8zv40JK1XZcjIozgFMQWPRZtDjY+q87cahOipxhXqc=;
        b=whdr5xjGPAr4xGQWjzO6+5Xn7vHN2ilIZ3WAZSbBpiEBuhtq9jz+0Llr6PwiwP4bPl
         PJ5iH8SIPv1AEttVnfZn8ltO5svkD9irbu4sP5h8o5WtAGOODJ4yqur8qc3S5lPrO2XZ
         Cj/16udoG0q/YGt4r2QO3YhH8nky7usssrcTfHloRNHYctO9GwV9rBV0QjQ434MkN3qP
         Y7Vzl0Y3OGhFl2oLhgfdRgICk+axeU2fmt0aL1XTt5piN0yrQeVDIJ/AgXscHqrR+SD3
         hLIAkOsgO5hpUX5HaZpTe/YIxVVY/LOGNPJqM4MIZMeTEWcWdY1kcOaS0aNgN1XjOhlg
         o+wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768570742; x=1769175542;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Z8zv40JK1XZcjIozgFMQWPRZtDjY+q87cahOipxhXqc=;
        b=WwBWrMQQtUQ3Avtf+Nxt3uyF+NoJtsuF33HWjaYXomW9jgsWQOkn+AcfoAh5+yIZ71
         falQfpZSe924SfnNFGYKWhW3wXTcWd1M8a97S4SQAAL1CmtgN278c4bVbiZJsjjr5JZe
         nqTbxUj7ov6cwj6i5oGEJ7f9kysQ8Tv9IeLsXVWCFzdPppcTaqG0gYlY4uZeUc35uDN/
         68RQHcPO0/EUzdS6m01V3WGO8DHNeOZoXYo9/rYs++gz7orWxeFHdjbFZs61zH+2mVPH
         mPxnueAdk/zMXwMZxkZ7GQ0Z6hztwtwNIoNe0riFNbkRs4SCPD3sbm7EqfXPBVT3udGa
         OErw==
X-Forwarded-Encrypted: i=1; AJvYcCUKh9yFT+z6+bLLTnVcef3UrJM1t8O4yZX1rpMByvWNCDqHqOiD6Gp7ZApaeVSK8Rpc2HcsczQ5cR9e@vger.kernel.org
X-Gm-Message-State: AOJu0YxL1fsI2AnK47y1Lmz8VooxWEltB1Ch4HsvSGTBtHfLDRuXFUuG
	9CH4aryraBpUNj+kkAbtv3iIAwQC9vER6Brx7TTVcaQZAAzvX7C9jRvWlDAPuuWUp5Y=
X-Gm-Gg: AY/fxX5e8i/JY8V5S5yt7i85/1OMtFaREvAdPUjWZNONICu0XJ/Gkeksfo0YvEr4Il9
	if4lbU1JzoVij/bzcuj1n9kMX7ISzG3F4eBJ/+Co0g0zar4222oH+/Q765SpMhB9qfilLzL4Br3
	H+Is/yVhH/GsU+xxTtNbPeU8kgMhdAHTI6xMxk8MHiT89M29orgGd2cUaKAMsZsAR9fLP0+D98F
	ZksWmHogWWYNz2iutM1JEFSaliHbfxPOHyh28nX1MwV9ZTZQoYDOWPQRYrkUW/I8jXPmHVNvLQO
	PmbLGk5O60tME6Ec99qzF9fhxxOBWKfJ2KYwrnDvMIxcDWnttBcDPLFoQj8YfZmjC/h7LvtjUnC
	P4IhKKJX/lJ6vvrbOP1FfFml78Lfbkn9WCTeNIXOp1Uknzi6bctFwkwIafVrRwN1e2m3N1mS+BT
	upDliRGFpx9DTQ4cvc7r/Zbnl7IlUaVP3fMso6ZwgC6QDO5ddNotYfQvTCZ85N1g1Q
X-Received: by 2002:a05:6402:2691:b0:653:9cd7:2003 with SMTP id 4fb4d7f45d1cf-65452bcc0c3mr2165991a12.24.1768570741805;
        Fri, 16 Jan 2026 05:39:01 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654534c8b7fsm2495528a12.27.2026.01.16.05.39.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 05:39:01 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 16 Jan 2026 14:38:56 +0100
Subject: [PATCH 2/4] dt-bindings: i2c: qcom-cci: Document Milos compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-milos-cci-v1-2-28e01128da9c@fairphone.com>
References: <20260116-milos-cci-v1-0-28e01128da9c@fairphone.com>
In-Reply-To: <20260116-milos-cci-v1-0-28e01128da9c@fairphone.com>
To: Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768570739; l=1279;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=74xQUaywxzeebI3p/AKN6vOvKb6pTQmwzWbQ8IBCY4s=;
 b=8ik9vEwbTmvcrvG32NYH2EN1MhNw4//P9Jd+czHCtEtrqLHOGMqyBC/ZV/QD9GSLNvH4R7URP
 trRK9NQutJnAMLsQlLa+UqGe5SKSbZShdm0MRdt/xRrUeziMBoeH+ZJ
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add Milos compatible for the CAMSS CCI interfaces.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml          | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index a3fe1eea6aec..c57d81258fba 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -27,6 +27,7 @@ properties:
       - items:
           - enum:
               - qcom,kaanapali-cci
+              - qcom,milos-cci
               - qcom,qcm2290-cci
               - qcom,sa8775p-cci
               - qcom,sc7280-cci
@@ -263,6 +264,23 @@ allOf:
             - const: cpas_ahb
             - const: cci
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,milos-cci
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          items:
+            - const: soc_ahb
+            - const: cpas_ahb
+            - const: cci
+
 additionalProperties: false
 
 examples:

-- 
2.52.0


