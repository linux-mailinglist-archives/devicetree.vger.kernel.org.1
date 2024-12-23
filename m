Return-Path: <devicetree+bounces-133499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B399FAD04
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:14:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6A4718837A7
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 10:14:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C33E6191F9E;
	Mon, 23 Dec 2024 10:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JVoGV1lk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6BA2AF1D
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734948886; cv=none; b=nyb6kggP9hlr2Fg1Hl7f1ZauvpINaliUI2VT2DyvmF73gaMLFWka7hABR997g9D8PvpTWww1Xapjua56UHRjZzFEBSLY7XcPcGw/uqsEHa/Hhm8eqs9X5l6ZJd165I6TaXivtCaY+tPmhruDSJKUWCkFXSHZMX5YT4T2Ja27ReA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734948886; c=relaxed/simple;
	bh=4xRPh3aNEVaV86x1c+zCLrSw8fC4MnFyYvsfD2YILaA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gBlKCx73Puf9PPPoJDZlLRMol8IK6MpScCQWWtYnDaqSbDyHq90IdEv+rtJiRP4WE9kEgWubEkQ77biHsylnJkFKEuNvcEImaWjybR76UuzAn3Fv3bfxaPL15WeM4fYUzdMLfvgumOAhx6QQFLyz3ZBb+TwKnWlnml2cKBnbi/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JVoGV1lk; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2161eb94cceso25514285ad.2
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 02:14:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734948884; x=1735553684; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IYylV8X3kG4etEmNRe4Z7PF9+9a1DSK0QLEu47Tihug=;
        b=JVoGV1lkHjiAv+xJ98dwIlmxZpmTwJzt3WHXwON+4Yga40QLOske3MWgbaX7H3thG+
         dv3kQ6+b/yWV5o7LE+CQ66bnwHivhKc7tlQA8eEGlScUwnYP7ldd8syRO2IOrpHmIjNe
         LPEjToZYWtF3fK2J1y+LUsLs1WJ7fOg4eh0e4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734948884; x=1735553684;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IYylV8X3kG4etEmNRe4Z7PF9+9a1DSK0QLEu47Tihug=;
        b=wHEGkQIIBaowGshYU5uzlXDb2sCOUzbTzY2UIPqKDgDWwwc710Te18orqOeFPaBUtJ
         KtgQTQq7/7KUMG86DcGiEWSoGPzAKNAYRYDAUnh1YXkx4iiLSGaheTUViYc0ym1v5R0e
         LydOrKhYRsCPvZfq/lIrjBWWwu+nTiZh3+AFxhiFea963XkeUUBOZWoBsWwtNNlMug3z
         E/VpOb35T6fIqJxNcxlZpvzCqQ18VzKDloEmjz64reL4XaCpaczNZFKoF8iVWwa0ZUv/
         rMauo6blwZD2RxqXES0yXbss1IGOEZVXfHH8UtHcSmkX7NkgZ/I38w5NB+/F8iIy03dm
         CujA==
X-Forwarded-Encrypted: i=1; AJvYcCUYJ7Z/Du025yhquTzZlynQ+qLQvxWH06cxVy22BnJ8tuThNUXOLUdUIrkNo6EUWi7H7g0VUCK0sEr4@vger.kernel.org
X-Gm-Message-State: AOJu0YyvRwq2yQBgWVkrGgEA3lcgTEpYQSavWEsvgW2IXtMXxgi5Q7Vu
	KLjIVz89rHAYgcJG1lGNzqaBkX/woQ70n/P6Iiomk24iv0qUlDRAc79KZCBlnwlxhTJ1aKRyWVw
	=
X-Gm-Gg: ASbGncvkzHBP1r730Gu01pHNs2CR7yrgA1gxT0dJoGIflfUX2Ll7Hfo5AddkbGRTJQZ
	BbaXnGNPC9pFMymOVak1DU5crCNMJN204Pk6B+V1Cbg/Zf6oDMo7hKE2TFi6CAclSiPJghmvoyA
	9DxxREc1RBNoKpgqqnIgawe1wL0zpkfD1IK78mr2+I8SssA5u5hssYMH+a5zIPpLQOEP+goSWfl
	Yxl2TkauiR8tdT0vcI62fRMCc8dpX32NImBHzCgFojMCDjVWK1XIWCmoYLh0pg/IKggkQvI3Pg=
X-Google-Smtp-Source: AGHT+IGYdqL5qn01ogk9p/xgsJMLTtx9vs0gfy/O/5AgnXiCHLrB4hynGoXLmR8ilJTbmNz5Qv1kfg==
X-Received: by 2002:a17:902:e945:b0:215:4a4e:9262 with SMTP id d9443c01a7336-219e6e8c58amr194289615ad.8.1734948884572;
        Mon, 23 Dec 2024 02:14:44 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:4fc4:9ee5:ceb8:cb2e])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9cdde7sm70193325ad.149.2024.12.23.02.14.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 02:14:44 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: arm: mediatek: Drop MT8192 Chromebook variants that never shipped
Date: Mon, 23 Dec 2024 18:14:31 +0800
Message-ID: <20241223101434.2170166-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Hayato rev5 sku2 and Spherion rev4 variants were designed in
anticipation of shortages of the headphone codec. This never happened.
As far as our records show: the variants were never produced or
shipped, and no such devices were deployed to any lab.

Drop them.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index b1687bbc57c2..2336070abaf4 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -375,12 +375,6 @@ properties:
           - const: google,hayato-rev1
           - const: google,hayato
           - const: mediatek,mt8192
-      - description: Google Hayato rev5
-        items:
-          - const: google,hayato-rev5-sku2
-          - const: google,hayato-sku2
-          - const: google,hayato
-          - const: mediatek,mt8192
       - description: Google Spherion (Acer Chromebook 514)
         items:
           - const: google,spherion-rev3
@@ -389,11 +383,6 @@ properties:
           - const: google,spherion-rev0
           - const: google,spherion
           - const: mediatek,mt8192
-      - description: Google Spherion rev4 (Acer Chromebook 514)
-        items:
-          - const: google,spherion-rev4
-          - const: google,spherion
-          - const: mediatek,mt8192
       - items:
           - enum:
               - mediatek,mt8192-evb
-- 
2.47.1.613.gc27f4b7a9f-goog


