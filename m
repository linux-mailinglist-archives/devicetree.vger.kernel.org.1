Return-Path: <devicetree+bounces-165009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E68FFA83215
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:37:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED0BC7AD0D5
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:36:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FABE2144B1;
	Wed,  9 Apr 2025 20:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Se5rR4KD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6DB2116FB
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231056; cv=none; b=EuxdpE+MeEJ15g+dwtXVLgRe0zUEiBALfjkHOCF6jvcmE8Dl2/GNZ9RowAU7PsOELsDCp/9AI17FYAxZaQNxzM24620lpAQ4OXD9p2lMzSWnpgP0ie+dYzKB8rY5offHi8F3fcHFVy+GAX37WCt1TSNap9yZKecKOYq6egCPEnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231056; c=relaxed/simple;
	bh=3e9/UfR1mJvZZf9g38Aa3kwt2igeAl1jk0oAMPkKz/Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hHJfRTMf6izXiDz82KPcYMUtqXbqU1UP+C0I3MZ/sW6tUf887S4UerGEiV2mydyzyDBr3HNdVeqHxY4Ic8a2Olflbph6r9yoHGP7gKNwntdZ1rr/fTaa3Lm8EhQDCOL3Ojm1ncGOWwMtrWv23K74+lbYPVrvJwjr/wlP435fqp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Se5rR4KD; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac34257295dso22926666b.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231051; x=1744835851; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RLmgb19AbWrd/UJeKJUHWxq/eTD9hl5bKw4d7syAvGk=;
        b=Se5rR4KDuZ+RaRijeUzq96U19GGhw3U4QryetzbJxQrBmGlhP28oQgTEOkOkOGvt56
         7i9fvECyqyoDZ1DQDp7Dp6KWtky2tv7QruOhuzycCfvr2m5moBwu6KkB0ZC1oEixlitj
         AH8DZ5EOssP2uy9C2hD6hRibirf1RsB4D8LDyHE+W3bIk7wPyzTs/atdGwkmdwhdwC5N
         qKVgRLOjYJji8LuLu2jZkxBSf02/POEHeg43Hb19EmweSGKmLsS/2iMRwr6TJxkBneeR
         z19Z5dxHvcUvTJJIGE7X0p3o+V2aN5bBv85k5k9C+GJPLl5Td0FysZMbaI1pyCr+hpv5
         tpAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231051; x=1744835851;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RLmgb19AbWrd/UJeKJUHWxq/eTD9hl5bKw4d7syAvGk=;
        b=ZlK+6xBoJnkm6FMCHxVQmwRtn7he9NCnqzm7Sl5SZAhxGemPHF11lPXF8NPeNzobID
         TdFBSfrP7BLydry0l0jq3ofIf+vqEwKg8s5CQ4/A2YPVZ9G/i5r5K7ByNC+bZPPmuWlz
         tDru0nOmgGr1CPYMoMi7WKgy6QKJdc1+FLippFMSCJZMccZCDg74Ys6yljNA/wFDcrLm
         Ezmvo+2Ik1juvqb+WojDXEgXLrkHTbVoBwDgW9tm4yR62dkr4m6QYQ6Cw2j8xaF9W52M
         t+mgOhmDKR/5a0kHOiK8BxwE+fCKmkmpfBQTwekfBMK0U/1G2J3NehMQHOCIThpAvHar
         gTPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlIpQR/myQvvbRVBxkVRBryZ/J9lTCozqGXHzRXeroxEp2MHgisY5+YjCnpvz23N5UFs5ky2TOkR1F@vger.kernel.org
X-Gm-Message-State: AOJu0YwBCgVrEu5+JMuTRU/GWxCiq5zzHFlCMIsMGGNmGR7y/TsQLTjW
	4NXVHpiIFi0WEOUdfTdO8b9lX7O+w3OJBxmno4rrM8FxfYuKn+A6tdXlEPKLnNE=
X-Gm-Gg: ASbGncufaRxCgP2bWdZ0pxGUxCUMXY4S4phZSpmkPaxY8C59MkBeYl8erxClluzk7f4
	yx1z3MkbXJDwdjtbASK2akrWJI0hOx1oZyAs+fI27+g+MxA0tVRUrAvMQ7Uvhn60tU/sI8yqEYz
	ANCgtABNSRbOnEEI84k6nz5vCYVOAj+nbJTP0n26pWJtm+heaBuTSpwdkPPupe2zZ1eXpLAztDg
	kQgaMhV8to0//qysMaeMc9/OIZ5535oDdWLRdvRjP8pngK4GBWSQTT45NuS19DIbZbeTuOczAs/
	4dcoi6g0hfIr663prXiRQwbqzBPwDvLfC9CnUrBHov9qMGx03eFrkeN7Y4BtAJkh2zpAZUvjXns
	9DZvtqSGR+KDoqCuHJfALj2ZnRwyeVAx9ujeXlQ==
X-Google-Smtp-Source: AGHT+IH0zvKNuRDAGqLs83RwWCcDR6aym1X5YrwLki7lH6aKqe66Jq6ZWK7rMjqREavabKtC1MlIlw==
X-Received: by 2002:a17:907:3d87:b0:ac3:c59a:413e with SMTP id a640c23a62f3a-acabd4dc96dmr8505266b.55.1744231051490;
        Wed, 09 Apr 2025 13:37:31 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:31 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:25 +0100
Subject: [PATCH v4 04/32] mfd: sec-core: Drop non-existing forward
 declarations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-4-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
In-Reply-To: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

sec_irq_resume() was removed in commit 6445b84abf91 ("mfd: Add s2mps11
irq driver") and sec_irq_exit() in commit 3dc6f4aaafbe ("mfd: sec: Use
devm_mfd_add_devices and devm_regmap_add_irq_chip") while the
prototypes were left. They should be removed.

Do so.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 include/linux/mfd/samsung/core.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/linux/mfd/samsung/core.h b/include/linux/mfd/samsung/core.h
index f35314458fd22e43fa13034439406bea17a155c9..b7008b50392ab857751b89e0a05d2c27f6306906 100644
--- a/include/linux/mfd/samsung/core.h
+++ b/include/linux/mfd/samsung/core.h
@@ -72,8 +72,6 @@ struct sec_pmic_dev {
 };
 
 int sec_irq_init(struct sec_pmic_dev *sec_pmic);
-void sec_irq_exit(struct sec_pmic_dev *sec_pmic);
-int sec_irq_resume(struct sec_pmic_dev *sec_pmic);
 
 struct sec_platform_data {
 	struct sec_regulator_data	*regulators;

-- 
2.49.0.604.gff1f9ca942-goog


