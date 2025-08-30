Return-Path: <devicetree+bounces-210727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A59B3CA3C
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 12:36:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E5545E0601
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 10:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 487E42798F8;
	Sat, 30 Aug 2025 10:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BRIg47MI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6980C278158
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 10:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756550171; cv=none; b=FR3IyhNznDU/Sv5//Q2/OQEnlQpBTbOMYQ7gb/S8ke+1HP38p1JU09R/Yo+R0hS1+UbC9xoz0rrTdxUuuoVQEFvbuqFLYTwMQOwJAVBjl5tWTBFsEzL/l7ng7fRHwqtHAsbFUXh4CFHswQA3SaYAYwk97XWPdEVQvkgagyIj/J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756550171; c=relaxed/simple;
	bh=OqkXFaVqOLu0Cm9orjJGa0kO4kQoIt5LQSmBFk9V1j8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oIVyBDzN7pYTvunM/Lzp6/JOE0wS3rPS7mfLTdRaJuEr1h6wQffYvee7H7tkAoluKIRFuZYy+YfFab7ooAgLOtyr67bOWTRzOA+PAXxmp09lDxbmJwyT1Gu8PCU88j853CjgP50gNY1oMdFBawFCEi140M+jvG9aoClnKHijUDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BRIg47MI; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-afe7584b6c1so37694166b.0
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 03:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756550168; x=1757154968; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xy2PldNrENiSaVtPT3x+tCYdtLAjiL+P5W5nR+7AJsQ=;
        b=BRIg47MITHOwGmcVnouy9G2W1oJcEfqswOh3wzGqc9NQbvKTk3qaYhJ8cCj6xYrktH
         KriOE1EoJB6OYvfIRzgjjQMBeJD1glLuKBO2ebaLdIiERLlICmmrThOJI2k/R/MsCX+y
         U/OMMSnqKDGIJdq/Pm9k1GrRwZYWzYDJeOzL2B01E6hkt79X4KTXp076kq7/cqgWbmZC
         xyxIf5SRaEWDu4lOG6Y0lkZiBAvPxmwu4BbZ5QxfdrH8+sFC27eMLlZ0rfBHsBOZZqfC
         ZrKcKr83Px36FIBrRK7DeVVqMduEnd+2CPcESGKWjD7fcPDtRrYVQ6oWcjg6koKHHHCw
         Q1Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756550168; x=1757154968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xy2PldNrENiSaVtPT3x+tCYdtLAjiL+P5W5nR+7AJsQ=;
        b=keA6u2lTgb5+8xkrRrFatfntX1wE+qg/9FgupIAhzU/zH5oHyCmAF8s0W72nhN7InE
         pcl8xfW2I3qjfyOw2W25GRXWpWHd8AdtuwalzYDE+vosSCPwlV1cLyY/CFpJKP6lDFUh
         D8Ft6245BKqDJSvSqdQ9ydxuFXaAKNlNAJZJf11FWXIG5OZwbufkm5fHehPOAq9vaYl/
         mnq4pP8W1u3GBMDk3tRtHifuenDdCUTis54mS73bFpaLJ+zDAiQ9LuoNe/OzxK1q053F
         2D80bX4b9F3XoRlhAOwQAK3FoHIB1zTQkiZApyQrvDc3uDR9Zyjp4z1l+Inppe0qZTP9
         JG3A==
X-Forwarded-Encrypted: i=1; AJvYcCVsGsGrKleWKzG4wiZ1YI5xZapAye+5Z+/WF6xWKpVWaKpD4wVXb/8mqK9H5nFX7KQyaY92Isb3NAuY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6VPOPmagfRst3T9cQc+I+vetytDCbrPj7fKoNXA8nPEn2zg6C
	z2L6WOzYPlBbIZrUtSH7YhWQM0NX4dmT8LWBHprZE9/g51jEO/BQa7zkgTJak66jLIQ=
