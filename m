Return-Path: <devicetree+bounces-258497-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEEsEfNJcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258497-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:01:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E000169686
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:01:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4C4E304B5AB
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 505D834D907;
	Thu, 22 Jan 2026 15:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W24v/O/6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD4944D694
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769096633; cv=none; b=Y5jYrQMg4zWkUxaVoM++hjhbT0oHJeugl6eJqTsumFxJg2h8XtD725SfI2l9XzWZ994gg0dh1MVmf2bug8k6LiWpsKPtmhC13+13OwFgvNJKglxZj37h7PswPRLlu5Oj1lsy/oIrCXY/BRWotzLeR1NRU3V3JvXZovBbv0kS6Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769096633; c=relaxed/simple;
	bh=Uql4wLrPIchDLzM+Qxxz/zEpZfEFgb0aDGiWtLWAr5Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lbOc5TG1I6k+dsbcRGJvzSOcLHLr1Cww2gReFV8O7390raFwlE8GJRGTxWPYUTCEBM7KsW298+7fyVXEhQObJ6HvTaOWohe9FRFX7wAZ7bSMR81FEmpr7hwokEARGbvbvoGaUNXizLNfVN+FyGa/OUA5l1iTZS6jfSQcLpGrpqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W24v/O/6; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-6580dbdb41eso1776586a12.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769096625; x=1769701425; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bweKrz1EAxpVR/K3C13UOoNEyjPdH8YKZynfcS9WhMU=;
        b=W24v/O/6peMIUrlUcf8CRKAPI1riHUG+qu6g6zRwcglS9UEOX5aOsSdP6Z5k974Xx3
         D11Z6LiUKmo4Mn6Cpj9/YLCi2VjhrNe8LAo4U7xVcN5eW08++PdvzXGGMWKT9hozqSqE
         S3oA9udxnFa9749495UFEJTW+J37AE1/Fw2IhPYBt3U0EShBVL1zpw6a0QDy/0vwcioI
         ObgnSAhaHTSBHqTHyQAE43uYyGdokUGm3PsZkleQCXHzTF1HDVoQFlkOAFmxZh5RqYan
         K7o9g3aaHNS93+yfu8jSYPhnPSy4qQcY2yZk+7rzpc8iexrBtivcL3TQJyl+cKJ5fezy
         iISA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769096625; x=1769701425;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bweKrz1EAxpVR/K3C13UOoNEyjPdH8YKZynfcS9WhMU=;
        b=SYOSpULdAARW/5MG8FOFxCRg/hsiV9i65tUZxPp4YpO4OlZPVodT0D5LA5kgHDTRlc
         OJAQwW7rZFV5WvMio5oZ9RTUt/tQdF/1Z4LYADnzfdSDL4qSCxQUZP60M6dPt7byICnW
         KhCvkeXIpVqeMXu2veJ9B4Z1vgeF7TYDmFP+tcctFbszV1ctIHIuGp7A48b1ybPhJMYg
         A1d1wifzIZp2dtpfjvy9j10tJdnLE8GYuxknTpv0y142CZeqcpD7ZJb+43VX8khzwscr
         NHwY45pMWzLUiqHq+i6uFrcDAp4n2Dc5UBxLI2MGQD5If3v0BIqc6C1NIju3HxgNWy2g
         fHzg==
X-Forwarded-Encrypted: i=1; AJvYcCWGTdJyZj3r9XbqclLMIumq5cJ3b+NWBqqA0VFUGqwtJOm6r/xUVXbMiyw2qNeEX4QRKWPkQr0Da9rk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy67cZMOj+g86hBfeZGSEnSR0Up1cjNRXn30IeWJaGJXQK+olHq
	AgM5G1dJ8fqaxyF1fQ0nVMkORTiTtKXpWzhI5Cig8Jj0jXa903DEcMTiuSUqtYHMktc=
