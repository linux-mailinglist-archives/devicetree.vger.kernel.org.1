Return-Path: <devicetree+bounces-161614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8CBA74B54
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 14:44:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1386C189995D
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28718238D21;
	Fri, 28 Mar 2025 13:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V2Z7n55V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95FE22356C0
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 13:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743168679; cv=none; b=hwaeaCy8F/SfZX4z7zVkQsUBb7ilz/RWA8DcIeWfsXapqEu2NFPTCtzbuKzsyFQDnzrbSi1AXM8sWj+ssHiMprWB5EuQEQxpxdAW+2ZTlEcJB4HUbRKKxUj1qOouHuXeowm6jHczi17uYtSiFTJWwjvtLE0Q/v338l9LyXZVGEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743168679; c=relaxed/simple;
	bh=ZQXUgJ+++iTVY6rSOqr6bNKwQtS/wOW8Ul9zOtzlYzw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BfwRxFMyhCIXwlxzmt4247Npjqo2m6l5hLn07Cn0HVaTyk5JZ3hvKD8cKmuEnZXE8UQgVV88vh9YeqaCXO251y9rsTYbNjDnHzBCKtV1Bo3yt7EYtxSADGyGnHSpjYYUHFSAjrHH04h5E/JEYpB35KMtqfTdvNAd5neFO/22cOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V2Z7n55V; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5ed43460d6bso3668550a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 06:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743168667; x=1743773467; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/FZ2sB+aGjDu2Ign5/fbJkQ1EFpiN/+kFXshKweSgHY=;
        b=V2Z7n55VPpjKfdYrymM/gN/wSeF1LASJbvSlEqY1KjF+eTL5aYOygWCE+USvhc7M14
         Zk1ryejVR9J83vMTq9GVEauzD7ClDZjpqsOPHey6zsiFAGTjNQ702f1l+wMcdgIRQPEY
         5bnTFsRf1cnbJa8T5JZhmKZoMvLbRH4OoPAk6rw4gRzhoL2nbUkOm690A4vxXAsODyTt
         HA+T762iMmCTNtAm2y+4etuuKnOEiDZhWdHs+iigBQfQCLMC1P7rvT/Ad0Trorn9rR7j
         wOFtwt4agWTiXbMt73xIm62yMUGw/Fn3TowscdygePpBAhQTH8IGxPDtB0R9xYN+KCPM
         ddTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743168667; x=1743773467;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/FZ2sB+aGjDu2Ign5/fbJkQ1EFpiN/+kFXshKweSgHY=;
        b=IVxmsQRnw5Qt2t4YBpu0QXNmqiB7PD6Hbex0YPZbuRA2tO3uXLbXgzntq2RTIhf1QZ
         AYurRqXMFexnWjCwXbZXZoEdkTcWUP17bavdkdyuuuvO50AnYIiWXEixrk3Z9JCwF61k
         nwAmHVuzAkj40qMZMnRdILWhnYWQDURbXXxphZQMqqngCglp7UyAuDRmlPlg9kpmP5+h
         qn/v2F4VdcZX8v4gbCn5kmzfkFRHsar4zhh6aOHauVas18sACrzs6lQofz0FATZJPso+
         k0bNQbo4YLxxxZAyIiIeEwtnV+faomHYpjJgfIGeyU4jEG7wE74OjfSvSftKsiPA7zfr
         ALHA==
X-Forwarded-Encrypted: i=1; AJvYcCUnCkhVGA/ygjBMxWbJSTx123GBlj/CGQ5Ov4sUBp9m9EHRdfZ9I1kQB+8eaepMCX8OXXK7hvgHSp4+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1WDM1xuYjY2iejWxAHwMRr/+x0e/uXZ+AiMpDz89ndeeorqPV
	8HYJYwwlekcQUo+P80RP+6tcoLThgViJbR4vNIOI2pDABrZNF1rt5iWJq8EY3nA=
X-Gm-Gg: ASbGncuOubBqrpSHVtztyvZRXInN+Dxg8ZdUmQs8o5+8A5AvVBTJk3Av09jJXuAJVHF
	u34tvIPfU78Qt4pRMEI11zHFeJwydEwdXRaz35+IMJtABYI0+JDMoiYeNjr6OINYrmYmppeuWym
	ZklCiLN4oFUh2ume/rPBYCHQ5VTu91CIQ16z1PD6FZJlcHQ4BOA8jrRwzJSfz/OnYq/mUr5EoXv
	CEEM5wDPV1+KPb/PimuK6SP3Dk60O3mlyaVUYo0jeRS0LzsgO6QpDnIBvfXLEXxU4PN53KRUFOs
	TjbfM2JaQLoiL/qDZT3yXFuCq2mkW8T7OMKLeCbb23T+v7B2v77nwJOF7PC/vVCd204jtCVZfXO
	RlG41LTYbxrWLSAtBuInFh0ZWtLxg
X-Google-Smtp-Source: AGHT+IGSqptnzxioWGgvH+TeC2OAU/4Feh5tQVATT2tVY9LlKpIN77ufnNqeM2yiIzKx/dF//iDlTw==
X-Received: by 2002:a05:6402:1d4a:b0:5e5:dea5:3eb2 with SMTP id 4fb4d7f45d1cf-5ed8e388e5emr8163387a12.11.1743168666968;
        Fri, 28 Mar 2025 06:31:06 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17e01f7sm1355284a12.79.2025.03.28.06.31.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 06:31:06 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 13:29:11 +0000
Subject: [PATCH v2 25/32] rtc: s5m: cache value of platform_get_device_id()
 during probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-s2mpg10-v2-25-b54dee33fb6b@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

platform_get_device_id() is called mulitple times during probe. This
makes the code harder to read than necessary.

Just get the ID once, which also trims the lengths of the lines
involved.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index db5c9b641277213aa1371776c63e2eda3f223465..53c76b0e4253a9ba225c3c723d35d9182d071607 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -637,6 +637,8 @@ static int s5m8767_rtc_init_reg(struct s5m_rtc_info *info)
 static int s5m_rtc_probe(struct platform_device *pdev)
 {
 	struct sec_pmic_dev *s5m87xx = dev_get_drvdata(pdev->dev.parent);
+	const struct platform_device_id	* const id =
+		platform_get_device_id(pdev);
 	struct s5m_rtc_info *info;
 	struct i2c_client *i2c;
 	const struct regmap_config *regmap_cfg;
@@ -646,7 +648,7 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 	if (!info)
 		return -ENOMEM;
 
-	switch (platform_get_device_id(pdev)->driver_data) {
+	switch (id->driver_data) {
 	case S2MPS15X:
 		regmap_cfg = &s2mps14_rtc_regmap_config;
 		info->regs = &s2mps15_rtc_regs;
@@ -670,7 +672,7 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 	default:
 		return dev_err_probe(&pdev->dev, -ENODEV,
 				     "Device type %lu is not supported by RTC driver\n",
-				     platform_get_device_id(pdev)->driver_data);
+				     id->driver_data);
 	}
 
 	i2c = devm_i2c_new_dummy_device(&pdev->dev, s5m87xx->i2c->adapter,
@@ -686,7 +688,7 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 
 	info->dev = &pdev->dev;
 	info->s5m87xx = s5m87xx;
-	info->device_type = platform_get_device_id(pdev)->driver_data;
+	info->device_type = id->driver_data;
 
 	if (s5m87xx->irq_data) {
 		info->irq = regmap_irq_get_virq(s5m87xx->irq_data, alarm_irq);

-- 
2.49.0.472.ge94155a9ec-goog


