Return-Path: <devicetree+bounces-35378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E4683D531
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:01:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7FC491F26E48
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 09:01:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB577134BA;
	Fri, 26 Jan 2024 07:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="TDHak4eq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBDFC148
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 07:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706254854; cv=none; b=EmvKxQBuLvYTT73EGlbEzfvUwCMZAl9+2P996HauEzDOOdp7wki38HTWhr43ImpmMbPDKngZMavt+whQWbc3N5hMctQ0rJyzr1HtdwBwtwsC8/MyIU8lAbF+7NINyHhpQ8EXe3gFYDvyyFE3wPUqtDs5UrtNi9naTEruNCZ17qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706254854; c=relaxed/simple;
	bh=boIgaWCredgLlW/yGXwuYNqv1x3W6y+UFxuNq1JRMz0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ei2RhV9j55OvMPJwiPdrO5QAMdxLV/XR6MMBj5WCq2BipM8u3EYh6JQXvM/kIokOEI3l3M6OE8+30by4Zrnwh1hY3MA+f6DAOFHE9CerdzjF2ao0egE70y1ouhUT2LSqqp5wvrO7vosLZC07y77mN58t0ZoCBrPL2BNlp1vf5nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=TDHak4eq; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-5ceb3fe708eso27395a12.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 23:40:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1706254852; x=1706859652; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xx1YP8E0gDhv13e5xrfsDSvsYylKfZXINIzQWoz/9aM=;
        b=TDHak4eqQBJfAP2gI7mPvqcCH3XW4ySy5BtnT2C9E+qAp+/rguEALAxUnaAy6BnCOz
         HcTxzMO8Ao88+hkws6oALTxELLnfqVgN8/0wIA5IHKmCgTrTbT/dNM6o+4HuiH19RtFW
         FQvLrCxatCP41TrbeAJpVTuPyC8G8a0yur20mIDnu4uGPuKsGw7CoFavij/8YenfuS5i
         /Bo4WzlGLEr46ewjVg721Q19qxCrINjOnBqkeM07LmCzZBGZwlB7sal9B2E+09cHBQw/
         JJihmftQekjxjL+Pd5q5DNHVzSWKYI3u6UU+SdHQ4jf0EaAf2fD3sr2qypnucGPQBqzA
         mWEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706254852; x=1706859652;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xx1YP8E0gDhv13e5xrfsDSvsYylKfZXINIzQWoz/9aM=;
        b=inJG1b1odMHRov9alhi1UYwKGiERXZG4M2uF3/59CTXry/tiLb0ovO+tRon9lleA5u
         nLxpERcqUwOXqwm+Z5izv6F0lEoMfBy79p0065Nii1pWUFBAtQRRHyniH4OqMeYgKzxf
         t/GTLuWI4C0yGuW16G1yJ8ZYpiFZ0CqIYvghJ+Hx/S763+iSy82RAqXLDxeUqiFkiZZ1
         xRKtlpV9sGwPQtMkQh6j1Ph8L5LfS1ywtLC7Y5kKtVf2gX9Bb9mBDaM3yzJ5tRpLrAq8
         +Rl/JNj+1A6ZK9SPxZbZuNLg6DWJbtruK5eXSyfM3wCE1Evbq8U2j+CEXsgvyVZOuS/a
         UrHA==
X-Gm-Message-State: AOJu0YxF2Z61ncFM9hhZ7pUOtolnldr6shgfeqEh9ptd4XvK65F/FUI9
	DwZN29g36c6kzO8iPutNLzn+H43JDCvUCmwMaCJv2fUJK8n20XGuGs3WjOE05Yc=
X-Google-Smtp-Source: AGHT+IHP5PFE9yGmJvScZYLZjep7uFpEEjPgLkYQvtNEeX3TGPGSglkGBAttrdjpcX/oTgscOsZZKQ==
X-Received: by 2002:a17:902:e809:b0:1d7:51b5:1f76 with SMTP id u9-20020a170902e80900b001d751b51f76mr1414966plg.95.1706254852369;
        Thu, 25 Jan 2024 23:40:52 -0800 (PST)
Received: from hsinchu15.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id n3-20020a170902e54300b001d4816958c2sm521066plf.166.2024.01.25.23.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 23:40:51 -0800 (PST)
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
Subject: [PATCH v8 0/3] Change PWM-controlled LED pin active mode and algorithm
Date: Fri, 26 Jan 2024 15:40:42 +0800
Message-ID: <20240126074045.20159-1-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.42.0
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

Updated patches: 3
New patches: 0
Unchanged patches: 0

Links:
- [0]: https://sifive.cdn.prismic.io/sifive/c52a8e32-05ce-4aaf-95c8-7bf8453f8698_hifive-unleashed-a00-schematics-1.pdf
- [1]: https://sifive.cdn.prismic.io/sifive/6a06d6c0-6e66-49b5-8e9e-e68ce76f4192_hifive-unmatched-schematics-v3.pdf
- [2]: https://sifive.cdn.prismic.io/sifive/1a82e600-1f93-4f41-b2d8-86ed8b16acba_fu740-c000-manual-v1p6.pdf

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
 drivers/pwm/pwm-sifive.c                            |  9 +++++----
 3 files changed, 13 insertions(+), 20 deletions(-)

-- 
2.42.0


