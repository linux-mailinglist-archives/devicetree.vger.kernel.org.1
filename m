Return-Path: <devicetree+bounces-258502-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HfDJNBGcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258502-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:48:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA5569325
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:48:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DEBE530036C6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEDFC47B403;
	Thu, 22 Jan 2026 15:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tO2LSVuG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6274744D68A
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769096639; cv=none; b=inzVqPWTVk4rvjeGXYwNRbbH9j1t4W3TIp0vZSDEQs2jhTuwQOH0EJN+x+W8x2v5V8Z2LvggdYvpU4wwpZTCCIZQDHr9YfoMJvZdadZcGnZnVGS4x/22/brvUJ/5Tqo8J5mPy37dis+76cWhfgBy+hkICYZqeH5CCwgtse0ZEb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769096639; c=relaxed/simple;
	bh=nXl8zH7iFzy229o62R7F4gj8miBQeEJTl9anBMuQRqI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f5LsX4B/eCmIqvQ5yByx4aChX66zwUT5XFAfMYQHpAA/RUkDf7Q1gf/V19XQwat6ygTR85/pe/VfSAAuqx3dJxVg/znk9arkVAxm9fHFS/vZEjX15ogEbSNwIXWzKS6ZoUujgS2FJGojeK5dyv882XoCXGJPNNBM0K5U2BfztRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tO2LSVuG; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-65819e75691so2005978a12.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769096625; x=1769701425; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tXknWTh3C9IVP1+uTVL0nex1jtU7FLYUPa9Q3sm6Lzo=;
        b=tO2LSVuGx5cP1FioAQVwAi0naXXshHkUE5pkByQqralZGQ/nhKQ9Pb3nEPMPB7qc3Y
         MOPAN8rDcaIh9bS7TxU9mm3YDfmZn6WzMP9xFQzutOBdf1xHmAicpbiSlUiaeZYrFmLd
         cdX/oFZW3Bl0oprKRuilltjCkuhd6H1qoAY9t3iRIYUC2X8nDO21OxNeWo843PyI3Ali
         sDg+fo4WYKlJInY7UUvHQN/QzmeiwWNO2KCiHJx4aBcBEGGZe6tJVG7xzOGLMX0YEif4
         GCfGwGyfGsY836+mdkIGvAmtHQXG6lqQOPBbc5hkx9p6AfwBSe8dEOE2gILP+/2ZOVDY
         Ih8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769096625; x=1769701425;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tXknWTh3C9IVP1+uTVL0nex1jtU7FLYUPa9Q3sm6Lzo=;
        b=HWUPMxAQdNwCtP3vZeD/u/7zaUcSrqGlznhVGHZ5GN+nWY5mixcgAE0pzTGxoOg3+m
         OoBZ3lx8zhTFNOkre8aPlfSNMK2r5KpE3G95xJ/FTSTgZSdo/nhFIiMUAORtkxs76coW
         gwC+AgvhztY5WBvaa93Znm3zj+KCD/fGnBuRzon03eKRRFvtmcuXffOcBuxwOI2zC4YM
         un09igzeC9I1r/E2C0VGS33IJgZ/u0wg/f1LxZrEit9k25dAE9nECyE37HtibndYQWxG
         gXOMtmihKRdL2rcV1vuy6LK4NKIl24F8E35cV6c9s9Sp47G9tmfqQcSgrnDedrJj6KWJ
         8omQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGfoqBkzB2lG/QRIPmxRp26sC8ZTHleCUnhwFJTrxxu3jRcxasZ9dbGClJOfOwc1kWIBE4yMBQMUc3@vger.kernel.org
X-Gm-Message-State: AOJu0YwtssTVuP8/D+sLHU/WBzctr06skeu0FBnhxKq1RiLigkS5WgIO
	POATbKVpvA45lGjP5yhKYIx0RyOJukWRHyYVqIr8rhYDKbYgSRY/q75C+cDOWtdSymY=
