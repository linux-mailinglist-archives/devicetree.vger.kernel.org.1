Return-Path: <devicetree+bounces-11241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE8E7D4D90
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:19:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B55AB20DAE
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0BA25114;
	Tue, 24 Oct 2023 10:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="T2xp4Zbc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA1E25104
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 10:19:21 +0000 (UTC)
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEDC1DE
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 03:19:19 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-6bd96cfb99cso3401745b3a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 03:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1698142759; x=1698747559; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a+QZY3JTroucCQn86akp4c5eSM8t3MeXGfG/H9g9b2Y=;
        b=T2xp4ZbcoN2/12TwNePmsUhIH7cKeqiI0b8NSjGBrwM/SxubEG8rlZo9IWNnCr0Lmw
         Sn0Px5A5Dg43SU9tLImZyFMLYUfX+9qQ27DCr7MMIXTjYaNp2a0tjWDl4wNYi0/fnK6g
         9bEvJcha3RXbkTwZzcy8Crz1ZIG93QUEaqWyT/+iKxKwDJDKCOgL339iovypdYEQXvDJ
         tGdvPZn3z5Zezdlk7R/mgQLNT+s/W4H9+YOtNuk0/knP01Y/8KXgZFXZYVeibJG46yIj
         ppz0XR2p1Y7dhsoSWvBD8YCq2wt0bRQVqH45SDHOQ7urNaWZY88OUlJ4j4Hk9GQzA2bq
         oWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698142759; x=1698747559;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a+QZY3JTroucCQn86akp4c5eSM8t3MeXGfG/H9g9b2Y=;
        b=GeHMAR/sXEEn1EVeWBqlPYGNuhIvYuN4vX7DytdaCE36rCANKu334fKQP+zBUkkDP+
         GAIdSUwCVK49eOk5sOLgDp7+CCFMtS4k6VeGwsHvcc/S6pCNq0Xp+IlIy0m/gToOtFrG
         +4T7tV4VGpC1RN4jpN+RzVP8HtmjmEFaGhSaTJ1hP32pUIL9C30PlWsBsDSyDx4icsCS
         Ozzwtx/nYjQEszLbClgX5jLudbI/l3yXbQZdNxukvso+DfbEaKPF/0J6fxU7eQHL11yC
         3ElJpbrLB+rlFKHPorPUwG5gMW+zkz/UqVc+tOPC+TZ3g/S7HuPpR80kQkoIIEE9rlw6
         stHg==
X-Gm-Message-State: AOJu0YyHVSjyZKhf8xAto4Ua9nbqxTl0GDGvtlTzNq4UHvGfZcKIxysX
	nn614iSrhDdOj1+kG3cj6+d2mA==
X-Google-Smtp-Source: AGHT+IFi+LBy3K1fInBf1b4w9fL0mu89D1Uml8OyKSzrTOMcCgH2Wg5GmsKlwoG6/sIn9yhE2ycnEQ==
X-Received: by 2002:a05:6a00:27a0:b0:690:c306:151a with SMTP id bd32-20020a056a0027a000b00690c306151amr9848589pfb.0.1698142759118;
        Tue, 24 Oct 2023 03:19:19 -0700 (PDT)
Received: from hsinchu15.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id u202-20020a6279d3000000b006b3dc56c944sm7708372pfc.133.2023.10.24.03.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 03:19:18 -0700 (PDT)
From: Nylon Chen <nylon.chen@sifive.com>
To: linux-pwm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	thierry.reding@gmail.com,
	u.kleine-koenig@pengutronix.de,
	emil.renner.berthing@canonical.com,
	vincent.chen@sifive.com
Cc: nylon.chen@sifive.com,
	greentime.hu@sifive.com,
	zong.li@sifive.com,
	nylon7717@gmail.com
Subject: [v5 2/2] pwm: sifive: change the PWM controlled LED algorithm
Date: Tue, 24 Oct 2023 18:19:02 +0800
Message-ID: <20231024101902.6689-3-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231024101902.6689-1-nylon.chen@sifive.com>
References: <20231024101902.6689-1-nylon.chen@sifive.com>
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

Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 drivers/pwm/pwm-sifive.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index eabddb7c7820..353c2342fbf1 100644
--- a/drivers/pwm/pwm-sifive.c
+++ b/drivers/pwm/pwm-sifive.c
@@ -101,7 +101,7 @@ static void pwm_sifive_update_clock(struct pwm_sifive_ddata *ddata,
 
 	/* As scale <= 15 the shift operation cannot overflow. */
 	num = (unsigned long long)NSEC_PER_SEC << (PWM_SIFIVE_CMPWIDTH + scale);
-	ddata->real_period = div64_ul(num, rate);
+	ddata->real_period = DIV_ROUND_UP_ULL(num, rate);
 	dev_dbg(ddata->chip.dev,
 		"New real_period = %u ns\n", ddata->real_period);
 }
@@ -121,13 +121,14 @@ static int pwm_sifive_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
 		state->enabled = false;
 
 	state->period = ddata->real_period;
+
+	duty = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - duty;
 	state->duty_cycle =
 		(u64)duty * ddata->real_period >> PWM_SIFIVE_CMPWIDTH;
-	state->polarity = PWM_POLARITY_INVERSED;
+	state->polarity = PWM_POLARITY_NORMAL;
 
 	return 0;
 }
-
 static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 			    const struct pwm_state *state)
 {
@@ -139,7 +140,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	int ret = 0;
 	u32 frac;
 
-	if (state->polarity != PWM_POLARITY_INVERSED)
+	if (state->polarity != PWM_POLARITY_NORMAL)
 		return -EINVAL;
 
 	cur_state = pwm->state;
@@ -158,6 +159,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	num = (u64)duty_cycle * (1U << PWM_SIFIVE_CMPWIDTH);
 	frac = DIV64_U64_ROUND_CLOSEST(num, state->period);
 	/* The hardware cannot generate a 100% duty cycle */
+	frac = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - frac;
 	frac = min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);
 
 	mutex_lock(&ddata->lock);
-- 
2.42.0


