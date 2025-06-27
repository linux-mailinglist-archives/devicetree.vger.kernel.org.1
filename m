Return-Path: <devicetree+bounces-190215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF23AEB0DB
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 10:02:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 064733B5515
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 08:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3C6623816D;
	Fri, 27 Jun 2025 08:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W0SL1E1U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AD3234994
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 08:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751011325; cv=none; b=t0CAW2A+r7yQ+5VRuw4q34m4pS5tqVqYAm1WKt7EYTrmXCUzhdNuGCya6qFnle+7V7tAhuM6oGGp470Vf9f5gdY7oKmFLu+fPNGYXAzs1hy7SGT2S1zAu/A36o9nJ8WfsnAvoZEQrKKJWPk/W0JAUEk4pLq8L15TPX8MIo7rnto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751011325; c=relaxed/simple;
	bh=Os18r53ZbPW4+3PxVUJh52djHd2zkWOgpdekfLd7+7U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u/00xD8ro+jX9GKAOqmPBdS0nNLnRN0GIFb//JGKq3vPY0FtI7QutBFPKTZL1EtvuxdVXkws4ROGtKgi3fnANyMXrBhCIuJuhhvlSoLFgYCYTLMhudX1dmSCLvPhlO4zfifhm/d6ZG6+Be2TtZijuI4LODDaibNdcaua/vidmGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W0SL1E1U; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a52878d37aso233559f8f.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 01:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751011322; x=1751616122; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hVQ26FYhE65N8xhWnR/yeeetwdVwmUBewq4SGVBPUKU=;
        b=W0SL1E1UUZJF1os23ujdDapsBCOg2/actmz1nKtCESjyG7qcrFv84+xvpYJ8m9JtYR
         zXWp6334fLwHIWI2Uyq5TMHDlpfCFA7zoK/j71Ad3KI5Z5e/60o/qBjmwREMG8nmCXOX
         rFR4HIwzFWLzBT6TAFF4BTinlahPdNb5GJ2Wfl8IJsTEWHWrJcyCNPDZMxwFoFwFkixU
         0cjAC73j74SAGFoYTW8LQZ9t3Iiab3sJqKW4jNacXv6FO+ozyEUkt6V/T+d/cnDAHT4A
         3pF7BRAc3dXuYo2eqH7Ghpn+dFYwqhYo7U8n6aRpCyDlMR0JMekzd6+8E0mKW1ZxK2b/
         sPpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751011322; x=1751616122;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hVQ26FYhE65N8xhWnR/yeeetwdVwmUBewq4SGVBPUKU=;
        b=rbkX3AfP5qsPBt/p+UZ4XdSg/Ornj2vGXz1YsVM9NKHUZSNwt1aZHgjafl34aSwXHK
         kkoFN8F47F/VxxGJCSrXQljLGcyLu0ge8Css+VcV6QPgRA50oDaJ4WF55r1leb9oEKyn
         nct4eM/uEQJScyZYxZDy+86ZDU6/TvH4YWb8yfoTdLSEauFBxBcVnNP7Ujd3ZAwVP1GQ
         xEC9IrE4+PoGbdNxTALHNQKU8RP+n6P1SI8myh8D2534XceAgT0wiAoWOglhNja1eFLB
         0hxSi8fwoyeIdszJj64YRkNbLTFqZQMsxtaJsiKFfPI8pJZaO3MAJRvQyvY6ub8xrbeJ
         uADA==
X-Forwarded-Encrypted: i=1; AJvYcCUa3YDicjPRdfrKlbm3TBCcBJveI9RzjR+v7HzJfeFm/DIIgJhoZScDfEJ0Hi0Hyn14jolSXggAfpsG@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2zBB5elzf9LfATjyzCRKcljfsOG9Sa/dMnaHx7EmfDGojODp8
	s5Z2xJQ2BYTCJtvOSc8iRCkSbUscQG64ZX5X0WIvqxU06eJi3GXsTdjs1o+ColQa/mk=
