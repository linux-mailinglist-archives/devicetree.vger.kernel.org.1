Return-Path: <devicetree+bounces-255076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F085D1F5FE
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:19:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 49FFA307428F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95CDB396B6E;
	Wed, 14 Jan 2026 14:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QDRj4jUg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE96B37F8BB
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768400243; cv=none; b=L/eDtRn/3LtHbj1n5ho2tzIxCeIgwRPBhevPXmGiBc+n7yUUrX6qUc8sxldRfIZsaq5Z9P6Wf/yGCBTPiW95LKNtmQ7g8K3mfSnDDV5IUQB6M12xF04giMorWMD1cXWu64aT/ogMx8xZDj9Fk5ZhfeTr+JN3JEjW4vrQdZaF5cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768400243; c=relaxed/simple;
	bh=4R2WX+ZJeXKAug4HVmP5YDimNXbTtbG2dMJBRwWnt8o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ulTd+oTdplsLQD+Po+bZjDj1XQwwBF2kjKLajDkvZEZ8MfL1mEyKUURJ1B77k/AejykVIE86cZ7lLXs+R2bxTWgMqztPRt/j/EcU6gFPD3uyiZgmGhaTx/5atyJMBPo5W28OPhUsHjOtlWNfATbTtOXWZCDihunZv8XkXH6uDXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QDRj4jUg; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso80655245e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768400239; x=1769005039; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KYwhWQ9zZMnOKXaK1vSooK2Sr4WO9byJT6zo9omkZXo=;
        b=QDRj4jUgvMVjRvDUcaq3w2qIBMSbU3mMssLg+u3J9bnrzVBrrpWuge5W//ECWGgoPW
         G3fRuzXdDFenttMAvHUnp6aUVLwQo97GWTqaUdYcbLSB4Qd+Ku4MKvvPs8CJ30547Gxh
         xtPjOdIcyERGC7GHH7C9szZHtFgxVR8e1HKcr1hpEHIfE5nFM4URNjBC226sQjjuud/z
         jHRSdt4ty4tyjJbd3hoya101CFojKcL4GNFqPHo6i6HAU/v/5Od+Y57fJJquf9AhRGFi
         snrWQ3GBgvVzlGDbNCXCsbT3B0oLf2qWFwQt6UJx6/3PjwfSheWN5hEq0833aT4UpCt1
         0LHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768400239; x=1769005039;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KYwhWQ9zZMnOKXaK1vSooK2Sr4WO9byJT6zo9omkZXo=;
        b=B0+SyitQaJNmHDMEc/AYmK5fHz9CXencuKvqbjUEhkk6paoKn7D75d2mHbJQg6mK7B
         rDWxDULcgVcM8bzcV++gSf+1y3QGhuAwv6Js5uqpYmmS4Qd8L6D5GXgiHpidbA7y4Rrq
         o2gaQTattAffzAdRaEJhXWPgFGr9MQIJmleuNaO0ukF1eLJFi7u6IFwVmBXbuUuFOFFx
         7CAkKCB6WoECmHbsSH5Kh8sED1X9IEAQLMXxk4HQza1BnWwqbVS7qBVPqbHRfsScJST3
         R6CwnZMmA3nwbhvt1H31LcmfRf66P25YyrNHbdtd+qxoCb7RMNnmr6gVYAMyfTgxcuG2
         odyw==
X-Forwarded-Encrypted: i=1; AJvYcCWNcw5W6A7c4YtcyaTBESsexjPVngt8Xzu4xDTLBCSoEzC7kLw3D+SYW5Ly6kWKUPW71PJiZsXowVWe@vger.kernel.org
X-Gm-Message-State: AOJu0YxFEJp0WBcTVVmWT5IYA8HQ57ijS3NqbtsnfJpxzYsoP41aehWg
	nS6nplWe3MG5UriOWNf4cbXlvG7jKutuWAQUOW0CNcoG2xvu6vHZWJJmOttUW0mIJr0=
X-Gm-Gg: AY/fxX6Zl8jMBkJnEjLb7oMQxOHwYDuACMhTLssSYNZCz06LJT2MEfDc2vdY/Bhl06S
	YT0iqcV7DMu0TD6xDA9aeUUMJGP2JOf26S8W9wthg/9IwYPS33JqapMLO+Ri+il3Vs8OQvWqidI
	aXz+LbKPiYX9ERx7D48QlRTomFZ4zEKHU1LNToBk4H1cAZmVhISiqnUqGIU3Ds4O6nMOszAtl4E
	9CGOWQXf8+zMgv9xgE2qH+VuneZGZvqVZRUXxJ+cudC8cFjPHWKtSYy0xNdKCfkDqMFZwW0J3Az
	jv8eewnv0YWkdW89thAcA1Y1hiOfXbzJ24nAiTHwApUoVWZHrKyrz9CN3QUnYQG77h9tnSriJa/
	wGD7rSMFTR26xFxnMfJbH9PHmZ7v2QdZbZbNT4OWEisbLHnhoEMmHrpaapWF9bg1RFOL0R7m+D4
	XWvJxSReFLbnoZL1Ya1Wrk85MAflHgsUvBKG9I/jVJNLSMjyPVvwyoWJj8iF6UyXRj1w+jLw==
X-Received: by 2002:a05:600c:35c6:b0:47d:900e:c646 with SMTP id 5b1f17b1804b1-47ee32e9818mr42733775e9.8.1768400238988;
        Wed, 14 Jan 2026 06:17:18 -0800 (PST)
Received: from ta2.c.googlers.com (164.102.240.35.bc.googleusercontent.com. [35.240.102.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee57a2613sm29595445e9.6.2026.01.14.06.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 06:17:18 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 14 Jan 2026 14:16:36 +0000
Subject: [PATCH 8/8] arm64: defconfig: enable Exynos ACPM thermal support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-acpm-tmu-v1-8-cfe56d93e90f@linaro.org>
References: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
In-Reply-To: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: willmcvicker@google.com, jyescas@google.com, shin.son@samsung.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-hardening@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768400224; l=969;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=4R2WX+ZJeXKAug4HVmP5YDimNXbTtbG2dMJBRwWnt8o=;
 b=VnsK9/fLTj9mjFXQo/4xOaDgDR3JfubzIq3NbGbuODD2OJ1c6XHTPf+LI9LbcMoZ3NCIW9wy/
 IJLw4Q7eeDiAhz67Bq9hsH5OJkql4RdLF5r4fJcduQpSKMK/g4HWwqv
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Enable the Exynos ACPM thermal driver (CONFIG_EXYNOS_ACPM_THERMAL)
to allow temperature monitoring and thermal management on Samsung
Exynos SoCs that use the Alive Clock and Power Manager (ACPM)
protocol.

This ensures that thermal zones are properly exposed and handled on
platforms such as the GS101.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 45288ec9eaf7365427d98195c48e2f8065a8bb1b..1bfe37857f51663c9d745cd575f107fef183008f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -752,6 +752,7 @@ CONFIG_BCM2711_THERMAL=m
 CONFIG_BCM2835_THERMAL=m
 CONFIG_BRCMSTB_THERMAL=m
 CONFIG_EXYNOS_THERMAL=y
+CONFIG_EXYNOS_ACPM_THERMAL=y
 CONFIG_TEGRA_SOCTHERM=m
 CONFIG_TEGRA_BPMP_THERMAL=m
 CONFIG_GENERIC_ADC_THERMAL=m

-- 
2.52.0.457.g6b5491de43-goog


