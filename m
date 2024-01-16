Return-Path: <devicetree+bounces-32175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F01F782E871
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 05:12:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA254284AA3
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 04:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 458F679C1;
	Tue, 16 Jan 2024 04:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="gS8mDw+N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9EED10A29
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 04:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5986d902ae6so3757042eaf.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 20:11:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1705378283; x=1705983083; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nYo9wXWOZdh4xBQbuTEOxrcqZQMwofEU/9c/S0MDuwU=;
        b=gS8mDw+N0vl5VxlTMOykZ6FXiQKiZHSNmUcHzeZnM3hFM5Iv0J9/gfdAg6g+Ltlk9n
         tuMFXI39vsauahLQDcmXYsnzUM0kPp3MoVGMyjO99Yru0eCjkV14Cn3qGWNkwwJVCBbf
         Vi0ZwU2iH8n1/IhTp/ugdF0WcyoVrWdTf1R3Vk3vvbr1pYVl7FJ7O8Q2KGldkcpOmH9t
         6pptrDMM4Z6DUpRTwi9zqWcD3ob0IqktCwNfMSOex1Qwi2KuT9W9U7kIiGAJh9SL5hyG
         ejulNh3cNfm0qNNnCeyeRWhwL/iDMo5J+wtqicp0EfX3v0C+HTj5/TqjQORv1+8cOwGP
         9LhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705378283; x=1705983083;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nYo9wXWOZdh4xBQbuTEOxrcqZQMwofEU/9c/S0MDuwU=;
        b=OoS70cDoukfJPd1SNijvcmR1dzubTHzxMqAiXT51dQj5SgH0oCcj18t1T2KyZBhFHw
         RxvLxrw9YWbOjmLOFV7ZTD4IxGEcRXECDsoY2mjZJlqsa6V8mFX9XO44gX5477OY5f76
         /FgK8Y/dtJbUiBBp1/w/LypHyHK+o7ZV9wFEOQvKD2bE5apSOO9sYBimvYKBFjboDddF
         lOFFGrvStKBaN7g04eKAI37B26Zy0s7VKb19VChGvO0UG9yaRGiVIonKzD4xbQYpU1e8
         fyRq4EFfSPS3h7ku3+mGevqtRRNsXgURnotbFttOvVgqezLNKPnt6qXMLpKZNRnWanFk
         xVVQ==
X-Gm-Message-State: AOJu0YxHAdC/2lFLt21A2b2PUuihucaJwxjWoQrfaDNioyiyd4ReoC03
	nDXkbIpsbo4lcQfs/cOrLJOJFbvBtFABEA==
X-Google-Smtp-Source: AGHT+IHY8wqSPbSfWTDr8kZnGoqer2JRIbsG2vuaQFhUvm3Jtx2vE59XTqMvUSiKzXWuROP6xyBF3Q==
X-Received: by 2002:a05:6358:924:b0:175:d42f:6c63 with SMTP id r36-20020a056358092400b00175d42f6c63mr4731065rwi.36.1705378282820;
        Mon, 15 Jan 2024 20:11:22 -0800 (PST)
Received: from hsinchu15.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id e3-20020a056a0000c300b006da14f68ac1sm8348585pfj.198.2024.01.15.20.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 20:11:22 -0800 (PST)
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
Subject: [v6 3/3] pwm: sifive: Fix the error in the idempotent test within the pwm_apply_state_debug function
Date: Tue, 16 Jan 2024 12:10:54 +0800
Message-ID: <20240116041054.11641-4-nylon.chen@sifive.com>
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

Round the result to the nearest whole number. This ensures that
real_period is always a reasonable integer that is not lower than the
actual value.

e.g.
$ echo 110 > /sys/devices/platform/led-controller-1/leds/d12/brightness
$ .apply is not idempotent (ena=1 pol=0 1739692/4032985) -> (ena=1 pol=0 1739630/4032985)

Co-developed-by: Zong Li <zong.li@sifve.com>
Signed-off-by: Zong Li <zong.li@sifve.com>
Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
---
 drivers/pwm/pwm-sifive.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index b07c8598bb21..7cf7a76cdb44 100644
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
-- 
2.42.0