X-Gm-Gg: ASbGnctZGUywNHEKORRiDLPK4hLn3IukytRjGvh1FyM6x3dFzE84GD4RzWDWQArB23J
	BNLZrtP1zi+ozyGnpHu5Zs/lf1/YpeDKN8wc5QyVNzGraVpkPNFpYWx93r3lrRE0S0Zo5MQsi6L
	Hr4HNiD+PlcinihgykhYVm8VsyMnW8nUfflSlWowPCHvAiNPA46X+sDytxKnnyqviHE/Z0qTFUm
	IzLkwj0R1fWfgimJHHTYsgXkp3/uxNIBANC0kfHTlN+fcDN/OUfe/HcJd124cA18Pj4NG+g7BDG
	sKAd/sr4Ghz7RQLtjGw0JfTgWTVuub+166QiAGwfKw74eA4X5t21tCwpe5kXz2yEoq3g5PbPREo
	pMhbkbuKtFGs=
X-Google-Smtp-Source: AGHT+IG+OUuFO8zduSqG52Q/uKbJtNoMJ4tCAnBmQyaOHPjqHe1gEHM8je7qA53jNQAj3w0qWDlO6g==
X-Received: by 2002:a05:600c:3b2a:b0:43b:c825:6cde with SMTP id 5b1f17b1804b1-4538ee24a9cmr7911235e9.3.1751011322546;
        Fri, 27 Jun 2025 01:02:02 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a423abbsm43490295e9.39.2025.06.27.01.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 01:02:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 27 Jun 2025 10:01:52 +0200
Subject: [PATCH 2/2] dt-bindings: phy: fsl,imx8mq-usb: Drop 'db' suffix
 duplicating dtschema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-dt-bindings-db-v1-2-d5c7072acbee@linaro.org>
References: <20250627-dt-bindings-db-v1-0-d5c7072acbee@linaro.org>
In-Reply-To: <20250627-dt-bindings-db-v1-0-d5c7072acbee@linaro.org>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vincent Knecht <vincent.knecht@mailoo.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Li Jun <jun.li@nxp.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1112;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=Os18r53ZbPW4+3PxVUJh52djHd2zkWOgpdekfLd7+7U=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoXk/0+ng738Vf2atAtc8/9LZzBj/cRNYfbJxNV
 4fZiTT1cVuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaF5P9AAKCRDBN2bmhouD
 1zPRD/9ec1PBGRt9uSGVge2T/60FqQRPu2KOpknFFJ3Yj2DgYRFSk+cXIn3PZ4WYAVB/TIJslkB
 ZIl8QaXjr0prI1lcoi0bW4gqRy+srh++tfMfquip1o0iXOCp5aogQjaYO6u0UFcq8C3+GharY9I
 bMigbXVaL/jZ4lajDdJdM+y7p+5AcdOT9IvlYrTdKvappu9skwsr3bRnSI+mhOT63xhyIF7DWFW
 zJSWlLnRXfR1N+GLwOxrnjllEQNvCpAsHSSF7941WAxyvIznVNXDTgQ78QVhe26fbd/F1hs1z1Z
 DfpRyzJsH4uEFlNn8L3Y+7AEYG/kF83EVxbdZpqmgPnuMTyE/lulfK0LIRBr3hy35j/MxYpxSQK
 5cvNU8yfNqQRq4fBQJc9HR9Ns8Xyu23bvbjNXaNb0ek6aOykGhZ4Ggi5EzVxNKMicwX/XCmsDDs
 t47EZRIViAWLgpWgxClkV3I+AnGiIQMs59AEAbgFTc7Uj+WGvsYZbeGlbix9YccewK0RopMqYCd
 XmBy5pgRiTfFm1XWRcITflD24deF+yfdUT8arxFklLnGBf33AqrHY8zHb/E5u9Xov3xZTcs/iqJ
 nD5oqiQ3Dif0Jftw7mzCCalnUJJ+lJFXGwmWilNvJYtuB6eDo4xwTFz1Ca92alNdhDTpZIGC7f7
 FaegpyIa3vtZbbg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

A common property unit suffix '-db' was added to dtschema, thus
in-kernel bindings should not reference the type.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

RFC because this depends on dtschema changes and should be accepted
after new dtschema is released with this merged:
https://github.com/devicetree-org/dt-schema/pull/166
---
 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
index 22dd91591a09428214afaa4c9c8e37aae9bd8aba..6a47e08e0e97b286538798190225ca2966a7ab34 100644
--- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
@@ -76,7 +76,6 @@ properties:
     description:
       Adjust TX de-emphasis attenuation in dB at nominal
       3.5dB point as per USB specification
-    $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 0
     maximum: 36
 

-- 
2.43.0


