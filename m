Return-Path: <devicetree+bounces-159966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF31A6D21F
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:44:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0672D3AC3F6
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 146B81F37D3;
	Sun, 23 Mar 2025 22:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sg/BoZUo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31E81EE00E
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769593; cv=none; b=OH5uvjAEnqE/0IOE+NahvIXmGWfJpgq7bBeDwumhH25zbCaI+qaFuO83GgnnaPFjjlAQrA/6OgUOOXMATAsHr0eT5kI7W2lc80wgNiqdeu8DqQwRCll0kg9ESdDHyWTSq2TYsZZ1eN1+c+1j6vO7G/GPvyw1vCSWi4nrEZiaDwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769593; c=relaxed/simple;
	bh=H9PnjiGdaPmfWukTzjrtFxLU+96UeMWEkuYWR2ErP7k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EwXoXmDFr6imyUvLK9fju7Id2gRZ4ueB0/9zAfCYfp2bvE9jM9YIBmuxqlgH/ObVXsh0E82G2tqN/6SRELPGfWL88B7ZJHfX2Nc6KbVKGBSyTDb/jUslRhFFUC32NtU7NoTUn6uDyNieXaVuf1Gq+rfR6oMiXhgnyrkyR7j14v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sg/BoZUo; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e5cded3e2eso5303995a12.0
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769583; x=1743374383; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+9zuZxWNg3rbrJTairaqhANzxAqu72T6zzPhxq7UOmE=;
        b=sg/BoZUoO1vvhUz/iyXWR/MXNTeBGwofC6UNpxJQrUNNiw4KK7eE2KsY4y7RmEDrgc
         CJDWqICOsVStbXFUlcoIpWqaRqmNNCv3c12rcDsZ/VNGnK6VtAlsbYR3wNoU3zuaC46C
         fwz7FHf6mwR9L+LRktEj+XD8Vfg6qal8O9QomUJ2Tt536IPiTrdB1ffkNYE9bqYyKMlc
         tnWoNjR9gAQhM8yrQ9ooN+jhbYkfFc/NTsvVLHYDekiMBbo3Lw/btgm3ML3LS3PXwz/t
         kOBqxBnV5cVs/bHhMlwVsJk84DAfki4LbUB/W/IVthCI0pHuv19sX6FD39us8LONlxYz
         8GjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769583; x=1743374383;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+9zuZxWNg3rbrJTairaqhANzxAqu72T6zzPhxq7UOmE=;
        b=iUeZMZ0LOa5LrgtREMvQYaWjUtAnKIUw+9ZsBdVCBQSaml9EtB81HhYKPjr8DGwmy1
         SyAEHnVlwYPYS4W4NVJSPp7QDI3bUQjVs+nNOQ5qUln4rRW3AHzOEBB+tsVUeoqRrKwi
         dIw79EKfDQjzidzFjuXfP9m8tevBNTe97xgZdJBdEpKtjiTfXRyas722Y7iJ/pxQs7g7
         0KLPAEyyaWmd/qYRLYI0BIgMDYat/JVQOsCy/TZGRHGQviEkmgMRwkbv+vV941h0HLy6
         kLZ4cl2LcaNEikWeOi2J4uBBHA7u6RpoInS/Fpvr5Xk2kEr+y6zeCfT5Lo6Z5qoX8DMy
         0DHg==
X-Forwarded-Encrypted: i=1; AJvYcCVnahC5n5pSE7XJxoYS6n3QcHQwOBVbdcq2SUU+O5+aNfVvh66H57UdRqeNDMY/cCQbNfjnk1kvBGNm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9b/QvxJeEUn39mUm+Jkqn0SzILG92rYinEsokCcZOV/m6QNxV
	ROU8qa2QFGaBvvpr1aqihGCuT6PUT9V6oF7DCw+G0xwYDiAOmq10bmFLgXCdWmE=
