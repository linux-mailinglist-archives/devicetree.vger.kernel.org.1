Return-Path: <devicetree+bounces-32174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D791A82E86E
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 05:11:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C680B28498D
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 04:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EADB179D2;
	Tue, 16 Jan 2024 04:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="JvpOM9LB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC5D79CB
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 04:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6da4a923b1bso4676887b3a.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 20:11:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1705378277; x=1705983077; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cvJrbymRDVqsWiIagFJrDLqKjAGvymGFfMj4nY9d7Jo=;
        b=JvpOM9LBmjJH09YokSHo3Ysr1GZHtTLYi5JRk7K8kDxp1bSY3ctof0fRjm64sM/XJa
         3G2ksoB2uIxOPfxNHoM6pN6WJofXTeXIk35QMlgQmzW4uWBHqzyP8tSgqWwT1259cMLx
         R1EUKs8mucFdk9Nm034/fwDL9edifq93Yn0IjQ5E8ewZIxfEKuaKnThjXx5UPH4sjxfL
         mkAEEOVAR6QhJm4X3jBz47BL2vVzHxRmdtptt38G7+9rllBKStO4ey0zpUB1Rn6oS8q0
         ergcwWjkdYRqFV/C+LOYK2ziDqiLeDT6gjbdhce+jjxf7MNmcQNyGdWZDI/iBanUl9E0
         er3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705378277; x=1705983077;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cvJrbymRDVqsWiIagFJrDLqKjAGvymGFfMj4nY9d7Jo=;
        b=rmZJGJmYltxYmiY9TqPhVuptJPryJMrCBAAFjjLo83dXXtYtV7KWpM+z/k+mEjYSXm
         qFoaLtj7L0w8e+g1nRe9FdJtYFqOSZ2uTKLfmMQVaf54jTC4hInLlA9+E9bYhTp3GuJm
         mVnCZ4XBN6KQqM5WOvgHthqI7X+hmrbfc3MftADwgxUFjjB2HmjT36J31JThIGCy9rsw
         ulkttYwE5xcse0pj208UVzdRb3kmWWbYJ0533xLyCh/dDR/Ga+1yq/fgDyOefmeFzegP
         84u2SbiQQYNF7z0ne5EdZmxUKeJbvUs2Jb/yE6SEDVKUmqyWf92+wLvXsy8q52TP98/d
         hlfA==
X-Gm-Message-State: AOJu0YxscOq9iVx5a76lOUkNkrFIFo1LSaKEtRmGaAXiftpL2sllQznb
	ERhtBP67O1qQHo9vm4fJuDg9DnCmSjrEjw==
X-Google-Smtp-Source: AGHT+IG4zOe8NzCeVSultkWt1XQwNctUoDlTJ4OIW6NLAkI0tLrSKUSMFFkhBRuhQ882cjQ7OEj/Sw==
X-Received: by 2002:a05:6a00:2a04:b0:6da:b010:e863 with SMTP id ce4-20020a056a002a0400b006dab010e863mr3534499pfb.55.1705378276814;
        Mon, 15 Jan 2024 20:11:16 -0800 (PST)
Received: from hsinchu15.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id e3-20020a056a0000c300b006da14f68ac1sm8348585pfj.198.2024.01.15.20.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 20:11:16 -0800 (PST)
From: Nylon Chen <nylon.chen@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	u.kleine-koenig@pengutronix.de,
	thierry.reding@gmail.com,
	aou@eecs.berkeley.edu
Cc: zong.li@sifve.com,
	vincent.chen@sifive.com,
	linux-pwm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	nylon7717@gmail.com,
	Nylon Chen <nylon.chen@sifive.com>
Subject: [v6 2/3] pwm: sifive: change the PWM controlled LED algorithm
Date: Tue, 16 Jan 2024 12:10:53 +0800
Message-ID: <20240116041054.11641-3-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240116041054.11641-1-nylon.chen@sifive.com>
References: <20240116041054.11641-1-nylon.chen@sifive.com>
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

Co-developed-by: Zong Li <zong.li@sifve.com>
Signed-off-by: Zong Li <zong.li@sifve.com>
Co-developed-by: Vincent Chen <vincent.chen@sifive.com>
Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
---
 drivers/pwm/pwm-sifive.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index eabddb7c7820..b07c8598bb21 100644
--- a/drivers/pwm/pwm-sifive.c
+++ b/drivers/pwm/pwm-sifive.c
@@ -113,6 +113,7 @@ static int pwm_sifive_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
 	u32 duty, val;
 
 	duty = readl(ddata->regs + PWM_SIFIVE_PWMCMP(pwm->hwpwm));
+	duty = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - duty;
 
 	state->enabled = duty > 0;
 
@@ -123,11 +124,10 @@ static int pwm_sifive_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
 	state->period = ddata->real_period;
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
@@ -139,7 +139,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	int ret = 0;
 	u32 frac;
 
-	if (state->polarity != PWM_POLARITY_INVERSED)
+	if (state->polarity != PWM_POLARITY_NORMAL)
 		return -EINVAL;
 
 	cur_state = pwm->state;
@@ -159,6 +159,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	frac = DIV64_U64_ROUND_CLOSEST(num, state->period);
 	/* The hardware cannot generate a 100% duty cycle */
 	frac = min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);
+	frac = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - frac;
 
 	mutex_lock(&ddata->lock);
 	if (state->period != ddata->approx_period) {
-- 
2.42.0


