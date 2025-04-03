Return-Path: <devicetree+bounces-162859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B13F9A79F5F
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 11:03:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B235D188D136
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B59F24EF9E;
	Thu,  3 Apr 2025 08:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BjAy18u5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3EB424C68B
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670771; cv=none; b=lxMwqynJ2npqLwEuJ9vVNEf1mKtSi/HTfJZGGwDkTgWBw+vUw4/m54H1PUZRy393+BaFd26kB7JULXIIXvoH5CHSABq7xw41M1hEgK3DAOLNyEcmuLYrOzfVw5Cmuy2lE4fwRiqEAnTJOgX6739wg7LVaPB5528oPZOmOWwOYFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670771; c=relaxed/simple;
	bh=GESUUSr32C5v+JmyTkWMyaf4NO/174Vzhegyb1L9aRw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iGHnURa2i4E24KK/fJ4XFlGduJqnwuvkrqzt8S0oniZ/EYzDlM2es5egAyTAZbjp+YmI7jLzRliJXy6Uc0segLzgAnaZUziAe2B77Tt4pJrZC6ae17m3rf0+f0IEikf79kGTjDewf0dnSqQqbnv/2YQ/iQF7JHnENvclB0gfMl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BjAy18u5; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ac2bb7ca40bso116189066b.3
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670759; x=1744275559; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PSEpA1j4+zmEauzOiOoF/mVKhD6CkjV25eyM5OWecNk=;
        b=BjAy18u5MDej46oSBLQj9uVL1Sf6Rm4PoIgfKOjGinEeCUa9eopc4vUN5LTSw8eQ0O
         KTh/zspz9CGcOj4RXCBWPauFPj5z3+7caeFdcB3iMMHTiztBuqFll3G82TeCMsHP0uoO
         gRk/E6nTEEj/R+RXpo6u2RaPjb/3UGgr0PIugrhU4jbkxD1zmJ10jfQU76aLRnMq6liz
         wnRlZGQfZF47MrHsz/ttO99IjC19HSV+bATLwDazmoLahCcuXevWH71OM259jXhQTN+z
         UKI15hg7XN9Lf80ZWYNViOMEuCHA2wyOsXw5lVRCisF8y43b2auBJXwzz9Y3lNWV9Np2
         +wcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670759; x=1744275559;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PSEpA1j4+zmEauzOiOoF/mVKhD6CkjV25eyM5OWecNk=;
        b=dgVKMiqbjP/8pRo8aI5FeKoZTQwxHmj/l/Ttq473I6xresnLA3RmmONpfMGSe6vbPQ
         Q7Yw3icScLGrWXQw/awlF1yyeyC3eDE5WODDACsvmFC8WrmEFoa4ax7q4uW+YgNg8ZuV
         CPiCCrzPXhNjjNpxiXkpvf3RLAnEdJcsP0lBBTmI473h6uV3qAh8vCQWXD5UeXjQJmiW
         O+iv4XG5+pUYrwlegvbdBQUg3bL8BfAew/thUP5RMh/weu8IpP0OPhDn3wb7ahEwbUJ0
         Lu+M0sDlUxdcl47hDZ9lgPF0O4XwddAvGOVqKkSMmyia16z4MRhT9UPNpOcg003TFNUP
         3ALA==
X-Forwarded-Encrypted: i=1; AJvYcCVOtfnbusCkwwFYaL04bm1B19/U5FxfQXhUTjlbYZZAEK5BtJ1b+Ez0Ox9JkRgVtj7dWUwCX0RFPRhx@vger.kernel.org
X-Gm-Message-State: AOJu0YwO/OqpMkTIpGAhxLtZH3jhEfWKHDb6jZOEMO1/ZTBj6vvyBIcf
	xuzYGOhocVDNDDFNeaJECOMoAR8gyIumqs9UbJujh/sABOLYvhRVgohEsXLuEAE=
X-Gm-Gg: ASbGncuiztocR3jNfinpoQhO/+ak6kKx4eK+fcAdn0z5Vhj1WHR6ag98RNm/qixCAlI
	LShEbJRB3lOUUHD2R2JWGMAxTyeOMK0VQlRilIm8Hp6jLeQqVs+dZXFhwPbs2yDatSrwdHhcKNY
	NsoN7RAjSEygcsPhRt3TlbREKyOTaBPzEw1KZFbjPHGFb0qxM8ef/LqDV5bciBWQr8m/wp2LuVi
	/cynpV/Znd64bJwJQYPYaO/a49EGITEahirn/BKtyfwqFF9W1FqAcHnwIN8ceCBb+DREUlmHmrM
	NhNYrl7dXQgHta1nqUoDya2HgQ8Bz4ICFWqq60ZuvRUFOfsP3JbS6UNdNI4GwsaEUhsgdJ9p7yt
	XUy0BmdRCehY0PHdl6cKOSk5gkzo8
X-Google-Smtp-Source: AGHT+IH778midZRWwNsQwTegqpsc1cU2/xzEiQMSkFa1kd7UfUZDcEcX+jZvLbDF0curTDRXNPPiPQ==
X-Received: by 2002:a17:907:3d8f:b0:ac7:81bd:60e3 with SMTP id a640c23a62f3a-ac7c0935350mr136224366b.27.1743670758907;
        Thu, 03 Apr 2025 01:59:18 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:18 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:59:23 +0100
Subject: [PATCH v3 31/32] rtc: s5m: replace open-coded read/modify/write
 registers with regmap helpers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-31-b542b3505e68@linaro.org>
References: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
In-Reply-To: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
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

This makes the code easier to read, and avoids extra work in case the
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
2.49.0.472.ge94155a9ec-goog


