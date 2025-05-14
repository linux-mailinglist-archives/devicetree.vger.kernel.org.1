Return-Path: <devicetree+bounces-177172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BF371AB6945
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 12:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2C4019E3772
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B36822741A0;
	Wed, 14 May 2025 10:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b2sOJpam"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D290A1F91F6
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 10:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747220235; cv=none; b=HlKRr3bIvk49RpBcC5WSTGhVbg8/KoC75rvoyplRG70a5z0hq54eVnfn/cQ1Y8PTgozuXnLVFuYueuLlAotLfaBeAnE92gXrqWC9KyEje2uXPIy4JoaQxHto6Zcl98eJH6yXNiBVEE7aDm87+XYXJgdi2QBuEn1CYlLFSC+rhEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747220235; c=relaxed/simple;
	bh=Io3JrD/y03dOQPQAcqJF5SS7b20bby4BHdbd1e9wLMA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=j8lREXL6lMlqKXQLK4dHOWyK2OJo39p8/kc8Ftr8/SosUzJe4+aVn2WTrN6p6XIFvjcvv602rQ5WeYnajDXr7HxSdoybxdRijI0aFqSL9poJPm6W06ZjP4Gf86eOW/9DN7dx4yDwxNoR4UKHws+mVK15U0PKIQKp6M1tM/CbwCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b2sOJpam; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a0ad54f0aeso584653f8f.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 03:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747220231; x=1747825031; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y4E8aOwQAaUdRX1dyEnehNt0cEoTdcyb+vzWwLzLf9I=;
        b=b2sOJpamHS+OogMULNrBBM5HX1UW5BJQjKv6iEOLtq3+ko567dhlJcTUKKVuwnanHW
         cF5Y6uTVamoNaz+/6K70IdrrcCMtgYEo/lbLQyNkuk0hXbmVNyc49s2q1LsbirE59Arg
         HiV6Y/DnTSwmQcY21gkFFfrDzOHK41KeMclNimXmQs/+MBui1yahGS5gtcwJXyQSD3rD
         ZsAXOrw3hoqt0Vlpnsq6cM9UnFzfiwn4uQ0uQCA1mMIeU0QZCZ8lg9ueaxlI+RyvN4qi
         F94v5YudyunFL17TfSgxzHAEymYUdVlUGEQIXGRSkVhzkhk1bcqZlbpUlqvpQaRVY9pY
         PYew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747220231; x=1747825031;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y4E8aOwQAaUdRX1dyEnehNt0cEoTdcyb+vzWwLzLf9I=;
        b=gGiC1h1o5toyvNxOBZ7wJ/TIi/GXwlu2oyS2yiH710m3H34jq57DK9psEkYdU1Ld2+
         jmPbi40EHO4Vlrlp93a3hoklcYGsnPrwJfw10bpAAY8vgKo1XdFpsF7onjqZHGMteDbO
         7nkHXt+VO/yb+yNgpaiqZXqUd/jV+MXx7YBrt7Jntqr7VqJ/HK1jJWnl/e7ctwpPYiph
         LMc4vYGhgvRR39duRU9hVGEAEfVQHE6rhCwqiAPUWTNSrRDKE03h3ue9DSNfAf+EH8e6
         Bs85pLhRYt2H+DJt50NZ6oimNNDyemet8WRV5LoMYW95JbzdCQ4yN7xk4NEiMlQhslGR
         HxqA==
X-Forwarded-Encrypted: i=1; AJvYcCWva7Ef4sKVuJ7QHCCxwPynFjfwLV+ewfJ/opUXIZWtrC8nVCNCuycJBDUMZyKadwNe5iJCU7UXA93D@vger.kernel.org
X-Gm-Message-State: AOJu0YyJJ02O9vH6XdB64JSO7YKzl8RniFOzWQ8fvUd4GDQPObkbIm0t
	CHrfO3o/4mne/CRFkkUPPslNKoEohNIw64IMmLd+ImclGSBEC5oCBBqdA6Wx/Gk=
X-Gm-Gg: ASbGncv/eOHeHmqY6XdcL1hebFjlyRi16s5C15ZjhWyFh/Oq1Khg/DKCYvpf8eENBhm
	iLi1exa0VzlrU81lowJWBljhFa3rtaoOrhofJH0Weke95zHRaYUJ8PnADoRKlTi87h4d+HPYgtz
	gUbYEi23KcXChWL3Ispi1z5mGERXy6Wj8A1BZqQumEPqpXJztoWIxic37ouEFDlZFcWfQnvbq7v
	2/ifCb5RAmOLpqSgBHTWSktEyGTqCgOudddoKzVwVeWnwkuOs7Ul6VPs80eroe4r4j3vMXI1fKc
	PkdoBc0h3OWeh/QIKCNqXNantpB1Qnch/M4GCIGszo3J2FNZmO/1DPp48Ial9JFd6k+cY7JYNTS
	Hr9GbgzjaSkXWnYdJHZiWmPXcXzPVc7pBrKbTbKNcXq78JzzdKw==
