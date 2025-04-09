Return-Path: <devicetree+bounces-165027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 77862A83250
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 552A01B62438
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA4ED22171E;
	Wed,  9 Apr 2025 20:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fgT8kvhz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FD521ADBC
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231072; cv=none; b=OsqPkocva2Wv8A/kqV+BhA4AyaBb3gGjatwGF6R9JeoCcsZOoFN05Gcm8JvQJfS8Vo3cjS68cd8FwFK/jS0Xtcgcub1BoN/8GiDQLj7KL/wqaJ+v0364QKRP9bfCWl6b9LByeJNCy9c7ryww0xMEthrOsnF6fR7Q1ZPoyY2C9Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231072; c=relaxed/simple;
	bh=qSv5/qRfekv1BXqCAyoLS9fhjEPlxat67lwDh+L/ZJw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sfaZUndCussoZW03T7zf2g96t02c1XQFsHqpz9ijDZUjWOn9uvvZaqifQxqer+NJmlUIquljpRp5CeiBKmJAgmxWYVB4XCGmOrqysCz5GLYEmeNd41BOnfr/qUs4tVPsuJpsQL5eYxz9Bd/DGrPtI3XS2y/RZEtEiKVhUVeeEkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fgT8kvhz; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5e5e8274a74so178514a12.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231062; x=1744835862; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yvl4l0Ok5PkRG0EWi21Y82ldA8DtM3z/BsTax0kidDk=;
        b=fgT8kvhztDK9j2B9NsFMoMoAPRlJ2/YjAyQuCPArIwJ2Nt87a9nP6Sgn+V/2kAIuts
         GWy/ZrxjXDgTeW6Qb0JZK0zvvwhbXpCV/vdZZSs1N6bFRIJoeVkGIy8SJ2uuQ7v4cBmv
         I4zXU6W4VJFK1mRaTPqXllhJ6zE+gFaRo62S7u7EeudWjinb8zfBnMJkaWqM/5SMFf6t
         sIJIQO6ihhYbT2yIOlCdnBJO7hfjcmG5skj9Vhn5LruF8yMMm9odJpb5po+5QWNRmeti
         rX5iwXDJegPHB6rYdcSCU74JzIKlb6eaMXJui5IVDwP61o2VrxOkF05vTTSrMF2VPu/V
         ofAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231062; x=1744835862;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yvl4l0Ok5PkRG0EWi21Y82ldA8DtM3z/BsTax0kidDk=;
        b=HvXYBxjYPBvl5O1vbPK6rqDApC4+EgUSS7o7WIrKU/iZdKf2YIALJPpXDQtP5QF9/m
         58bmlAjdT1dl6qX7nmW1w7fGQ+0BgnePjDicnKmT9GOc1O7vTT3TyfkkE3pm3NnbLP5p
         mzcDEPWf1XyBkhQ5UUTx7Lfa9wsKKKQm/5rbuqbbFGmWAxmRB35wZvfRcqtr0U0d8YbA
         zqFhL95nqXO4UP7+hMGsMIMlVzx7PnDLx8zZ0ZuURMjOo8aEd1ydIZMJQbxe2LtERRsK
         4hU3dRocG5F0QaSeK+9s3FrgJ5XZq4b0WkxetLmvTBUiRZp7y8Zm6KHZ6ye7HZIkoKfJ
         lofw==
X-Forwarded-Encrypted: i=1; AJvYcCWzfMhEMHXBn84ffJBfgWRdA0dDA7QAurGYxZbpgSQ17Kohvum+QQ/3OMGlSyerwjwVxXqeqmzPbPl3@vger.kernel.org
X-Gm-Message-State: AOJu0YzK/9cWXfvOZmWhTiHnxVT0/F2IKa7BllOeFQNaPfyeYBBaFgmY
	G36VssPOo2tcPeyplm3kOQFmRH8+RXjpmRcxUlRke+V1tu+G49VehDYGtrEvX+k=
