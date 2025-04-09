Return-Path: <devicetree+bounces-165029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C62EFA8327A
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:40:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA7367AF84D
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE3D4221F1E;
	Wed,  9 Apr 2025 20:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JwGfu0L0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97DC21B8E7
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231074; cv=none; b=e+cOEwTA/MIN39O1VzTnEWEs4pqXXGpwDeMCQazeV6r9fPbdiXbNFm+dORZverfkPjHqPfgL5J0626ppdnO48/Blb4Bz5Qfd7szZ2hL5hYkdn4mvj5cY345TNJjn7Mj+dJ1+HBph+s3UgKr04ThFnIj1Ou0M1OMYClb20mh+Meg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231074; c=relaxed/simple;
	bh=A9x4QRTRgUNIGXpjcMRyDI9R/QUKGRcSDlVPrGn61fc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V2dSgBDxDOw/eeenG+Ycf/W+fdNiuI9hTHTwwzn2/0EcpnhUWaPBgoseMpwpLaYkNoqfG+c264ihRIzLcl0Obbh+pIURMMmWBLjBBLyFBPikGSgrtVi1tGpAvaVYjUSO7WpQLMT+Mk7wr3uOs34ehMjMNbXCo1qh0muaNjRRYY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JwGfu0L0; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e5e63162a0so153690a12.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231061; x=1744835861; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jI8JhkQt5M0C3/UdNCND2uJaFFyLk5YIBZciiyMnzdw=;
        b=JwGfu0L0UKldZbOQi8KwIVefxSDJcHDq5yVAltDl/ZMfHd+GrPa91vT1T90V5Xp3Do
         BAupXHo8iXxj3pz66sJ2LplvCm+uav2U2exS4GHllma/n7UztLwZ0hgjStCGjuIjsGbF
         zDfcg/5QaeGNxqw7BRXWTeMTd5hO5UJRxBtfW9tdaSAZqd7a4wz1KgRM6l8xOECndpxf
         IJokSetxQg4eF1hSnf+m8SUX408meL6V9Vwf6bVFZo8ohId7xnofoDpjBadXhtQUzYBP
         TawfjNkuuTzEv74x6mMeScXwFtysbRCJPVZRP6vukIUJNrwz6ZVCWdVug9+dtfsGSRBW
         z3tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231061; x=1744835861;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jI8JhkQt5M0C3/UdNCND2uJaFFyLk5YIBZciiyMnzdw=;
        b=Lr/Ghs0g/zu0uKAilL8Y+/+TFnmLr59TijKmeYeih1YkPHpxAIQDevuYQhAw9Z7rHh
         EcibSisP3aRgzSHWMpejzLww6dIgDfn+WQoB/pXKyaGk8cHSlMlxXJyHPgu1rnfDLnW0
         B1uUSbu8yOGXokLvsok8KnoRK+Hd9kOl4gzFTWnkBBgDgcwZYYCYEmqWnMKQK+HlWmRZ
         r7rwSc1OR1K+kfkJ0PbKKZyHW7iaByRMkuXPk7l+M6dWgfeFClaPkwsyt7rvPQiYBABP
         21F0b8P2I05CB59qj7TtAqBjWgiAxi7NYcLckG9CiAI1/6Prj2rqulDLHlXSIk4FshzY
         k2JA==
X-Forwarded-Encrypted: i=1; AJvYcCV3+mtu4XRAebLvo9Gn5qd/0spf6f/lz2e3qwNWPglCOobwo26MjA8kHWjKHA220JctmMcofYGlbz2o@vger.kernel.org
X-Gm-Message-State: AOJu0YybZyCjTvfQzpVvEDyUpOuNd6IxGk0cW9QiWi/SD8bEcaAx3Fcs
	7qc3GWWPndqihHu0X8AQHnpFEULAd/+ZWihxcuNk+WeBT/HOg7xYmvuFMyVOmFw=
X-Gm-Gg: ASbGncsgqtMi2PQtbwTKfaNSZ8HZ8fCmjgplB2NsqzSqe9KKFU1n1zQCzYQ/iSDg++w
	l2NfyxVMXrFt8LVsto59nCK1MqiIYZHkuIBQQi6BMlrD82rWUiPcS7+cA0LQhmscrZ3D5O4q1ci
	mIeKReo8xsl3NaSe5hU9eL2ablIFclfphjs0Jbs7BhZQmelC9KOBb1fno3fKSZlic/Et18l8JhY
	2B95wWflQwXJ5FW5XPHsYsT+Y25gveEIHM2016aZY3vElKQ79HArvbmqqZsVEf60+lxJhz1slom
	9j4OELOYzBnqrRI74lqSn3cQlQT38jRSwmmcCvdsAl3Y15DVXb6ahoQiqQzy3VM1nxwqikInIlB
	1OUEf3rmMONCnnXb3AjLIjWCx/RA=
X-Google-Smtp-Source: AGHT+IEBr6kEi5N0kVfrU69c2eMzZPUUcJ4BYVystn83LFyvx9TUXz1zdc7j3nGfMkGEvg+haxQNUQ==
X-Received: by 2002:a17:906:478d:b0:ac7:e36e:545a with SMTP id a640c23a62f3a-acabd3ba014mr6923966b.37.1744231061352;
        Wed, 09 Apr 2025 13:37:41 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:41 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:44 +0100
Subject: [PATCH v4 23/32] mfd: sec: Add myself as module author
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-23-d66d5f39b6bf@linaro.org>
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

Add myself as module author, so people know whom to complain to about
after the recent updates.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v4:
- Lee:
  - don't sort module_author entries alphabetically
  - update commit message
---
 drivers/mfd/sec-common.c | 1 +
 drivers/mfd/sec-i2c.c    | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/mfd/sec-common.c b/drivers/mfd/sec-common.c
index 448300ab547c10d81f9f2b2798d54c8a03c714d8..42d55e70e34c8d7cd68cddaecc88017e259365b4 100644
--- a/drivers/mfd/sec-common.c
+++ b/drivers/mfd/sec-common.c
@@ -296,5 +296,6 @@ EXPORT_SYMBOL_GPL(sec_pmic_pm_ops);
 MODULE_AUTHOR("Chanwoo Choi <cw00.choi@samsung.com>");
 MODULE_AUTHOR("Krzysztof Kozlowski <krzk@kernel.org>");
 MODULE_AUTHOR("Sangbeom Kim <sbkim73@samsung.com>");
+MODULE_AUTHOR("André Draszik <andre.draszik@linaro.org>");
 MODULE_DESCRIPTION("Core driver for the Samsung S5M");
 MODULE_LICENSE("GPL");
diff --git a/drivers/mfd/sec-i2c.c b/drivers/mfd/sec-i2c.c
index 2ccb494c8c024361c78e92be71ce9c215757dd89..3132b849b4bc445cf18b2ef362092137a9b618c9 100644
--- a/drivers/mfd/sec-i2c.c
+++ b/drivers/mfd/sec-i2c.c
@@ -234,5 +234,6 @@ static struct i2c_driver sec_pmic_i2c_driver = {
 module_i2c_driver(sec_pmic_i2c_driver);
 
 MODULE_AUTHOR("Sangbeom Kim <sbkim73@samsung.com>");
+MODULE_AUTHOR("André Draszik <andre.draszik@linaro.org>");
 MODULE_DESCRIPTION("I2C driver for the Samsung S5M");
 MODULE_LICENSE("GPL");

-- 
2.49.0.604.gff1f9ca942-goog


