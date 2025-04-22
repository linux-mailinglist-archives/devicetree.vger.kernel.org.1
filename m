Return-Path: <devicetree+bounces-169268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ED335A9630C
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 10:55:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E86A44070B
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 08:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7545D25DAE9;
	Tue, 22 Apr 2025 08:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Zdek5f3G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E845B25D919
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 08:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745311349; cv=none; b=bL5PC9rew8Me1Pp30z1TyNciWd2oP+BCSnXx8bcugHekDr/Hn075CG23IeQqPvFAQC3CBHlb0Lavk5XEVpcdTtgPUKArvWGsLrs6nB3XjpNH2s5ZGzLYWkuPbJkmQtacVIOxicPwcdXPOuQBG4nAzJxZt/uUoH7tTPYm0RgEgo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745311349; c=relaxed/simple;
	bh=K6w2WFh9gMEo/5yGUkNlU3R7QRO5KBl4M7IcHSkIgaE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KhVqYLliKRa9ldErxKFaC/8f9YqJEE+4oKtwFC6pmPNs2/jpHMBZb3e0kIosYZTdEBEAzSLkMKqjOhF/USJ7IDqZz4XgdLas3uZcBXlCCfGrZa3cGGW82s9dj/sFuH5Qj77alW7+RzYOTto34PVzC+uzZwc/HXu72pD8WymgesM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Zdek5f3G; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-224100e9a5cso56084965ad.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 01:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1745311347; x=1745916147; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=89q5KIPhl5BwNYn6HnfG+6c7PCM/cs0DxATEzoR1SG4=;
        b=Zdek5f3G6DqW/cq90zlMNzu40I0wOZDSfg5rtDi+cMm1Ta/YYoyhg7e7s+hOxbtwf+
         AgUcbLeui3dZP3qxNzYMQC8VfwDyXnDJVUrDAzgwrDXofydUPtbUOdpBbIi7kgRWA3cW
         xqUxSqNstO5OfgmlY36cym1jGd5WOKOLUSVAc1IHTh8CoyoN1JPp+/5maQt20N7iqOO3
         2pU0kH7NS/RHdnDtl0a/CLsGh6wJpmg+cNAJ2kLBJFNiaovCqK8zF82bAo8HfhA1OGL4
         WnyHHz6LPMGMxROtKGDBs8j1JW6+QXDh07PRgt8jine9qGWWe0G2PjCxGOKvMxaUgl9a
         1g6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745311347; x=1745916147;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=89q5KIPhl5BwNYn6HnfG+6c7PCM/cs0DxATEzoR1SG4=;
        b=oVu5i6Pl8NEctMn5INXa+N7s4Q/KKHHYbyNkIoMoLFRH8dO1uXMfEb5x1cxs7WO5dx
         +taLNK546T56tQhAxouv+aR463F4dej198j6yBLX9bwonuXl+yqsoLmZ3RlbwHFmVZU0
         spbn5pVlcEwXclCUnXIcGDGvgGhAsTuVZPxDIzXBk9SZj9FylsyGdwbT89vS7ukakcfG
         h+I5pcJpyRHM14O7+gdAxYV/jX27NfNVuIpNGOxJNsmgjqjAtSAxExVH60LSX1Gwot24
         wIp8yTXo/0nzPnHN00r3Ev3qLRUv7jHIAofXJ0nPyStEAzlywmjqhj64cFOmQiiIVXsT
         I1Gg==
X-Forwarded-Encrypted: i=1; AJvYcCXTznV2QAT1BYJQPU8GeAlhGBSKAXkp5WMR7JtM6rlT6thEPpyQtC96DB+yJVA7Sxffc2MMA5A4piiR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwbr5K2gUnQTIyhjXk9ER7LT287K8aO4fmHv0+9ovi6E3FImOs
	feHHShYTISLbEYN6k8E8N9nTPRIrwnSfevW5XNxSJCnkQS727nQnmMJYBJvTWII=
