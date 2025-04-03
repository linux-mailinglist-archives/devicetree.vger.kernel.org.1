Return-Path: <devicetree+bounces-162858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 47345A79F53
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 11:03:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45E903B62A9
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 732B624EF83;
	Thu,  3 Apr 2025 08:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a0/vvPQJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 989F1243958
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670770; cv=none; b=t8k/rhXKkcbXJKTtQJEyncXoCiDQQ+gjW5rNnwvsPsGv7uAhe+i8ztqU12OBjmZp+zffJLa4/TxC89wzAw7KBS2Xb0dZJvXmcUIUW9s0M+tSrsCUk7ckCKT3hL8IIA9TB2bFya3Q43ryHXzVtRwKX9Q7YNOOmTd2wHlc7c0HOA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670770; c=relaxed/simple;
	bh=OstHPLtut+rInIwPbWUGG5F4uJhc1s8p9YL3Yn+eQfw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m0WDOMgipry7Hs6Yw4i7SMjwZvHeOvHqS9+3YrhDqIp7Vqmi2euyzjdpswLvDlcSCjBKG7KP5lkLdef6JyugEOqaTVUjzwjbF91z6OzKzQ/hUSCNqZ9fq74s73KuDP9ZfpUCswbnBWff0WpFmaPSbeFQfh1cSraUyKpPCMxNTlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a0/vvPQJ; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5e6ff035e9aso1322396a12.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670757; x=1744275557; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5zOrAobgqux207RdFFKdVSyI3bSrdsl4WaNtosICsko=;
        b=a0/vvPQJ3FYrLA2YsMerto3UUJnPQNJcOSWbV78Xf/+9Y8scEybfd9wx0+nCwPBjoT
         9/g7VDYzXVO9oOuheWQnlDIbcN/gyuvKFotrrLuYDNMTqHBxN4G/uMdq9/q/6qTA/191
         a/M61ijIigm/uAaspNgGatMc8MBxlgAnooBdaorUGW1MyYIO/s2diRzqEqhIL4zkp15w
         lPlxAocEKnkg3gRWneFoJLiKJLxH4MSsDNJJ8ygZwZzwHi/YCxLkJp8+dzFR4+iRh2JT
         Xy4DnknyNT/9pW8Uzfwn2akXdYNcWkNmA2LvEXFWAp4d7/jhXjk/K3UQCnU7eZBcHWFo
         BGsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670757; x=1744275557;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5zOrAobgqux207RdFFKdVSyI3bSrdsl4WaNtosICsko=;
        b=ndDzVVzXGxcTHx+knuosQA1tflAx6HUCG0lvcOfolyoYDin67Fyr4y3twGo8lEX9TH
         hsqyNJvrGhazqbyBes5Ze1glz+CRR9miOYALewKwIrYJjkrCupyfb2+0tdojnBUURJ/e
         z9QmNZbrnI/5E5omX+Dbs3goWLwc6HXyzffoarCPQaqNoRNK3RkMuGpKWxFu+Fo5NmZg
         B92JZ8yqGkWzOj5wfn7Krfnjt5fQmVZA90BRMkiHrZM5G1aQeWVnL0lanjB8DAFaaeNv
         S6yIzfpDU1CpmdO3IxU35kb4QpLZj08JGEO4pgy8kNghcrpG+PPQky+y+hQHcmY+Hrze
         fmGA==
X-Forwarded-Encrypted: i=1; AJvYcCWNlnLx1kaf/a+0TM6qT3KvFqYnKPyIcxkxEzCktPJ++rftb/2668B//eqoq6wZQ07/XoPWt5H+E6M5@vger.kernel.org
X-Gm-Message-State: AOJu0YwWoHnqeI1b0Cq9ALgbopgLGVPkCYYul3mnN50AtD7PDn71Db8X
	rrx3n91pHlfuOM0TzwHy3ThD+CvAfgeyR1x5uqGlBaJ6AgxZm7UHCtmbCY02ZfM=
X-Gm-Gg: ASbGncucwT9KZwvRzJWDiX9LbbiouWjDBLEMCcavJk6Ch8CqfBcm+E7a+IiW9WJUQXb
	3iI5CAseJu36yL6sH3ezcj8c8uE5ileGj2QapFuF2wlbNa8HRSQWI0QNLVZbmsw5HjP+pYjMQq4
	qFvTVut55XUFF2m1jnt3djoeck9ffZN76wcjH75+oNRUnOYdk8eBvQ9A8EL1gmS30HNVKUtpo0M
	OpTHXRaxzkMK1sW23vZy3eNu2Hn6sWmI5Yrl+XX4zdiQLsiv4eqJzb2CTVoAfOvlbq32pgOHUHE
	vCZZEv/g7Flp29FyzEWcjhMxObczG9Z7gXi3L4NmXJxxLXlbkMMPTFaoltWQlqww8ChuRzIY7nX
	jHuQi0ddzy31kd1tAU33QCMogH1N+
X-Google-Smtp-Source: AGHT+IHsXg/hWI5W6L2JAbs5tQ+hU9M5VZLzhEtJEwJ8sjShCEtp9J7Km89nFH/JtsSi3gQsvsWdtA==
X-Received: by 2002:a05:6402:5114:b0:5e5:bb58:d6bd with SMTP id 4fb4d7f45d1cf-5f09300645cmr1255191a12.10.1743670757293;
        Thu, 03 Apr 2025 01:59:17 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:16 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:59:20 +0100
Subject: [PATCH v3 28/32] rtc: s5m: fix a typo: peding -> pending
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-28-b542b3505e68@linaro.org>
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


