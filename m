Return-Path: <devicetree+bounces-175463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D78AB0F5D
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:42:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC29D9E07E7
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:41:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EF0928DB45;
	Fri,  9 May 2025 09:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="gnk6RZ/K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D587D28D8E1
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 09:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746783704; cv=none; b=RbXi/SFQfbRRyh9RjHdwQnSxeSAbrNETiLNCnWD0ezF1fnhvPtTfJXn7bjn/PbMSArNzXeO3PVPBH8qfFW6WH2OzKVEDd5a33Vj0Uy+k12Lm6Fzt4NwgFuUFJwaADl7Edaqve0mX+e0lmVCwjq+aBndh2CeDdOsTHlqS4mN2PIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746783704; c=relaxed/simple;
	bh=AhRbnxt00FmE/WhEN1u8zVz8q5gXEKLj1JYmMYck0AA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=T7XBD4mfi5Km27Hem9W2N3ZYy0QgPWMMMNd4K31+TFDyJ90ZcG7xsfcxPfAmWaMDPBAkBlAWZiszZWCSSoqfzyGfWbLvgzpXwEXyKUhjYXREZicr1BJ7JSDhrNC9GGEWc5+uPIQwYyWuu46FsrqwtKBrCxUUGtatasUF/QIid5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=gnk6RZ/K; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b07d607dc83so1492794a12.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 02:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1746783701; x=1747388501; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dTYlTOXj1U7VnsAmcUnx1eYdk5rL5ZGZ7LNT8Q6B11E=;
        b=gnk6RZ/KgoV7HPxvwotAKtrfohVED2CYX0BLPhyouCfXpb8ssaUAlQDC+EBsk1tMx9
         lpC1PLO9KsV3ivvqwjECKDhEeX4b3O9eSzpQCc/9gVwaWHzsaFZjBNWA+bKXPGzOhSnP
         2W5A1MJHmb5FfY0isBTbwsyljaZXyC0Rrq1E+P9PmvpZBgr4VCzicsD96EY6w6aiTcxt
         1Izos8yH5u5ubAdLtskPdkfuVduY88PTVihQc8XtRJlFLAyKDcus65p2JR3qVizNH+fH
         eAfUgY7ysmu6xuNNwqlLdJAYiYNhxeA1rl1q7pKydqwdTU9HYtdHBs7xh2CRSbTZDi2Z
         uflQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746783701; x=1747388501;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dTYlTOXj1U7VnsAmcUnx1eYdk5rL5ZGZ7LNT8Q6B11E=;
        b=c+TgV2Ip6aigCK8fx2j0JMBrZSjwHLRaJ9XQ7Kk+YpKGKbKZdp15wGel5bj6fqz7H1
         MdPpc0KjxF8xx5LNy396K3otRpgZy6g6Pw6857gcfQqnnNGsnnIQdicy4Y1biVLTs1g0
         QRdEnAL6FzUvJqboKoQC9/AmGUXyF5WF9JnfOJVg+ruQXnjQn9AEZJQfHj2JVBqSk2sY
         mRfka4Lb6dYqdiJ5lV23FAv8xXw1/ADxUDQyZpR3HXWPZl6k35eDGnMbtBN/+ysXL4gl
         OrvA3oVWKD1ed7mFQgNiMXKep4ysRnK4Gefo+sbS9lMH6PEAdpRg5V414f4UOUz0V4NG
         q/mg==
X-Forwarded-Encrypted: i=1; AJvYcCX9vOStgYHQ6hBA3tCIlvWWbOqgDR6jmjv1kSQntgmqrNylUgzBhF2BARPuuh/OhcLDqoSweaN1uXHM@vger.kernel.org
X-Gm-Message-State: AOJu0YwA6WlvzafUe+v71KIbLHSbtjm79IJxjw8lVV3jlJ/49L+AQNbf
	fUmwpKg1PHJyJALw6q6YVl5wXmGUvudKwYpiGHTtDWM9+74jJfh3buKQoW0mJug=
X-Gm-Gg: ASbGncuAtFKy+19A0o35Mw4DklznS2Ld+y9Y7EJHJ9dwTZpFpMmCORWfmG7UWYpjMPA
	0hneGbBV8hfV3L5JjjUSMe1pFLQfyDvmTQ39Tlp0V5WDqdNuXHmKWGujc3QypWJl+URYkzfL7Mh
	qf6EXpN01RyVvV3VSJy4Z6l0F0T0IG+9CmRFIsmhiLq858W3srx6CeChaAwU1KFJ8Ne4aOu8ZcI
	cC4RuP4ArhOLfVdmuGZTuET31KC5YINi0jgCkowZr7bkLviaEVKBoxO0z014ZpVnBbSHE6cyl+z
	HGAQVs+c4Tw4lQwXJO49bm7F3GdcpAv8Yr5IAMRCCsO5Y9tmulUB+uw06vEEEcMLT4rRvGG/FME
	XUw==
