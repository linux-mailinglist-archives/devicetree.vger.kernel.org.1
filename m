Return-Path: <devicetree+bounces-165032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAC8A8328F
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:40:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74BF446453B
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1520A2192EE;
	Wed,  9 Apr 2025 20:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dis10PpJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98D0218EBE
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231075; cv=none; b=M7irhoGhDMmmrJdMCsDVtPLBWVWT3k25O6LX5mM/t+/sd11lOvnLKSe8l2OIqIggONk2erUGv6HWiizdC0XqzxR+cnNWQOjzqkcoRzDGehADt6uxOhtWekHBa+DcKVbCxYQCpBhFXwJgru8u+iR/Z7ijWDprJxrYVq8o0IWDEg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231075; c=relaxed/simple;
	bh=9E57e45BxMl50555VhXLsBvSd4mm5Cl4BbZdxjc19jQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M9itCoaxLCuC7T6X3FfGUB4lzFfYhU8mTt6Wzap66R7KSdlKWOPh7+fpi61jDGplOMa9E5FU2Ct1CB8ZFc9Mj1Af39KATdQdYJXsS9rxxo0g7FyYGoNP6hWaP+8tyZLlilPNe715bOqQSnQS+8TrAczStZ4iHMI4SnvBjhDKlTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dis10PpJ; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ac2dfdf3c38so19211466b.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231065; x=1744835865; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aro3/v5oHaDdhAQCIG1fg5IWgisO7nOka33BpVTMzSM=;
        b=dis10PpJJhuLLHNlk8a/obGOaMJdSRYCXYh2upQuJb1jcQzWrlAC664y+VpfySvmQr
         UhVSEfDuvh0XFFSrh5FmL5wPe8zbp4Lj5rp2B6yWHqVJR3PEx9V+R7heoaSkq+ORV52i
         0Dr2NtbM6ALIb9Id10LekqdVU/hAp93o1u13B4MDR40LjI/j9BvYyqTWBvdA3qF3Td2g
         i+HFFQKseSUf0O9Pm9Hqg53z0nIBE6PGQls62GsR5T5JM/17Jf9EVDUiInOpdlMdl4QB
         0F7JmlU376JsFX6T1tAV8xZEVqKqSVWz/u1t86zWJtZbFbSK5QqTYkucdOA7k9hZkpBS
         mcPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231065; x=1744835865;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aro3/v5oHaDdhAQCIG1fg5IWgisO7nOka33BpVTMzSM=;
        b=RSNKBOtvE/Z2xJ/jfWsKqcA3cqly2RpfSLaErFw/RKtPCvvkF/eqsOKERBzxZWasxk
         siJ30VvvyIeboNIriRCqNrHqWweKt0SG/kSIGLFQGRoVf5hhD/L0A9kBy3Cg9Smre/nd
         2LGY5Zlb/fIp66KgxXtQJY+6JfVgsKjkfnzGTtTgai4pp/9qkKWKrjTHJQOhA1QeG5kC
         IhNaNvWtbOW2kUXEIYhnoMzW0eGdY44kAOj0fzDk4SafDcJOi26i5fEcvJUT1HAdiflU
         flRbHsroNTLqHt60lR2lYYxMv80Zre5Gs8RRP4Oa6EmBuSr+vSLa3Cp4+5t4yH2sM0Mh
         yvdg==
X-Forwarded-Encrypted: i=1; AJvYcCWOLRcKsRGn/oemK6973tVnW2+oSotzKf71SLI95/kUV6e3PaPLp+whgO6nkF2SwsZOFC9bITmFsBx0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/uS7VmnGRZOfbDs7fur1TzYElEigkvbS3eUS8MExapuiS4Bwl
	AjfZWSH67egEtxX/HnflA2HyQPjHrPIOtJ+0ngpivNPeXpdTdNnaEoc68j0fbbg=
X-Gm-Gg: ASbGncsHBh8W3J0iAlDdSwf7qQtkQNrNOb9rByukPzWrKsOd7Q8Bxy7Kefuw63cDq0+
	M7WqGTlhMZZxCIxR7ZLpCEKQw6JOLZsZh/TJT0Wt2R/MTfdABoI7VbC1UY+PPv2/8OReUPzFkc5
	zZRGygwvb8vDOIPw3h5ek1P+23C6kMhGOSnRFscIyuY/A3v5dadb9GToTWapQT6GE8RmRowmimp
	fsU0/ot24GZtKgfuSoZ9TaNWE+dS4v+46jUe0qCdG0V8TvXwnUU16Hkyw20Ea2XScFxRLyHcBhL
	B/OHFzE17pWnr7cfc+3ev2zoJYXkCcYO6ZV5FMx1iuGycsfrMAta1ZHRJNuWdQK+g3iC90VwACJ
	1VSV6Kv1Jx+JDOelj8uFyKKvvEkU=
X-Google-Smtp-Source: AGHT+IEdkkXow6n79ZWPbZRhN5XFCjydXvQNxgGlSC/PrHUaOACC0tp9PiBCaVoIN+0xJ5YXvd/Wlg==
X-Received: by 2002:a17:907:3e0f:b0:ac7:391a:e159 with SMTP id a640c23a62f3a-acabd4d8449mr5988466b.60.1744231065076;
        Wed, 09 Apr 2025 13:37:45 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:44 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:51 +0100
Subject: [PATCH v4 30/32] rtc: s5m: replace regmap_update_bits with
 regmap_clear/set_bits
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-30-d66d5f39b6bf@linaro.org>
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

The regmap_clear_bits() and regmap_set_bits() helper macros state the
intention a bit more obviously.

Use those.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index f4caed953efdd23fd0132d74d5199dec9cdfd294..27115523b8c25794a9f3ac8e734bb1ed998e9518 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -338,8 +338,8 @@ static int s5m8767_rtc_set_alarm_reg(struct s5m_rtc_info *info)
 
 	/* On S2MPS13 the AUDR is not auto-cleared */
 	if (info->device_type == S2MPS13X)
-		regmap_update_bits(info->regmap, info->regs->udr_update,
-				   S2MPS13_RTC_AUDR_MASK, 0);
+		regmap_clear_bits(info->regmap, info->regs->udr_update,
+				  S2MPS13_RTC_AUDR_MASK);
 
 	return ret;
 }
@@ -351,10 +351,8 @@ static int s5m_rtc_read_time(struct device *dev, struct rtc_time *tm)
 	int ret;
 
 	if (info->regs->read_time_udr_mask) {
-		ret = regmap_update_bits(info->regmap,
-				info->regs->udr_update,
-				info->regs->read_time_udr_mask,
-				info->regs->read_time_udr_mask);
+		ret = regmap_set_bits(info->regmap, info->regs->udr_update,
+				      info->regs->read_time_udr_mask);
 		if (ret) {
 			dev_err(dev,
 				"Failed to prepare registers for time reading: %d\n",

-- 
2.49.0.604.gff1f9ca942-goog