X-Gm-Gg: AZuq6aL3bUCCki/LiTb6j1hAVEkMOjZ8weM1UAp7aLAEpvUnlv3rBRKgEhRutiAnyXU
	tcAwPQMkLyXevIPdLMLoTk8HcPim0dIELmajUYpwdNtt+mC5uR6gxTwDOEhZzY6HjRamMy0ieJn
	ZYVqpTeLvR29+PCrlGSopoonzCU9seIPQ1DNGW7oWecuiswC5RIfnvjcGR9aJ5AsDUcD18p9iNY
	rFs2zkkcqP0QY0HdJLV+D49mkBmnAqsrT/bBzAPk0z8RgdbgKc1ctTtdjdFT7jYeJ1vuoTC0PG8
	gJl1LuwvsFI8AMCpXbbsDde9WSqFEWwOqsO8ujlgL2DXtvClhO2eKfnKzq3dbtjn8bc3Griq8B4
	TfwgedpR9XQvjzt5e+rd32MRm/7x4wQ10TkS5mLq3m2NWMszvMmAoZx3fqWVd0ZJijwyt/wGLCK
	LcKZBRcWv6eiilIpO5DtCXVTlVZeF+HmcbYGn2aCf97Kdfl7e3CgB/jjV4/D3jmEeLHgEu287or
	G2ZlkQqnZqysgXF
X-Received: by 2002:a17:907:724e:b0:b88:47b4:7626 with SMTP id a640c23a62f3a-b8847b48388mr122935766b.27.1769096625207;
        Thu, 22 Jan 2026 07:43:45 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c49f4sm16334363a12.31.2026.01.22.07.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:43:44 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 22 Jan 2026 15:43:40 +0000
Subject: [PATCH v7 13/20] regulator: s2mps11: place constants on right side
 of comparison tests
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260122-s2mpg1x-regulators-v7-13-3b1f9831fffd@linaro.org>
References: <20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org>
In-Reply-To: <20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258502-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,gmail.com,bgdev.pl];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: EBA5569325
X-Rspamd-Action: no action

For the lines being changed, checkpatch reports:

    WARNING: Comparisons should place the constant on the right side of the test

Update the code accordingly.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v3:
- new patch
---
 drivers/regulator/s2mps11.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 30586e9884bfb998ff07e3148813344b307506c0..8a36ab67b73e4151c7f67af0555a6465ee1e7a04 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -1221,32 +1221,32 @@ static int s2mps11_pmic_probe(struct platform_device *pdev)
 	case S2MPS11X:
 		rdev_num = ARRAY_SIZE(s2mps11_regulators);
 		regulators = s2mps11_regulators;
-		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mps11_regulators));
+		BUILD_BUG_ON(ARRAY_SIZE(s2mps11_regulators) > S2MPS_REGULATOR_MAX);
 		break;
 	case S2MPS13X:
 		rdev_num = ARRAY_SIZE(s2mps13_regulators);
 		regulators = s2mps13_regulators;
-		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mps13_regulators));
+		BUILD_BUG_ON(ARRAY_SIZE(s2mps13_regulators) > S2MPS_REGULATOR_MAX);
 		break;
 	case S2MPS14X:
 		rdev_num = ARRAY_SIZE(s2mps14_regulators);
 		regulators = s2mps14_regulators;
-		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mps14_regulators));
+		BUILD_BUG_ON(ARRAY_SIZE(s2mps14_regulators) > S2MPS_REGULATOR_MAX);
 		break;
 	case S2MPS15X:
 		rdev_num = ARRAY_SIZE(s2mps15_regulators);
 		regulators = s2mps15_regulators;
-		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mps15_regulators));
+		BUILD_BUG_ON(ARRAY_SIZE(s2mps15_regulators) > S2MPS_REGULATOR_MAX);
 		break;
 	case S2MPU02:
 		rdev_num = ARRAY_SIZE(s2mpu02_regulators);
 		regulators = s2mpu02_regulators;
-		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mpu02_regulators));
+		BUILD_BUG_ON(ARRAY_SIZE(s2mpu02_regulators) > S2MPS_REGULATOR_MAX);
 		break;
 	case S2MPU05:
 		rdev_num = ARRAY_SIZE(s2mpu05_regulators);
 		regulators = s2mpu05_regulators;
-		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mpu05_regulators));
+		BUILD_BUG_ON(ARRAY_SIZE(s2mpu05_regulators) > S2MPS_REGULATOR_MAX);
 		break;
 	default:
 		return dev_err_probe(&pdev->dev, -ENODEV,

-- 
2.52.0.457.g6b5491de43-goog