X-Gm-Gg: ASbGnctkaDhIrNh4oEz+YuCPS6k7pqAXq7eOMSllnFyLiwdHL9estbEpxDjxKCrxaGL
	dlImjG+8CsP6jVv6ekNARJrixb4o7m2j8xGNu7KGG9TsUFV/HnWZyLet9Ma3ztpRQUn74VMj84n
	ZwGIsRRdJcPnh2P5CtzHgPofcZTkvXrIrNRL/Ed2xmv8loTHZ/j92h/YUibAAwhPiuvQxzkkjWt
	L1NJwGFcoYz+g5PmajpwzeIYsyzRNkn5KlqE5gEaKamEAGGC7qdRE1MTrRrvXxMYQUdNq8VOu8P
	LqpnKS6lLb+N+rOpzi5H91DTloHmEtmz9lWIPpnpMcd6zAJKMG9FvUnfK6auZJXjx257BqxTglN
	j4Q==
X-Google-Smtp-Source: AGHT+IG6i6LASvzQIRsj01arYQDJviqBEn/oP/EmdDE8D+TJPVgUwa41kw2BKL7zCVHOsNc3CK8D2g==
X-Received: by 2002:a17:902:cf07:b0:220:f140:f7be with SMTP id d9443c01a7336-22c53601243mr243185875ad.41.1745311347173;
        Tue, 22 Apr 2025 01:42:27 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf90d7f7sm8038343b3a.82.2025.04.22.01.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 01:42:26 -0700 (PDT)
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
Subject: [PATCH v12 5/5] pwm: sifive: clarify inverted compare logic in comments
Date: Tue, 22 Apr 2025 16:53:12 +0800
Message-Id: <20250422085312.812877-6-nylon.chen@sifive.com>
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

The reference manual says "pwms >= pwmcmpX -> HIGH", but in Figure 29 pwmcmpXcenter
is forced to 0 via an XOR, so hardware actually outputs HIGH when pwms < pwmcmpX.
Thus pwmcmp holds the off-period count, and the driver must invert it
to expose a normal active-high interface.

Co-developed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
---
 drivers/pwm/pwm-sifive.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index 065d6d2b84bc..a1f13801bca4 100644
--- a/drivers/pwm/pwm-sifive.c
+++ b/drivers/pwm/pwm-sifive.c
@@ -4,11 +4,28 @@
  * For SiFive's PWM IP block documentation please refer Chapter 14 of
  * Reference Manual : https://static.dev.sifive.com/FU540-C000-v1.0.pdf
  *
+ * PWM output inversion: According to the SiFive Reference manual
+ * the output of each comparator is high whenever the value of pwms is
+ * greater than or equal to the corresponding pwmcmpX[Reference Manual].
+ *
+ * Figure 29 in the same manual shows that the pwmcmpXcenter bit is
+ * hard-tied to 0 (XNOR), which effectively inverts the comparison so that
+ * the output goes HIGH when  `pwms < pwmcmpX`.
+ *
+ * In other words, each pwmcmp register actually defines the **inactive**
+ * (low) period of the pulse, not the active time exactly opposite to what
+ * the documentation text implies.
+ *
+ * To compensate, this driver always **inverts** the duty value when reading
+ * or writing pwmcmp registers , so that users interact with a conventional
+ * **active-high** PWM interface.
+ *
+ *
  * Limitations:
  * - When changing both duty cycle and period, we cannot prevent in
  *   software that the output might produce a period with mixed
  *   settings (new period length and old duty cycle).
- * - The hardware cannot generate a 100% duty cycle.
+ * - The hardware cannot generate a 0% duty cycle.
  * - The hardware generates only inverted output.
  */
 #include <linux/clk.h>
@@ -113,6 +130,10 @@ static int pwm_sifive_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
 	u32 duty, val, inactive;
 
 	inactive = readl(ddata->regs + PWM_SIFIVE_PWMCMP(pwm->hwpwm));
+	/*
+	 * PWM hardware uses 'inactive' counts in pwmcmp, so invert to get actual duty.
+	 * Here, 'inactive' is the low time and we compute duty as max_count - inactive.
+	 */
 	duty = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - inactive;
 
 	state->enabled = duty > 0;
@@ -161,6 +182,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	do_div(frac, state->period;
 	/* The hardware cannot generate a 0% duty cycle */
 	frac = min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);
+	/* pwmcmp register must be loaded with the inactive(invert the duty) */
 	inactive = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - frac;
 
 	mutex_lock(&ddata->lock);
-- 
2.34.1


