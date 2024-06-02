Return-Path: <devicetree+bounces-71672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4108D7818
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 22:33:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7071E1F211AF
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 20:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8323B762FF;
	Sun,  2 Jun 2024 20:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a9/+r6x7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F85D1EB21
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 20:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717360402; cv=none; b=alitNQy1FLuTJY2YZj+jaVkpGWrMZI++lQW/ol4cuI2Zg5s4DA2oJpBznBraZL/5nsjeG6WNZ85tczARsBejv1/ECNR9UwaFdSbabYVGxY4FzibJJOBPFLwA79EN4fABpCBKuvnHpuPt+v/T9Od14IKNDk+ND/DVVc15Ilf7D0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717360402; c=relaxed/simple;
	bh=eaollUt0Q51i2TBQv2QV8NPcC6iZJYTPlVOq6B1uNek=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=sWb1CJOnqgcx/hPjZ3WSb9YdWqvw1Dboqs96YTULZa9THkOlezjyjessi9vx6Thf3XgNXToI7d55dQhlOsoh4478MzCifZiF4i1wXrZ8ed5EBYThWRTjMciGt1wPTZs1kU4y9RV4itDCMqOFZz//EqjHebpvxEBHXp2HhP34GaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a9/+r6x7; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2e73359b8fbso51499201fa.2
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 13:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717360399; x=1717965199; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=86OZanuMY4+3kilJLjIHvtee0iVXytsWchm6gD37KUA=;
        b=a9/+r6x7d6gu1SsQo2aleNlKkHm2HcaeXJMkKkjNz+g6kJqdHVl3/H10Q0b8hskRsb
         jsKavO/k561xRDbLEZcVXEpj3ddFWnIKAbjrdx5JUlmMKAwJcUsqb+ugPhVhXfj2cBwH
         BqNIiAHepmL852K003W3MWYa3oZYzNU2tCFC74ninA5v5K0mfxUn6eVo4jdCA6LN3L1S
         bfeuOvIgsG9m18bMHUK/sZSCQ2s1wTDO9bHzpoIx0ljU+use1eq3n0TKPXQCAYGQ3Fyl
         KyBOIqes01blwVqeta9Ne+bJAAb+zdtuW80M5/PAYJvIDPUegB3zQ/btV2LZdJneIl+8
         5rqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717360399; x=1717965199;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=86OZanuMY4+3kilJLjIHvtee0iVXytsWchm6gD37KUA=;
        b=KbdFuYZyGLZsAd2dgYEuXT2L/fTbnW1lGKxeXAiTm62+79xRzDjqIOwetro3QukDrK
         wDGl7sWFTBE+EattEG6l1BHWQ8e6xEk8I1EtYSYVcyHiyj9ub6iVTOQ4j2EFs05BwbLD
         ldNtpW0pKChbMkzf4oKd7g5mf4/8BfmpNV+jJ0hqygkwx4aorP/wUIQOitNgZtpi1CXJ
         nkagNh1FZjvl5kMlnsuN5I6uGWTcrl1N2Q2KzhZSRrf5gdlni4sX5CqxS2yN3CCYGnyD
         ECtwFjqKXNEQ7cBzqMhx/RPIlIb4/7VNuN6PEhJRxJ1poXUKGyVChMyGgxelYHqm7DBE
         gx0g==
X-Forwarded-Encrypted: i=1; AJvYcCXsSZH3mBlVfia+UF8VJ9rMo6E1IQ89fUO3le82AA7AN0pZaTCuOPh0TpJ7WLCh7K73eEeZ/AvDV07Hq0Xi/KeTrJ7R9SYUdgnVMw==
X-Gm-Message-State: AOJu0YwC96Ah4K4NmOebxruVlWO/qpeDs8BRjNb1ftNOjViVAsRWT1ol
	uHVgjzBQs7mO1fT0fWQau07evfFwWloX0teN3heXxTxum4kT0qJ1GxIZC37WfS4=
X-Google-Smtp-Source: AGHT+IFlGFilfhACZHo6C2pYPl33Z9Ms+nIhbHz63YhOcdhx8F2f/N+Z2tM6qaCcwxw5MuRwO+17nA==
X-Received: by 2002:a05:6512:2508:b0:51b:1e76:4ea9 with SMTP id 2adb3069b0e04-52b895608d9mr6426541e87.4.1717360398520;
        Sun, 02 Jun 2024 13:33:18 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b98845508sm245859e87.288.2024.06.02.13.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 13:33:18 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v6 0/2] pwm: Add GPIO PWM driver
Date: Sun, 02 Jun 2024 22:33:07 +0200
Message-Id: <20240602-pwm-gpio-v6-0-e8f6ec9cc783@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAPXXGYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyzHQUlJIzE
 vPSU3UzU4B8JSMDIxMDU2MD3YLyXN30gsx83VRLQ2PjREMLA7PUZCWg8oKi1LTMCrBR0bG1tQC
 4dBpOWgAAAA==
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, andy.shevchenko@gmail.com, 
 Philip Howard <phil@gadgetoid.com>, Sean Young <sean@mess.org>, 
 Chris Morgan <macromorgan@hotmail.com>, Stefan Wahren <wahrenst@gmx.net>, 
 linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 devicetree@vger.kernel.org
