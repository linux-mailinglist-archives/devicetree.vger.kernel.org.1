Return-Path: <devicetree+bounces-249389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85335CDB815
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 07:32:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2639330D1A05
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 06:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24D0329E6F;
	Wed, 24 Dec 2025 06:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c+jxRBDj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2831D2DC763
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 06:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766557702; cv=none; b=I98DNG8sb90BM8hqfRzoOF+JexH1EDnd11F1WcG/sep+FSWG/DO9hdQ8wWjH6+F61DrVFDkRPJz0O4QXMrCdNCxJdeDBEMUy5G6IS6cYnsC4pBQTR6DYke/C6NvJIn6vPzKpGZCNoKc33YB2Svio7A61RQsBTe3JcWQ1/ibv7t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766557702; c=relaxed/simple;
	bh=pQ0zridpKGE8MF3rAg6m5cLhqjO9hV0RgWPyWLEpjoI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K7h3DNYtTkzXnJy6404++YKGCp2iWkI27AdnJytuBw1bqhj2xeUSkUDSPdkuRxvXXTNPLa1vEo/XagogTk0ax1eIGDFmXOCwi10ghiZVlrrPYfR+OpinDzefjMNGd4KYaayuRsKMalJuahS4Uhm/fiRVwHxZULa20Cso0AOzIuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c+jxRBDj; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b7a72874af1so976269666b.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766557699; x=1767162499; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GbaH+a+oOqZVpDHfusOZ2KBO86+xeapDP8jAPSyFee0=;
        b=c+jxRBDj1qNmH9jZrtzDpfxSCoxZaQuDs6Z57phYK2EzgH6v+ikQ3w9PQc+T1soPwG
         R+YOZlOfRmqNgVThF6N4LlhlfHmrPVrfQrM3gVj4lb1ePO4FGz1ZMQlZIuc4k3jdiQb3
         Xi2nQSyhj8Q3MJzTCG8g4HV3DN9PtmVd0UNpWjXXLweXysrJqVvdIDEVdCOopnDM3tTy
         gTiItUDRxNL2RcFSBpFrQ4jY7nnAiLV5PsFMWWRqOTsEMg1GHtnLt3KbzXrneIYIYbru
         N4ECLinZjZrI9VMvPfWLoJ8qyvKyZ9MCMc0WWHMpio3GCB/Tf+k5TuT9tB+zKK2MD8X4
         AGAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766557699; x=1767162499;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GbaH+a+oOqZVpDHfusOZ2KBO86+xeapDP8jAPSyFee0=;
        b=F9zcLooRgWFtDGm7//l3cq5nVd07Cm3Yj+7GTRHeQGQukOtROa/0yKssk/KVryhpeH
         0KvWJlSNnvGBq7emWiBRI9aTjeTtm3DhMmc+0GDuJfmEcFaUcI6xDVp5KURZK9ekQOjv
         buWPfuG4Zpdeqk//Py63PH8ukpXbRl8p+LsYlmlyxgOmNUMBB8ZovF7Itl5gt4lq8bHx
         NH3T5vP5uWhNJgPNV1Nt165yG6uUNLO0UDihaoLkoecAQ5uXn/PB4LHmabFhDZAcpx3y
         HoMTsSrVN2525kcdo1wppZoZ3eo4/Wy54E8tLggic3f33NCYqiFJFg6vsLHZuizSoYM8
         bzjg==
X-Forwarded-Encrypted: i=1; AJvYcCXTSjDjGiGKxlV4F+qzlKlbERw2bNWaci3XvZicj51SQF1FLfI84qP6TTfwbzs+SSMFkljGQekTPlTt@vger.kernel.org
X-Gm-Message-State: AOJu0YwuavOo1nevQmzqr2zN9hfG1iaeAKmyenTnUhoIGLZLb+CagOsY
	JZPpIwiReoLaQT7vCAUA1f43W0vOpp3ZT0nj9PEBSz8433fSuhvFyRZlOjQYaRH/eew=
X-Gm-Gg: AY/fxX6tefYezhRFtxqEvD4hSAwzb6NxEby6a2xsmb1eNsIQ6U/0Wskp3kfwwlMPw5a
	gErZSIEoFKe8jBgBaUo7dP1yHxksdUxVguoaWGH+NRqPW9l9PnhsGgJEn8AjT3dsDx3BaQXJvuq
	QpmzEoXvdDXZzD+3vQQWlW7IV+e88NyN1XvCqCKsV3puMDoZapOMwSU8v8Q0Ysv9wTENaozf8S2
	MMP2GNeS5yDWrsXNW3qPvcGoccgKa8RH7JVzBJSw9SpPsx1Qe0Hg9FH9+egewn++rbUmqqgsxvw
	xnEVuMVZc5gXDp5wiKblAbdp0TgveKsofWS62UnxSKStcNYOOWBEAIhH9B0nESd5PpatddJsVTt
	sh254s9HTBycVtKSvTB05bb57pWIg5LN7Eq8TuVG2vzFjI+xSsGmOuAOHppJy+UpdRXcRmFlE6A
	Fc3hKFqiCRBNP3rw06grAlY4WKt/oUTWnM0cbaJPiNgdkoWg/zG0fXZ5CgNyk60gqSj9+vd1Zoi
	c51VA==
X-Google-Smtp-Source: AGHT+IGyNLU2MeVldvGpj+RzjrS3qruF4p0UInnrJlxEeqQr45URmSTCH2tmGITCWTBn2n6o3tjKyA==
X-Received: by 2002:a17:906:4fd0:b0:b70:b700:df98 with SMTP id a640c23a62f3a-b8036ebbe4amr1721435366b.5.1766557699273;
        Tue, 23 Dec 2025 22:28:19 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0cc52sm1643366766b.52.2025.12.23.22.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 22:28:18 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 24 Dec 2025 06:28:18 +0000
Subject: [PATCH v2 2/2] dt-bindings: phy: samsung,usb3-drd-phy: add
 power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-2-581089639982@linaro.org>
References: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-0-581089639982@linaro.org>
In-Reply-To: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-0-581089639982@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2

The USB phy can be part of a power domain, so we need to allow the
relevant property 'power-domains'.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2: collect tags
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index ea1135c91fb74c01ba860b9588ca89e611701359..8a52b2cfb37248026b4ac7fad1741d4e7b1b9172 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -51,6 +51,9 @@ properties:
           settings register.  For Exynos5420 this is given as 'sclk_usbphy30'
           in the CMU. It's not needed for Exynos2200.
 
+  power-domains:
+    maxItems: 1
+
   "#phy-cells":
     const: 1
 

-- 
2.52.0.351.gbe84eed79e-goog