X-Gm-Gg: ASbGnctXf11Dc84jgkKw81oAz2RZGW8DUjSuv6mUH1PVCsxfQPHkJgxIJRsIExYs82X
	wjiF/j3BXcXJlIvQcZSyRt2KL+wfvJ8RZrTIhrLfq/FA+k0wOGnH1P2lGeexmpclZPy2X/Icsc5
	4eIiuDzu1cGN+IL7dr70ek7mNi2+XlkFek1iaNeBTEnNrBFWv4G+Py4sKa1Q29vyhJs5MJwxU+e
	P+qAxR3K0Djv/S7+c/x2WfsdtADwITywcZpCG8hfxvAylUFf3BVGx1B3RUK+Uw1a1cEAqPdQQK8
	w5etA2MaTrnC0kNQUlvvJiD2GvoGOvSxuX65LxOim7MfVHaEdqT7HOwwx2wb8bBrp1rPjX+kLaY
	XB5lX6vC0XxWl1fGqzmt1Mfx2LZLpZw4UBQ==
X-Google-Smtp-Source: AGHT+IHns48R/scKvtWP4TWucE7E7d46yoyfHop4qHeB2gkDdo7J3ardp9aE3MsDoUiXrG5oxykknA==
X-Received: by 2002:a17:907:94ca:b0:af9:6580:c34f with SMTP id a640c23a62f3a-aff0f132f63mr196770666b.9.1756550167604;
        Sat, 30 Aug 2025 03:36:07 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afefcbd9090sm393749166b.69.2025.08.30.03.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 03:36:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: i2c: samsung,s3c2410-i2c: Drop S3C2410
Date: Sat, 30 Aug 2025 12:36:03 +0200
Message-ID: <20250830103601.82046-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250830103601.82046-3-krzysztof.kozlowski@linaro.org>
References: <20250830103601.82046-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1225; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=OqkXFaVqOLu0Cm9orjJGa0kO4kQoIt5LQSmBFk9V1j8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBostQS1uyd9N0GDHCqVVSX6oqHmmLX/xx4H0z2u
 /GjYzXDLzSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLLUEgAKCRDBN2bmhouD
 16V/D/sExMdSumruUenHBTZ2LC2Ld6Eo687uWRhy8+EsSXGEw+Dh63Bx4DG07nh1xePobQdweO9
 pv8xLTdgMUOyZPgqm9P9Xeme2Ys6Th0tgbwLHebSTreUKfTNYkfUtP9590Ze/KKhgg41m0XOkUm
 KLZeP0Whkbckym3b3kPdGRneHwICnfX9x1p0Jwkd023pm80H6+ayu0QojNI9fjndMe02bngi+C1
 ugDXAUHrayw5+1X5jxZp5wWCwgIyV2Hm8OpZoI3P2zGKB8UFmoGe0uZ7VeR/BWkk5fx1/vF4HjO
 eOLallZ/wPrlhvb8hd7uAY3gyVQ2Br2vxDmE6CVCOoZbm6jNG+/FCLN5qWZ1TXMbmwUDC5KTQZ1
 aIfINltTdbou4e3SGKTg00OTDTVAMyRpfwgQV95O7xd4s3t8SghtJAbBRu1A1EdFtEnnEgH3U8x
 /5Ozor31W3+P7vYF9lkWSb/j3Y0VcmeDFsT6/MoH2drVnpMLPqiR42HG+ca4GfVZBlNr+eo0AbH
 idjDWTsJf1ZL5+KKsPQgd6LOSCf8GJ0Wi2Wpl9brqQ9Irhmerp7ec0YTyiVdeidrZQjPViUaWN1
 HhAlj7rAacD7aqgr+pxqQPLSdrYm1kwjXXAkqlGL6n86sww9YULj2uQXqUg4QjQKd31jyxuSINx +JucnGYbFIy5ZEQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Samsung S3C2410 SoC was removed from the Linux kernel in the
commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
2023.  There are no in-kernel users of "samsung,s3c2410-i2c" compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml b/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml
index 6ba7d793504c..a2ddc6803617 100644
--- a/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml
@@ -13,7 +13,6 @@ properties:
   compatible:
     oneOf:
       - enum:
-          - samsung,s3c2410-i2c
           - samsung,s3c2440-i2c
             # For s3c2440-like I2C used inside HDMIPHY block found on several SoCs:
           - samsung,s3c2440-hdmiphy-i2c
@@ -93,7 +92,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - samsung,s3c2410-i2c
               - samsung,s3c2440-i2c
               - samsung,s3c2440-hdmiphy-i2c
     then:
-- 
2.48.1