Cc: Linus Walleij <linus.walleij@linaro.org>, 
 Nicola Di Lieto <nicola.dilieto@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dhruva Gole <d-gole@ti.com>, 
 Vincent Whitchurch <vincent.whitchurch@axis.com>
X-Mailer: b4 0.13.0

Add a software PWM which toggles a GPIO from a high-resolution timer.

Recent discussions in the Raspberry Pi community revealt that a lot
of users still use MMIO userspace tools for GPIO access. One argument
for this approach is the lack of a GPIO PWM kernel driver. So this
series tries to fill this gap.

This continues the work of Vincent Whitchurch [1], which is easier
to read and more consequent by rejecting sleeping GPIOs than Nicola's
approach [2]. It further takes over where Stefan Wahren left off.

I have not looked into the interrupt storm problem mentioned in [3]
but instead focused on some real-life tests:

The IXP4xx NSLU2 has a speaker connected directly to a GPIO, and I
wanted to use this patch to provide a proper beeper for the machine
and not have to rely on custom hacks.

I added a DTS patch like this:

gpio_pwm: pwm {
        #pwm-cells = <3>;
        compatible = "pwm-gpio";
        gpios = <&gpio0 4 GPIO_ACTIVE_HIGH>;
};

beeper {
        compatible = "pwm-beeper";
        pwms = <&gpio_pwm 0 1 0>;
        beeper-hz = <1000>;
};

Then activated the necessary drivers with input evdev and they
both probe fine. Then I use this test program:
https://gist.github.com/licheegh/3dbdc8918325e8af8d4d13805cd0c350
with a few different beep frequencies, such as "beep 400"
for an OK sounding 400 Hz signal.

Above ~10000 Hz the sound becomes bad and mostly sound like
different kinds of noise. But this is not so bad for the NSLU2
which is a 266 MHz ARM XScale machine, and we do not need any better
on this machine so mission accomplished. Pushing the playback
to higher and higher rates does not crash the machine, the
sample program always terminates.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
v6:
- Add a small blurb to drivers-on-gpio.rst
- Add missing headers to driver
- Use guarded spinlocks from <linux/cleanup.h>
- Drop minor surplus whitespace
- Use dev pointer everywhere in probe()
- Drop dev_info() chatter at end of probe()
- Use devm_add_action_or_reset() for a hook to disable the hrtimer and
  get rid of the .remove() callback altogether.

V5:
 - add Reviewed-by's for dt-binding patch
 - rebase on top of v6.10-rc1
 - print hr resolution at driver probe
 - fix grammar in Kconfig
 - fix return type of pwm_gpio_toggle
 - implement hrtimer resolution rounding as noted by Uwe
 - use firmware node path instead of GPIO numbers as suggested by Andy
 - adjust some header includes and style issues as noted by Andy

V4:
 - address DT bindings comments from Conor Dooley
 - drop unnecessary MODULE_ALIAS() as suggested by Krzysztof Kozlowski
 - add range checks to apply which consider the hrtimer resolution
   (idea comes from Sean Young)
 - mark driver as atomic as suggested by Sean Young

V3:
 - rebase on top of v6.8-pwm-next
 - cherry-pick improvements from Nicola's series
 - try to address Uwe's, Linus' and Andy's comments
 - try to avoid GPIO glitches during probe
 - fix pwm_gpio_remove()
 - some code clean up's and comments

V2:
 - Rename gpio to gpios in binding
 - Calculate next expiry from expected current expiry rather than "now"
 - Only change configuration after current period ends
 - Implement get_state()
 - Add error message for probe failures
 - Stop PWM before unregister

[1] - https://lore.kernel.org/all/20200915135445.al75xmjxudj2rgcp@axis.com/T/
[2] - https://lore.kernel.org/all/20201205214353.xapax46tt5snzd2v@einstein.dilieto.eu/
[3] - https://lore.kernel.org/linux-pwm/CACRpkdary+kDrTJ=u4VbSTv7wXGLQj9_fy7mv0w-Zg+eDvGXVQ@mail.gmail.com/T/#m513f255daa9f30c325d11999cacd086411591bf9

---
Nicola Di Lieto (1):
      dt-bindings: pwm: Add pwm-gpio

Vincent Whitchurch (1):
      pwm: Add GPIO PWM driver

 .../devicetree/bindings/pwm/pwm-gpio.yaml          |  42 ++++
 Documentation/driver-api/gpio/drivers-on-gpio.rst  |   7 +-
 drivers/pwm/Kconfig                                |  11 +
 drivers/pwm/Makefile                               |   1 +
 drivers/pwm/pwm-gpio.c                             | 243 +++++++++++++++++++++
 5 files changed, 303 insertions(+), 1 deletion(-)
---
base-commit: cc97b8f37b097a1598410154ca472964a1d9b255
change-id: 20240530-pwm-gpio-e9133a1806ec

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


