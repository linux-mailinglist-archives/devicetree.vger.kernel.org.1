Return-Path: <devicetree+bounces-38606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1696D849B61
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 14:07:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADE1D282CAE
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 13:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1E671CA83;
	Mon,  5 Feb 2024 13:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gadgetoid.com header.i=@gadgetoid.com header.b="Mpr+Iz8i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 857471C6A1
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 13:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707138426; cv=none; b=A1Y4Z0AfTVxgn3hfXnScC4qWIO/FIKV3ZpfJFKF+ci5uSPQc0KZPktKNYcUItu7/Djn2kBwaEFUoDBSVJomeHjdnoBlI76h19g4s0GQcOKVb9qbM7wCD4s67JWlK5F0okFTpcI2obn4U23Tjsr5E9rtqLeKdZtFt7NSTA3JBUFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707138426; c=relaxed/simple;
	bh=kj5oXDdWjTX/J2ZGVZugOLeI+cfkVNHXrF6PII9SThQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JZ3If+i9a7/eSjscRGvvWG8mERwmAoFyqFP8YGznHZ9seHz/NGD+WfGCa4mMuU6iHjrJBW274DIiEHyx1DG+RsbuHmHiMY7g9+Mbl4oTG8P0MdxnP6XJ5yni89jbYw6i21zx0/nx2hUjCe36F77cfw2REqpwuAjCREODcFemEQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gadgetoid.com; spf=pass smtp.mailfrom=gadgetoid.com; dkim=pass (2048-bit key) header.d=gadgetoid.com header.i=@gadgetoid.com header.b=Mpr+Iz8i; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gadgetoid.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gadgetoid.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-214def5da12so2799098fac.2
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 05:07:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gadgetoid.com; s=google; t=1707138423; x=1707743223; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/H6eARlBWgKgxV/ZtkOc9y1qYb/Y56hfRsMXOxNcheU=;
        b=Mpr+Iz8iYt2JTcrECblDgwGzxRM/97ZbKOYfTuSoMczTssLdfAoY5d5+NXRHJiwzJS
         ALDr+XKGPy1usxkQYk+8ZknrD63RnPUhEJNaKWTsuplggcLoLcyXKIzGaR886qPy1b5n
         yaz4Nm66FO9rF+SEOUH3KVkSmB+jNq+rsxutHJiMafsEVe5E/50LOIBLgNjj2hA9PGXg
         NscfF1YjL0rRdZQ8Q7I/2DNESTplO3+7JDcTUPyODvVDeLRy36QNhuXkAaiXENrX8yUe
         LCtpNtoCrO7kMvWYlT6rj+unRupfa56rSyMb3Osiu4sP5Q3vC6sIcsnBs/Mb0ZNrPDxF
         ZEhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707138423; x=1707743223;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/H6eARlBWgKgxV/ZtkOc9y1qYb/Y56hfRsMXOxNcheU=;
        b=eujUdwrMMyzWx2zOFFcTYobgxwZfvy820QGBq/xydoUzgauZEmYQVhh9Ud2G51/YN2
         ZuwezzIjcfsSRhkUL/9G1flvN7n7p046GfS3Is0Wtm2WY5mPoG4f6ke37tnqbPOXdk5y
         A9aQ/b2IA/sCGrPDEgMmp1COchWgLHXjYEHlI42PH2UOl9dETDlqkxveFzpYtizPpFW1
         wvKz7UFSpdHTA/ETvhSxswS0xGkJWgLdSpyVF5o0yQMF4v8ohKxdDbhgjVVebJ77l4Kw
         jq+aikzxlghQ2zLEeNZwoaLpQMGq+lKljAPUV9EOJUzdjzCwjNcXziubde55tQGH+3KJ
         B+Iw==
X-Gm-Message-State: AOJu0YzI3t+Zko8gXCNtlD6rFzNNmVHphMRK9TNALmSPwQXFoue5szzS
	QCir5FXuyQYWxT+EuBAo0BSx/PT+t/CyF9nvabPeEuMtgMCfyXym79fPHSnEMAweKaF9QJCN7BZ
	i8IS4XPgD37iCEnXI8DONCZg8GWUVZTxXL/kU/D+yydqSBW4NGTIXmaNo
X-Google-Smtp-Source: AGHT+IEkLUyHqWKv2xv0DJNMzx+vpkU/sDWa1HHvcZpPuDo8gMGn7LtGIjCfwIBzlaTQ07qaKwCePUQsKpKsT6jKaFk=
X-Received: by 2002:a05:6870:1b1b:b0:214:c98e:40bd with SMTP id
 hl27-20020a0568701b1b00b00214c98e40bdmr9221509oab.14.1707138423282; Mon, 05
 Feb 2024 05:07:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240204220851.4783-1-wahrenst@gmx.net>
