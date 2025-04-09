Return-Path: <devicetree+bounces-165036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D44A83260
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:39:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1AB01B62FC6
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 869FB21ABC1;
	Wed,  9 Apr 2025 20:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tKlxUnXO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750B4213E65
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231077; cv=none; b=lUy/o4R/eNKsL24ZK7dlR+jf+EJ+YQJB4v0lPyES3lbVS3BXQ1fOViJtP1va9Wgv8D/ZcVm/ZeUUR4/Te3wheAYPv4dWiIvk9TNJbQh64I+rY7L0wSSCy8EfQDcII9GybrRPqHd+R5zjbbY/Uj+apTYMQJevD5XV6lZYwqLtnjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231077; c=relaxed/simple;
	bh=J/CBfdIH1PuesSVHF4EK8RNmESPjuValNl5qYw0EebM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T0d96bEWJFmZhC/82omcVSBOcFp35dUY87O958YiI7Q9jWM9cYmse2BExcOL9AiW8yXh5Sqb2DxTx8pI35TvvPZxxt2kh6az5NZZP417aqo1wKC9LF2whSVFQU3fSrpFhxZVVINUxZBT1JGJvrBAxhpJf/R5eo6zCIyHfqjoitw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tKlxUnXO; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5ec9d24acfbso2151336a12.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231065; x=1744835865; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=96SpQhawR8x63CHV+WMoNeJ+9FHffMMf4Oxsm8b8rjw=;
        b=tKlxUnXOib60HRL6ncEWcFiCA6qG/yT9HpQcDGXprUrxjvcPwQ/RNf/jvNzDhivmsR
         UunIxFTJyMLJtg/hit2KUnL8lREe9HoKwd/c+z63+L67Q5H53ZAWMHkfdn90uj3Kz5z6
         3IFGasr/wNmYcVrKgLtZoDLTxy7oi9xFLoPcZg6n+eE6537cKIfgmbmXvK/OBEb3WNJ2
         ye+fGcGiw6A+ByElZzGnzIMncNFMl4cTKOw2UWavLEu40MtMHIp6zsGcSAyOdK+mRTS3
         H2dAc/ZODsLGYmAYilJ2S+K44bCujnmXY6SVrw+EMLLRKCfXO0O9Se1jv92vpcDv0jCj
         R5kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231065; x=1744835865;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=96SpQhawR8x63CHV+WMoNeJ+9FHffMMf4Oxsm8b8rjw=;
        b=BJY0htuj3EN3UUtoIJzVTTC/14Xa7e5dK0NDRrWfQws2DNEn8/cNAlPC6UYrgz/VWJ
         ZRNTTWtuH/qtz/Q1Q2cHwU9LsJ8RI6O2Wtzb+X3iTZXNeuu5d9dF6bhpLUR9Sv2lIXSk
         pZ6OPu68OuPj8xHmf8EXOg9yQrXedlyw54G8MkzERotOqeb4IrR0LKDoBmJU9A1er/Ep
         K5Z98junrBQGIL5ZVIGUcDrFGC4oepMPT9Rsy2zUDyB2QxZdd9OSHb/zis0qoBMfulLE
         vJKhHUol3tBDl0YdMzckNTK++HK11ZfO9g11OXmRrfdrlygLEWh83moc+25m+sV2IFRC
         SsJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUiQuqgK6C5fYXdUIK6JjIy4hVmjXPE1zVf4SO3pnmMJwLS1V0aaQ7LQ+CV6DMpiY3D7gu3RwiuuAPo@vger.kernel.org
X-Gm-Message-State: AOJu0YwOIi9KYNrjs3ETvuzJqpuUy+J48hYJq+HfPE6zEotAoG2ew7Jv
	XEFMQUnFGRIM06WaZes0/sS3DZ77iEq4oi/6ucInzOCYTEV8Poog+aU+y13+S3M=
X-Gm-Gg: ASbGnctPwQYsSQx+LPcFXZwz9Mdh9KPKx/Q+rU8AcIVGtc/lfZof8eavwm5oXKMh4vs
	vf12SdrL4glaP905XVSoAz076vEwnzbvl7pcG+dpuviVM9r4tdbAFIQWndPse3RuQ2VG8FBWVNi
	tp5nQZFaEnrG9qM7Q/TixhMI+vRtcNla/kwNtt/zGFMCluMTIFEQ+hrCPz9FgUdQwwp/96ygL8n
	kx9RG0SX3hXHbX0sIfQlfRzFsksuRjEW3S2PU9db0rABLANITJ+xbqZXndX6maMjKyKwdmfeJm7
	aF90Ac0CRY+SgfOxZu1I4nH1EbNe22tIUU6LziLTSZThV5XWLVD0TXcmSYZIoNvyf/7ns5IwYRD
	w2JidF5S10rHXWYpXzx4/CKSn3Mg=
X-Google-Smtp-Source: AGHT+IEzQMsFiFL/jdSvqMTouRITC/7JunlX1FkfQVGWlY9H5peZ1h9WvmD7A/zfy8HqRCQ5/PLUeg==
X-Received: by 2002:a17:907:7e86:b0:ac7:7d3e:7336 with SMTP id a640c23a62f3a-acabd3a3d95mr6823066b.22.1744231065588;
        Wed, 09 Apr 2025 13:37:45 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:45 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:52 +0100
Subject: [PATCH v4 31/32] rtc: s5m: replace open-coded read/modify/write
 registers with regmap helpers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-31-d66d5f39b6bf@linaro.org>
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
index 27115523b8c25794a9f3ac8e734bb1ed998e9518..a7220b4d0e8dd35786b060e2a4106e2a39fe743f 100644
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
2.49.0.604.gff1f9ca942-goog


