Return-Path: <devicetree+bounces-175466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7C1AB0F67
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:42:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E9D44E7B6A
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4343628D8EF;
	Fri,  9 May 2025 09:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="f0cHU1Fq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B734D28D8E9
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 09:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746783722; cv=none; b=AMEy5qtkII7Fb3EnwPpCk7vx1PKaUTtmTHeieOL7m0+VQ6HAnNO/x7rXC6cUD9SVDZgsTenv3XnAaDUlPdme+UC34XmhOIFHBG+lFD8ZWMxW7wdT8dNsIN+yZ5cG6rWq/pFk9JT2CNRkPyZvBTXleqGxYanYtyavBK13CdedMQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746783722; c=relaxed/simple;
	bh=to9iLI09IuUpk5B76wu/vxa60Ry89kvmQ/y3CQWanPs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GUuBN+4bzg3U7JUk0D7Dxhi3/yYo0J2CoMDP9TdGvrB0jHxw6ogOKFcqeJRh9ylmB+HnxyPEPATugmJxyTzb8JZ9KFD9TsPCXw7w5XBeHMdF+V5V0TKwa3wu1skWxjzLyDdWLsobd8U5q6k293oXEymhMwg4TZygUgS8lUDp83s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=f0cHU1Fq; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-74068f95d9fso1934674b3a.0
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 02:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1746783718; x=1747388518; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=db3r56u6WbxunAQsqmv+qz1Bx6fNV6R3VtqVTo1N8lM=;
        b=f0cHU1FqsQM77D6YjCqt1Q7VxDzwAtqjLwRwNFDP3SyCh9VLzkZSCnV9RSGKH/eqzt
         nMfeazoI2Ryi8htOswiNeps7mLoY1eIS2q1yG8eQMjXQJwhvuRVuXg9eH+eFeXcV8MAu
         e2iAq0GZb/hgqAfSb3/gseSrneanO8q7VZ43cCz0qRhtnUEf0Xdg1S4OjLgnJIXAd0h3
         Gzvuv+G0+oi+LhMJbc/K3kpA7+dytJs9+F/9bE5Cnn7ZiL44bY3HXl9bS4BVG3fDnM9H
         xj3b71GR0vFxbQTpbkuumJDTk/Tmuj55ZrAXWld7+B3Fsbfc3+Hus3EUyU4/SHSsBlcy
         NA5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746783718; x=1747388518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=db3r56u6WbxunAQsqmv+qz1Bx6fNV6R3VtqVTo1N8lM=;
        b=NZGaia0RDx3sExz+JcNeMBaoWbGnZ1lhawpZDbV1iosTAMY9V4flY2vEKUvc98nX95
         +MjzPvHRFXVTs2rV8snJRA07Cxeh2slEqx83NuuUEjb+Ku9XI0qrb3L+eJV1Z9zdCyU7
         XWpS7WumIMw8ewZlNYAsR1nTDgDnMGUDbKI2DX3t4TMPMH2lzrnpNOHnmZs3QfOadSy1
         UeWkVjWzVWKwh/ftL08Q7VPLJi35HJfm9Mbc9uuwGPF4plYfJKLWruxdaD3CyhRbREli
         LPLEi0vcCqNkbsc6V6+gEThY6B/sJ6Ip1hMsr4gQP7Aa33rP7PVItUrGeHyF7/fSOfSG
         dIkA==
X-Forwarded-Encrypted: i=1; AJvYcCVqlA4P6nXuCY7RuK6/O94xQELmvFpBXWV/0SR6maa7tVDetGVXeUdSnfZ4a1uNgy9VGXx/osAgtN8O@vger.kernel.org
X-Gm-Message-State: AOJu0YzmgvrBDnQ6Nhi9oQzyo+SIc5AAIsMqVQbACPvifkF0r5j5gz7H
	4yHMWGfTKkML0qlxyAGnKlcSZ4JSV1pTxIR9e4cvIw/SoEAm+LXmBPYLrXbckfQ=
X-Gm-Gg: ASbGncvENXONcrfb+DA3Y67J6DcYRlE76w9DTcJ3oawAAPBRkn8vu0HqtIUaArQL9MW
	EygkgkuFUpy5OonbfSGjWsmax2os7JJmQ3c/z6ssW/B8kEfYSypHLerdfseQpglJGnoUgJRCxzs
	yznuBLWXtt8zavjU+K6HV6e+qtLVeX8CA2vMoj/xWEYODjMMT8qVQMlPXalxj6H3OuUcDhzozZm
	rYYMzoT54mNi8prdgvbeunPEgSpouzbZJRLJMe7KHLCLdR/yOICHTz7XTiZSUOC2Ttg2AMXoSkS
	43HVoZXxLcw8WhsD8gizt1ulP8UCTmzMDyPfh7wtaDCvv/5ssc4NO6RDM+xJS9riBhpi/DQWAGG
	Cnw==
X-Google-Smtp-Source: AGHT+IH5OUjlU44wPTcS9YvNdweW8Hmi+ylHBcWO0ZjkJN+zsQnLZEzF4So5FHTc3N4rkAEKt0P6Pg==
X-Received: by 2002:a17:902:e744:b0:22d:b240:34c9 with SMTP id d9443c01a7336-22fc91a9093mr48509735ad.53.1746783717970;
        Fri, 09 May 2025 02:41:57 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc8271c38sm13271035ad.119.2025.05.09.02.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 02:41:57 -0700 (PDT)
From: Nylon Chen <nylon.chen@sifive.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	devicetree@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	samuel.holland@sifive.com,
	Nylon Chen <nylon.chen@sifive.com>,
	Zong Li <zong.li@sifive.com>
Subject: [PATCH v14 5/5] pwm: sifive: clarify inverted compare logic in comments
Date: Fri,  9 May 2025 17:52:34 +0800
Message-Id: <20250509095234.643890-6-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509095234.643890-1-nylon.chen@sifive.com>
References: <20250509095234.643890-1-nylon.chen@sifive.com>
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
 drivers/pwm/pwm-sifive.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index 70cf644cde4a..4a07315b0744 100644
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
-- 
2.34.1


