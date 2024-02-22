Return-Path: <devicetree+bounces-44635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7497185F289
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:12:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F21F41F21D20
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 08:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B86C210E9;
	Thu, 22 Feb 2024 08:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="g6iibLfO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA8C17C73
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 08:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708589568; cv=none; b=PH+3yYUGH68O2EnQ/DilcDG6CCGon/S5jchFegdUFx2+fhAspLzYf+dioDeHXEMRg//Dh9H7wXqoPHe+imlEnhObKGqpqF+KTRdMbRsS/bf8oZTnrD2dYS9XB7YIjkoJZxTUtOu0ELAOf0ivYKDZ5/UuSczC5mayam9J3GzY7QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708589568; c=relaxed/simple;
	bh=109AvBUKTCt8zYZv15cJALXjRO+Ds/rqVjdmAlqe6vg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XF/RAKwcYK+uJaB3qOzTtztfLiijpedbI2+74akhJXjoCEj5NOui9M/ed5k0ERV1vrgcaaDt3KzoWp2NVL83z0dLMbpa9gwNw992rem9SlLOra3oG7nm5M2YV+tazuVvt6paul1rPEiGH3VpJa8Q+Bt2QBGsqyDUc2w0SsSKaIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=g6iibLfO; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-5d42e7ab8a9so5314184a12.3
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 00:12:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1708589559; x=1709194359; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=srJ7CIKPfZgDl9Um7d4eDADM8otcquGOUbdJDDVwdH0=;
        b=g6iibLfOw4Rkks5FltYu7w+fYOYqdOL2iu77RB4Cm+Pzk3x2Y/qyLZSlS/+asNa5k+
         IOVNOXOwaK1fNRlMeLW9VKnLUi+3Cry98zxxc5y95zcP798xMMAsc0PLD187UxX/k/ms
         KtLRGKB64/YsZb7uZkQOfmQeH5T6GUF4N9xOF3LmGECKm3YQrtkjPjvAPtN9nT+tmIfM
         NjvsdaIiIRcz5uGPjvoH40XqM8yjOYHCGo+Hc7kIa4A+vfU9Y+g938mZcBz0vP+wWtA6
         6Uwoy4tJ1hFoXrlpshxz7mnBl8szol+ANtd10NwXR4AP+jxZd0hqYTfroZI9qEonZYi+
         sD3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708589559; x=1709194359;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=srJ7CIKPfZgDl9Um7d4eDADM8otcquGOUbdJDDVwdH0=;
        b=PrToozun9nDJTYsCDnYE/43avX+BHrG5KoDR3AFoGhHj1rCkmwDr+C4FEeBbRov1ei
         xiB7+e7BFZunDZHjesYJeveQ2UrWIA9D8UVnpO3lpDfE2pZhlGwiw7vWcIa9Fsf+o7U3
         pN4Ki0ZHD1Zp+tq7mNyKsJQRixjtmBA24I/c3NDvByGrEtTPE2v9aBmd+pt9iCs8oNmh
         e4ENG/SEx2fItXOI6BDvezAo+6sl9Gz4u1/1At2pnUCRoYPdr+s4RNcVd11OhUvmcm5e
         SwNPuHpRrxj/Zg6lNjeHi+0Ql6PTanopp5ySexRm42sleHKcTPtSPJjaVZToTGWCu0Es
         ThcA==
X-Forwarded-Encrypted: i=1; AJvYcCVL0JgIrgSR5hxIG1z2BLnaqhDER28ZESoCBpVyJFbsqvy+z5PMN6PZ11qJpx4IXdTY+egFqhopxh5nvLAfp7Lj0Rh3PYIAMUf/NQ==
X-Gm-Message-State: AOJu0Yyc8I1KWnKkzwYB8oiCqh+bKYdX5b0HUQzSezpkG1MigH830WI2
	/raqNownWhAZDX1EKA/OqevlfwHcjmzBHw++iLXmCicw6narjWhg9463WVdx3bk=
