Return-Path: <devicetree+bounces-168933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 92831A94EF2
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 11:45:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 811ED3B2637
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 09:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97E2025A2B6;
	Mon, 21 Apr 2025 09:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="l8Fz2Uem"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B230259493
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 09:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745228701; cv=none; b=spIyTJMiWwNXAHo+KENLLn6Jt467hVhO1VJ8iWglYytfQGTauiCrvD3pRASdSJEOFgNN91t6x6pEMQ2ZyAvwz/pDN79Qpo5p1Rv5GPK+f9tdD++S3BtYnRjxS9lxnsa97cKbv6NU8FyYLos2R18w8K24GAmeIrpd89nWBSqmVZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745228701; c=relaxed/simple;
	bh=r5RfvvulzxFSJLlZqt290Ox/VLbLHPLFtE3S4Q/eFF0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=c8Mc3MGQazVcPkszWqrneGdEHsUWvFk+lDAbFMOsW68ILgH0rpI4t7rgFN6rgQXtu9lpCqRAt1UupgWIwlOl5DwigIGPWXrNlfIHx9u7Xzu6pYyWRO/tgRfY1UGjDiLpC1x3cynW89Xtz5CNsr/YVIX44hCIxD1ICcWJWyKANCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=l8Fz2Uem; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-73bb647eb23so2947596b3a.0
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 02:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1745228699; x=1745833499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9oomD+rheO8hWgzZWTPQh42T2jzzNJl6ps7gCFAZrzo=;
        b=l8Fz2UemKb7dUbfYNQ+ZTpPaIaUs9C2xO5cB9NibsuXq67vDKcrB6OeKm24UC6UwRA
         nxQ9m94jOhcrmKXSNxpcor9+WWdTfNMVt5tMl7MHnTOpl0A+qhCLsVbkhz24Rv5tVEOf
         z/ZieyfbBai8UEVspMuxuyIWfFintRcvRvc/b6AypV2WdGS3hqaaHFQLECPcJsmEoq/q
         ynjfp9EpEvZ9jOapztEBiPcPe/VbfpbVOMzM4tUnUHAyBCp96vLBRGT+SOYq7caN7ngx
         TRYfFHZdRPn0XDZx908ioRKucFwUpwGFhONAy2zQme4hdlKbpxqrRZfsftUTUvm8P6X4
         3/XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745228699; x=1745833499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9oomD+rheO8hWgzZWTPQh42T2jzzNJl6ps7gCFAZrzo=;
        b=MsdbudDWltbrkgfllA9GztqFhqUr77aIOwDAIb1r1eBCs1GWO4dfLcElj0Zhfo0uVA
         E/sqsUc7fzVaq7UsvlLv6wJF+Rey+48QvrYQulzJJUha7IYNu4Cg7Z/z3AWKk16tbsMv
         BCKSrh7152iJtQl9xtaHKrkRLlAst2i2UT2jDd2JaWI+rhvc/oKKmYG3J+obTPdTrDBD
         yk9h5cruTh5paGSfJQjMOGyRzUCt8sy8JAljQRz4KWVboUqyJ9CZIQHrqu48GFhs2gnv
         pf/4pMZYi8ZyhFqCEV2mIaNja9OMsw8p9q2G788AiJIQKizoun70yB+AC0ZvCmUI1iub
         CDPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhBkw0H4kJRZfsCta1LP5pZU4AslQqRUkGJDRIiSYd0mQZ35f4YrHycWr/VHqTa77rQWcLOEg6HHGo@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+BYwnGFMoWwp1LcBYe2x6ycNSuXGX49CgghdBaFzpKQ7o/gou
	C9JRNcWsniiH3AaKrtotrZW0VmgJapYYYT6FnH/aUR0JhXy1AEGLpaJ4EtIK3EQ=
X-Gm-Gg: ASbGncuH0qOPvdXIU7uLP5/NmreUKvQNyGcsTskyp5TJ09QBK7tosUO/uaY60lWziSC
	Gr9uZKe1LurR56yUXax9oujmnvpyIRU7nZUH6xplMyvPOUP6Gkiv1aASTkxK89lpgbUqvD3vUg/
	mfxHT3vSmlieG7IMqjD4CzxGzdQO7guK0x2qNfMOLnemsLyof06oY0XL98hOvN55ZxXR+62h+jR
	QN3SFMviDXbWqme8TIGd/QSMp7hLTKhvAQ9nDSL8Cb9XOD5Ax8dCPd7MS1Qom2ZjjmaijpznPL+
	upoMNCnn43Lf1audXjpqcA2NCjMpOGjSdcD6R46/mjsaLiSG2nkaeek8/SJlsI7EssTaNNx9N3C
	cjQ==
X-Google-Smtp-Source: AGHT+IG3700mpvecN8OGtblvyO5T1EjDBNVZFMQ7/RSZwGoTrQaT76dyL6hRUY7pUUMOaUwerM2e1g==
X-Received: by 2002:a05:6a00:80d:b0:736:6ecd:8e34 with SMTP id d2e1a72fcca58-73dc1582843mr12640767b3a.18.1745228699199;
        Mon, 21 Apr 2025 02:44:59 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbfaacf32sm6371965b3a.142.2025.04.21.02.44.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 02:44:58 -0700 (PDT)
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
Subject: [PATCH v11 5/5] pwm: sifive: clarify inverted compare logic in comments
Date: Mon, 21 Apr 2025 17:55:21 +0800
Message-Id: <20250421095521.1500427-6-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250421095521.1500427-1-nylon.chen@sifive.com>
References: <20250421095521.1500427-1-nylon.chen@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The FU740‑C000 manual says “pwms ≥ pwmcmpX -> HIGH”, but in Figure 29 pwmcmpXcenter
is forced to 0 via an XOR, so hardware actually outputs HIGH when pwms < pwmcmpX.
Thus pwmcmp holds the off‑period count, and the driver must invert it
to expose a normal active‑high interface.

Co-developed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
---
 drivers/pwm/pwm-sifive.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index 1404c383461d..fd1660e16a4c 100644
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
+ * Figure 29 in the same manual shows that the pwmcmpXcenter bit is
+ * hard‑tied to 0 (XNOR), which effectively inverts the comparison so that
+ * the output goes HIGH when  `pwms < pwmcmpX`.
+ *
+ * In other words, each pwmcmp register actually defines the **inactive**
+ * (low) period of the pulse, not the active time exactly opposite to what
+ * the documentation text implies.
+ *
+ * To compensate, this driver always **inverts** the duty value when reading
+ * or writing pwmcmp registers , so that users interact with a conventional
+ * **active‑high** PWM interface.
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
@@ -113,6 +130,8 @@ static int pwm_sifive_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
 	u32 duty, val, inactive;
 
 	inactive = readl(ddata->regs + PWM_SIFIVE_PWMCMP(pwm->hwpwm));
+	/* PWM hardware uses 'inactive' counts in pwmcmp, so invert to get actual duty.
+	 * Here, 'inactive' is the low time and we compute duty as max_count - inactive. */
 	duty = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - inactive;
 
 	state->enabled = duty > 0;
@@ -160,6 +179,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	frac = num / state->period;
 	/* The hardware cannot generate a 0% duty cycle */
 	frac = min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);
+	/* pwmcmp register must be loaded with the inactive - time count (invert the duty) */
 	inactive = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - frac;
 
 	mutex_lock(&ddata->lock);
-- 
2.34.1


