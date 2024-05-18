Return-Path: <devicetree+bounces-67649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E7C8C925B
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 23:12:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 09DB5B212B8
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 21:12:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08C3D60DCF;
	Sat, 18 May 2024 21:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HKkvhDBo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAC93DF6B
	for <devicetree@vger.kernel.org>; Sat, 18 May 2024 21:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716066726; cv=none; b=dpCBDvFYVFoMPks6SRwDVAm7l3Xw062seK4uR0FWXT77IgJSwlfFGZNz7mNCfCuTIPe2p/kCz0Bmwkl6S/VPzw8QqKr25MfZN3nd5H7FeiY7FuDTYkpbHVN06j7y9QfamOsbVlY+SmiM9qjI7jVZVIZec+BYHgKgJJ6k7mDUpOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716066726; c=relaxed/simple;
	bh=OGj59+yUG5SeBGumRF0wXId3HtaJLcxLvX5eUu1k4sY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kAxag3ciTzNoEQSEgSdhnEsWNOkFl06a6lAzy95357VjSSqvNsndDIbLZsVQvK5iC6ZSPl+h4FMzVUGAkvh5Mxd6CN6MOtMhWOJcLEXjQy1Nat846mNqVrlGOI+PHHO/ChhuF2H+6vRXZkuscV7buQHo/y+Xi8NxwVxKjG2Ljgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HKkvhDBo; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2e72224c395so1100951fa.3
        for <devicetree@vger.kernel.org>; Sat, 18 May 2024 14:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716066723; x=1716671523; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=brMOoyRcmQ5W7Ic7tEkLMb8OY3+MtSi2g93xfzfzyoU=;
        b=HKkvhDBoaMmayXSSkENdYtxT3AvHjkffNxJzrHj4Hr5xH/qNtpAmSA76yixiuk2Z4j
         TslUEF3Ths4Bz1NP1rpecS5s2V0yqZ4s630jwGlMvF/omoMa9IaDI78nqHyyYhbfemiI
         BfrfM04XwcaaUgMHnCxRvrcqi0KOtO1Jh4A8nLKGKJB7YElx82/pvzebq+8+a4mJLZjC
         fvGIHxDmyvE3rjzJ81pcqvqWn7sZCpqorD6dWjSVuasrlhl2uFNn4HuZpD6unp+JfwGk
         gq95LHFcaSdP4RrskaRuPfJ1N8dYJEnaduzgY3VR1stw4BYpoQh0UBJD9LZPcXnJGJ6j
         yWAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716066723; x=1716671523;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=brMOoyRcmQ5W7Ic7tEkLMb8OY3+MtSi2g93xfzfzyoU=;
        b=pHG8rE1OIhbnnRI7q4gMkv+xu3omhIe1TuGhghMCWUhc6PF+WuIevoIO85On26B5n8
         12+I3rUCTdc6ygMvPQBdgmaTuQRXw1YMcsdS9v/pFqA4MYDmRwifqYiqLmlL/lE1HgS+
         ErkoNY1ntketRRFMt71dzpacmEYcAiBw8BH6FuedriD0n5SV5rBN3Ir2gkz19oUE//IC
         m9d4jpb33vupDTpuBNhTYjkIzg6cUnU9osyU66HM2sMD4R5LLPnDf2EgpvF/cf4NHvLu
         b92/GIQ7rO+qJcLE9qPd+EhGyY3Bo99pivJB6DV857o8cp+GtNj4iMoPSiPkNldKmpQt
         L4yA==
X-Forwarded-Encrypted: i=1; AJvYcCWhopZgVyDGDcF+aprz2jS1Wb+RhoSD9GiO4y8wqw43QZ8a0nQPnW6BDy4TY08LYqxOrnBhdmnz4Bip/lSkWlZIGDM+P2XrT0NX7g==
X-Gm-Message-State: AOJu0YzI31IGRfVQrTAYdvpISZnX6p+5w3HcFN2XKIUOsICD9fGsN0NV
	F//7Mx72VOUv8qRo9BkxdfP76HdKEo4U4qY7+TEG+pR7MAqtrMWVY+q9t1/747Q=
X-Google-Smtp-Source: AGHT+IHcZoP6Of5YY+498D+2p+mQKWV47GgZqqRIdg7kVoGGBD308008Ffbm9x3P/U7/JXkzTx3MfA==
X-Received: by 2002:a2e:be9c:0:b0:2dc:b04b:b3c0 with SMTP id 38308e7fff4ca-2e51fe52160mr207086061fa.6.1716066722853;
        Sat, 18 May 2024 14:12:02 -0700 (PDT)
Received: from krzk-bin.. ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5733c323d3asm13151340a12.90.2024.05.18.14.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 May 2024 14:12:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	MandyJH Liu <mandyjh.liu@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4] dt-bindings: mfd: mediatek,mt8195-scpsys: add mediatek,mt8365-scpsys
Date: Sat, 18 May 2024 23:11:56 +0200
Message-ID: <20240518211159.142920-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new mediatek,mt8365-scpsys compatible, for the SCPSYS syscon block
having power controller.  Previously the DTS was re-using SYSCFG
compatible, but that does not seem right, because SYSCFG does not have
children.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/mfd/mediatek,mt8195-scpsys.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt8195-scpsys.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt8195-scpsys.yaml
index c8c4812fffe2..1aa27d14145b 100644
--- a/Documentation/devicetree/bindings/mfd/mediatek,mt8195-scpsys.yaml
+++ b/Documentation/devicetree/bindings/mfd/mediatek,mt8195-scpsys.yaml
@@ -24,6 +24,7 @@ properties:
           - mediatek,mt8186-scpsys
           - mediatek,mt8192-scpsys
           - mediatek,mt8195-scpsys
+          - mediatek,mt8365-scpsys
       - const: syscon
       - const: simple-mfd
 
-- 
2.43.0


