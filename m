Return-Path: <devicetree+bounces-161599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2027EA74B0A
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 14:42:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4571177BD1
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:38:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6E3D2356CB;
	Fri, 28 Mar 2025 13:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aWEkT/bz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D1621B8F6
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 13:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743168669; cv=none; b=SQ3xJUbE9d5IjYjYgQHE91tJtGlHFe2o5EoE+aTsuC/qk3rJvo2rijYg8hEnswaJnG6cjeZVkfr9rHnERo90VsWTD/PwWklxTiKNMdnhTe4vLnxBIkHJ2NQAz48FTgtF19TcgK06bSkUa2QSS1qYxgAZcIoGcXt2Jwn51XEn9qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743168669; c=relaxed/simple;
	bh=y6yU6lYRyqEHU2RYOfcRxwcasP7T27SnGV4OR5isOHE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PGVHIktRuvp/CqJ62hZklIRqGt4aTMCmbylbcNtzejy6MuMW7LyZGuHN8Q3bnYbDofHLr4ZQSjj/+iWFcicEy1TgNZIMeB1ixvzxKVUSs7CtgfDbY1yJrtb2MDEU/3YOKou381pMX+bvdopHw7hWNCfckhny7wVVEIKtsmwrNFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aWEkT/bz; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e61d91a087so3544514a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 06:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743168660; x=1743773460; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pB7gFyupIzWsX2vSOEGK7q4UbjZdy1MRwKTSd+TQnVk=;
        b=aWEkT/bzhASSI4KOxwmBNBZe6evdgGI6ePH6Mdx65HYfca1Y9xJqAaMLpivF8wQ+G3
         Qcuw9+Xq+q6S0SPAZXUEQhue8Ke3AauxFUPbUT7GCXvyS849d3aGpp1XCJNcbBsCmZN7
         zzI1RCJ4KGRmteOfJcRj18JdYm/1lAy7aSHJ0SWqzddeJBfdDdUOvbzoxuh5eN1Zh9d8
         xGiOTFFBsu09dq6fGyjVTEGwlvlCUErY5yT8oweIZyf9Vo7bL0SRHCIF4C+gTzENZa1R
         rzVIbkm9u0xpUZCvhmc1HytmIr5bDxdrM2Je39vkMMyVZ1+xMc+qVMVmL6tBckKFAqET
         IINA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743168660; x=1743773460;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pB7gFyupIzWsX2vSOEGK7q4UbjZdy1MRwKTSd+TQnVk=;
        b=ZKPm9sm/HEvxCr64sIf0xguUvo3kCeNKzVxwpVANMqEdVgQaEm26nsJUYbtk6iHxRH
         83C8P4l964ksyUFJYJEsnqxIB30Z38pubZKKMwovIlUzbUuFaXcahH5Klf/7EIUeB1pc
         6BRGiOEG3Il2s4frFNurdH1qJE+z/cj7twPcSGqtAQSFqzt2os2Sw4FwKxQbJksZD70a
         Gus/j3CjFk7DzYjDMqlagmHQBmckBxGSN+iULz8JskvXn/Htul54ScFicUKQ5flsmYFx
         qzg8D9gxXZlKmxMMRy6gcHwL6z1+HDy3userARR5uAMtNdApL5zqUhmC1NkfDCQR59qf
         T2+A==
X-Forwarded-Encrypted: i=1; AJvYcCWUz0mqBnTtKfFQ1ap0szM98wC1BJC31C0qK9nND0/zuQM0h0XZkFm9d0MVmgXVbbuPUjBMHJ9sfsWw@vger.kernel.org
X-Gm-Message-State: AOJu0YzA1QiTiRIbD6Gi7Nx4AjRu1wki7BIX0TTpogYWrIss1JUFTvpk
	pzilWnHvzADRnOX+ItpK65t9X8HK1JJPRHP7nAHJorXyeVZXa791nGeF0IGR89Q=
