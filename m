Return-Path: <devicetree+bounces-44637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2893C85F28F
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:13:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D4C11C233F8
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 08:13:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B813224C7;
	Thu, 22 Feb 2024 08:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="JOtT518B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8078321A0C
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 08:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708589590; cv=none; b=aC3ZD6JIZWgOsz4oQrqnGEDF+QfM+SjbeRZ55eBVd9XFSTKSCoC6WsSwNDmbcNMcRPTrNAqBTsVLKSLIH+K2JbCvzyDiZlZa8dOWQ60L2t6Fjv+b75+9mLp8OPFnq+z4gcIK07xZs9+/IJiUtgrPpWnNgY649nLcqzW4uvWIMtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708589590; c=relaxed/simple;
	bh=Z1dTn0Gkiacy9ygCtMQgZsRONznaH3pmxeR3C8lF2Xk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FVPODjCNvOdAA74wtIYBkbk96E9OPGBVgVdhx6p8ovu1xfqRhaWB+9RXnrj5f9CHiZ8vpThCsREDYNmL/RZDsSzg6OsNDNL9BsUaK2An3wUcBj5lFlOPWf29UzEjH4B42/Xa0v9cd0WQGo6Uw29SxvW9YjiELZuLG6HkHzaKbrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=JOtT518B; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1dc1e7c0e29so16702935ad.1
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 00:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1708589570; x=1709194370; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Thj6USXv+zFZqbn9GMP05XSRBqohJA11glRlwlO2t8E=;
        b=JOtT518Bilsath7/0BagXPuprmaG9kHXt/1L33oBtkRmq5zZyHjb8dsnzjC1iHV92U
         v+Z5yKj2F73lp/tpnJkoDI6boSbOSvsGgHqEAzysIbg4sK/dSzLxAzEg0W0z0zQ/kF17
         V9h9Hx57ZjAZF+D5RIwEpvUj5wRzGx2+VTOhggh6AWof3GC5VnppDyWMiRxpCLng0O3I
         Os2vyMSddVWPfYwb7wzelELhIFXz1KHPMXvmd8MREuImXIBAfJegm4qCo0IUT70Z/xvE
         3KNYS2+pDl9LrAwyAsRJGoELaIRUy78HEwXUq9i34ZRvPOa5kD+kyko/XOFoY1HNHGaR
         0GYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708589570; x=1709194370;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Thj6USXv+zFZqbn9GMP05XSRBqohJA11glRlwlO2t8E=;
        b=QrwL11T8kjwW+iVBBlNXW7Ct5M71q/go3e64EHxKgKvTC2Sz6A74zs/iIQKuufQv0I
         OxlMXN3o1gxr0d9qCBzKjNCSqGtTPQo8jrg++kmhSrC65aE2EO0dr8bhJVb8xBGo+FwZ
         6fVp44zjEv1vPLDPmIsexYbcxJw8T18Ge7tnpj7J42xSMJyp1P2ado0IN3YM3I7Ml4P+
         S+f0aQpGLyM+yTRFK0QA9fAfb9CnfHvm/UdeYeQJPkFELdb+vWmBvHa+Y2U9Vp4383Qn
         pBuwbEmieBiRMyqWrFl1XYrAnED6Ussb4BaOyW3zslpecDs1jMOOzBzuCGX6RWcT5LDJ
         ER4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXoDlPoNnmfjzKabVyxxVLCYyt5lX+W2RXAW9rySU0c/gxz46HfVdfDOHc2vyyPJxX3OA3nBCBfwzp+0Ev0kUHes2KNYRdV3zau/w==
X-Gm-Message-State: AOJu0YyBjCYQ3zrGp5+teUDuRIxDfrU3/msu0vHbaMT28WGq9WJV01rR
	by80y0TCM4LwhYlkCYWvQ6ruHGh05SiLMctmsy9iVcnExTkimKcyTVyhiXAwX4o=
X-Google-Smtp-Source: AGHT+IGQEH1Pckgyx97VaV3qo9MCG5UniieyW2RPfQREJEuRYUX82wG9nTv/Om2GeygIf4u8y9Tjhw==
X-Received: by 2002:a17:902:e751:b0:1dc:1e4f:9b3f with SMTP id p17-20020a170902e75100b001dc1e4f9b3fmr7654206plf.24.1708589570167;
        Thu, 22 Feb 2024 00:12:50 -0800 (PST)
Received: from hsinchu15.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id lf8-20020a170902fb4800b001db5ea825b2sm9412796plb.123.2024.02.22.00.12.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 00:12:49 -0800 (PST)
From: Nylon Chen <nylon.chen@sifive.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	conor@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	thierry.reding@gmail.com,
	u.kleine-koenig@pengutronix.de
Cc: vincent.chen@sifive.com,
	zong.li@sifive.com,
	nylon.chen@sifive.com,
	nylon7717@gmail.com
Subject: [PATCH v9 2/3] pwm: sifive: change the PWM algorithm
Date: Thu, 22 Feb 2024 16:12:30 +0800
Message-ID: <20240222081231.213406-3-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240222081231.213406-1-nylon.chen@sifive.com>
References: <20240222081231.213406-1-nylon.chen@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The `frac` variable represents the pulse inactive time, and the result
of this algorithm is the pulse active time.
Therefore, we must reverse the result.

The reference is SiFive FU740-C000 Manual[0]

Link: https://sifive.cdn.prismic.io/sifive/1a82e600-1f93-4f41-b2d8-86ed8b16acba_fu740-c000-manual-v1p6.pdf [0]

Co-developed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Zong Li <zong.li@sifive.com>
Co-developed-by: Vincent Chen <vincent.chen@sifive.com>
Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
---
 drivers/pwm/pwm-sifive.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index eabddb7c7820..a586cfe4191b 100644
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
@@ -139,7 +140,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	int ret = 0;
 	u32 frac;
 
-	if (state->polarity != PWM_POLARITY_INVERSED)
+	if (state->polarity != PWM_POLARITY_NORMAL)
 		return -EINVAL;
 
 	cur_state = pwm->state;
@@ -159,6 +160,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	frac = DIV64_U64_ROUND_CLOSEST(num, state->period);
 	/* The hardware cannot generate a 100% duty cycle */
 	frac = min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);
+	frac = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - frac;
 
 	mutex_lock(&ddata->lock);
 	if (state->period != ddata->approx_period) {
-- 
2.43.0