X-Gm-Gg: ASbGncswFvVOq4LyLP3s88uFnW5HVqBVgAKpJsLWAXN6UZUcpHHhAM5Opi4MHdrrIh6
	e0nJYU1bwBN7oDwedtFNkWflhvnM/O0NSWqwSegXVAnLsbHDlgkhMIyNoMnzs1sOS8ySa7o75kd
	J4/gX90jBzLO8vCLSVzlYxrFVzTAoBpA7uahW3VLJk7FkmUUczyGFrQgsQDwaU4psmH5ZRayG72
	/Bn/ych3R7FICUmU6C+DGoAxjjDJIwG6wPQagSKo6kI7sBd1MDECrVdhkviGw61R9pNBowgK3Cm
	QIDot766pLVmchmSK2zMxwGUjWNVYUnktwLSwmRx35lBwOEDlf4Cs3a0yjy0h7gneNy6DqvYOch
	fNZ8MYn6X03TTAxJainua42oRYjwIQ2PipbLaAls=
X-Google-Smtp-Source: AGHT+IFs4xHKZtefwGlVOQ1hTfmO2hUQ+8e+EVgI4+xRTbfzM8/S+AZdGH6X4/sL+XMu2751zvkyBQ==
X-Received: by 2002:a17:907:7f0d:b0:ac3:3cfc:a59c with SMTP id a640c23a62f3a-ac3f20b9b10mr1154328366b.11.1742769583314;
        Sun, 23 Mar 2025 15:39:43 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:42 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:49 +0000
Subject: [PATCH 33/34] rtc: s5m: replace open-coded read/modify/write
 registers with regmap helpers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-33-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
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

Instead of the open-coded read/modify/write sequence, we can simply use
the regmap helpers regmap_set_bits() and regmap_update_bits()
respectively.

This makes the code easier to read, and avoids extra works in case the
underlying bus supports updating bits via
struct regmap_bus::reg_update_bits() directly (which is the case for
S2MPG10 on gs101 where this driver communicates via ACPM).

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c | 28 +++++++---------------------
 1 file changed, 7 insertions(+), 21 deletions(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index fb65a8e439d72d9070751c00f5826a403ac0b416..2ad01fb3bc72fe9259a8307584c9cf3a839bd492 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -279,17 +279,9 @@ static int s5m_check_pending_alarm_interrupt(struct s5m_rtc_info *info,
 static int s5m8767_rtc_set_time_reg(struct s5m_rtc_info *info)
 {
 	int ret;
-	unsigned int data;
-
-	ret = regmap_read(info->regmap, info->regs->udr_update, &data);
-	if (ret < 0) {
-		dev_err(info->dev, "failed to read update reg(%d)\n", ret);
-		return ret;
-	}
-
-	data |= info->regs->write_time_udr_mask;
 
-	ret = regmap_write(info->regmap, info->regs->udr_update, data);
+	ret = regmap_set_bits(info->regmap, info->regs->udr_update,
+			      info->regs->write_time_udr_mask);
 	if (ret < 0) {
 		dev_err(info->dev, "failed to write update reg(%d)\n", ret);
 		return ret;
@@ -303,19 +295,12 @@ static int s5m8767_rtc_set_time_reg(struct s5m_rtc_info *info)
 static int s5m8767_rtc_set_alarm_reg(struct s5m_rtc_info *info)
 {
 	int ret;
-	unsigned int data;
-
-	ret = regmap_read(info->regmap, info->regs->udr_update, &data);
-	if (ret < 0) {
-		dev_err(info->dev, "%s: fail to read update reg(%d)\n",
-			__func__, ret);
-		return ret;
-	}
+	unsigned int udr_mask;
 
-	data |= info->regs->write_alarm_udr_mask;
+	udr_mask = info->regs->write_alarm_udr_mask;
 	switch (info->device_type) {
 	case S5M8767X:
-		data &= ~S5M_RTC_TIME_EN_MASK;
+		udr_mask |= S5M_RTC_TIME_EN_MASK;
 		break;
 	case S2MPG10:
 	case S2MPS15X:
@@ -327,7 +312,8 @@ static int s5m8767_rtc_set_alarm_reg(struct s5m_rtc_info *info)
 		return -EINVAL;
 	}
 
-	ret = regmap_write(info->regmap, info->regs->udr_update, data);
+	ret = regmap_update_bits(info->regmap, info->regs->udr_update,
+				 udr_mask, info->regs->write_alarm_udr_mask);
 	if (ret < 0) {
 		dev_err(info->dev, "%s: fail to write update reg(%d)\n",
 			__func__, ret);

-- 
2.49.0.395.g12beb8f557-goog