X-Gm-Gg: ASbGncup7FAAUH+y6b2l0/FfthwdocQWZN1kJmeIvap4oBEO/p2Mqxlz1iJar/jSsSV
	MMaXSe3hx9nXe3Sl7TXuBmCqvYtu024qAUv0Ok+cljSsk5xCQtxGLya1Rkc6UUBzuoEAWwXS0i3
	Gqb4uhsh9pHypmE0gQ4/caEoCN6j7DIrZEKfF/0YhrRiRV1NO0k2pkkhBQYsOzs/mdmW3ABZaD1
	wrH7VQgehSxGgc1DQ6CfpOmMEMK1FhEYFay3cwaZM7scc25YfaOepQmdGzy+CSSF/kDbss2C0Qj
	8kmVyGNuT+OhLQfE8H520qJtIP5SrYR42sjhDxS/jrUtmdRMXps8XAupCmJQ4fEhGUKKquRC/Qn
	z3BeJ8/LZjsc0QQqv8JnrCrAkFI8=
X-Google-Smtp-Source: AGHT+IHbuLfVklw/YEV595LIDXkT6NJfGZ8tsFxVvFej7hgAnnMJK0l8IFDXzmywh/fHAbSmWr9RuQ==
X-Received: by 2002:a17:906:dc89:b0:aaf:103a:e6e3 with SMTP id a640c23a62f3a-acabd3c36a7mr7622566b.43.1744231062434;
        Wed, 09 Apr 2025 13:37:42 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:42 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:46 +0100
Subject: [PATCH v4 25/32] rtc: s5m: cache device type during probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-25-d66d5f39b6bf@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

platform_get_device_id() is called mulitple times during probe to
retrieve the device type. This makes the code harder to read than
necessary.

Just get the type once, which also trims the lengths of the lines
involved.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v4:
- cache the driver data, i.e. the enum type (Krzysztof)
---
 drivers/rtc/rtc-s5m.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index db5c9b641277213aa1371776c63e2eda3f223465..c7636738b797b8087a0ed6844df62d47427e33b8 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -637,6 +637,8 @@ static int s5m8767_rtc_init_reg(struct s5m_rtc_info *info)
 static int s5m_rtc_probe(struct platform_device *pdev)
 {
 	struct sec_pmic_dev *s5m87xx = dev_get_drvdata(pdev->dev.parent);
+	enum sec_device_type device_type =
+		platform_get_device_id(pdev)->driver_data;
 	struct s5m_rtc_info *info;
 	struct i2c_client *i2c;
 	const struct regmap_config *regmap_cfg;
@@ -646,7 +648,7 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 	if (!info)
 		return -ENOMEM;
 
-	switch (platform_get_device_id(pdev)->driver_data) {
+	switch (device_type) {
 	case S2MPS15X:
 		regmap_cfg = &s2mps14_rtc_regmap_config;
 		info->regs = &s2mps15_rtc_regs;
@@ -669,8 +671,8 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 		break;
 	default:
 		return dev_err_probe(&pdev->dev, -ENODEV,
-				     "Device type %lu is not supported by RTC driver\n",
-				     platform_get_device_id(pdev)->driver_data);
+				     "Device type %d is not supported by RTC driver\n",
+				     device_type);
 	}
 
 	i2c = devm_i2c_new_dummy_device(&pdev->dev, s5m87xx->i2c->adapter,
@@ -686,7 +688,7 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 
 	info->dev = &pdev->dev;
 	info->s5m87xx = s5m87xx;
-	info->device_type = platform_get_device_id(pdev)->driver_data;
+	info->device_type = device_type;
 
 	if (s5m87xx->irq_data) {
 		info->irq = regmap_irq_get_virq(s5m87xx->irq_data, alarm_irq);

-- 
2.49.0.604.gff1f9ca942-goog


