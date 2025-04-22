Return-Path: <devicetree+bounces-169264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B81E5A962FF
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 10:54:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7C841885BED
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 08:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D97C325A642;
	Tue, 22 Apr 2025 08:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="I+r9HcGV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C3D25C703
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 08:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745311320; cv=none; b=djpFit2Lpcp5j7N7aro77jKwluzARZ3ngJJxxgrZc/D7QwKleOYBc3BfH2doDgUpc4INHoUTvBFy9thBpUZbuCYbtS1vjH3PqHrLajc5HD10X2CQ7BgMRIUnmkpPRM+Roia9a56FYfrniBVtm0SyezA8qUEA/5jrAPcKA90y86s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745311320; c=relaxed/simple;
	bh=AhRbnxt00FmE/WhEN1u8zVz8q5gXEKLj1JYmMYck0AA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=X2n2BuPlIikC7Raf8E0m2miMdsl0yso//Gq/sTxNH75aVzW6tyW8lcctorpzoKLdkVmkGJ7SBJQxkuIETq8KVJDCjiMhe0euj9owGyDiySHeaf96CKp7JkZMb07h0cp3rRjQAalKFnjQZ0PbzCSZEGBDGhY0V8UYT5x+8+a3Yu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=I+r9HcGV; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7376dd56f60so3445345b3a.3
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 01:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1745311318; x=1745916118; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dTYlTOXj1U7VnsAmcUnx1eYdk5rL5ZGZ7LNT8Q6B11E=;
        b=I+r9HcGV+iABKy4DaG0c045CG0YwQTWTa4bafq3dWTL3lYxp5PX6MkerrHE2icSFme
         rcWWJLIhCk6qOz4yCqOF39nN/tcGIIRMP87r+mFEw9oVuT8VG5RPEMydKlsVcNgam7yK
         baMQUSf2Bh6ZtrSToSuuRD/J4WSIywx+6jBwbw1wLYZNSR99A98rKDj0SBo07dkeASc2
         9P9FWqg9TGKQ0hWkt6DRuH4EbynnoMGbR99FC0Pjxm0MWaozMEmsM9Hr5sprfSp1HHqC
         BmaLSpl8nRv1LMqvPzqwVnF8FID813TxbMWeirNjX/Gp1eAM25iKVp1i84Kgi0S+ccV6
         hrvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745311318; x=1745916118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dTYlTOXj1U7VnsAmcUnx1eYdk5rL5ZGZ7LNT8Q6B11E=;
        b=syfg1kNmo3PSeeCMXUA9cecn4ORy0FqSxjjHnaqOSGtOzQtHtWnrJpaEtY7+d0o7kl
         tXuLUta7Qoyvqg9GHPWYkYgs62Uugi7DHhmwpTScqqa4riOvj61oeefsazVCtIgdi1+x
         1WhipuTe94FuhvFpOcZn7w06C8ca7dupQjlYEQuBJH6DRysJThKZezwtzr1dTKm7zJnl
         dif6zKCrtnPBrvRYjuFEiGxZqCwXiGCio1l60I/Rrfw1S7FORSa3wF1bu0r6vlQowBDO
         V1pzZqwpSKlhnD8VxShY0mqf3FTmBkoZ8voGFqqxDShr/ipDo2Wna0S7wgNwrB1dAYIv
         HY4g==
X-Forwarded-Encrypted: i=1; AJvYcCXC+3E2boN1Uo/NpylAxeX6UoWbkW2ThqjJqCG8qZ1VRBE3TonPzE4k5PF2TzP6/NeO+L9LlymfDzCp@vger.kernel.org
X-Gm-Message-State: AOJu0YyjoxtCAOcFV0cLjNbbVqWH2NXvZXXLqtrVeAJZocBHhLdLznfx
	tpvn3Eh5ggmaqWklALuN1xjx4Hh/2gpLVHsWcrHF/ZC4nOx/S+edwXTQC5gqyfU=
X-Gm-Gg: ASbGnctd2baX+0rhDrWE7sSPEgTO5mp+8BRL+pggDCLYs9mmN8cYDCYA/6qx1vJaBqZ
	9KlMsKuMc/I0blbyq1yz04QCpjOxJ9vXXgkTDNXOb4DwIrYrDf/KlLfl8kFqb5tyaXqWzBkq+qU
	UJ84vHdMGG+VRApFHkiGYWR4Fyrm52sPU/d5nqn4wd9rMGNBWAokkcbdToxw4iWaqaJN7Ec7cOF
	eC0YK6Pb3njfjTdIhJeEASt35DTDDPKPpbWOH+xVjrNcHCKmw/ub+UseYHTjSqRmnBwQmtb6pAF
	cNGWxwxpZfoSJOD31dyJQw3yIuUjCKGzVsp7H9QEsq9swinQQS0uk5lW3aCGYUYD6iXjjWki79i
	Jqg==
X-Google-Smtp-Source: AGHT+IGfbihuBEBc/pdNIJMJF4VwDXG6UwENQDwhbQ6dawvH9aE1MJPeh2yhFP9zSoJtskbZsJMTIQ==
X-Received: by 2002:a05:6a00:21c5:b0:736:2a73:675b with SMTP id d2e1a72fcca58-73dc1568a74mr20805479b3a.19.1745311318480;
        Tue, 22 Apr 2025 01:41:58 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf90d7f7sm8038343b3a.82.2025.04.22.01.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 01:41:58 -0700 (PDT)
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
	Zong Li <zong.li@sifive.com>,
	Vincent Chen <vincent.chen@sifive.com>
Subject: [PATCH v12 2/5] pwm: sifive: change the PWM algorithm
Date: Tue, 22 Apr 2025 16:53:09 +0800
Message-Id: <20250422085312.812877-3-nylon.chen@sifive.com>
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


