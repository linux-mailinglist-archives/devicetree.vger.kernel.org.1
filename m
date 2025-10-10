Return-Path: <devicetree+bounces-225382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7087EBCCF93
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 14:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 694FF4FC200
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 12:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A27772F39A3;
	Fri, 10 Oct 2025 12:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XyX41Wqy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECCE32F1FEE
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760100412; cv=none; b=fWAC9ftPhPEmhYpmEtInwSSCoVeGkvGQlNeyiX36HOASjqPhMnCiMda18dRlAbaMiCBsgR71yAq75Yv+Tc5WLb58y4TZlJ4FHACE4MkOXnYCfEU+MW9sHRH0yNJJM6FAmYgkzGcSxFz1uJG5G/Of2m1lAGHOCTEV9Tgj1CHr8io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760100412; c=relaxed/simple;
	bh=g3mKjgBA5eOmM+lFx4cmUAPX+2oV/GnRecyAQho2Lnc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ETzlhnt5Qg+/Ax17Z/30Uq4g7wUn1gwq+E0JKnMgVbEviAjjpN5irFvF/bX/5LpcU4H52cJo8Yo7gC1pEwGW8FZbCDHiFPEYncw0uNzad2yzf2X+BMYwBcxfw2NAgDXrGJtUYDZapwkHwjYd+AYkFsg3XPq/KyZDZqdTgtH3n/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XyX41Wqy; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-46e430494ccso12088795e9.1
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 05:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760100408; x=1760705208; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pI91YBUn0ODEJ37uAPOBfrBDVY8tx0luGRG7kO6Mtbk=;
        b=XyX41WqyW6BugaY898VZBmSIZQl4cJakg7dvkTLYDBdufG9ltARL6bwvI4VkI3VwAP
         IAJK+8olzsfwJF61pLKJ88kL/mLFzsjxWxSSWvaYMCr/5qEZ/fqvuO7wzqnh+8SUc1q0
         vDKDbbL5ZeswYGt856bA6J66S/Qu5qEJnhbixUHvjnUXmE7gf/7j/muj5BI4qdE/F67Y
         8iXS5hH7/H2tcDya966bbQ230ilJmqq9+uoLJ7ydVhIC5SqStNJi5iboEkwlcGWQBUjB
         th18Qpm+Q4qKg/SLS26KSeM2fGGCoET0zlwS8SE2z6oQh48kkdun9UGzGDNr3mxbTqmw
         j/eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760100408; x=1760705208;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pI91YBUn0ODEJ37uAPOBfrBDVY8tx0luGRG7kO6Mtbk=;
        b=G6SERmHZwA9m3eL7nZWD1vTtbC1lu7VsTHi5OEUmXba8r9aV2nUPh2KDHUyo3vpWEL
         5hzpBG0RYK6ZIHLRQWAeISbtQ0sN1dK9B/Cm0HcgybIqUwH8ywPwN698lY9iBQur+F8E
         eArSlbZlUzDeYBy1OAjeJ2CTuXI/DaYKAXoGZpshUHGzV4SwuZEbmo1iYVBsZTNO9bEF
         l0dCD26D8mtYrGI7ZfzZ/FtSE0FtkallRGc8r9laOykxJXAd9A3Zh99s+UPYBhw8kEGi
         ymzOlGRgaenJT314bydHJAcP3ffHj7iynoYglRrtyOybjfl+dyCHtLyKd71mAGWPFKB7
         kWhw==
X-Forwarded-Encrypted: i=1; AJvYcCWzz5GNC/puBHz9zVHs7q7vP+sL00XAPW5wI3RrSSlevKWUIdbPXP3sjCO88gc1GfWxjipg/biTd5R9@vger.kernel.org
X-Gm-Message-State: AOJu0YyNKKkvwW50PWyNrYmNQ0mCYsv6fINHpeciq5DboRu9lRxwXqYr
	wYnvrSL7rHv18GiaGcwpoNQnBMfGVh4Ty60MEjnT/36esaJ/B5SIJbgHf7j2zmtW718=
X-Gm-Gg: ASbGnctodZiU58anDtx+j8+BN4Rolc3dzYU9Dc0iwPVS81VOU2Mr4EVCqktmMQjAkzk
	D/TQHdONwpwyAs1qaXj6sSALhR1EVSSiGJ8fcuqdd54kT9tFqGbjZwPXksb93DduLcaeblHHYlb
	9B5xJ97XnurTL9eFxp8uFpyynU6aNYTZ6oQZqMM/cwol65PLBu5VtlOyo8FDgdrAffKxUJyuCnL
	iPC9jS98XbiwvQ0jXVxwAfQIFofZ9+GbR3mNYnm53m6E73LQeGJMiWn+S1IR+wPQ/wkdAzsVc/w
	DGP3hh6g2TQVesK6vkp4kDrOhck8HyB1z+e3a1gzKzbAhndGnu34VPkP+XXuOQ9vrCkh9tUX7KA
	0inSnft2fjtcMHUucaqpCTqsnN16MbxycNgaM4zPi34GaO8bRJMzUm5oTDVwYUdTiyeCPsknnHT
	Jrc/c5ofVIVmzq4RT8zp3hNw==
X-Google-Smtp-Source: AGHT+IF4DKpiRzWSCX0rNDuTrRqKdF56LpWr4xVHOhNz6eYaEJ8Bb9XyBCJmGVJ2NHkQ9GmAaWccdA==
X-Received: by 2002:a05:600c:548d:b0:46e:49fd:5e30 with SMTP id 5b1f17b1804b1-46fa9a8f4e3mr83469915e9.6.1760100408062;
        Fri, 10 Oct 2025 05:46:48 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb484d056sm46376895e9.9.2025.10.10.05.46.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 05:46:47 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 10 Oct 2025 12:46:35 +0000
Subject: [PATCH v6 5/6] arm64: defconfig: enable Exynos ACPM clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251010-acpm-clk-v6-5-321ee8826fd4@linaro.org>
References: <20251010-acpm-clk-v6-0-321ee8826fd4@linaro.org>
In-Reply-To: <20251010-acpm-clk-v6-0-321ee8826fd4@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760100402; l=946;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=g3mKjgBA5eOmM+lFx4cmUAPX+2oV/GnRecyAQho2Lnc=;
 b=NTVzlJxWw7xyeoGeBBqzM/8gvY/1az1ZXvATM9Z29dX7t5LcuktT1BATpk+ooyP6VGq7mm4+T
 lssKF7XBzBZC5cew2mcDdiAvlteaBf9sTDx/nJY7jNJXG2Iu7gwaeJ9
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Enable the Exynos ACPM clocks driver. Samsung Exynos platforms
implement ACPM to provide support for clock configuration, PMIC
and temperature sensors.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org> # on gs101-oriole
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e3a2d37bd10423b028f59dc40d6e8ee1c610d6b8..646097e94efe7f1a18fb59d5b6dfc6268be91383 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1458,6 +1458,7 @@ CONFIG_CLK_GFM_LPASS_SM8250=m
 CONFIG_SM_VIDEOCC_8450=m
 CONFIG_CLK_RCAR_USB2_CLOCK_SEL=y
 CONFIG_CLK_RENESAS_VBATTB=m
+CONFIG_EXYNOS_ACPM_CLK=m
 CONFIG_CLK_SOPHGO_CV1800=y
 CONFIG_HWSPINLOCK=y
 CONFIG_HWSPINLOCK_OMAP=m

-- 
2.51.0.740.g6adb054d12-goog


