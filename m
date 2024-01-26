Return-Path: <devicetree+bounces-35380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E80CD83D539
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:02:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C7EC284816
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 09:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32FA45B5C0;
	Fri, 26 Jan 2024 07:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Qb4c4h4P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580295B5BC
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 07:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706254865; cv=none; b=KxGQKsV/NK1ky9xVs41nFIb5FDZ+MI5S9gMELmVaER9VseQt5j+SjGJOTzt0bdix4wrMGdO/yNAP4miEB/e9YLx5eX+4fs21mAL8chmgt5TeCrA/eedFM9VEE2GKdCKb9Kd9oCv8OEP40Us4w7+jepfN1shoVJ5BXe0RKz3M8Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706254865; c=relaxed/simple;
	bh=+zSUgIL8q3vFZFmdNOBouMhQCp6IoMFyRcLBsnngfBM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ELrHjZMKR7HQg7r/vIMxogNk2Sr9BatPA1xgh2uzS9NPGUeOLFH9bIM8ZphQrUgnPB3uzOQjEpGexK4QdADYPjDn/HSYe2gPI8H7c7i6vzmF8FxPIS9m7UyK643K4kFhJXz1MpiYiJL/TmwcB0AEIB0iketqyzU87da2l6M64lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Qb4c4h4P; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1d71e184695so340165ad.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 23:41:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1706254861; x=1706859661; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oi7//kf+t5kQJparsU5zt0OUDO0vnQ4JFz56SbIPwWU=;
        b=Qb4c4h4P6TKBoU4Blk/AAz71gIvcbOn01/F4hod35Reg8G/y0d6H8vaQiRnxuTGeK6
         HhbHponn9y9YXRCJcHGzKw5B62FNzPIWlFZbfkvmDhUfU/OfS83+mCuc9NDDCH1bKLEH
         Dmyr1IKuGJ2kihM3dDFJJWJlHF0QDBZ/gzsAbDcVuT/6oDJA5JKQIHJRjH0wTdwqFtPz
         Bi07vnUhfl2X2KgAbZFGdLqiHg0CgKULgJW2nXp5Lxd5H3gbwk2Uf3rvtpP452xaBqQ/
         LFCynQ49qg7ofJJ1hsPYW02afmD//n5jY5O1JGn1xnQhWsT1Mo2VLtR9hYhfCX+N090I
         Cscw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706254861; x=1706859661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Oi7//kf+t5kQJparsU5zt0OUDO0vnQ4JFz56SbIPwWU=;
        b=cWkLHHfDl0VTPZI2QsM6Vx49JyMRsDZcp9+bqus/CL9jeRMIdgIFV6V/e5mt4PC1TO
         zNscKjJUOaxQGA2ePk2gHCzzc2+kpA7AxictpcatFotcAt9j8HR7wl4pZScjBorxphhM
         fw2FF/45wkRUaD8rozeUSyLF2kS3zm+ZvW+hlFXB8o4wLgvWE4W3piB/gxDBBFQyhkiq
         66vkx3qdnpZQPWuHqZ2GxDwlMbbK18/UJQQ0SnhJ9LlEY3FR2HIvU1KtZvcSaAvwNKcW
         h77QapLKbAcVvFLVjeDmArLpFuWwEHsK9IlUEK2EZS5bWxlGbBL9AtPtXItVP7Vrpr4V
         wJ6w==
X-Gm-Message-State: AOJu0YwRxSIJLUYoGM6onva+IAt7mXgE5NKz3pGYjN5U/M9U6F3IJcy7
	iX7ghnbK591YtLzsGKQcb1AoPkr2qckjOplMU6Y25NIRsBRmYGhJCvGHyBuRI/s=
X-Google-Smtp-Source: AGHT+IGnJPsZk0zTW5jVAWvM0DbmXKrZKGcGHU2sO13aSc5h+P6v+oNIRQlSZxXzyeqqNKdMUs8odg==
X-Received: by 2002:a17:903:2281:b0:1d7:297b:854f with SMTP id b1-20020a170903228100b001d7297b854fmr1540739plh.54.1706254861563;
        Thu, 25 Jan 2024 23:41:01 -0800 (PST)
Received: from hsinchu15.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id n3-20020a170902e54300b001d4816958c2sm521066plf.166.2024.01.25.23.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 23:41:01 -0800 (PST)
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
Subject: [PATCH v8 2/3] pwm: sifive: change the PWM controlled LED algorithm
Date: Fri, 26 Jan 2024 15:40:44 +0800
Message-ID: <20240126074045.20159-3-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240126074045.20159-1-nylon.chen@sifive.com>
References: <20240126074045.20159-1-nylon.chen@sifive.com>
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


