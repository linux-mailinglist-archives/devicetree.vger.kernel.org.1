Return-Path: <devicetree+bounces-169796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51933A98448
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 10:54:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BABAF7A9417
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 08:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA62A1EBFE3;
	Wed, 23 Apr 2025 08:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="l/BFXzFY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6905521FF54
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 08:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745398414; cv=none; b=CtoEaH4RkHn4oXhD0xzMrFaIS6PhQJVo/7kAfZ/hPpwVmKTkb7saAzlx8tQF6zCENE3pMyIjwfL2J6PSzSJKTvehqBrf2+PuNlr1KsyFafhHYp6HZhAOgGVdlQDPAHvz/Aj1+TbmDTuSHimJbpz4heXIIG09iZ/x5pRiqSzFrZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745398414; c=relaxed/simple;
	bh=3r/5Z/FYNGrd9yVol3oPvJOMUrAGXQMWCQuwPGjhyIU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hmKFid2JV/Vn/UAUtHn/ZickhxedpVx7XTgz9XanDiiavE8n64vD1gk5YjoeIQjlZDSApzegsCe/eySADTDe0Fo3yQwaWyZ0DHxO9O6qBLsU4xlfrkEvG4LKsYxsDFLcYtOe7wwxN3y6NfhpWycx2tV3HPlE26anRn8oCh017JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=l/BFXzFY; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-af9925bbeb7so4013424a12.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 01:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1745398413; x=1746003213; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ySeC6yawUczfsda0tPZSNQIrOLUHwdCmyF43sMLfrQ=;
        b=l/BFXzFYywi7/G3t8cBtRni0/CZA3hGD2bySF7QiOGUGb8+zYoKc8/stk3r9riNFnw
         /LNkxvkRxvALiGOkjeBJouN8eKjJaa3XXhgBLNaKENBZbwKMaLvfj46B8WiPJdDCNpsz
         gzgccTtbDOEluw5csuUwAy1CZWdwinYbcX+u4fvOB3vstMYyHKuUMwUvFk+Ph9qg03W8
         mhsPHSpA1Rwb5biWDsz0dbBSr/ITkkzI8yTlb2l8Gb17m+tHEu/5IEPc1mdS4+yIlemU
         CvV7qEUV9kD3CXBBNMNSEsZrJ6alWM+vdTlb8LVgQReLU0E7etLhgSypQNXkVQg3NPix
         wg9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745398413; x=1746003213;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0ySeC6yawUczfsda0tPZSNQIrOLUHwdCmyF43sMLfrQ=;
        b=EkFik6lhMQpIZ8oAiQ0+JwqYjKUPObClZF086KrS/2IP11JWwM4k35Up59BnSFT9HO
         9LAeGseNGXDXffXY+1/LxX9myy24hl5L33aR/ZLLsVVDFnRkY5P6R3d5WGJ7tB3Pbqwy
         lO33PHBhaGy1NMQ3SDelzNgyV+HFCnQDPqmYXrsUUCT3YjdiSCSX6QgzOkezQRoEnNig
         QxtzCN5h5KnygeJUBv5iYh2WqQG/MFbJIm4mtd891nw955jvTMJPcrdTLbbGbJCI9087
         yVmFN00VKB7NRXaTTpvAoYVAxEp/ugpCq+b5k1gM9eUnLwiEKyZSyyLX/frtipt1SuDE
         PHvw==
X-Forwarded-Encrypted: i=1; AJvYcCWAsTfO2Dhn+O6xEC+ZTvk/vaacnyTN64qMlV5Es4ay6nwPVug2DwxNL3c/hCA9vr83/1rXp9zOpf1k@vger.kernel.org
X-Gm-Message-State: AOJu0YzqaQJLVauvsoz4KRpFXBz/e7os+UrFTvyMjRf3vCHs2+aagX7v
	CM6d13hO9t00S5N1BCCXBmbaGfLaIy47ah2UScFqwhntKIZhw8Dw4MVeaU8S6IQ=
X-Gm-Gg: ASbGnctrzdqwVBG2U6za6+sgH8CdnYX3UK+HHGQ1pNjMrmBXmBOl95ipR3pvg7pctkd
	wo5oXtrZD0un0NkiZSHMiHvlxo49mM8U5b+OxZGTVLiBBxhLr77qjSE8HwCFH+gbr8e0lxZ66Dk
	kcFKcZ+Tinq8/aLgLn101xNvmg904g1YAaeZg+W6onvOp2sogTKXx70qfilcy4UkkssurUUOkZX
	gV7kwwsIHmHDqx7WbBOrzA1nNH/bB5h2DfYzvxskN0/YY3e8lsdDewsmqPaTYl8rpNfppiM0Kli
	sO0u19smbG+3Be2h4M2MynyQ5K6HqIQGbcUjV1oJE7b3rdmZ2ur85UaiYpLKyCT6Z344gPsyJDe
	o5w==
X-Google-Smtp-Source: AGHT+IGCdyRrXA3gFk3nBMhtBGH9c8nvuEZ3lZ6EALzxbQyXUOgptExJPWtu72AQ/7Ux8Uo93heJog==
X-Received: by 2002:a17:90b:380b:b0:2f6:d266:f45e with SMTP id 98e67ed59e1d1-3087bb3e794mr27325433a91.2.1745398412701;
        Wed, 23 Apr 2025 01:53:32 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-309dfa5f880sm1047611a91.38.2025.04.23.01.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 01:53:32 -0700 (PDT)
From: Nylon Chen <nylon.chen@sifive.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Samuel Holland <samuel.holland@sifive.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	Nylon Chen <nylon.chen@sifive.com>,
	Zong Li <zong.li@sifive.com>
Subject: [PATCH v13 4/5] pwm: sifive: Fix rounding issues in apply and get_state functions
Date: Wed, 23 Apr 2025 17:04:45 +0800
Message-Id: <20250423090446.294846-5-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250423090446.294846-1-nylon.chen@sifive.com>
References: <20250423090446.294846-1-nylon.chen@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix PWM apply and get_state rounding to ensure consistency between
setting and reading values

This fixes the reported errors:
pwm-sifive 10021000.pwm: .apply is supposed to round down
duty_cycle (requested: 360/504000, applied: 361/504124)
pwm-sifive 10021000.pwm: .apply is supposed to round down
period (requested: 504000, applied: 504124)

Co-developed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
---
 drivers/pwm/pwm-sifive.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index 6259f8500f71..4cf3e715fd84 100644
--- a/drivers/pwm/pwm-sifive.c
+++ b/drivers/pwm/pwm-sifive.c
@@ -122,8 +122,8 @@ static int pwm_sifive_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
 		state->enabled = false;
 
 	state->period = ddata->real_period;
-	state->duty_cycle =
-		(u64)duty * ddata->real_period >> PWM_SIFIVE_CMPWIDTH;
+	state->duty_cycle = DIV_ROUND_UP_ULL((u64)duty * ddata->real_period,
+					     (1U << PWM_SIFIVE_CMPWIDTH));
 	state->polarity = PWM_POLARITY_NORMAL;
 
 	return 0;
@@ -157,7 +157,8 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	 * consecutively
 	 */
 	num = (u64)duty_cycle * (1U << PWM_SIFIVE_CMPWIDTH);
-	frac = DIV64_U64_ROUND_CLOSEST(num, state->period);
+	frac = num;
+	do_div(frac, state->period);
 	/* The hardware cannot generate a 0% duty cycle */
 	frac = min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);
 	inactive = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - frac;
-- 
2.34.1


