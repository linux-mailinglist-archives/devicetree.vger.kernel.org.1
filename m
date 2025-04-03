Return-Path: <devicetree+bounces-162856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 677BAA79F64
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 11:03:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA6BF17564D
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82BE124EAAD;
	Thu,  3 Apr 2025 08:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xnmhaCd9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53AE248864
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670767; cv=none; b=e+ZEP4XTkCLgW2CF0sDLMS/Xbae40jOSL6KTyAqEBB41JHXNhM8NZvNwzjVc9tGyjWNanagdDtLvA8w0cKXW9Q7YiBRauslsKH0AiA23ntoUfFUv5MEnzdGwJEPNb9TFtNt2Egsy8KjaNnPQWWRxe587KEcnpTMqtcbcHE85ggk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670767; c=relaxed/simple;
	bh=oM7nIChVy6AnX102peSIS6No2vZfRMNewLZjt/WfrE0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dAaNhZkvWSBQ43L1buUnjlUGfftBTIONF8b52UPPhw7cNwZR3c5Pt2PiuxOMtFfVjWg2jTXuHFK035I+uydcXBIuAgZ1UGbz004dYFp1hGq+8cKMVEcqK99286GoI3fQIK8q9IAQGah1mi7R39FLcaGd7czhAPbZuDlUi0KhdjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xnmhaCd9; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5e5bc066283so1078747a12.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670758; x=1744275558; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=31t2yEGURbHN+dYzF9A6q02DZ3VBH6YOfFo8ts0pTFs=;
        b=xnmhaCd9Zm5KVsU5ibOL1l6D3ybGyd/eToDjJmQT5PDvMGfSd++pD138Ee+e7c6AnE
         PrQO2B2imaSLq/6GihlyV6wQHVAHrH6pO7KtpEbpQ8ZYRP2wm6RtQ284Gc+91DR+hcvV
         CLhaEMocZTXuQeDi9dCAcBXJZHxlg+TRAfaotPV/Nj+Yh+3inN6eEgLoA98Sv/+Xzbal
         bVc0/DoClIL1mqzeOmFd0JFa2UjruYi1p7J6JvZ1G+27kCpVi89RAUkyeFumJtofu1FV
         +SQlFzBpWsj0q5C3n2rRHSNCquYbhdkDctbSt7fXnz5Trj3I0Q03JjTYTDSOjJpz6ktu
         qBaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670758; x=1744275558;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=31t2yEGURbHN+dYzF9A6q02DZ3VBH6YOfFo8ts0pTFs=;
        b=v85niiwIxrvVCZaHR2eIbJsM4dAOqjvrcs1rxJoTqTJVuDhTYD9MQLrdlMIM1h9VrB
         X4AiGIU1273YkM40dO1AP5qqbeWcPPepfX+Nq4g73i3T1Uca9Sok92wAp2wR84yeRwrT
         iiohMFg8LgJgerTUttsgyUTWnjdGFS/q+fs75zmS0LJnxGIyHQZZ6tyGXC1zcev2Aovr
         IPvrPySxNk/F1Gf+O5B/Msf92WN5eUoOaoTQJsA1B9De407zi1m5f3hemlAWzwIWvs9g
         zX/FoKChGjYhzWTIOnokoDfD0gwD/tS31jOuHAMo4IWYhlxgQnNtFpqOkh0/HqrazzbP
         a8Fg==
X-Forwarded-Encrypted: i=1; AJvYcCW1XcbDgM5fCdEai82ZATfAlK7GpqyHGFsGNv1TZyL/FEIKD3ONVoSELDanAqpiBmfjv7DX4pVoMI/t@vger.kernel.org
X-Gm-Message-State: AOJu0YxvV6eUeoiHf2Dm7YdAwMSnG9YUnxfoplA2hKZMvrTEBsvcaUo5
	5sWkYwf6S0iAZvop4xK9haM9CskKtW6VsSGgsjauc30l5RPMCVxUz8MI6Qqk+mY=
X-Gm-Gg: ASbGncuPUcRO+m3iOANMRotRdAVvtFAuryaybZZLuJ3a5lxdo0sejNJbOSQF0Aq2kXQ
	31MMouQvlqHwAmupLPb/+3znj0+SRJ7uIg0/dSPi29ptitHPmApZzF6BdgvHeVb4O/FRuIHvwU8
	umWT5TfyMKN0lzBwekGuB9tTYf4kNprRsZUhMCMWqVgtx2+/3nXIyqOiNn5Uybeeq6eR+BYrhMU
	eBEKxwDV2GxUxbdsx1FFTUHK0QIaaFrIMCOXqXVIgvPcKsa6DuVQhD2gwgOfdIaTQu+6Er9NJ5O
	xMxoXS8usVkMNwwEKbWObJCwU68x9NV2eRnHULrY4IHbwLPjfz90SNWMEVxuiFaueAO/HOYW4FX
	Y+kMyAuA/mTM7W7zkj5n54/9y4uZ+
X-Google-Smtp-Source: AGHT+IFEc5fuLq8ADhguEhOTmTcH3HLdnlMJdU+ak+pq0TlS6iw1Do8PDAk7ua5/zSdVwdumNPkJLg==
X-Received: by 2002:a05:6402:40c6:b0:5ec:f769:db07 with SMTP id 4fb4d7f45d1cf-5edfde2199fmr15498579a12.29.1743670758300;
        Thu, 03 Apr 2025 01:59:18 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:17 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:59:22 +0100
Subject: [PATCH v3 30/32] rtc: s5m: replace regmap_update_bits with
 regmap_clear/set_bits
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-30-b542b3505e68@linaro.org>
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

The regmap_clear_bits() and regmap_set_bits() helper macros state the
intention a bit more obviously.

Use those.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index e8e442c503064eb4e570af5bf7dcff6bfa7f4656..fb65a8e439d72d9070751c00f5826a403ac0b416 100644
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
2.49.0.472.ge94155a9ec-goog