X-Gm-Gg: ASbGncvev318uA809kJk2AnuV15N/CGfaXnCetIl1u2nzZUAkQHKB7s5Dt5JrlvOWDP
	Ms0n+cxb7VJCIEE/OQF+Z5YgjoPb05o73d9h9ko7uJZzuXQRiskp8oLWsokh82hDy5snrJqROpR
	AujcuJPKaZOn46Cpgn7WX+OduAS7/K2G/8qWhGz4chPKSOZzV7w3/tvWwagt+jMVp8daaXeQayU
	/01D3tBYsrcrLJH8Llc/T+qWivNef30ImMsPpepHnwa3AnQ65wAnn2HZyqaDhQ1HLo9IgWgBpyF
	QtYR6MqLMfcU6aM8SKE3hC3LCz6/42djfia7tB0YHNZ6qMLNHiPHo7wxDV1R8eIhGbG0gDyd9vm
	vb2Izqa4XJU/7sBEWkb6aWpxNS3Gc
X-Google-Smtp-Source: AGHT+IEfLeFVVKPzcq/g9M+Swoap13H4J7LtCPC0wmGIvXuvFF2fbhLbZmznj1q9fH3/uH0jyy0zcQ==
X-Received: by 2002:a05:6402:2753:b0:5dc:9589:9f64 with SMTP id 4fb4d7f45d1cf-5ed8e4a9609mr7684378a12.13.1743168659884;
        Fri, 28 Mar 2025 06:30:59 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17e01f7sm1355284a12.79.2025.03.28.06.30.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 06:30:59 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 13:28:58 +0000
Subject: [PATCH v2 12/32] mfd: sec: sort struct of_device_id entries and
 the device type switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-s2mpg10-v2-12-b54dee33fb6b@linaro.org>
References: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
In-Reply-To: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
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

Sort struct of_device_id entries and the device type switch in _probe()
alphabetically, which makes it easier to find the right place where to
insert new entries in the future.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-i2c.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/mfd/sec-i2c.c b/drivers/mfd/sec-i2c.c
index 8e3a365ff3e5533e27d94fa8a15dbfa639518a5f..966d116dd781ac6ab63453f641b2a68bba3945a9 100644
--- a/drivers/mfd/sec-i2c.c
+++ b/drivers/mfd/sec-i2c.c
@@ -154,12 +154,12 @@ static int sec_pmic_i2c_probe(struct i2c_client *client)
 	case S2MPS15X:
 		regmap = &s2mps15_regmap_config;
 		break;
-	case S5M8767X:
-		regmap = &s5m8767_regmap_config;
-		break;
 	case S2MPU02:
 		regmap = &s2mpu02_regmap_config;
 		break;
+	case S5M8767X:
+		regmap = &s5m8767_regmap_config;
+		break;
 	default:
 		regmap = &sec_regmap_config;
 		break;
@@ -184,11 +184,11 @@ static void sec_pmic_i2c_shutdown(struct i2c_client *i2c)
 
 static const struct of_device_id sec_pmic_i2c_of_match[] = {
 	{
-		.compatible = "samsung,s5m8767-pmic",
-		.data = (void *)S5M8767X,
-	}, {
 		.compatible = "samsung,s2dos05",
 		.data = (void *)S2DOS05,
+	}, {
+		.compatible = "samsung,s2mpa01-pmic",
+		.data = (void *)S2MPA01,
 	}, {
 		.compatible = "samsung,s2mps11-pmic",
 		.data = (void *)S2MPS11X,
@@ -201,15 +201,15 @@ static const struct of_device_id sec_pmic_i2c_of_match[] = {
 	}, {
 		.compatible = "samsung,s2mps15-pmic",
 		.data = (void *)S2MPS15X,
-	}, {
-		.compatible = "samsung,s2mpa01-pmic",
-		.data = (void *)S2MPA01,
 	}, {
 		.compatible = "samsung,s2mpu02-pmic",
 		.data = (void *)S2MPU02,
 	}, {
 		.compatible = "samsung,s2mpu05-pmic",
 		.data = (void *)S2MPU05,
+	}, {
+		.compatible = "samsung,s5m8767-pmic",
+		.data = (void *)S5M8767X,
 	},
 	{ },
 };

-- 
2.49.0.472.ge94155a9ec-goog