X-Google-Smtp-Source: AGHT+IFtksBMN8N0y1ipHv0ssNQ0FUDjeBMyouJ1A0vX+2sBsa+p6vm/UIeQxO60xKTk6b6EFmeb6w==
X-Received: by 2002:a05:6000:2207:b0:38d:b090:a0c4 with SMTP id ffacd0b85a97d-3a34991c966mr848096f8f.10.1747220231062;
        Wed, 14 May 2025 03:57:11 -0700 (PDT)
Received: from kuoka.c.hoisthospitality.com (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f3368f36sm27362985e9.1.2025.05.14.03.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 03:57:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Trevor Wu <trevor.wu@mediatek.com>,
	Jiaxin Yu <jiaxin.yu@mediatek.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: mediatek: Simplify mediatek,clk-provider
Date: Wed, 14 May 2025 12:57:03 +0200
Message-ID: <20250514105702.28622-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1814; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=Io3JrD/y03dOQPQAcqJF5SS7b20bby4BHdbd1e9wLMA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoJHb+RsGueHOitBQYXiszb3Mpl2m/RCzDn6fka
 rPIPq97lmOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaCR2/gAKCRDBN2bmhouD
 11y6D/9EcflOTi1PXfiKHcWkO2TQd8AiHmKdLSSurf7WcaMBXn8Fbwo73+EJ/2olcQAcj7XZf9D
 8JwECXhe1ztAZeht1jIcW49QiQRkkUoTkN2KRL4dooNvkTgUY3vgNyA87MXPGPjLmL/JcvJsnsW
 Jry1/y+WGGXJTxvj453+yAfKNDgE2FtURccAdIPzhniUnS4RmnYp2nABLMgdTYv0aBqZbV20rqq
 jOWXfCbRAbLEWCIeZ+nQerpgM8fHM0eTYOuV5MHzhs27OoJkYOLMLAny5qoLl7Zpm7QIs6Sf0TQ
 411wb3xmZHUvPljW+odA5kp7vNu74ORgeg4sifz8NSK3UY7wfPBnAVDcUwbazT4UPZjVlvd6oJB
 M/oQZ5PI5OZXBBFcvbfNpTspmnlUpx2dl92iNd+EU3tV1ULUHEe7fMMDPmDWuya2uC0byBeV+NX
 KHdBSm5X6JTGBik2vPT29CmY9aUOtWDqcOvbX9/mXZDAkw7FrXY3gbcj83aIpGUxHsXct9+Fp1D
 jjQE9JCq4VNnydAnG14Q7NBEgujHn3urNMS5sHe0sb456zjEw7cQsrs0W6/JmpSTxRQ6N6UrSJU
 AUkb7dxGDDDx+k5ZgmIRFW0TnxfwnBQbiJBYrXSPQny28+3lgQEWgXSN8AGE4cuB9MzdnPo8ura jtDQQXfb+Vlto8A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

"mediatek,clk-provider" property is a string, not an string array, thus
"items" is not really correct.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml  | 7 +++----
 .../bindings/sound/mt8186-mt6366-da7219-max98357.yaml      | 7 +++----
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
index 76d5a437dc8f..7ba2ea2dfa0b 100644
--- a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
@@ -96,10 +96,9 @@ patternProperties:
       mediatek,clk-provider:
         $ref: /schemas/types.yaml#/definitions/string
         description: Indicates dai-link clock master.
-        items:
-          enum:
-            - cpu
-            - codec
+        enum:
+          - cpu
+          - codec
 
     additionalProperties: false
 
diff --git a/Documentation/devicetree/bindings/sound/mt8186-mt6366-da7219-max98357.yaml b/Documentation/devicetree/bindings/sound/mt8186-mt6366-da7219-max98357.yaml
index cbc641ecbe94..037f21443ad1 100644
--- a/Documentation/devicetree/bindings/sound/mt8186-mt6366-da7219-max98357.yaml
+++ b/Documentation/devicetree/bindings/sound/mt8186-mt6366-da7219-max98357.yaml
@@ -124,10 +124,9 @@ patternProperties:
       mediatek,clk-provider:
         $ref: /schemas/types.yaml#/definitions/string
         description: Indicates dai-link clock master.
-        items:
-          enum:
-            - cpu
-            - codec
+        enum:
+          - cpu
+          - codec
 
     required:
       - link-name
-- 
2.45.2


