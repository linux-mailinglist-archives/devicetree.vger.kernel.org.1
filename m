Return-Path: <devicetree+bounces-133074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA8A9F928A
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:50:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D31416D7E0
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:50:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6623E215198;
	Fri, 20 Dec 2024 12:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n4uFoXfP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA42F1BB6A0
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734699029; cv=none; b=YaX/yhHFu5pW39xaqMrBtws8hMe2OUN6ospHmww8jEKKJgQz/2tiF4brvNlhjmRDI+gNU3eapgfYQOP+jhW97caBZ3V/s8U4+VOgKiV9cWys0G28Kw9CJJckSBMBQ7g/KzCQEeTD4D6u6SVeFbhqfJyOC2tBNWk3OUCbuJ1hYYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734699029; c=relaxed/simple;
	bh=23yyLAUmU38oAd1esFZmS79hTf3OpT0gcNBA6YL/4Qk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Qreh0cOcj9QNSdlndweEAQyPFLRa5/3D1EqwQGWKJoYqrzYJDC1xpP5JqUwp4j3Z0hvnz1A9uBXeHahS4gbPR53vr5FVWP1IHXZcPtiRMVEv/syGkUCfP9EBT6/kBnn0xeH+qOwH8FTV0Wu4IBlX55nTCsLTSCdwvR4cTDChTi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n4uFoXfP; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53e3a227b82so1626956e87.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 04:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734699026; x=1735303826; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=23yyLAUmU38oAd1esFZmS79hTf3OpT0gcNBA6YL/4Qk=;
        b=n4uFoXfP65x+0JCvbCOM93rGpOMWasIWnpePqq0FnNjjHo0ZL9G3qp0HeZrO9/KMSS
         eQGirclHfsGA+iu9/okiOZ83r+Gmt7LPSye5eI9/9kIJes1lHKyasPkqfLNlXTZRsFYH
         CwYzHMSBs/ayspNONJRQ+LLjPoXKdsHfN+t0fGxUGxyfwwG09JysfSLvaV3hZXP3TKhC
         XWgwf57L/KmHIZBj94jEMZ24Ykq/v9+WdfR4EGcPpocKOWsOejm1KrVV4Rfovz6/IpXB
         QkLFR0Pd52ez5yP2e7S/sYWmdvUa7VXTWUFbMFkbOIjMAhw5FsNLenbWKvYOEer/YJMC
         cTnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734699026; x=1735303826;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=23yyLAUmU38oAd1esFZmS79hTf3OpT0gcNBA6YL/4Qk=;
        b=AcsWis2h1CZXQwWSYGGCfZ7VqZf8raQf60D5AKq5rOIod5+bmBNy/BOshUHfSdyTOy
         HfjxVhx3SDE3siau+WnriMT50JxUetIoAv53Y6yTBynl+rvpzNKaagjPjXr1APMWfsrH
         FLnVpyfP5Xu9zJNWN5IrTC8YT8ua+XqwvIa5qlR1RDPdeQVQV51YSiKStcUFOhQm3SSm
         O2NdvarvnEs3GhC+B3GPN4fDb/pi0h9ksDFzz2bLIknmb0CIZ9dLYB1oA2Y8x0YvEm5e
         cs1wc4CLdU0oMk+Nl+j139TkfZ+DfsA6sLv3e3jWjctUIzfFZyaiAOv+HmxWhm27AVyu
         VESQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrCTx9Bm+D2Vc7cNOtt9K6NRGCPlKAJ1Okili6ME7TJ/yN2EXiE7sDYA8GrbsyIwldSklaIu1ZfR31@vger.kernel.org
X-Gm-Message-State: AOJu0YyrD2w821e06nbutg3sVnGFVrU1sm3jpI8eoyX4fLsYIUqvzxHl
	/5oVk8rvMsbfUirxY9IbDs6nRu6B+2qqVcb+PV5crBvNtw+Fvu2PczvkBPrpMxBuazRjgqcAGly
	lGoIRNoetJgmsqOyJ8LHitT9O7zyQc4PbJh3Q+g==
X-Gm-Gg: ASbGncuy0Br+1BTZlyvFrc0Y8b0MnQQoxu4PVV3maebVnvSt1kLJGc2AYzL3BCZIq5s
	AGDqskq3EMxsMS2y/zqrVKeUreiGjbwDeXqwE0A==
X-Google-Smtp-Source: AGHT+IEq0umBuo+QunFadHysq7OsYI2Y7tvIXeWw5zlZVNnR52GFnztmzdoIaD2+Oknhcicnm0deL9Ked/qTjsh4Vwo=
X-Received: by 2002:a05:6512:3a91:b0:540:2a6e:3882 with SMTP id
 2adb3069b0e04-5422953c3a4mr859365e87.29.1734699025929; Fri, 20 Dec 2024
 04:50:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241212-dt-bcm2712-fixes-v3-0-44a7f3390331@raspberrypi.com> <20241212-dt-bcm2712-fixes-v3-3-44a7f3390331@raspberrypi.com>
In-Reply-To: <20241212-dt-bcm2712-fixes-v3-3-44a7f3390331@raspberrypi.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Dec 2024 13:50:14 +0100
Message-ID: <CACRpkdaB9kqcjmhaXd5RxpYvqdSVMZkj0wHAtEgdqDs03+wzJg@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] dt-bindings: gpio: brcmstb: permit gpio-line-names property
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Eric Anholt <eric@anholt.net>, 
	=?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, Doug Berger <opendmb@gmail.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Thomas Gleixner <tglx@linutronix.de>, Stefan Wahren <wahrenst@gmx.net>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 12, 2024 at 7:36=E2=80=AFPM Dave Stevenson
<dave.stevenson@raspberrypi.com> wrote:

> gpio-line-names is a generic property that can be supported by any
> GPIO controller, so permit it through the binding.
>
> It is permitted to have a variable number of GPIOs per node based
> on brcm,gpio-bank-widths, so define an arbitrary maximum number of
> items based on current users.
>
> Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Perhaps Bartosz can just apply this one patch separately?

Yours,
Linus Walleij