In-Reply-To: <20240204220851.4783-1-wahrenst@gmx.net>
From: Phil Howard <phil@gadgetoid.com>
Date: Mon, 5 Feb 2024 13:06:52 +0000
Message-ID: <CA+kSVo_skHAiw0smezZYKEXs4eu2uZy=XwQMfbq4dZmEfcpwEA@mail.gmail.com>
Subject: Re: [PATCH V4 0/2] pwm: Add GPIO PWM driver
To: Stefan Wahren <wahrenst@gmx.net>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	andy.shevchenko@gmail.com, Angelo Compagnucci <angelo.compagnucci@gmail.com>, 
	Sean Young <sean@mess.org>, Linus Walleij <linus.walleij@linaro.org>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 4 Feb 2024 at 22:09, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Add a software PWM which toggles a GPIO from a high-resolution timer.
>
> Recent discussions in the Raspberry Pi community revealt that a lot
> of users still use MMIO userspace tools for GPIO access. One argument
> for this approach is the lack of a GPIO PWM kernel driver. So this
> series tries to fill this gap.
>
> This continues the work of Vincent Whitchurch [1], which is easier
> to read and more consequent by rejecting sleeping GPIOs than Nicola's
> approach [2].
>
> The work has been tested on a Raspberry Pi 3 B+ and a cheap logic
> analyzer.

Tested on a Pi 5 with a Rigol scope. I have not done any comparative
testing to the contemporary methods of GPIO on a Pi (they're probably
not great) but it looks good at a glance.

There is jitter, as you might expect, though I would expect this to be much
better than the userspace soft PWM we're used to.

Mostly for Pi users who happen to be watching this unfold-

PWM on the Pi 5 is achieved via the PCIe bus to the RP1 peripheral and
IO controller on a Pi 5 so it's possible to saturate the PCIe bus and have
A Bad Day. I think ~200KHz is about the practical limit here, if I try and push
to 400KHz things start to get dicy. The faster you go, the more proportional
impact jitter will have on the resulting signal.

My optimistic first try in the MHz range booted me off SSH and required a
power cycle so I'm not even sure what went wrong. Less of an issue for
on-chip GPIO controllers ala <= Pi 4.

Here's my very naive overlay -

// Definitions for w1-gpio module (without external pullup)
/dts-v1/;
/plugin/;

/ {
    compatible = "brcm,bcm2835";
    fragment@0 {
        target-path = "/";
        __overlay__ {
            pwm_gpio: pwm_gpio@0 {
                compatible = "pwm-gpio";
                pinctrl-names = "default";
                pinctrl-0 = <&pwm_gpio_pins>;
                gpios = <&gpio 4 0>;
                status = "okay";
            };
        };
    };

    fragment@1 {
        target = <&gpio>;
        __overlay__ {
            pwm_gpio_pins: pwm_gpio_pins@0 {
                brcm,pins = <4>;
                brcm,function = <1>; // out
                brcm,pull = <0>; // off
            };
        };
    };
};

>
> V4:
>  - address DT bindings comments from Conor Dooley
>  - drop unnecessary MODULE_ALIAS() as suggested by Krzysztof Kozlowski
>  - add range checks to apply which consider the hrtimer resolution
>    (idea comes from Sean Young)
>  - mark driver as atomic as suggested by Sean Young
>
> V3:
>  - rebase on top of v6.8-pwm-next
>  - cherry-pick improvements from Nicola's series
>  - try to address Uwe's, Linus' and Andy's comments
>  - try to avoid GPIO glitches during probe
>  - fix pwm_gpio_remove()
>  - some code clean up's and comments
>
> V2:
>  - Rename gpio to gpios in binding
>  - Calculate next expiry from expected current expiry rather than "now"
>  - Only change configuration after current period ends
>  - Implement get_state()
>  - Add error message for probe failures
>  - Stop PWM before unregister
>
> [1] - https://lore.kernel.org/all/20200915135445.al75xmjxudj2rgcp@axis.com/T/
> [2] - https://lore.kernel.org/all/20201205214353.xapax46tt5snzd2v@einstein.dilieto.eu/
>
> Nicola Di Lieto (1):
>   dt-bindings: pwm: Add pwm-gpio
>
> Vincent Whitchurch (1):
>   pwm: Add GPIO PWM driver
>
>  .../devicetree/bindings/pwm/pwm-gpio.yaml     |  42 ++++
>  drivers/pwm/Kconfig                           |  11 +
>  drivers/pwm/Makefile                          |   1 +
>  drivers/pwm/pwm-gpio.c                        | 228 ++++++++++++++++++
>  4 files changed, 282 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-gpio.yaml
>  create mode 100644 drivers/pwm/pwm-gpio.c
>
> --
> 2.34.1
>


-- 
Philip Howard