X-Google-Smtp-Source: AGHT+IH6CJp7geNRf/gfDN17FTLMQyKVaZTxIXnNcwyUwIxRi1b6xhJMl5CuSsuy0q5Q7sBCMcAAog==
X-Received: by 2002:a17:902:f644:b0:224:a74:28d2 with SMTP id d9443c01a7336-22fc8b76ab5mr41666335ad.26.1746783701043;
        Fri, 09 May 2025 02:41:41 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc8271c38sm13271035ad.119.2025.05.09.02.41.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 02:41:40 -0700 (PDT)
From: Nylon Chen <nylon.chen@sifive.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	devicetree@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	samuel.holland@sifive.com,
	Nylon Chen <nylon.chen@sifive.com>,
	Zong Li <zong.li@sifive.com>,
	Vincent Chen <vincent.chen@sifive.com>
Subject: [PATCH v14 2/5] pwm: sifive: change the PWM algorithm
Date: Fri,  9 May 2025 17:52:31 +0800
Message-Id: <20250509095234.643890-3-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509095234.643890-1-nylon.chen@sifive.com>
References: <20250509095234.643890-1-nylon.chen@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The `frac` variable represents the pulse inactive time, and the result
of this algorithm is the pulse active time. Therefore, we must reverse the result.

The reference is SiFive FU740-C000 Manual[0]

Link: https://sifive.cdn.prismic.io/sifive/1a82e600-1f93-4f41-b2d8-86ed8b16acba_fu740-c000-manual-v1p6.pdf [0]

Co-developed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Zong Li <zong.li@sifive.com>
Co-developed-by: Vincent Chen <vincent.chen@sifive.com>
Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
---
 drivers/pwm/pwm-sifive.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index d5b647e6be78..bb9146267bc5 100644
--- a/drivers/pwm/pwm-sifive.c
+++ b/drivers/pwm/pwm-sifive.c
@@ -110,9 +110,10 @@ static int pwm_sifive_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
 				struct pwm_state *state)
 {
 	struct pwm_sifive_ddata *ddata = pwm_sifive_chip_to_ddata(chip);
-	u32 duty, val;
+	u32 duty, val, inactive;
 
-	duty = readl(ddata->regs + PWM_SIFIVE_PWMCMP(pwm->hwpwm));
+	inactive = readl(ddata->regs + PWM_SIFIVE_PWMCMP(pwm->hwpwm));
+	duty = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - inactive;
 
 	state->enabled = duty > 0;
 
@@ -123,7 +124,7 @@ static int pwm_sifive_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
 	state->period = ddata->real_period;
 	state->duty_cycle =
 		(u64)duty * ddata->real_period >> PWM_SIFIVE_CMPWIDTH;
-	state->polarity = PWM_POLARITY_INVERSED;
+	state->polarity = PWM_POLARITY_NORMAL;
 
 	return 0;
 }
@@ -137,9 +138,9 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	unsigned long long num;
 	bool enabled;
 	int ret = 0;
-	u32 frac;
+	u32 frac, inactive;
 
-	if (state->polarity != PWM_POLARITY_INVERSED)
+	if (state->polarity != PWM_POLARITY_NORMAL)
 		return -EINVAL;
 
 	cur_state = pwm->state;
@@ -157,8 +158,9 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	 */
 	num = (u64)duty_cycle * (1U << PWM_SIFIVE_CMPWIDTH);
 	frac = DIV64_U64_ROUND_CLOSEST(num, state->period);
-	/* The hardware cannot generate a 100% duty cycle */
+	/* The hardware cannot generate a 0% duty cycle */
 	frac = min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);
+	inactive = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - frac;
 
 	mutex_lock(&ddata->lock);
 	if (state->period != ddata->approx_period) {
@@ -190,7 +192,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 		}
 	}
 
-	writel(frac, ddata->regs + PWM_SIFIVE_PWMCMP(pwm->hwpwm));
+	writel(inactive, ddata->regs + PWM_SIFIVE_PWMCMP(pwm->hwpwm));
 
 	if (!state->enabled)
 		clk_disable(ddata->clk);
-- 
2.34.1


