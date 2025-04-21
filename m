Return-Path: <devicetree+bounces-168930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 484EDA94EE7
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 11:44:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7048E16F25C
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 09:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31FDA25A2CA;
	Mon, 21 Apr 2025 09:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="YGA4WY6K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0104D2580E0
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 09:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745228647; cv=none; b=R1C2XmjUzztWkViWhgMGg0Q3vFgpEt3mN+tnQ3L04beKoUtjS6d4iP9bXLODxECzFqgwGpUvErG6Ei4pqZJx+T1boPm1tBMa18Bn5xwfGqaUXHxM0ZksHS5E3/C9S6y2sNGzFbfvR2IX0nyoqFe4nYlbhpMzXWrQO8fF4Er/eig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745228647; c=relaxed/simple;
	bh=AhRbnxt00FmE/WhEN1u8zVz8q5gXEKLj1JYmMYck0AA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=V9LzjlYwIBabq7tA+Lnxn46Kese+3mMcPlNzYgOhMyBU80cjlDYnzlqNGMSTZM8MgVcCA/cZAgrCbED8oGbX7zoZbxup6jOvuITdlZxmZ0p3aAmRlnZVl9cNw4SEchaDQxcUGVmn1BXpQfCDf3WqZEu5JzAMqM/2RNpby/hxvcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=YGA4WY6K; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-224171d6826so54605565ad.3
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 02:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1745228644; x=1745833444; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dTYlTOXj1U7VnsAmcUnx1eYdk5rL5ZGZ7LNT8Q6B11E=;
        b=YGA4WY6KQSctBDXQ42DOC/hbszCtaDYiSjYik0hKWJoyHP/aLVQxyrG+eHxsvTq6tm
         /3fU76TKg+R6WR5i8PVo0Tx+nxx+MCQwEdEESqzDo472JqyVkhdhp5fjFajZuGtG5XRo
         rsVABhKZpUSCRgOxHy/Fb6AHG99AOw2yyh1YAu42Xn5HgB+0/YndFty4EVvEoIC+JHcF
         0N3uWT/RkhS4IGGCbrswvpcF0dSPzzzHa69o3VnXahBDroOoDL2Li25LxveAJpUsQ3iO
         0oojZJfzeolI0k16DITY5pRcQ1PvPFlMTx4XtU0AD/sonxAlDv6V7wPPs2/UdP7D2DXV
         w6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745228644; x=1745833444;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dTYlTOXj1U7VnsAmcUnx1eYdk5rL5ZGZ7LNT8Q6B11E=;
        b=gRrXPZloC3aBn9s832ZZQKHWV3AbQY6pcZFYtJKoH3hm8+ftRmtkA099D3GJ3TB/YF
         p292XJRk/fOrKcS/AhZoM5KwJMBY46BbqlskEXeLz29NSbyhZTElX8E/qixpL6AHe6jm
         0TpAhLwSHkeR7fqlizvQdJOAmVVYAGbCULdxnGKMlIsjxSjgdKDQXy9flWXdsDDES7Di
         HPcHT61ZNa/eBpOnC+435LMi4VpO7GKvrgyDHLI9tTghgUaj45+Y+VlkAjwmpAfSGWBE
         5oNgbVmMcI8ZhpEBr/Yo6eIMuX9wcnlDS11czLv3Kxr0LsrINSGOJeddLs8/rJR1ygws
         zhow==
X-Forwarded-Encrypted: i=1; AJvYcCVIF/3rB9f+ZrWfYQTW4aidModU91H5ln0v9ArHxd6KFV/1YKhIJvKLXrJFlPDQUpq7iU2auIiUTWSD@vger.kernel.org
X-Gm-Message-State: AOJu0YzqTepVOwiGApRu/ABVoVTaJsUffvZaygqTY6HmG9AB/3DNwqub
	qt2gTv2vqLf131UxkxMffqN3sMR+vkCIDiXnl249Vq6vMXqsgIlT6Srrz//jc+I=
X-Gm-Gg: ASbGncvnnwYZJMIYFae4CrSJE8kPsCwQtAkLUWwf4OxpyAbp/6FUZVG38zjJkvUWGra
	UHx77L+jtkA7hQqcrLc77xokRbIerfHaamGg1EGcfjRnVooo0gv/ECY2UUd2nrbnJsZodfBSm58
	AhFSQSUJyMw8oA1EE5aio634+fsRK5r7GoOjXKFMN9cji/aW0poIaNSbG07vwL53j4uSHGVr7VT
	UvYdfZkEpQ1eCXBA7pIQUNLGuSSTD+0W7wbMckKv7Y0HIfKXwe1HVr2IAGS+3YTtjb09MHPu4cd
	FLOFxqwMePzIATvAO05vahOsiGvqZTaoypNfYFlZmsghbvJepg1sgkqemwNCllwY224eM/8rlUc
	UxA==
X-Google-Smtp-Source: AGHT+IHEYpGr2ZvIBvvKW7ZFaNUJwrpR7XQJq5VPcYBgX/Wl0N6AKjMZmEmIW83x6cviTTPcE+wOYA==
X-Received: by 2002:a17:902:f541:b0:21f:c67:a68a with SMTP id d9443c01a7336-22c535acbeemr153720645ad.31.1745228644193;
        Mon, 21 Apr 2025 02:44:04 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbfaacf32sm6371965b3a.142.2025.04.21.02.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 02:44:03 -0700 (PDT)
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
Subject: [PATCH v11 2/5] pwm: sifive: change the PWM algorithm
Date: Mon, 21 Apr 2025 17:55:18 +0800
Message-Id: <20250421095521.1500427-3-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250421095521.1500427-1-nylon.chen@sifive.com>
References: <20250421095521.1500427-1-nylon.chen@sifive.com>
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


