Return-Path: <devicetree+bounces-30788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C983C828EFC
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 22:38:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B6B71F25F03
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 21:38:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C40383DBA6;
	Tue,  9 Jan 2024 21:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b27uJhjV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E8993DB87
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 21:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a28b1095064so371621766b.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 13:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704836296; x=1705441096; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A5G3kOVOJ3YPkVZuV6/moOWckQ3gnsEMdzz/Vic7oRo=;
        b=b27uJhjVnSbkpq4sw6ycBiWAcU0t46PWMGyqUm/FqJKSOZfSU0JFN5h4zdh+enaWWj
         cvegy78/gqpr3LeQSq5KUp1ft+NgZn+Vf/0NUltrIz5meV4cITIFqrMiaCJn6M4rokUZ
         W5vvISyaWjfwkb65pbobiwi/yD52IlQZfVg8c0SSurQ0a25IBhT46rAhaHNIA8pJQfed
         ACrLjYWoL7Mxe2UVTDOFQVionzBD3XFwAHqNMosx77s7WWYDgI511j2x+4IHE1j3zYRx
         jWfJo0yqYNOgjcAjWkVAwYlSVLzZhT0GbfGK8udHYmzeJdcmWK2jHXRQ0NV2EPdFI9KQ
         r8Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704836296; x=1705441096;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A5G3kOVOJ3YPkVZuV6/moOWckQ3gnsEMdzz/Vic7oRo=;
        b=wJFAXiMs2HljgwyePeqOqAnfThcHrjot/hIjQY+esRkQGPy2LCgqOe4WfieHtjiR+H
         AFZqjBO1ozTSc4ENrH4tKCUC070DceQee1fFPELgWGECs47v8C588PwAPmk8pCBJ4JH9
         Ar2HLyZbbl0E212R9XuNl0YYNCfKkj1cUBM6bxtoICfn8NyMAj61JyKeLoAZEMCxVZ+a
         2KAiHCDEGYBDHF7moytjRIlzGk9fYiuE3u3ZuyXwKQbdwluDm31Yd4OFrjkDhGhzGhw0
         fRvh5HRghY1560eysur9ElOaqAgeytacBDhq6VNU6PIB0CPkXUPnO6wNjig1c02KJj9T
         s50g==
X-Gm-Message-State: AOJu0Yzz6ihyVA3kVgSice0g9fvhx7VsTi+SSueAAGGlWIeiTP4Mqtzd
	xojZ+LC862FWZpI3XQ2ZUNn16qx7eZUtSQ==
X-Google-Smtp-Source: AGHT+IH7hjFDBoKfUKdAfGYFie2ibx6B3yk4kAZkSCroFtKisI44OmhXw4LX0HY1I/6GHFrCWp+sTA==
X-Received: by 2002:a17:906:39c1:b0:a28:c06d:2e12 with SMTP id i1-20020a17090639c100b00a28c06d2e12mr28962eje.21.1704836295878;
        Tue, 09 Jan 2024 13:38:15 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.112])
        by smtp.gmail.com with ESMTPSA id lf11-20020a170907174b00b00a26ac5e3683sm1420197ejc.100.2024.01.09.13.38.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 13:38:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: dai-common: Narrow possible sound-dai-cells
Date: Tue,  9 Jan 2024 22:38:12 +0100
Message-Id: <20240109213812.558492-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Instead of accepting any value for sound-dai-cells, the common DAI
properties schema should narrow them to sane choice.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Mostly sound-dai-cells are 0 or 1, but
Documentation/devicetree/bindings/sound/amlogic,aiu.yaml has value of 2.
---
 Documentation/devicetree/bindings/sound/dai-common.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/dai-common.yaml b/Documentation/devicetree/bindings/sound/dai-common.yaml
index 1aed2f0f1775..6db35887cbe6 100644
--- a/Documentation/devicetree/bindings/sound/dai-common.yaml
+++ b/Documentation/devicetree/bindings/sound/dai-common.yaml
@@ -13,6 +13,7 @@ allOf:
   - $ref: component-common.yaml#
 
 properties:
-  '#sound-dai-cells': true
+  '#sound-dai-cells':
+    enum: [0, 1, 2]
 
 additionalProperties: true
-- 
2.34.1


