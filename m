Return-Path: <devicetree+bounces-153750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 017F8A4DB1C
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:44:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 514DE3B114E
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6383B204F9D;
	Tue,  4 Mar 2025 10:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ObKoSlBm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696D31FCF72
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 10:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741084697; cv=none; b=XYhp442nptRfuD1Eh5PtdohbSzZ2Y1eIDHJh1ngwXrjbkw0UJhOgMQezfC+1u+ROfcPOILTf96+1VPoyuLuBqzar1oQ3KtNoFUNdul7+dFqvBXTwLh9XCCOoT77pxoTaTRxteUQzvlVJl9PADgzmfrN06kI/r8Lt4vYKQnYopcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741084697; c=relaxed/simple;
	bh=bQKkwDg66kSktLEPRMbXRZs1JHN1GixPZhKMmLhibFs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LegvjjD0+HX6yjAadG406AYWgKWZjdjl9pg4VWFOYCbQ/eU/TUsIS9Z18ZZtGAKZ8dSvlwEcqGFKpmj2QJa7D0uPRc2C78vxRMqCmHo2LjJPHcoWTrgHTn+HRG3m00+tCCobinfX450MCYVDySvvrrll2o+Tv6q09w6aw8LyWjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ObKoSlBm; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43982cede30so6460265e9.2
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 02:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741084693; x=1741689493; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m4c6wKYsvgnAeVjnxoSb9zpE19mfz0UUs/D4oCTMhK4=;
        b=ObKoSlBms0pIvvfRY54fp97O2009ia9A0yma70iqCh5v3vb0VqogmZwSJRGh1/7TOI
         aCrKNo9EgaFNYWleBw7oBoHImTilOcHn2QYKj49I5nigrCz0zCpzvjEQy8JMWfBz2k/t
         jJFDHkX3QDDMkjWQTiNutBRsqGbOus6VhBDMK2D8/uUvw2GzrJI3h9Hf1oYMw4sgS3cz
         PIj25qJHahjvnxTghwtRaAewJAyINx3rKZDXF8zhKjnc+bt9zVXQ8pQr0AIYsICjVca9
         ubGNLGrjUPVn/wzXyRIkdYD04fImTi9axg3MoBzPGLYqNYXWFuiw+04/jzIwcN3O/zoV
         rouQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741084693; x=1741689493;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m4c6wKYsvgnAeVjnxoSb9zpE19mfz0UUs/D4oCTMhK4=;
        b=VH9N3wHBtmkm1bvKDoQXYFC+J6gZj3NmAEUQNvIaJQf9B27UfiXrbezbp+2+xdk0qp
         y+iUCNxPi0S0n6mBmEcBkGkbbABxF+vrCByUZjJIcX+H2/+P6s5NMVQcNz2rafyGhP5z
         9Ktvx7JR22j2yRySnrNiVy+dWWT3OKWGAfc43a/Uw09KkvKJI0k+8Jjk7CHUvPQ3sX4z
         8+jDzKfwDysWmatpy7pj6JfIDz0KEf07CI7YU4vf8eXkeQWG/LLvVGrsfd/FL80U/4gs
         VnBR4RU/cR6cTGaFMTWGWRe+SDHFdpxXnBTzgL0kQPatAacuc4cwExCxpbjJc2sSWWy5
         sNHw==
X-Forwarded-Encrypted: i=1; AJvYcCWQ1sH3d2de6yr6GHIqk+dSTcnV/8oJ6ky8nK7syHQs7/i2UMLjD8zV+bJwlS1m26mPtJqUn+q/jQuN@vger.kernel.org
X-Gm-Message-State: AOJu0YyZY3T8jKbc4i3NSQTAFvxhokVYjESfJ3MP8Kne5OmVZ3wW5PrT
	pqmM0V1Bx0sAHSjRPL9pX7Ju3jv116rimknlLJrk16TzPTkp0wDiGsSaxhxwuBU=
X-Gm-Gg: ASbGncs4+8qQVpd7ZTxeD3CHApCesjbgKf1fmdm4M4sbKTzzoPbnUskC+2Y4QaYSh2P
	Cik2gLBPCY1x0VEDYIEPBd2xIHkEI8Ni7z9OFX8wP8DO4VgXA4FWSiRtOLVdrflppnhCDC0L/e2
	CXh6B7yFt9d2Fb8bU6z6U2rD3OXs/YTKL/aK8u4D2LGxEr1/OH2DA2G3O0erDpuGpg4+8/zgc1k
	eyHmJs6E8Dj68Y6iwvcAvmtLQvQCYaUvnA7URIe+WudUzVDQK1qA8cEQD/9voR9ixkPUW/3CyXB
	acizPA045U9O+hR3jyF0/W42/btW+Uo9v1rY7b9o1xoZaFdeZQXrN3g3FQE=
X-Google-Smtp-Source: AGHT+IH2p/EmPnfRVQkkOTi7SSiFvE6P2sYVBO3i3/SpzlZxDLh1MnVA8qE4Hr5Fj8Vaxg0QgloJwA==
X-Received: by 2002:a05:600c:4c89:b0:43b:c0fa:f9c4 with SMTP id 5b1f17b1804b1-43bc0fafdbemr23862335e9.4.1741084693497;
        Tue, 04 Mar 2025 02:38:13 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43b694524c6sm198574825e9.0.2025.03.04.02.38.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:38:12 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Yang <yangxiaohua@everest-semi.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ASoC: dt-bindings: everest,es8328: Require reg property
Date: Tue,  4 Mar 2025 11:38:08 +0100
Message-ID: <20250304103808.75236-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250304103808.75236-1-krzysztof.kozlowski@linaro.org>
References: <20250304103808.75236-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

ES8328 and ES8388 codecs are I2C or SPI devices, thus they are
addressable on their bus and 'reg' property should be always provided.
Requiring 'reg' is pretty close to redundant, because the I2C and SPI
controller/bus bindings require it already, but the convention is to
mention 'reg' also in the device schemas.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/everest,es8328.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/everest,es8328.yaml b/Documentation/devicetree/bindings/sound/everest,es8328.yaml
index 309c4d01db76..ddddd7b143ab 100644
--- a/Documentation/devicetree/bindings/sound/everest,es8328.yaml
+++ b/Documentation/devicetree/bindings/sound/everest,es8328.yaml
@@ -60,6 +60,7 @@ properties:
 
 required:
   - compatible
+  - reg
   - clocks
   - DVDD-supply
   - AVDD-supply
-- 
2.43.0