X-Google-Smtp-Source: AGHT+IH1M21xaAm9IWGe9uyygy5ZFYZAnDH5YlVy5Z+XKY/q4Ud1AAgANQ7ADpjUjZtqZ4J+0WXtEQ==
X-Received: by 2002:a05:6a21:31c8:b0:1a0:8a46:c3bf with SMTP id zb8-20020a056a2131c800b001a08a46c3bfmr15856784pzb.21.1708589558614;
        Thu, 22 Feb 2024 00:12:38 -0800 (PST)
Received: from hsinchu15.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id lf8-20020a170902fb4800b001db5ea825b2sm9412796plb.123.2024.02.22.00.12.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 00:12:38 -0800 (PST)
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
Subject: [PATCH v9 0/3] Change PWM-controlled LED pin active mode and algorithm
Date: Thu, 22 Feb 2024 16:12:28 +0800
Message-ID: <20240222081231.213406-1-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to the circuit diagram of User LEDs - RGB described in the
manual hifive-unleashed-a00.pdf[0] and hifive-unmatched-schematics-v3.pdf[1].

The behavior of PWM is acitve-high.

According to the descriptionof PWM for pwmcmp in SiFive FU740-C000 Manual[2].

The pwm algorithm is (PW) pulse active time  = (D) duty * (T) period.
The `frac` variable is pulse "inactive" time so we need to invert it.

So this patchset removes active-low in DTS and adds reverse logic to the driver.

Updated patches: 1
New patches: 0
Unchanged patches: 2

Links:
- [0]: https://sifive.cdn.prismic.io/sifive/c52a8e32-05ce-4aaf-95c8-7bf8453f8698_hifive-unleashed-a00-schematics-1.pdf
- [1]: https://sifive.cdn.prismic.io/sifive/6a06d6c0-6e66-49b5-8e9e-e68ce76f4192_hifive-unmatched-schematics-v3.pdf
- [2]: https://sifive.cdn.prismic.io/sifive/1a82e600-1f93-4f41-b2d8-86ed8b16acba_fu740-c000-manual-v1p6.pdf

Changed in v9:
 - Fix commit message to adhere to 75 columns rule.
 - Update commit message's subject.
 - Add a variable for inactive logic.

Changed in v8:
 - Fix Signed-off-by and Co-developed-by typo.

Changed in v7:
 - Remove active-low strings from hifive-unleashed-a00.dts file.

Changed in v6:
 - Separate the idempotent test bug fixes into a new patch.
 - Move the reversing the duty before the line checking
   state->enabled.
 - Fix the algorithm and change it to take the minimum value first and
   then reverse it.

Changed in v5:
 - Add the updates to the PWM algorithm based on version 2 back in.
 - Replace div64_ul with DIV_ROUND_UP_ULL to correct the error in the
   period value of the idempotent test in pwm_apply_state_debug.

Changed in v4:
 - Remove previous updates to the PWM algorithm.

Changed in v3:
 - Convert the reference link to standard link.
 - Move the inverted function before taking the minimum value.
 - Change polarity check condition(high and low).
 - Pick the biggest period length possible that is not bigger than the
   requested period.

Changed in v2:
 - Convert the reference link to standard link.
 - Fix typo: s/sifive unmatched:/sifive: unmatched:/.
 - Remove active-low from hifive-unleashed-a00.dts.
 - Include this reference link in the dts and pwm commit messages.

Nylon Chen (3):
  riscv: dts: sifive: unleashed/unmatched: Remove PWM controlled LED's
    active-low properties
  pwm: sifive: change the PWM controlled LED algorithm
  pwm: sifive: Fix the error in the idempotent test within the
    pwm_apply_state_debug function

 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 12 ++++--------
 arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 12 ++++--------
 drivers/pwm/pwm-sifive.c                            | 12 +++++++-----
 3 files changed, 15 insertions(+), 21 deletions(-)

-- 
2.43.0


