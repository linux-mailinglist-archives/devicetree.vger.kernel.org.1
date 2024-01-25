Return-Path: <devicetree+bounces-35108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D54C083C55E
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:51:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13DA31C24A74
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6025E73184;
	Thu, 25 Jan 2024 14:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V4dykocY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11516EB4D
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194219; cv=none; b=uj/O51uE2jx46iN8unQFTjYKYbALbGS5b+RqqR6j1/JiCh8zrZiD+RSj5QatlbiJ1CxeQgfoQ/VWiRWdWeJb5QpRQARkyC48iMn6tDW+4CGYIouBIzo1zCq6k1mCHp8yzb2G+zD4bIEmpM8N/NOzetm9Q4yP78PE0GkFEK1YqNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194219; c=relaxed/simple;
	bh=HUS+pk9N92y7YBQl1ZH9U+K4lAXt5pbyiE0NqzVBDmw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dJAea+p+63eDWxwSiLYnywwL8sPihNlS9FbmRnEtitg0Toviw6IlAbgCPmtmejtO/poFrG4WCkZVlUWrGcEW2Ix0m2hCvCZcZDOUQLf566GGoTF/Jz6JpKEKRxoUyKUEupRVF3bMeOc09R2rGpPVttt/FoR/moD6O2BFLz6DE+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V4dykocY; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-337d58942c9so6832353f8f.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 06:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706194215; x=1706799015; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7RbS7SdUaAw1K/g37Ed+dGAKWi2x8GPreQeT5KyvnlQ=;
        b=V4dykocYyNiq/b404iwjiGVNGxpPEcxyPahcaPuBwOuNqhWN8R1e+JCpmY7RQ04qeB
         lm05XVAZDP0n+uBQ7y7ZQbimlaXIF4YABCWW4t/CMe56MwPI7THCrZEHrex2ToE1B/eS
         hcyqzDkFWJiUq+6GU11pJiERa2s7rNa3mRLexhCjfYBpPBhKW0pDE23GGMHueHrJ8BKg
         xjCZd5eZzy6g73DR4Ulq8bn7ZqPBLbkF43hAKtmxZ5Lm9TpWk5Obit0+aSWDwkANsne/
         0FqcVAD1J343oDazgNUHv4svlDDGUmSCfxMLWLCBtM7Pn0KqESuGibgiKCk1fA4BsTQ/
         J5fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706194215; x=1706799015;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7RbS7SdUaAw1K/g37Ed+dGAKWi2x8GPreQeT5KyvnlQ=;
        b=cqJbJ7aBpw58GKtZN1U9r0Um8Wc9Z4G3SpInLZdrQ7gGH1VIaELE7vWjbiiPR9VluA
         S367bSjEGHCpoQmaX/b8MYJPdL+MEOUrJOhVDkQ4BPOJ3APgtqsTLQll84VovOPlH9os
         Nf18DDWgW5k9aiQt7MOLEi+tnX5WUadc9vovr9F6e80uGrVgX9JJ9CAuXfjHXzP1SJ5J
         qoYAgoK3BgO4EBVq2yRCIgXpCgDJI3ApLzdDc8c/zlNlyMpqWnoQnuccAcyG6DqdiNm8
         Ug2xPTVEIC2zuQXiRZlQeiT8bDVLHqRddXgdUHozKYQYQh/ekA555ZskulLrXvukdkOt
         sM8w==
X-Gm-Message-State: AOJu0YyRIp/HJj9eZBTTuos/tuN0o8BoE6R01DPguaC0LzvRSdlLkqVj
	csGrlkr0RPN+WqO51ljyyFe6Kdfr9voyl2THvWgn+cHSWRLlGpJbsxmAlo+0Gp0=
X-Google-Smtp-Source: AGHT+IF3rsjwZxEnfNF6i1Zh7SUR5ZRZ73j3LOKjqeaRMZmPLsyBw6tsN1pEQ9sr6wHSVaZZSQO7zQ==
X-Received: by 2002:a05:600c:1c99:b0:40e:cc93:2f6b with SMTP id k25-20020a05600c1c9900b0040ecc932f6bmr604869wms.151.1706194214900;
        Thu, 25 Jan 2024 06:50:14 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c471100b0040d91fa270fsm2875875wmo.36.2024.01.25.06.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:50:14 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	andi.shyti@kernel.org,
	arnd@arndb.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 05/28] spi: dt-bindings: samsung: add samsung,spi-fifosize property
Date: Thu, 25 Jan 2024 14:49:43 +0000
Message-ID: <20240125145007.748295-6-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240125145007.748295-1-tudor.ambarus@linaro.org>
References: <20240125145007.748295-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Up to now the SPI alias was used as an index into an array defined in
the SPI driver to determine the SPI FIFO size. Drop the dependency on
the SPI alias and allow the SPI nodes to specify their SPI FIFO size.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 Documentation/devicetree/bindings/spi/samsung,spi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/samsung,spi.yaml b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
index 2f0a0835ecfb..4ad5b8fe57aa 100644
--- a/Documentation/devicetree/bindings/spi/samsung,spi.yaml
+++ b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
@@ -72,6 +72,11 @@ properties:
   reg:
     maxItems: 1
 
+  samsung,spi-fifosize:
+    description: The fifo size supported by the SPI instance.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [64, 256]
+
 required:
   - compatible
   - clocks
-- 
2.43.0.429.g432eaa2c6b-goog


