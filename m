Return-Path: <devicetree+bounces-72466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF158FBDB0
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 23:01:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E54BB23A9F
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 21:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 457E214C5AA;
	Tue,  4 Jun 2024 21:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SYgwcG0+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D5114BF91
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 21:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717534847; cv=none; b=rKEN8wZrnO4WoJCJngA+ZLwg7ySIqxvUDtFpql42+aWfyDoZTa2lsHYTTmbrffO6KAoDj7LMF2aM+B68hcSy0B9cRf/+BaNdlLPj5hUap7fEiDB1lVKHWa9yPFncXiwOepJCEHJRppaNzZ5A+jYYeeDZx8CSSxK6R9w6QwpcIPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717534847; c=relaxed/simple;
	bh=Q+B+M9A3bozPmvs5f6VbzmhkxmOt/eX1zVh9tEbC3SA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iVGZ8eq55Xy0v80Gmb+qye3jYCOiCyWJuxgXT0EMnDN8Ot2GPoXRTxLWLx7ZS4noH0vstwkYEpBztb2c2KDW4f981PHvEZdV4DcBajs3OnOcDcgieDWCfhuyeOqao3ViNONuktVvdam5JiTcIBu/wsw3cYhn4gFUmMTjNcVSrCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SYgwcG0+; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2eaafda3b90so34509141fa.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 14:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717534843; x=1718139643; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VaxwRCwbACCoSFNLb+z66cNZdHbaMYdeMFIBxgS2cyU=;
        b=SYgwcG0+Hjz9cKBtvBX3jpK4FTkUpnMV5AxDELohrAHELZtB2BNebjyCncqhgnfXqm
         +fkluqrMsr6ZeIYEJI9SOkEaVsFTZW98zcwNa8Wl0fgLcR6FbSjdrZ2amhD6d/fnVjI/
         0Pk11YaoANE4ORUJrT7GKnhUo3Y3d53agEOgUNpNfDzLz+Z/n5VFNWE2VJgjDOKiNHZd
         QDmXPMgvawATpRqIfvXOAnODFS9aau7wavDizR0cR5T/3S5RGVfHHGWI3yzeiKAM2DdJ
         BrYWSbma6ES618lWTx5xuTafg/KkalZyt11Cz2BjUDulMQMXfzStZVEaeBbpLh82r08V
         hDFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717534843; x=1718139643;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VaxwRCwbACCoSFNLb+z66cNZdHbaMYdeMFIBxgS2cyU=;
        b=iei3+IeogYKcCzMoKip7zFRj7YdNRnFFTr7Yv8LstOqkyc4zif1U1UUh+WcngSIleT
         dToEPNnvVv7Fn9Nf4zQ9wTwZIG7Va0FMGesV+lnnbBi4U83gCVZIOmKKn2OTH/LTyuo0
         AjuozOxIKZx2ZubRc0GxmxhCZH+d3wk7fG884Q+2dShcJFeONPvHuA0yYugeVQYf2m8a
         3A2PNEm5VEdW+IqLi5/vFNn7xKoJEhwJuy4ixN0Xjzyv4E+qzHKNgtRJW7M5sA+WCeIx
         Lmnhp8ILftHTq2wVZmyCaMmhw5jSOtDjNWFZldsdWM9puIX08KIrfaP8l2SfMvzF7Xwl
         /X7g==
X-Forwarded-Encrypted: i=1; AJvYcCXjVUTz+Bb/nG8p+WWajm/uOsYhb9HAiAG65oMK3fPbUerhuE+ZmND1oIntu170S8p9tShZ2MKSAj57QrCZON/mqgMdlOyB256AvA==
X-Gm-Message-State: AOJu0YxS4t6U+S3J3pDWspWSfQyoS0/ylN7lqrZuoSlYDBh/4jVX7NFN
	RDDOcg/vRA8i3ruF7UXoiGdTONC67eK+uGhXKje3120Cl+gUYSvzvRIpLE3AgKo=
X-Google-Smtp-Source: AGHT+IEAn9HjzLbBUvqgiwNHYaRjErLlxxvmgKAxDpgU3qKbR6y/k+dyZllte1HY9bhiO7VtbTyp+g==
X-Received: by 2002:a2e:8604:0:b0:2ea:c7f7:ea20 with SMTP id 38308e7fff4ca-2eac7f7f536mr1327281fa.7.1717534842951;
        Tue, 04 Jun 2024 14:00:42 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ea91cc8082sm16140991fa.94.2024.06.04.14.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 14:00:42 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v7 0/2] pwm: Add GPIO PWM driver
Date: Tue, 04 Jun 2024 23:00:39 +0200
Message-Id: <20240604-pwm-gpio-v7-0-6b67cf60db92@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHeAX2YC/0XMQQ7CIBCF4as0sxZDQSl15T1MFwSndBIFAgY1D
 XcX68Ll//LyrZAxEWY4dSskLJQp+BbDrgO7GO+Q0bU1CC4O/Cg5i887c5ECw7GX0vSaK7TQ7jH
 hTK+NukytF8qPkN6bXNR3/SGKiz9SFOMM9dyM0dpBy/ONvElhH5KDqdb6AfQQsxWhAAAA
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
 Vincent Whitchurch <vincent.whitchurch@axis.com>, 
 Andy Shevchenko <andy@kernel.org>
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
Changes in v7:
- Drop platform_set_drvdata() as nothing use this anymore.
- Add a small blurb documenting the pwm-cells in the binding.
- Link to v6: https://lore.kernel.org/r/20240602-pwm-gpio-v6-0-e8f6ec9cc783@linaro.org

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

 .../devicetree/bindings/pwm/pwm-gpio.yaml          |  46 ++++
 Documentation/driver-api/gpio/drivers-on-gpio.rst  |   7 +-
 drivers/pwm/Kconfig                                |  11 +
 drivers/pwm/Makefile                               |   1 +
 drivers/pwm/pwm-gpio.c                             | 241 +++++++++++++++++++++
 5 files changed, 305 insertions(+), 1 deletion(-)
---
base-commit: cc97b8f37b097a1598410154ca472964a1d9b255
change-id: 20240530-pwm-gpio-e9133a1806ec

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


