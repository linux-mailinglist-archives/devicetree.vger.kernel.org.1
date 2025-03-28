Return-Path: <devicetree+bounces-161619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD91A74B72
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 14:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDE093A3020
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:40:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02DED23A98F;
	Fri, 28 Mar 2025 13:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i4SRp9az"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770E8236A6A
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 13:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743168685; cv=none; b=dWv8kTILtM9w+KE7GimdAkbZ/MIYZyaN4+dlqUIR+99XgHFbB9IIbcs5ZILZ3Tbvc1L4xp6N09jITkXQWn10ws1cDxOhc7Wdi4XcgS51fBtBjA0x7pn929+tZLauf4ok8eEukg/TqkABg5Hncp5QqmiM7D1IDpJBgvs4OaAwgu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743168685; c=relaxed/simple;
	bh=OstHPLtut+rInIwPbWUGG5F4uJhc1s8p9YL3Yn+eQfw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F4Qv5welejLxCgAsWlLNR5cKC5uiGYzV0Rq2x63+pUMmMF2Jzb6gbwHnRYkw8IJEEEoSy8MCTaH2x3jgmLZq/ws0GgjHAAxPFkORx934vWqeYIcfJybeHER2JUH8d2RwY+KUfMulxDKA4a+M509rFvhvwdUvmW7iBlHabUkIvYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i4SRp9az; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e6ff035e9aso3940702a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 06:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743168669; x=1743773469; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5zOrAobgqux207RdFFKdVSyI3bSrdsl4WaNtosICsko=;
        b=i4SRp9azeCw6ildaDM+Jt1ptlEfcVSNAp2jBSKX+I1dZarZ08fJs3bxXIKf0hOgbWh
         ImmY3aB2kP0NihUk7KJdIVezaSIchjQKw9cWDpSuuwu8rCQmd3F3BfWSqKJXalorYhn+
         6WeWWXwAlhG7hYh/I2QQoioykshyYGWsfqO0Q4HxJTUuYow+pAh6xz62s9VR5oCZcFQy
         wJmAipyT4KmD8/rMys7Nx12AfQcOcpkzOtPaWwKPmhIx6ULE8OP0RBCRYMtMD7MgMlLB
         AYw/5IB+1oGEreWhGr4KV+WB6DG2GThA7wBLwI0Khscwqjp3SS0M//P161dMvQs/rlHA
         aj0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743168669; x=1743773469;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5zOrAobgqux207RdFFKdVSyI3bSrdsl4WaNtosICsko=;
        b=fTbsJZeNomG3DkKRNllDeXqNh+aagpNh3khnKFOMMscvrGUuKFAymnwMVFrIxUYSqU
         r9jx4wfqsvP0gu34zxQjmEJz1cZmzeU5U5nO69DoIXA47BQxPDuVfJgMW/7AnuxmxVJM
         OshKzkn9FrEwt99Ur9EK8WUY8rgckq7lqgUBP+zay1NcjP7Sp5zAevdGhKsLYOv65Js9
         uA/UUnuB9B74uRqJh3LxxcLCtgh2HXr3CzzWWhXa/JFmm4/cqysJ6YRxoQeOIiyKL838
         fnU54vjVb4HcQ2OtaLd5rXOR5vpxm0lO65/y/hH0xzzvFXWtJuD+vmm6pzfE2O9Pdia4
         AzTw==
X-Forwarded-Encrypted: i=1; AJvYcCUyFOdvnkZrmzqMJYnFz+7KuIrTOmD9zNs6VFyUTb57mRU8BZpcXdPiDCafSFn4sM2zxDaj+c5v66WO@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw8CXD4WGp7OFUi4Hr5DgOJF2gphE38OEWg58AliUaox30lWE8
	dYvK9RJqaE0o/N46+P9HOATsF9/UzsPvACTr/X6Rp2I5YmfXy9CJhtJK/aWAPtE=
X-Gm-Gg: ASbGnctsDWTmsVA1hSemDKi5Ep1Frk5156R7Px0v8gnNt5nff4nLl9sa2e2BZurS9yC
	1Bm2kdFMB8Yo3QFkIbzZxYSuFHW1byS/YhLUv7+kWSaYihc2MdW2zvS8V024k776CATH9A19OqM
	fdexjdv1o8Kl4NcskJ/SwLzZVzDhO+w5i8EpjwyDTc68H+atIMRUNFi8LGyRg/m67K1jcs6klVU
	H9bms/8KylDH3GBqZXjueJYpRGDOKXzllyZLcHqeTGCdOtp3y3APukk/ZX2Or2f3yBGMV5RFT37
	/+k6kQlqU1OX3/GkjeRWSFbX110O57I9gXHIXyV81wlTaMvQpKvzFWHw49nWg1cARqMVmVOXayf
	m/6fRWlKqU8LDzsHLhHnTTosZMMxq
X-Google-Smtp-Source: AGHT+IGPOuJOhetnhPLDwYjmYCFkw94wWYnGaOGbWSLs66EXrE/s58NfpYkGGvWXaz4pE2WTKd2LXg==
X-Received: by 2002:a05:6402:40cc:b0:5ec:c7e4:b6ee with SMTP id 4fb4d7f45d1cf-5ed8ed2ff84mr7735639a12.27.1743168669063;
        Fri, 28 Mar 2025 06:31:09 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17e01f7sm1355284a12.79.2025.03.28.06.31.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 06:31:08 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 13:29:14 +0000
Subject: [PATCH v2 28/32] rtc: s5m: fix a typo: peding -> pending
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-s2mpg10-v2-28-b54dee33fb6b@linaro.org>
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

Fix this minor typo, and adjust the a related incorrect alignment to
avoid a checkpatch error.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index 0d8783577bab4f4ebe61050dbd68387d970773bd..7b00e65bdd9c25b3426f92355f8ea36e66c3939f 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -243,8 +243,8 @@ static int s5m8767_wait_for_udr_update(struct s5m_rtc_info *info)
 	return ret;
 }
 
-static int s5m_check_peding_alarm_interrupt(struct s5m_rtc_info *info,
-		struct rtc_wkalrm *alarm)
+static int s5m_check_pending_alarm_interrupt(struct s5m_rtc_info *info,
+					     struct rtc_wkalrm *alarm)
 {
 	int ret;
 	unsigned int val;
@@ -451,7 +451,7 @@ static int s5m_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
 
 	dev_dbg(dev, "%s: %ptR(%d)\n", __func__, &alrm->time, alrm->time.tm_wday);
 
-	return s5m_check_peding_alarm_interrupt(info, alrm);
+	return s5m_check_pending_alarm_interrupt(info, alrm);
 }
 
 static int s5m_rtc_stop_alarm(struct s5m_rtc_info *info)

-- 
2.49.0.472.ge94155a9ec-goog