X-Gm-Gg: AZuq6aJCOUTkrJ/AmjbHUnnV/q1u2DdaySkQ4RKtxJPI4Sz13zQtJ7E5DjY0o1ahT8g
	AM0WfzcTtboT4d34FXoY71b2Y2c8a5WTzRTL1rxFtPSZQEImpRaJXlCLhLnOQfzRMgG7zbJR5PK
	W5ZLta5ApQDGOu0A4tw/dPiSKyY7xNk12uPrpRSAis215WdpqHLVzRgTIbIFtRDzj/A4xCqTBGj
	3G4iB7Vzus4fQ/2BVH7kcOy//QkyMs97vU0Phl4qL3XVyHSn8syg+Q+GK1U1005wZijMRxooEVm
	me3D31pQDn2+gUPmb3SKfn8tEYbVOzX0tOIF9B93bklJ0Tq4yeE65RqQ99pxAZ3OpnNqRGHgZwW
	JWOrOnE9RGObtTgNtDgvRua1IfTJJZl7kvzzTW+Buxhxmw+wNd5ZKv064xNswWGGGzA0j5HQoDw
	KF70PQq5PFzrNPX7h/OKIsbEPTl5I7N2SIHr/0ZIBNmWYzWWIyVhQEJ7F/lksBWBPYJx941a417
	gsCYyIi9ao88moS
X-Received: by 2002:a05:6402:1468:b0:64d:ab6b:17cf with SMTP id 4fb4d7f45d1cf-658487d5f67mr15227a12.33.1769096624685;
        Thu, 22 Jan 2026 07:43:44 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c49f4sm16334363a12.31.2026.01.22.07.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:43:44 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 22 Jan 2026 15:43:39 +0000
Subject: [PATCH v7 12/20] regulator: s2mps11: use dev_err_probe() where
 appropriate
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260122-s2mpg1x-regulators-v7-12-3b1f9831fffd@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258497-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,gmail.com,bgdev.pl];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
X-Rspamd-Queue-Id: E000169686
X-Rspamd-Action: no action

dev_err_probe() exists to simplify code and harmonise error messages,
there's no reason not to use it here.

While at it, harmonise some error messages to add regulator name and ID
like in other messages in this driver, and update messages to be more
similar to other child-drivers of this PMIC (e.g. RTC).

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 1f51fbc6c7b6e158f9707c04d9f030b9eee5e842..30586e9884bfb998ff07e3148813344b307506c0 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -1249,9 +1249,9 @@ static int s2mps11_pmic_probe(struct platform_device *pdev)
 		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mpu05_regulators));
 		break;
 	default:
-		dev_err(&pdev->dev, "Invalid device type: %u\n",
-				    s2mps11->dev_type);
-		return -EINVAL;
+		return dev_err_probe(&pdev->dev, -ENODEV,
+				     "Unsupported device type %d\n",
+				     s2mps11->dev_type);
 	}
 
 	s2mps11->ext_control_gpiod = devm_kcalloc(&pdev->dev, rdev_num,
@@ -1290,21 +1290,20 @@ static int s2mps11_pmic_probe(struct platform_device *pdev)
 			devm_gpiod_unhinge(&pdev->dev, config.ena_gpiod);
 		regulator = devm_regulator_register(&pdev->dev,
 						&regulators[i], &config);
-		if (IS_ERR(regulator)) {
-			dev_err(&pdev->dev, "regulator init failed for %d\n",
-				i);
-			return PTR_ERR(regulator);
-		}
+		if (IS_ERR(regulator))
+			return dev_err_probe(&pdev->dev, PTR_ERR(regulator),
+					     "regulator init failed for %d/%s\n",
+					     regulators[i].id,
+					     regulators[i].name);
 
 		if (config.ena_gpiod) {
 			ret = s2mps14_pmic_enable_ext_control(s2mps11,
-					regulator);
-			if (ret < 0) {
-				dev_err(&pdev->dev,
-						"failed to enable GPIO control over %s: %d\n",
-						regulator->desc->name, ret);
-				return ret;
-			}
+							      regulator);
+			if (ret < 0)
+				return dev_err_probe(&pdev->dev, ret,
+						     "failed to enable GPIO control over %d/%s\n",
+						     regulator->desc->id,
+						     regulator->desc->name);
 		}
 	}
 

-- 
2.52.0.457.g6b5491de43-goog


