Return-Path: <devicetree+bounces-169267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B64A96297
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 10:48:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D4AD87A33BD
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 08:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EF7825B693;
	Tue, 22 Apr 2025 08:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="ZEdL+XXW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2324B25B68D
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 08:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745311344; cv=none; b=WCqiIsLPQw1QrdlcglHCRozNg/kIDc/Z6A8WNr3jpHFvNNRotPJYCsS21ECnvgCjzk4i5X+nG2nzaGrFU4l7nRvEmvfKmbzHAQ44Y2YMHpgWftPtrVxFUkfKLNBwfcgD2tUL5BYBqxc5rtjVRk+kVNQ8RxVcXQPBT1ucounIwFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745311344; c=relaxed/simple;
	bh=EzCnckv9uZo2HPeOYfcjt07O4220J44jVkWlG4oW530=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qO761ZVfYClzADP2FOr2QtYzOZv/oVlR8rAzYDaS+DNx3DwnF9sjey3ic5LD/zDiAJ7nee2uippjEcyJq3azH9eayFFVR+/6cbRfjZVnqyVHaVnCnydtrOd8NOGgbyBlDvMH6vvhxv+QNRvBp2q0dyhDqQEQWj3ah+estNKKWTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=ZEdL+XXW; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-739be717eddso3623396b3a.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 01:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1745311341; x=1745916141; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+kd2q5FNIM78jM5HghPwsl1jyBcissy+tuMihRdmdhE=;
        b=ZEdL+XXWc38j0cl9qTgvCLaSKSqUXODHil5RYbnuk9uvEwoUrsCxQRWKk+Mz68x2xA
         Pljt/qutYYTRFWepTlcNhfc5DVDYa2qnNkeWGxiKcUS5hNzLGLfGgNId4JrrKKbxytJ8
         bnZlgaDFlaW/Um/alnFdGBORJgeBrPs+B8hy+Jhf1e5pt8Nn10uqd1jo6LBlaik5gke1
         ddjF3ELqVGnQnsK40aV5Z4qJY3UP7DGKbZTTcsfZGh02LvIvjNfu/nJh3IZ9l1ocGimI
         f/ubtfKYOEzZme1QGi5dxYyRLZco4ULfPsj158Nn0glAEzgFIHH7Gb1pSQmg3Wa2cWwV
         eOwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745311341; x=1745916141;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+kd2q5FNIM78jM5HghPwsl1jyBcissy+tuMihRdmdhE=;
        b=Tk6Gxu7X+2UAaaL+/tis+JE65mMnBT5OpJer5ox7GUfPLSAMKl1+rOxoUCkj3kX3l8
         QSXUyA65EwKIL2tUaNjaQ9VCJEwJ+o9XY8fcIJZoLS1rZzH8Ac1NyfmOYEnwSgIa6QRS
         xkLP9KwhR63cXOnUrQQVifE7PZlhYeyDOe6/CmUkp3tJnq2XDWSwDpdX7KIOLfKukAX9
         58OEv2qxED3PaTHPeXExbfAne2leVaxkDzLX9hyaT9ZP31sak0E6j/7anqgfbQqtkV+X
         wmZPBf/iYNB/DBdjOFMU5DAGV22udfsTnjiZLwGp2w6z5bp9MCsPYr1qn94Re1/WUsfl
         +wnA==
X-Forwarded-Encrypted: i=1; AJvYcCWqZsk8qD+Eou+zsIyhd2YnAQhVaYskz1WK8F7JXC+mTEzcVnYh9JU1I3R0XCWoTjTuu4+D0I02ZCGl@vger.kernel.org
X-Gm-Message-State: AOJu0YyMPKQhvNAo4I6bM2hakSFiPok8J9dx1pW8yftOY51xmW2h6764
	0y3qscjVTLofLb61gsooP+e2a5HbIfmR+UTUT7wyqxDp6KKmGSZhDOFN9IEx6nM=
X-Gm-Gg: ASbGncus1aVzh++D9EFBBY/TrqhPaDOUjMsCvzj+AMxrIb+lqB83wwxZtf5fsgLZ1wT
	x/iAEVvtrxXTJ7rR2+aueLU9hGJ78vSlU6HIdyZA+ILFF2jmJ6gzY+Zkqu+Y//zIGFcWegljCmp
	+2UvZ33ovIBesN4PpPSPso/bEhmk1AaLeU2AToqJmMRWJ5yX1O8AeJbOIuusRRbZc8bDolD+HMz
	Bx4K9EWv3JKV7GouKohSUi/EweLiZVzNHJ8AVp0CwhdMLwQLvmDy6gRCiubAh4FF3VU4BT0ARbm
	VygOwcQFk6SmkYcfguEJPd1Qc6vTnJa4+RVjJImDRfohLrRDP0sxk8eTFwW4nznLuCowo5go1Lf
	CkA==
X-Google-Smtp-Source: AGHT+IFXZZ39jj72YYhr/K/5oJ3Ngnd4eF5Q61F34OsaTVnM0ysvTXVv8micdw2peLTPVFWC++GWNQ==
X-Received: by 2002:a05:6a20:9f07:b0:1ee:e96a:d9ed with SMTP id adf61e73a8af0-203cbc251cbmr24313065637.7.1745311341488;
        Tue, 22 Apr 2025 01:42:21 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf90d7f7sm8038343b3a.82.2025.04.22.01.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 01:42:21 -0700 (PDT)
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
Subject: [PATCH v12 4/5] pwm: sifive: Fix rounding issues in apply and get_state functions
Date: Tue, 22 Apr 2025 16:53:11 +0800
Message-Id: <20250422085312.812877-5-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250422085312.812877-1-nylon.chen@sifive.com>
References: <20250422085312.812877-1-nylon.chen@sifive.com>
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
index 6259f8500f71..065d6d2b84bc 100644
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
+	do_div(frac, state->period;
 	/* The hardware cannot generate a 0% duty cycle */
 	frac = min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);
 	inactive = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - frac;
-- 
2.34.1


